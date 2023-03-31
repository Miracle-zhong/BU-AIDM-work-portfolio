DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` text COMMENT '添加字段：',
  `field_set` text COMMENT '修改字段：',
  `field_get` text COMMENT '查询字段：',
  `table_nav_name` varchar(500) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(500) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户权限管理';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件上传';
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登陆访问时长';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
insert into `access_token` values ('101','84e31b291f2bde6b7ceb27af5fe8eee3',null,'2','2023-03-31 18:21:49.0','2023-03-31 18:21:49.0','1');
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='用户点击';
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员','2023-03-31 18:21:49.0',null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/admin_avatar.jpg','2023-03-31 17:35:13.0');
DROP TABLE IF EXISTS `ordinary_users`;
CREATE TABLE `ordinary_users`(ordinary_users_id int(11) NOT NULL AUTO_INCREMENT COMMENT '普通用户ID',
`user_name` varchar(64) comment '用户姓名',
`user_gender` varchar(64) comment '用户性别',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (ordinary_users_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '普通用户';

DROP TABLE IF EXISTS `project_management`;
CREATE TABLE `project_management`(project_management_id int(11) NOT NULL AUTO_INCREMENT COMMENT '项目管理ID',
`entry_name` varchar(64) comment '项目名称',
`project_type` varchar(64) comment '项目类型',
`start_time` datetime comment '开始时间',
`end_time` datetime comment '结束时间',
`material_accessories` varchar(255) comment '材料附件',
`declaration_requirements` text comment '申报要求',
`declaration_description` text comment '申报说明',
`project_description` text comment '项目说明',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (project_management_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '项目管理';
insert into `project_management` values (1,'项目名称1','项目类型1','2023-03-29 17:36:59','2023-03-29 17:36:59','','此处可上传文字、图片、视频、超链接、表格等内容区1','此处可上传文字、图片、视频、超链接、表格等内容区1','此处可上传文字、图片、视频、超链接、表格等内容区1',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `project_management` values (2,'项目名称2','项目类型2','2023-03-29 17:36:59','2023-03-29 17:36:59','','此处可上传文字、图片、视频、超链接、表格等内容区2','此处可上传文字、图片、视频、超链接、表格等内容区2','此处可上传文字、图片、视频、超链接、表格等内容区2',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `project_management` values (3,'项目名称3','项目类型3','2023-03-29 17:36:59','2023-03-29 17:36:59','','此处可上传文字、图片、视频、超链接、表格等内容区3','此处可上传文字、图片、视频、超链接、表格等内容区3','此处可上传文字、图片、视频、超链接、表格等内容区3',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `project_management` values (4,'项目名称4','项目类型4','2023-03-29 17:36:59','2023-03-29 17:36:59','','此处可上传文字、图片、视频、超链接、表格等内容区4','此处可上传文字、图片、视频、超链接、表格等内容区4','此处可上传文字、图片、视频、超链接、表格等内容区4',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `project_management` values (5,'项目名称5','项目类型5','2023-03-29 17:36:59','2023-03-29 17:36:59','','此处可上传文字、图片、视频、超链接、表格等内容区5','此处可上传文字、图片、视频、超链接、表格等内容区5','此处可上传文字、图片、视频、超链接、表格等内容区5',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `project_management` values (6,'项目名称6','项目类型6','2023-03-29 17:36:59','2023-03-29 17:36:59','','此处可上传文字、图片、视频、超链接、表格等内容区6','此处可上传文字、图片、视频、超链接、表格等内容区6','此处可上传文字、图片、视频、超链接、表格等内容区6',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `project_management` values (7,'项目名称7','项目类型7','2023-03-29 17:36:59','2023-03-29 17:36:59','','此处可上传文字、图片、视频、超链接、表格等内容区7','此处可上传文字、图片、视频、超链接、表格等内容区7','此处可上传文字、图片、视频、超链接、表格等内容区7',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `project_management` values (8,'项目名称8','项目类型8','2023-03-29 17:36:59','2023-03-29 17:36:59','','此处可上传文字、图片、视频、超链接、表格等内容区8','此处可上传文字、图片、视频、超链接、表格等内容区8','此处可上传文字、图片、视频、超链接、表格等内容区8',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');

DROP TABLE IF EXISTS `declaration_information`;
CREATE TABLE `declaration_information`(declaration_information_id int(11) NOT NULL AUTO_INCREMENT COMMENT '申报信息ID',
`entry_name` varchar(64) comment '项目名称',
`project_type` varchar(64) comment '项目类型',
`user_account` int(11) DEFAULT 0 comment '用户账号',
`user_name` varchar(64) comment '用户姓名',
`declaration_time` date comment '申报时间',
`declaration_annex` varchar(255) comment '申报附件',
`remarks` text comment '备注信息',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`examine_reply` varchar(16) DEFAULT '' comment '审核回复',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (declaration_information_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '申报信息';
insert into `declaration_information` values (1,'项目名称1','项目类型1',0,'用户姓名1','2023-03-29','','此处可上传文字、图片、视频、超链接、表格等内容区1','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `declaration_information` values (2,'项目名称2','项目类型2',0,'用户姓名2','2023-03-29','','此处可上传文字、图片、视频、超链接、表格等内容区2','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `declaration_information` values (3,'项目名称3','项目类型3',0,'用户姓名3','2023-03-29','','此处可上传文字、图片、视频、超链接、表格等内容区3','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `declaration_information` values (4,'项目名称4','项目类型4',0,'用户姓名4','2023-03-29','','此处可上传文字、图片、视频、超链接、表格等内容区4','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `declaration_information` values (5,'项目名称5','项目类型5',0,'用户姓名5','2023-03-29','','此处可上传文字、图片、视频、超链接、表格等内容区5','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `declaration_information` values (6,'项目名称6','项目类型6',0,'用户姓名6','2023-03-29','','此处可上传文字、图片、视频、超链接、表格等内容区6','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `declaration_information` values (7,'项目名称7','项目类型7',0,'用户姓名7','2023-03-29','','此处可上传文字、图片、视频、超链接、表格等内容区7','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `declaration_information` values (8,'项目名称8','项目类型8',0,'用户姓名8','2023-03-29','','此处可上传文字、图片、视频、超链接、表格等内容区8','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');

DROP TABLE IF EXISTS `implementation_project`;
CREATE TABLE `implementation_project`(implementation_project_id int(11) NOT NULL AUTO_INCREMENT COMMENT '实施项目ID',
`entry_name` varchar(64) comment '项目名称',
`project_type` varchar(64) comment '项目类型',
`user_account` int(11) DEFAULT 0 comment '用户账号',
`user_name` varchar(64) comment '用户姓名',
`implementation_time` date comment '实施时间',
`project_expectations` varchar(64) comment '项目预期',
`project_requirements` text comment '项目要求',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (implementation_project_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '实施项目';
insert into `implementation_project` values (1,'项目名称1','项目类型1',0,'用户姓名1','2023-03-29','项目预期1','此处可上传文字、图片、视频、超链接、表格等内容区1',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `implementation_project` values (2,'项目名称2','项目类型2',0,'用户姓名2','2023-03-29','项目预期2','此处可上传文字、图片、视频、超链接、表格等内容区2',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `implementation_project` values (3,'项目名称3','项目类型3',0,'用户姓名3','2023-03-29','项目预期3','此处可上传文字、图片、视频、超链接、表格等内容区3',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `implementation_project` values (4,'项目名称4','项目类型4',0,'用户姓名4','2023-03-29','项目预期4','此处可上传文字、图片、视频、超链接、表格等内容区4',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `implementation_project` values (5,'项目名称5','项目类型5',0,'用户姓名5','2023-03-29','项目预期5','此处可上传文字、图片、视频、超链接、表格等内容区5',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `implementation_project` values (6,'项目名称6','项目类型6',0,'用户姓名6','2023-03-29','项目预期6','此处可上传文字、图片、视频、超链接、表格等内容区6',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `implementation_project` values (7,'项目名称7','项目类型7',0,'用户姓名7','2023-03-29','项目预期7','此处可上传文字、图片、视频、超链接、表格等内容区7',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `implementation_project` values (8,'项目名称8','项目类型8',0,'用户姓名8','2023-03-29','项目预期8','此处可上传文字、图片、视频、超链接、表格等内容区8',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');

DROP TABLE IF EXISTS `closing_management`;
CREATE TABLE `closing_management`(closing_management_id int(11) NOT NULL AUTO_INCREMENT COMMENT '结题管理ID',
`entry_name` varchar(64) comment '项目名称',
`project_type` varchar(64) comment '项目类型',
`user_account` int(11) DEFAULT 0 comment '用户账号',
`user_name` varchar(64) comment '用户姓名',
`closing_time` date comment '结题时间',
`project_duration` varchar(64) comment '项目历时',
`closing_details` text comment '结题详情',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`examine_reply` varchar(16) DEFAULT '' comment '审核回复',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (closing_management_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '结题管理';
insert into `closing_management` values (1,'项目名称1','项目类型1',0,'用户姓名1','2023-03-29','项目历时1','此处可上传文字、图片、视频、超链接、表格等内容区1','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `closing_management` values (2,'项目名称2','项目类型2',0,'用户姓名2','2023-03-29','项目历时2','此处可上传文字、图片、视频、超链接、表格等内容区2','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `closing_management` values (3,'项目名称3','项目类型3',0,'用户姓名3','2023-03-29','项目历时3','此处可上传文字、图片、视频、超链接、表格等内容区3','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `closing_management` values (4,'项目名称4','项目类型4',0,'用户姓名4','2023-03-29','项目历时4','此处可上传文字、图片、视频、超链接、表格等内容区4','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `closing_management` values (5,'项目名称5','项目类型5',0,'用户姓名5','2023-03-29','项目历时5','此处可上传文字、图片、视频、超链接、表格等内容区5','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `closing_management` values (6,'项目名称6','项目类型6',0,'用户姓名6','2023-03-29','项目历时6','此处可上传文字、图片、视频、超链接、表格等内容区6','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `closing_management` values (7,'项目名称7','项目类型7',0,'用户姓名7','2023-03-29','项目历时7','此处可上传文字、图片、视频、超链接、表格等内容区7','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');
insert into `closing_management` values (8,'项目名称8','项目类型8',0,'用户姓名8','2023-03-29','项目历时8','此处可上传文字、图片、视频、超链接、表格等内容区8','未审核','',0,'2023-03-29 17:36:59','2023-03-29 17:36:59');

insert into `auth` values ('1','管理员','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','1','1','1','1','user_name,user_gender','user_name,user_gender','user_name,user_gender',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('2','管理员','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','1','1','1','1','user_name,user_gender','user_name,user_gender','user_name,user_gender',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('3','管理员','项目管理','project_management','项目管理','/project_management/table','','_blank','1','1','1','1','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('4','管理员','项目管理','project_management','项目管理详情','/project_management/view','','_blank','1','1','1','1','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('5','管理员','申报信息','declaration_information','申报信息','/declaration_information/table','','_blank','1','1','1','1','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks',null,'0','{"examine":true}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('6','管理员','申报信息','declaration_information','申报信息详情','/declaration_information/view','','_blank','1','1','1','1','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('7','管理员','实施项目','implementation_project','实施项目','/implementation_project/table','','_blank','1','1','1','1','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('8','管理员','实施项目','implementation_project','实施项目详情','/implementation_project/view','','_blank','1','1','1','1','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('9','管理员','结题管理','closing_management','结题管理','/closing_management/table','','_blank','1','1','1','1','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details',null,'0','{"examine":true}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('10','管理员','结题管理','closing_management','结题管理详情','/closing_management/view','','_blank','1','1','1','1','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('11','管理员','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('12','管理员','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('13','管理员','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('14','管理员','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('15','游客','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','0','0','0','0','user_name,user_gender','user_name,user_gender','user_name,user_gender',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('16','游客','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','0','0','0','0','user_name,user_gender','user_name,user_gender','user_name,user_gender',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('17','游客','项目管理','project_management','项目管理','/project_management/table','','_blank','0','0','0','0','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('18','游客','项目管理','project_management','项目管理详情','/project_management/view','','_blank','0','0','0','0','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('19','游客','申报信息','declaration_information','申报信息','/declaration_information/table','','_blank','0','0','0','0','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks',null,'0','{"examine":false}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('20','游客','申报信息','declaration_information','申报信息详情','/declaration_information/view','','_blank','0','0','0','0','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('21','游客','实施项目','implementation_project','实施项目','/implementation_project/table','','_blank','0','0','0','0','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('22','游客','实施项目','implementation_project','实施项目详情','/implementation_project/view','','_blank','0','0','0','0','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('23','游客','结题管理','closing_management','结题管理','/closing_management/table','','_blank','0','0','0','0','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details',null,'0','{"examine":false}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('24','游客','结题管理','closing_management','结题管理详情','/closing_management/view','','_blank','0','0','0','0','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('25','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('26','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('27','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('28','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('29','普通用户','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','0','0','0','0','user_name,user_gender','user_name,user_gender','user_name,user_gender',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('30','普通用户','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','0','0','0','0','user_name,user_gender','user_name,user_gender','user_name,user_gender',null,'0','{}','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `auth` values ('31','普通用户','项目管理','project_management','项目管理','/project_management/table','','_blank','0','0','0','1','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description',null,'0','{}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `auth` values ('32','普通用户','项目管理','project_management','项目管理详情','/project_management/view','','_blank','0','0','0','1','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description','entry_name,project_type,start_time,end_time,material_accessories,declaration_requirements,declaration_description,project_description',null,'0','{}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `auth` values ('33','普通用户','申报信息','declaration_information','申报信息','/declaration_information/table','','_blank','1','0','0','1','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks',null,'0','{"examine":false}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `auth` values ('34','普通用户','申报信息','declaration_information','申报信息详情','/declaration_information/view','','_blank','1','0','0','1','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks','entry_name,project_type,user_account,user_name,declaration_time,declaration_annex,remarks',null,'0','{}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `auth` values ('35','普通用户','实施项目','implementation_project','实施项目','/implementation_project/table','','_blank','0','0','0','1','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements',null,'0','{}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `auth` values ('36','普通用户','实施项目','implementation_project','实施项目详情','/implementation_project/view','','_blank','0','0','0','1','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements','entry_name,project_type,user_account,user_name,implementation_time,project_expectations,project_requirements',null,'0','{}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `auth` values ('37','普通用户','结题管理','closing_management','结题管理','/closing_management/table','','_blank','1','0','0','1','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details',null,'0','{"examine":false}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `auth` values ('38','普通用户','结题管理','closing_management','结题管理详情','/closing_management/view','','_blank','1','0','0','1','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details','entry_name,project_type,user_account,user_name,closing_time,project_duration,closing_details',null,'0','{}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `auth` values ('39','普通用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `auth` values ('40','普通用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `auth` values ('41','普通用户','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `auth` values ('42','普通用户','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-03-29 17:37:00.0','2023-03-29 17:37:00.0');
insert into `user_group` values ('1','100','管理员',null,'','','0','0','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `user_group` values ('2','100','游客',null,'','','0','0','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
insert into `user_group` values ('3','100','普通用户',null,'ordinary_users','ordinary_users_id','0','0','2023-03-29 17:36:59.0','2023-03-29 17:36:59.0');
