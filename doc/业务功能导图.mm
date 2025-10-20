
<map>
  <node ID="root" TEXT="业务功能">
    <node TEXT="基本功能" ID="861e3a2a008f552ca43b930a61627b06" STYLE="bubble" POSITION="right">
      <node TEXT="服务器区域 （server_code）" ID="e4d1d788251bc31a15d6d925e4fc7993" STYLE="fork">
        <node TEXT="地区标识 (CN, TW)" ID="4d26177c191c66e9f0db93561588540c" STYLE="fork"/>
        <node TEXT="地区时区 region.timezone_map" ID="16be64100132c5008b9bb6540121caec" STYLE="fork"/>
        <node TEXT="地区语言" ID="6eade6535d548e1277f14f327726a8a3" STYLE="fork">
          <node TEXT="默认语言 region.region_language_map" ID="5613a724b4830d1b7610b1ca33fac8e1" STYLE="fork"/>
          <node TEXT="支持的语言列表 region.region_languages" ID="600c44e282b544964c349fb0a13e6429" STYLE="fork"/>
        </node>
        <node TEXT="地区货币 region.currency_map" ID="28557424de4240e903ec5774707f0b4f" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="用户系统" ID="b5b6c395e9db6684fc97f67167f8d710" STYLE="bubble" POSITION="right">
      <node TEXT="学生" ID="600ee0c887a051c82312070a03183b16" STYLE="fork">
        <node TEXT="时区选项 region.timezones" ID="2cc9466a50f9fc5f4a14d6e0100a3cb9" STYLE="fork"/>
        <node TEXT="课程页面聚合信息 user_statistics" ID="b49ff6ff188b230feac2fbd25888f096" STYLE="fork"/>
        <node TEXT="账号操作" ID="cb1427c3854f9955874f19054ba8c2c1" STYLE="fork">
          <node TEXT="登录" ID="731289fdbcb066737a6901aca793be33" STYLE="fork">
            <node TEXT="微信" ID="6e50ae4fcae32c07bd2a5f3332e803bd" STYLE="fork">
              <node TEXT="跳转授权 wechat_login" ID="f9a663b8e45a038b599062a68e2ddc86" STYLE="fork"/>
              <node TEXT="鉴权登录 wechat_authorize" ID="e26f56b68f623ced9176323b488061a2" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="注册" ID="a6bc24c966afc1bb6c3f3f1b265d9476" STYLE="fork">
            <node TEXT="三方登录服务注册 auth_register" ID="4d796c431dfefce685e81667352cd210" STYLE="fork"/>
            <node TEXT="注册页面数据 site_options" ID="9b60403100a08621e615fc55b5303a24" STYLE="fork"/>
          </node>
          <node TEXT="邮箱" ID="b922f0bc53e2bd45f1c807227e9669e4" STYLE="fork">
            <node TEXT="修改邮箱" ID="bfaf7e29cf682d51f55efbb807b4c0cc" STYLE="fork">
              <node TEXT="发送验证码 send_verify_email" ID="ba2ec9801efa5834f2d61f15f03a8234" STYLE="fork"/>
              <node TEXT="验证码校验 verify_auth_code" ID="76652ffc9b4b39bf3822d09607c1cd66" STYLE="fork"/>
              <node TEXT="重复邮箱验证 email_registered" ID="4a37d23a665b2f3b2c32f0451ee46f48" STYLE="fork"/>
              <node TEXT="修改邮箱 set_email" ID="11acc8ddda394d3561e70704acef477e" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="忘记密码 - 设置新密码 reset_password" ID="620574ca8a010943235a4218da4a94f5" STYLE="fork"/>
          <node TEXT="用户资料 - 设置新密码 set_password" ID="f1268df203ea622ab8426334fbd7a943" STYLE="fork"/>
        </node>
        <node TEXT="学生信息操作" ID="7b2699d04740cb9d41faf71593b2de9e" STYLE="fork">
          <node TEXT="更新个人信息 user/save_profile" ID="25dadcba9442badf6f71e517331b199d" STYLE="fork"/>
          <node TEXT="新建个人资料 add_user_profile" ID="2ef2909fcec3630a9f2f0a6e93d53704" STYLE="fork"/>
          <node TEXT="保存个人资料 update_user_profile" ID="51f3f610c2cdd8aa0bed8b0015a68088" STYLE="fork"/>
          <node TEXT="个人资料详情 user_profile" ID="31c22878e6d4942f7bd3b4259fa0d558" STYLE="fork"/>
          <node TEXT="兴趣标签" ID="8c84e1fc2a36d2ed1b05144f498f43e7" STYLE="fork">
            <node TEXT="保存 save_interests" ID="df1294564facb91aa0edf90bfe49a241" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="收藏功能" ID="8f72191e22272f6b307dc37e25a99b6a" STYLE="fork">
          <node TEXT="收藏课程列表 course_list" ID="adfbe006c593d96fcaea66323f5548f1" STYLE="fork"/>
          <node TEXT="收藏教师列表 favorite_teachers" ID="91adc7eea93121536c82233fceeef997" STYLE="fork"/>
          <node TEXT="收藏/取消收藏教材 like_lesson_toggle" ID="b0f83c312e4c3139edb223c0d1183426" STYLE="fork"/>
        </node>
        <node TEXT="上课" ID="f64bbcd4608caea396572e6a5a1fd2f3" STYLE="fork">
          <node TEXT="约课动态信息 class_status" ID="0b0bd2d78eade34d0fba08ceef4efe8e" STYLE="fork"/>
          <node TEXT="课堂类型" ID="e627382f0b44a3484e5d94da4db3e393" STYLE="fork">
            <node TEXT="快速上课" ID="62215a2a0c5db124176e8826c5d94f7f" STYLE="fork">
              <node TEXT="课程时长列表 booking_durations" ID="03f61f4c58096052b1e11b7ca275160c" STYLE="fork"/>
              <node TEXT="选课详情 confirm_booking_detail" ID="1bbd3a379a00e25e2271d4795cea39f8" STYLE="fork"/>
            </node>
            <node TEXT="预约上课" ID="1a20c0862c36320a9b34ceb0cfaec55f" STYLE="fork">
              <node TEXT="预约选课详情 order_confirm_detail" ID="455bf4386e6a773a94a1c65cec0c7b24" STYLE="fork"/>
              <node TEXT="预约课程 booking_confirm" ID="fe9cf52f3d4a62fad1d8a150c2b6fd33" STYLE="fork"/>
              <node TEXT="取消课程预约 cancel_class" ID="35b1180d06a795830b63c274ab3de83f" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="资格类型" ID="8255796a4ed7e3eb6778e3c22e9070ce" STYLE="fork">
            <node TEXT="会员 (VIP)" ID="fac65e1342656d543e5c8498aee1c144" STYLE="fork"/>
            <node TEXT="课程次数卡 (Class card)" ID="3b6111ce760cfe2598be86f9b893801f" STYLE="fork"/>
          </node>
          <node TEXT="课程日历 classes_calendar" ID="3ef9c9c53a97c081ee40498c385714ad" STYLE="fork"/>
          <node TEXT="课程订单历史 classes_list" ID="13f228d46c7c8211f5ab2ba651a0086c" STYLE="fork"/>
          <node TEXT="选课功能" ID="facffe03cfbf81a16b6f6f64c215f191" STYLE="fork">
            <node TEXT="教师课程表 tutor_schedule_list" ID="747db83cb7ba03b6bd83fb9226047e57" STYLE="fork"/>
            <node TEXT="更新当前教材 save_last_lesson" ID="4d073c234d3a78dc5b988d4d3ba5e98e" STYLE="fork"/>
          </node>
          <node TEXT="即将上课列表 upcoming_classes" ID="d49f7d4627169a96717ad1d3d2069f28" STYLE="fork"/>
        </node>
        <node TEXT="切换自定义状态 active_custom_status" ID="b6c1c5f0f229edc8fe6f8fff3904fbc0" STYLE="fork"/>
        <node TEXT="生成分享图 share_image" ID="0b7c99d986a6d663238dfe0e61dd96c6" STYLE="fork"/>
        <node TEXT="兑换码" ID="dd737f886b78ed1b9e7f1572b7083dde" STYLE="fork">
          <node TEXT="兑换 redeem_code" ID="e7775515f449bab798fad6f44aa78245" STYLE="fork"/>
          <node TEXT="列表 redeem_list" ID="3d6dc002077af9b46190360708e6deea" STYLE="fork"/>
        </node>
        <node TEXT="代理" ID="2de82e03067f08305e1f58b6909df52f" STYLE="fork">
          <node TEXT="礼包" ID="3fbdd5fa4daf5318f21cdea1a9d7e2d8" STYLE="fork">
            <node TEXT="代理礼包列表 activity_list" ID="fb21c22043a552e3f0376dbdc3a5ef7c" STYLE="fork"/>
            <node TEXT="礼包详情 activity_detail" ID="2ee533834967f61876cd3910ce3a3fe7" STYLE="fork"/>
            <node TEXT="礼包参与用户列表 activity_record_list" ID="b6d049625ed97d5719c2b08a4fd5c942" STYLE="fork"/>
            <node TEXT="学生领取代理活动礼包 claim_activity_gift" ID="373374e33d2613c7d93f7d185e0cb446" STYLE="fork"/>
          </node>
          <node TEXT="分享邀请" ID="0bca33ed5d0d5dd98c79e2ce24b78ca0" STYLE="fork">
            <node TEXT="邀请用户列表 invited_user_list" ID="cf88c4e94e046e1d5990e7efdb09fa5b" STYLE="fork"/>
            <node TEXT="邀请统计信息 reseller_detail" ID="94a425e24b96fef963e774761a0343fd" STYLE="fork"/>
            <node TEXT="订单维度统计列表 reseller_record_list" ID="7bc4b625620a3d351c4696cbda9c5ad7" STYLE="fork"/>
            <node TEXT="用户维度统计列表 reseller_refer_list" ID="6df39162d746acfbf16ae31ace94a1f5" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="教师" ID="c8b3d0bf6acb132eda8d927f750dbce9" STYLE="fork">
        <node TEXT="教师基本信息 teacher_info" ID="0e2d6d0215e5fef022f528adf07ca5f6" STYLE="fork"/>
        <node TEXT="即将上课列表 upcoming_classes" ID="10d2605844616bbff93b0b55f09746cd" STYLE="fork"/>
        <node TEXT="选择在线状态 set_presence_status" ID="c6a9fd5b3e096d01da00df2ebc2cb0fc" STYLE="fork"/>
        <node TEXT="保存教师信息 teacher/save_profile" ID="39598389895aef532d919e43373919d8" STYLE="fork"/>
        <node TEXT="订单列表 class_list" ID="efd34d211df6b74b385ecbe6c1aa732a" STYLE="fork"/>
        <node TEXT="首页图表统计 statistics" ID="8c1ca6b4a2a29164234ad9ce563908cc" STYLE="fork"/>
        <node TEXT="获取订单课程信息 get_order_lesson" ID="636eafedeb3d5aed105856e14b4a5d5e" STYLE="fork"/>
        <node TEXT="学生上课列表 student_class_list" ID="111781a5d35e978c7daa65b492f446d3" STYLE="fork"/>
        <node TEXT="考核系统" ID="72f191bd73a94fa77cc52798c52a59ec" STYLE="fork">
          <node TEXT="考核历史记录 evaluation_histories" ID="700b83d78527f928eb2ed4bc75ee750c" STYLE="fork"/>
          <node TEXT="当前周期的基本考核信息 current_evaluation" ID="0e3bf4855618a9d337fddd2ff8d458a7" STYLE="fork"/>
          <node TEXT="当前周期的考核信息详情 evaluation_info" ID="9751fdb332f1ec55fdea5b26405f30ce" STYLE="fork"/>
        </node>
        <node TEXT="课程表" ID="c0eaea14a72b59863af74bd0ad834085" STYLE="fork">
          <node TEXT="快速上课排课" ID="ac39912c22925c9d5f165f54f16a513d" STYLE="fork">
            <node TEXT="时间表 quick_schedule_list" ID="f8a99ab59dea1adf04fcda1fb55f6116" STYLE="fork"/>
            <node TEXT="周属性设置 set_quick_class_weekday" ID="636632de162caa43b45a7a64c8358cdd" STYLE="fork"/>
            <node TEXT="保存时间表 quick_schedule_sync" ID="7cd4b6049d062e7e5fba7d29c03dd5e0" STYLE="fork"/>
          </node>
          <node TEXT="预约课程排课" ID="8b3874905272915ce94f91b05f8feee0" STYLE="fork">
            <node TEXT="时间表 schedule_list" ID="2cc5a933b3f95c5083481cb20f63db75" STYLE="fork"/>
            <node TEXT="激活时间点 schedule_active" ID="588bfe09e18fa5f3bcf7bbe907ddaf5a" STYLE="fork"/>
            <node TEXT="取消时间点 schedule_inactive" ID="13588a6c699f710f0e0d60b2d5c5818c" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="语言技能" ID="0c4f38c5ebbde96d7c8a8e0d6d33ecfc" STYLE="fork">
        <node TEXT="修改 save_language_skill" ID="4721cdd6dca77a36c9a049acfa36c9f3" STYLE="fork"/>
        <node TEXT="语言技能选项列表 get_languages" ID="8b4058f668df0fa7991228096795fd0b" STYLE="fork"/>
        <node TEXT="熟练度列表 proficiencies" ID="06cfbd338768108ef23d6ec04d3b380e" STYLE="fork"/>
      </node>
      <node TEXT="个人基本信息 user_basic_info" ID="c9ce6416a03eaed81d0aaf4620bb351d" STYLE="fork"/>
      <node TEXT="课程订单评价和打分" ID="c6bd9624357fb3d3ea472f2b9c8f118a" STYLE="fork">
        <node TEXT="学生评价列表 comment_list" ID="21d27ddba595edb8ef01d870bc4b36f2" STYLE="fork"/>
        <node TEXT="学生添加评价 review_order" ID="27fd6e33fe08fa25e7a862ea19af74e5" STYLE="fork"/>
        <node TEXT="教师给学生留言 message_for_order" ID="362c838275a6c23a96286cc7d36a2714" STYLE="fork"/>
      </node>
      <node TEXT="相册" ID="a6966d09cd53d9444aeda1e5b4b1cab7" STYLE="fork">
        <node TEXT="save_galleries" ID="7128445025080b8c97f37f9bf8db1362" STYLE="fork"/>
        <node TEXT="保存相册图片 save_gallery" ID="a7f6ec8740f29c9951e3dc7e3d470294" STYLE="fork"/>
        <node TEXT="删除相册图片 inactive_gallery" ID="344dae6a8b936205d321e6e3526d8a55" STYLE="fork"/>
      </node>
      <node TEXT="系统提示" ID="52fa5cce9ba376479b4766d19f5a55a6" STYLE="fork">
        <node TEXT="标记已读 system_notice_read" ID="b236720c3d9d4f0483e1ae924c3843e1" STYLE="fork"/>
      </node>
      <node TEXT="系统公告" ID="23cf51ab823ad21c981a9979cda89ef4" STYLE="fork">
        <node TEXT="列表 announcement_list" ID="9de17822e30baf99898bc9d917e446dd" STYLE="fork"/>
        <node TEXT="详情 announcement_detail" ID="f38984666d5eeedb06cddd63dbbf340f" STYLE="fork"/>
        <node TEXT="分组信息 announcement_group_info" ID="631151a96e23cb890e6c5c05f07bad6d" STYLE="fork"/>
      </node>
      <node TEXT="系统信息 user_states" ID="ecdc027c71a30996fb24b7ea0503b64b" STYLE="fork"/>
      <node TEXT="文件上传 file_upload" ID="d4d87fc74b22377c66cbbbe3f5e552d4" STYLE="fork"/>
    </node>
    <node TEXT="教学系统" ID="241bbb3b8927468e25416720ab1a6a07" STYLE="bubble" POSITION="right">
      <node TEXT="课堂" ID="d3506cbe25f8c3a65d4c93a186bf8e6b" STYLE="fork">
        <node TEXT="进入快速上课课堂事件 connect_quick_lesson" ID="b623709afff523a6fee698bb968d0ef2" STYLE="fork"/>
        <node TEXT="教师同意快速上课的申请 confirm_lesson" ID="fba0aff07d861125ec482a4ad5d00dc5" STYLE="fork"/>
        <node TEXT="字幕转发 captions_forward" ID="81bacf545c62f79a8eb2dedb3ef553fd" STYLE="fork"/>
        <node TEXT="界面/设备控制 ctrl_device" ID="b9b595ad6fb669ae9d7a43e9901ccd0d" STYLE="fork"/>
        <node TEXT="课堂缓存信息" ID="37284252b6a60372951eb2e95d2db4f9" STYLE="fork">
          <node TEXT="设置课堂缓存信息 set_class_info" ID="4eeb1074cc9fda13e0684043ac6cf474" STYLE="fork"/>
          <node TEXT="查询课堂缓存信息 quick_class_status" ID="328a2d3533b48c538452b164946299c0" STYLE="fork"/>
        </node>
        <node TEXT="学生结束上课 appClassEnd" ID="2752e8ca412267b66d086c3115155fed" STYLE="fork"/>
        <node TEXT="判断教师是否正在上课 hasClassByTeacherId" ID="537e970ca402d6b673e7f944d4d89c0c" STYLE="fork"/>
        <node TEXT="获取阿里云 NLS Token  ali_isi_token" ID="0f88756488378a766fc3021340057a5d" STYLE="fork"/>
        <node TEXT="课堂订单详情 quickly_class_detail" ID="bba0bbd1f068f013f4d091774f9df693" STYLE="fork"/>
        <node TEXT="教材基本信息 lesson_info" ID="32bb14771753f265682da6b95b3ac93b" STYLE="fork"/>
        <node TEXT="获取 RTC 令牌 RTC_token" ID="a2681387096666dbd97786166c22f151" STYLE="fork"/>
        <node TEXT="开启录播 start_cloud_record" ID="442127393b55cd6a14e90f235f513849" STYLE="fork"/>
        <node TEXT="停止录制 stop_cloud_record" ID="bbdedea88466f3a27814e90b7c995673" STYLE="fork"/>
      </node>
      <node TEXT="单词本" ID="38e61a45fd268a4d0be991392dbcafc2" STYLE="fork">
        <node TEXT="添加单词 add_word_book_record" ID="60f916a2f26b005ec57a8d2f67dcde28" STYLE="fork"/>
        <node TEXT="删除单词 remove_word_book_record" ID="b36c12ec4817b726187f1cc14632bbfc" STYLE="fork"/>
      </node>
      <node TEXT="教材反馈 lesson_report" ID="006b3aee9f0b4d1d1e2ac396db88c71d" STYLE="fork"/>
      <node TEXT="快捷消息列表 quick_messages" ID="0b7a3149811f043d6f49b0c1cbb3d5e6" STYLE="fork"/>
      <node TEXT="课程次数卡分组列表 class_cards_info" ID="c070d72059186a5fec3517dd2f2c5721" STYLE="fork"/>
      <node TEXT="快速上课" ID="fe8cbdcdf04f76b371fe364dace50905" STYLE="fork">
        <node TEXT="客户端来源创建课程订单 client_create_order" ID="f28de32453d6c6f69950795046472e6e" STYLE="fork"/>
        <node TEXT="常规方式创建课程订单 create_order" ID="ad086cbceb81e135efaa9f249a24e420" STYLE="fork"/>
        <node TEXT="取消等待上课 cancel_waiting" ID="14edc7efa5d5bec6c63856d1159afe8e" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="聊天功能" ID="e48d2445e7dd65e06ecf765f66a1adbb" STYLE="bubble" POSITION="right">
      <node TEXT="通过订单ID创建聊天会话 createSessionByOrder" ID="1465734d3a433a379a7875e5ecb24530" STYLE="fork"/>
      <node TEXT="发送聊天消息 createMessage" ID="00f6e64d3b9a6d0d76223170da72e212" STYLE="fork"/>
      <node TEXT="消息列表 getMessageList" ID="4db81f146dbe0397bb09d14a98b60f8c" STYLE="fork"/>
      <node TEXT="根据订单查询聊天记录 message_list" ID="bc4c3b15c69b93cd6271437a034a0f52" STYLE="fork"/>
    </node>
    <node TEXT="支付功能" ID="76279bce7e7662f02c86fe3c558d7ec4" STYLE="bubble" POSITION="right">
      <node TEXT="创建订单" ID="b188e586fff8060599bffef6c7d1203c" STYLE="fork">
        <node TEXT="会员卡订单 monthly_card_create_order" ID="5150ad7cba89a8289f3b297b439bca4e" STYLE="fork"/>
        <node TEXT="金币订单 credit_create_order" ID="3e2b1d3750b5d42400ddfb862191735d" STYLE="fork"/>
        <node TEXT="商品订单（课程次数卡） product_create_order" ID="cbc50da7cd55544fd9c755d0dcd25311" STYLE="fork"/>
      </node>
      <node TEXT="取消订单 cancel_order" ID="79243586567797cdb4a7f051133b77bb" STYLE="fork"/>
      <node TEXT="支付回调" ID="41cedd0c55a7f0c002e3130d7c7e1d18" STYLE="fork">
        <node TEXT="微信平台 wechat_webhook" ID="4c543c9388a74ade93ae40684f0775b3" STYLE="fork"/>
      </node>
      <node TEXT="订单状态查询 order_status" ID="c9373b109015cf36016b26140caac1d1" STYLE="fork"/>
      <node TEXT="用户资源列表（代金积分） asset_status_list" ID="78f8c84c1db9113b532fa4fbd5775ecd" STYLE="fork"/>
      <node TEXT="货币订单列表 currency_order_list" ID="ffea6f7addd9836fce285a010097dd65" STYLE="fork"/>
      <node TEXT="支付页面信息 payment_info" ID="3e9d92abd83428b2a3a7598610eb83f4" STYLE="fork"/>
      <node TEXT="金币" ID="2d154eb6421bda673609913d6bdb3b04" STYLE="fork">
        <node TEXT="流水记录 expense_records" ID="30697a09c10e50333fcff167e53fcfd5" STYLE="fork"/>
        <node TEXT="分类列表 coin_records" ID="1f33ff7346371cf4ca6241d5328769b5" STYLE="fork"/>
      </node>
      <node TEXT="小程序支付" ID="42d8260ba367cdb56d61c1c2c9c479e9" STYLE="fork">
        <node TEXT="平台校验接口 wechat_customer_chat_get" ID="c4cb57f0992a197c0aa17d4b27eb45c7" STYLE="fork"/>
        <node TEXT="发起支付页面 payment_jsapi_h5" ID="4ca01e4322f83a573e414241ef7918bf" STYLE="fork"/>
        <node TEXT="IOS 支付调用 wechat_customer_chat_post" ID="379c1632ade9a431f2719107ef7d9268" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="搜索功能" ID="fae868e17d94d042abfa426881704761" STYLE="bubble" POSITION="right">
      <node TEXT="教师筛选列表 searching_tutors" ID="b4e548aa7133b8ccf56c88d986b93a62" STYLE="fork"/>
      <node TEXT="课程列表 course_list" ID="9fb5056858ba08a092cedbf82dc4aa12" STYLE="fork"/>
      <node TEXT="教材列表 lesson_list" ID="944a7d9aa89a861d3f7b5ccc6a3e18d7" STYLE="fork"/>
      <node TEXT="课程收藏列表 liked_lessons" ID="ebe36c0afe2a64ed6cbf7096e5118cef" STYLE="fork"/>
      <node TEXT="推荐课程列表 recommend_courses" ID="afc40b395b5f8bbedb1d17b2c96a058b" STYLE="fork"/>
      <node TEXT="最新课程列表 recommend_courses" ID="8ee8e55ac1bfedf8e16b35da5686c52c" STYLE="fork"/>
    </node>
    <node TEXT="内容系统" ID="ae67bcb5063071cea4f2f5ad7446b240" STYLE="bubble" POSITION="right">
      <node TEXT="网站配置 site_config" ID="e02ecea70b76b6b8b71c78f7e43e8084" STYLE="fork"/>
      <node TEXT="学生首页信息 student_home" ID="260d4f0bcebacd12623db4c78f3b1919" STYLE="fork"/>
      <node TEXT="教材详情 teach_material" ID="8770ed5fc884ff60372a474ac6fddf13" STYLE="fork"/>
      <node TEXT="课程详情 course_detail" ID="84e4244d4192ec060c5580cbb25ab087" STYLE="fork"/>
      <node TEXT="教师详情 teacher_detail" ID="7898984b8d1e9a089a5a19c807f4bf79" STYLE="fork"/>
      <node TEXT="在线教师列表 online_teachers" ID="08d4c042e75f18e63f29a012e8d56d17" STYLE="fork"/>
      <node TEXT="帮助中心" ID="2d288ed00c32dfecefbbf9b1921cf47f" STYLE="fork">
        <node TEXT="文档列表 help_docs" ID="807435465cca52833392515a4524f479" STYLE="fork"/>
        <node TEXT="文档详情 help_doc_detail" ID="aad36e4d320785546e3554c0aa197d4c" STYLE="fork"/>
      </node>
      <node TEXT="首页留言 drop_message" ID="94a1cf026c7eaec890dd0fd4024cf47d" STYLE="fork"/>
      <node TEXT="兴趣标签列表 interests" ID="fef812c4e25626fac3280b89e7f4eb48" STYLE="fork"/>
      <node TEXT="网站协议 protocol" ID="9f5dabcd10faf8f34430276ea0d08fa5" STYLE="fork"/>
      <node TEXT="网站静态信息 site_items" ID="ee585b74c1e4bcf6654394b190bd2c09" STYLE="fork"/>
      <node TEXT="网站地图 sitemap" ID="0bfcce691faa460739d588747dbeefd9" STYLE="fork"/>
      <node TEXT="robot.txt  robots" ID="05de27d893beb47b2589cafa6097cd0d" STYLE="fork"/>
    </node>
    <node TEXT="外部系统" ID="fa6b8f9cc5016417d1edce09410d4f92" STYLE="bubble" POSITION="right">
      <node TEXT="跳转后分配教师和教材 textbook_lesson_info" ID="0dcdaf6207408a4aedf2be7e763943e1" STYLE="fork"/>
      <node TEXT="翻牌游戏试玩分配教材 image_card_lesson_demo" ID="292e645ffe754ffa904cc0dcd99db2f7" STYLE="fork"/>
      <node TEXT="外部账号同步 sync_wechat_account" ID="4e9a966ec8f84dd724a111044f7291ca" STYLE="fork"/>
    </node>
    <node TEXT="游戏中心功能" ID="0fd70cce877d5efaa995ec2e2d70d172" STYLE="bubble" POSITION="right">
      <node TEXT="从网站加入游戏 join_wechat_game" ID="df1da5e896459a7849d1373a6086c52f" STYLE="fork"/>
    </node>
    <node TEXT="管理后台" ID="e040f139a594581790cb17acc76a695c" STYLE="bubble" POSITION="right"/>
    <node TEXT="调试功能" ID="4cda547aefa9704fc8f8c9ca25b81a3e" STYLE="bubble" POSITION="right">
      <node TEXT="用户最新一批订单的用户名 latest_order_usernames" ID="2dab68670f43fe5283936ab6f087a146" STYLE="fork"/>
    </node>
  </node>
</map>