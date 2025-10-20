# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is `mcp-tools`, a collection of locally running MCP (Model Context Protocol) services/tools. The project is written in TypeScript and uses the `@modelcontextprotocol/sdk` to build MCP servers.

## Development Commands

### Build
```bash
npm run build
```
This compiles TypeScript files from `src/` to `build/` and sets executable permissions on the build output.

### Test
```bash
npm test
```
Note: Tests are not currently implemented (returns error message).

## Architecture

- **Language**: TypeScript (ES2022 target, Node16 modules)
- **Entry Point**: Source files are in `src/`, compiled to `build/`
- **MCP Server**: Uses `@modelcontextprotocol/sdk` with stdio transport
- **Current Implementation**: `rag-server.ts` - A basic RAG (Retrieval Augmented Generation) MCP server

## Code Structure

- `src/rag-server.ts` - Main MCP server implementation using stdio transport
- `build/` - Compiled JavaScript output (generated)
- `doc/` - Contains documentation including a mind map (`业务功能导图.mm`)

## Development Notes

- The project uses ES modules (`"type": "module"` in package.json)
- Build output requires executable permissions (handled by build script)
- The current server is a minimal MCP server template ready for tool/resource implementations