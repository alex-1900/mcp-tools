import { McpServer } from "@modelcontextprotocol/sdk/server/mcp.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import Database from "better-sqlite3";
import * as fs from "fs";
import * as path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Database setup
let db: Database.Database;

interface Document {
  id: number;
  title: string;
  content: string;
  file_path: string;
  created_at: string;
}

// Create server instance
const server = new McpServer({
  name: "RAG_Server",
  version: "1.0.0",
  capabilities: {
    resources: {},
    tools: {},
  },
});

function initializeDatabase() {
  db = new Database("rag.db");

  // Create documents table
  db.exec(`
    CREATE TABLE IF NOT EXISTS documents (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      content TEXT NOT NULL,
      file_path TEXT UNIQUE NOT NULL,
      created_at DATETIME DEFAULT CURRENT_TIMESTAMP
    )
  `);

  // Create FTS5 virtual table
  db.exec(`
    CREATE VIRTUAL TABLE IF NOT EXISTS documents_fts USING fts5(
      title,
      content
    )
  `);

  // Create FTS triggers
  db.exec(`
    CREATE TRIGGER IF NOT EXISTS documents_fts_insert AFTER INSERT ON documents
    BEGIN
      INSERT INTO documents_fts(rowid, title, content) VALUES (new.id, new.title, new.content);
    END;

    CREATE TRIGGER IF NOT EXISTS documents_fts_delete AFTER DELETE ON documents
    BEGIN
      DELETE FROM documents_fts WHERE rowid = old.id;
    END;

    CREATE TRIGGER IF NOT EXISTS documents_fts_update AFTER UPDATE ON documents
    BEGIN
      DELETE FROM documents_fts WHERE rowid = old.id;
      INSERT INTO documents_fts(rowid, title, content) VALUES (new.id, new.title, new.content);
    END;
  `);

  // Create embeddings table
  db.exec(`
    CREATE TABLE IF NOT EXISTS document_embeddings (
      document_id INTEGER PRIMARY KEY,
      embedding BLOB
    )
  `);
}

function loadDocumentsFromDocDirectory() {
  const docPath = path.join(__dirname, "..", "doc");

  if (!fs.existsSync(docPath)) {
    console.error(`Doc directory not found: ${docPath}`);
    return;
  }

  const insertDocument = db.prepare(`
    INSERT OR REPLACE INTO documents (title, content, file_path)
    VALUES (?, ?, ?)
  `);

  const insertEmbedding = db.prepare(`
    INSERT OR REPLACE INTO document_embeddings (document_id, embedding)
    VALUES (?, ?)
  `);

  const documents: Document[] = [];

  function processDirectory(dirPath: string) {
    const items = fs.readdirSync(dirPath);

    for (const item of items) {
      const itemPath = path.join(dirPath, item);
      const stat = fs.statSync(itemPath);

      if (stat.isDirectory()) {
        processDirectory(itemPath);
      } else if (stat.isFile() && shouldProcessFile(item)) {
        try {
          const content = fs.readFileSync(itemPath, 'utf-8');
          const title = path.basename(itemPath, path.extname(itemPath));
          const relativePath = path.relative(path.join(__dirname, ".."), itemPath);

          const result = insertDocument.run(title, content, relativePath);
          const docId = result.lastInsertRowid as number;

          // Generate mock embedding (in production, you'd use a real embedding model)
          const embedding = generateMockEmbedding(content);

          // Store embedding as binary data
          if (Number.isInteger(docId)) {
            const embeddingBuffer = Buffer.from(new Float32Array(embedding).buffer);
            insertEmbedding.run(docId, embeddingBuffer);
          } else {
            console.error(`Invalid document ID: ${docId}, skipping embedding insertion`);
          }

          documents.push({
            id: docId,
            title,
            content,
            file_path: relativePath,
            created_at: new Date().toISOString()
          });

          console.error(`Loaded document: ${title}`);
        } catch (error) {
          console.error(`Error processing file ${itemPath}:`, error);
        }
      }
    }
  }

  function shouldProcessFile(filename: string): boolean {
    const supportedExtensions = ['.txt', '.md', '.json', '.mm', '.pdf'];
    return supportedExtensions.some(ext => filename.toLowerCase().endsWith(ext));
  }

  function generateMockEmbedding(content: string): number[] {
    // Mock embedding generation - in production, use a real embedding model
    const words = content.toLowerCase().split(/\s+/);
    const embedding = new Array(1536).fill(0);

    // Simple word hash-based embedding
    words.forEach(word => {
      const hash = hashString(word);
      for (let i = 0; i < 10; i++) {
        embedding[(hash + i) % 1536] += 0.1;
      }
    });

    // Normalize
    const magnitude = Math.sqrt(embedding.reduce((sum, val) => sum + val * val, 0));
    return embedding.map(val => val / magnitude);
  }

  function hashString(str: string): number {
    let hash = 0;
    for (let i = 0; i < str.length; i++) {
      const char = str.charCodeAt(i);
      hash = ((hash << 5) - hash) + char;
      hash = hash & hash;
    }
    return Math.abs(hash);
  }

  processDirectory(docPath);
  console.error(`Loaded ${documents.length} documents from doc directory`);
}

// Register tools using the simpler McpServer API
server.tool("search_documents", "Search documents using full-text search", {
  query: {
    type: "string",
    description: "Search query"
  },
  limit: {
    type: "number",
    description: "Maximum number of results",
    default: 10
  }
}, async (args) => {
  const query = args.query as string;
  const limit = args.limit as number || 10;

  const stmt = db.prepare(`
    SELECT documents.*,
           bm25(documents_fts) as relevance_score
    FROM documents_fts
    JOIN documents ON documents.id = documents_fts.rowid
    WHERE documents_fts MATCH ?
    ORDER BY relevance_score
    LIMIT ?
  `);

  const results = stmt.all(query, limit) as any[];

  return {
    content: [
      {
        type: "text",
        text: JSON.stringify(results, null, 2)
      }
    ]
  };
});

server.tool("search_similar", "Search for similar documents using embeddings", {
  query: {
    type: "string",
    description: "Query text to find similar documents"
  },
  limit: {
    type: "number",
    description: "Maximum number of results",
    default: 10
  }
}, async (args) => {
  const query = args.query as string;
  const limit = args.limit as number || 10;

  // For now, fall back to FTS search until vec extension is properly configured
  const stmt = db.prepare(`
    SELECT documents.*,
           bm25(documents_fts) as relevance_score
    FROM documents_fts
    JOIN documents ON documents.id = documents_fts.rowid
    WHERE documents_fts MATCH ?
    ORDER BY relevance_score
    LIMIT ?
  `);

  const results = stmt.all(query, limit) as any[];

  return {
    content: [
      {
        type: "text",
        text: JSON.stringify(results, null, 2)
      }
    ]
  };
});

server.tool("get_document", "Get a specific document by ID", {
  id: {
    type: "number",
    description: "Document ID"
  }
}, async (args) => {
  const id = args.id as number;

  const stmt = db.prepare(`
    SELECT * FROM documents WHERE id = ?
  `);

  const result = stmt.get(id);

  if (!result) {
    return {
      content: [
        {
          type: "text",
          text: JSON.stringify({ error: "Document not found" })
        }
      ]
    };
  }

  return {
    content: [
      {
        type: "text",
        text: JSON.stringify(result, null, 2)
      }
    ]
  };
});

server.tool("list_documents", "List all documents", {
  limit: {
    type: "number",
    description: "Maximum number of results",
    default: 50
  }
}, async (args) => {
  const limit = args.limit as number || 50;

  const stmt = db.prepare(`
    SELECT id, title, file_path, created_at
    FROM documents
    ORDER BY created_at DESC
    LIMIT ?
  `);

  const results = stmt.all(limit);

  return {
    content: [
      {
        type: "text",
        text: JSON.stringify(results, null, 2)
      }
    ]
  };
});

function generateMockEmbedding(content: string): number[] {
  // Mock embedding generation - in production, use a real embedding model
  const words = content.toLowerCase().split(/\s+/);
  const embedding = new Array(1536).fill(0);

  // Simple word hash-based embedding
  words.forEach(word => {
    const hash = hashString(word);
    for (let i = 0; i < 10; i++) {
      embedding[(hash + i) % 1536] += 0.1;
    }
  });

  // Normalize
  const magnitude = Math.sqrt(embedding.reduce((sum, val) => sum + val * val, 0));
  return embedding.map(val => val / magnitude);
}

function hashString(str: string): number {
  let hash = 0;
  for (let i = 0; i < str.length; i++) {
    const char = str.charCodeAt(i);
    hash = ((hash << 5) - hash) + char;
    hash = hash & hash;
  }
  return Math.abs(hash);
}

async function main() {
  try {
    initializeDatabase();
    loadDocumentsFromDocDirectory();

    const transport = new StdioServerTransport();
    await server.connect(transport);
    console.error("RAG MCP Server running on stdio");
  } catch (error) {
    console.error("Fatal error in main():", error);
    process.exit(1);
  }
}

main().catch((error) => {
  console.error("Fatal error in main():", error);
  process.exit(1);
});
