/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jingjianbokexitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jingjianbokexitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jingjianbokexitong`;

/*Table structure for table `boke` */

DROP TABLE IF EXISTS `boke`;

CREATE TABLE `boke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `boke_name` varchar(200) DEFAULT NULL COMMENT '博客名称 Search111 ',
  `boke_types` int(11) DEFAULT NULL COMMENT '博客类型 Search111',
  `boke_photo` varchar(200) DEFAULT NULL COMMENT '博客图片',
  `boke_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `boke_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `boke_music` varchar(200) DEFAULT NULL COMMENT '音乐',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `boke_neirong_types` int(11) DEFAULT NULL COMMENT '博客内容',
  `boke_content` text COMMENT '博客详情',
  `boke_yesno_types` int(11) DEFAULT NULL COMMENT '博客审核',
  `boke_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='博客信息';

/*Data for the table `boke` */

insert  into `boke`(`id`,`boke_name`,`boke_types`,`boke_photo`,`boke_video`,`boke_file`,`boke_music`,`zan_number`,`cai_number`,`yonghu_id`,`boke_neirong_types`,`boke_content`,`boke_yesno_types`,`boke_yesno_text`,`insert_time`,`create_time`) values (1,'博客名称1',1,'http://localhost:8080/jingjianbokexitong/upload/boke1.jpg',NULL,'http://localhost:8080/jingjianbokexitong/upload/file.rar',NULL,146,473,3,3,'博客详情1',1,NULL,'2022-03-24 21:40:00','2022-03-24 21:40:00'),(3,'博客名称3',3,'http://localhost:8080/jingjianbokexitong/upload/boke3.jpg','http://localhost:8080/jingjianbokexitong/upload/video.mp4',NULL,NULL,377,197,2,1,'博客详情3',2,'123','2022-03-24 21:40:00','2022-03-24 21:40:00'),(4,'博客名称4',3,'http://localhost:8080/jingjianbokexitong/upload/boke4.jpg',NULL,NULL,'http://localhost:8080/jingjianbokexitong/upload/music.mp3',149,45,1,2,'博客详情4',2,'同意\n','2022-03-24 21:40:00','2022-03-24 21:40:00'),(5,'博客名称5',3,'http://localhost:8080/jingjianbokexitong/upload/boke5.jpg','','http://localhost:8080/jingjianbokexitong/upload/file.rar','',431,401,3,3,'博客详情5',2,'通过','2022-03-24 21:40:00','2022-03-24 21:40:00');

/*Table structure for table `boke_collection` */

DROP TABLE IF EXISTS `boke_collection`;

CREATE TABLE `boke_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `boke_id` int(11) DEFAULT NULL COMMENT '博客',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `boke_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='博客收藏';

/*Data for the table `boke_collection` */

insert  into `boke_collection`(`id`,`boke_id`,`yonghu_id`,`boke_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-03-24 21:40:00','2022-03-24 21:40:00'),(5,5,3,1,'2022-03-24 21:40:00','2022-03-24 21:40:00'),(10,4,1,1,'2022-03-25 09:36:49','2022-03-25 09:36:49');

/*Table structure for table `boke_liuyan` */

DROP TABLE IF EXISTS `boke_liuyan`;

CREATE TABLE `boke_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `boke_id` int(11) DEFAULT NULL COMMENT '博客',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `boke_liuyan_text` text COMMENT '评论内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='博客评论';

/*Data for the table `boke_liuyan` */

insert  into `boke_liuyan`(`id`,`boke_id`,`yonghu_id`,`boke_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'评论内容1','回复信息1','2022-03-24 21:40:00','2022-03-24 21:40:00','2022-03-24 21:40:00'),(2,2,2,'评论内容2','回复信息2','2022-03-24 21:40:00','2022-03-24 21:40:00','2022-03-24 21:40:00'),(3,3,3,'评论内容3','回复信息3','2022-03-24 21:40:00','2022-03-24 21:40:00','2022-03-24 21:40:00'),(4,4,1,'评论内容4','回复信息4','2022-03-24 21:40:00','2022-03-24 21:40:00','2022-03-24 21:40:00'),(5,5,2,'评论内容5','回复信息5','2022-03-24 21:40:00','2022-03-24 21:40:00','2022-03-24 21:40:00'),(7,4,1,'321','回复123','2022-03-25 09:35:47','2022-03-25 09:38:45','2022-03-25 09:35:47');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/jingjianbokexitong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/jingjianbokexitong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/jingjianbokexitong/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'boke_types','博客类型',1,'博客类型1',NULL,NULL,'2022-03-23 14:04:44'),(2,'boke_types','博客类型',2,'博客类型2',NULL,NULL,'2022-03-23 14:04:44'),(3,'boke_types','博客类型',3,'博客类型3',NULL,NULL,'2022-03-23 14:04:44'),(4,'boke_yesno_types','博客审核',1,'审核中',NULL,NULL,'2022-03-23 14:04:44'),(5,'boke_yesno_types','博客审核',2,'通过',NULL,NULL,'2022-03-23 14:04:44'),(6,'boke_yesno_types','博客审核',3,'拒绝',NULL,NULL,'2022-03-23 14:04:44'),(7,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-23 14:04:44'),(8,'shangpin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-03-23 14:04:44'),(9,'shangpin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-03-23 14:04:44'),(10,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-23 14:04:45'),(11,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-23 14:04:45'),(12,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-23 14:04:45'),(13,'sex_types','性别',1,'男',NULL,NULL,'2022-03-23 14:04:45'),(14,'sex_types','性别',2,'女',NULL,NULL,'2022-03-23 14:04:45'),(15,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2022-03-23 14:04:45'),(16,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2022-03-23 14:04:45'),(17,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-23 14:04:45'),(18,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-23 14:04:45'),(19,'boke_neirong_types','博客内容',1,'视频',NULL,NULL,'2022-03-24 21:39:37'),(20,'boke_neirong_types','博客内容',2,'音乐',NULL,NULL,'2022-03-24 21:39:37'),(21,'boke_neirong_types','博客内容',3,'文件',NULL,NULL,'2022-03-24 21:39:37');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',NULL,2,1,'2022-03-24 21:40:00','2022-03-24 21:40:00','2022-03-24 21:40:00'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,1,1,'2022-03-24 21:40:00','2022-03-24 21:40:00','2022-03-24 21:40:00'),(3,'帖子标题3',3,NULL,'发布内容3',NULL,2,1,'2022-03-24 21:40:00','2022-03-24 21:40:00','2022-03-24 21:40:00'),(4,'帖子标题4',2,NULL,'发布内容4',NULL,2,1,'2022-03-24 21:40:00','2022-03-24 21:40:00','2022-03-24 21:40:00'),(5,'帖子标题5',3,NULL,'发布内容5',NULL,2,1,'2022-03-24 21:40:00','2022-03-24 21:40:00','2022-03-24 21:40:00'),(6,NULL,1,NULL,'用户评论123',5,NULL,2,'2022-03-25 09:36:22',NULL,'2022-03-25 09:36:22'),(7,NULL,NULL,1,'管理评论321',5,NULL,2,'2022-03-25 09:37:54',NULL,'2022-03-25 09:37:54');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/jingjianbokexitong/upload/news1.jpg','2022-03-24 21:40:00','公告详情1','2022-03-24 21:40:00'),(2,'公告标题2',3,'http://localhost:8080/jingjianbokexitong/upload/news2.jpg','2022-03-24 21:40:00','公告详情2','2022-03-24 21:40:00'),(3,'公告标题3',2,'http://localhost:8080/jingjianbokexitong/upload/news3.jpg','2022-03-24 21:40:00','公告详情3','2022-03-24 21:40:00'),(4,'公告标题4',1,'http://localhost:8080/jingjianbokexitong/upload/news4.jpg','2022-03-24 21:40:00','公告详情4','2022-03-24 21:40:00'),(5,'公告标题5',3,'http://localhost:8080/jingjianbokexitong/upload/news5.jpg','2022-03-24 21:40:00','公告详情5','2022-03-24 21:40:00');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','xd9o6kr0pk704rgdta62pm2vdvt8nva9','2022-03-24 21:59:14','2022-03-25 10:11:10'),(2,1,'a1','yonghu','用户','w8oio0iibt4cviwyjx5kjm7l6aaag9cu','2022-03-25 09:08:09','2022-03-25 10:38:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/jingjianbokexitong/upload/yonghu1.jpg',1,'17703786901','410224199610232001','1@qq.com',1,'2022-03-24 21:40:00'),(2,'a2','123456','用户姓名2','http://localhost:8080/jingjianbokexitong/upload/yonghu2.jpg',1,'17703786902','410224199610232002','2@qq.com',1,'2022-03-24 21:40:00'),(3,'a3','123456','用户姓名3','http://localhost:8080/jingjianbokexitong/upload/yonghu3.jpg',1,'17703786903','410224199610232003','3@qq.com',1,'2022-03-24 21:40:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
