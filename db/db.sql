/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - nonfuchanpinxiaoshou
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nonfuchanpinxiaoshou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `nonfuchanpinxiaoshou`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(2,3,'收货人2','17703786902','地址2',1,'2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(3,2,'收货人3','17703786903','地址3',1,'2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(4,1,'收货人4','17703786904','地址4',1,'2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(5,1,'收货人5','17703786905','地址5',1,'2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(6,2,'收货人6','17703786906','地址6',1,'2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(7,1,'收货人7','17703786907','地址7',1,'2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(8,1,'收货人8','17703786908','地址8',1,'2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(9,1,'收货人9','17703786909','地址9',2,'2022-02-09 15:57:38','2022-02-14 21:35:19','2022-02-09 15:57:38'),(10,3,'收货人10','17703786910','地址10',1,'2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(11,3,'收货人11','17703786911','地址11',1,'2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `goods_id` int(11) DEFAULT NULL COMMENT '农副产品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/nonfuchanpinxiaoshou/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/nonfuchanpinxiaoshou/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/nonfuchanpinxiaoshou/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (74,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-02-09 15:56:13'),(75,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-02-09 15:56:13'),(76,'goods_types','农副产品名称',1,'产品类型1',NULL,NULL,'2022-02-09 15:56:13'),(77,'goods_types','农副产品名称',2,'产品类型2',NULL,NULL,'2022-02-09 15:56:13'),(78,'goods_types','农副产品名称',3,'产品类型3',NULL,NULL,'2022-02-09 15:56:13'),(79,'goods_order_payment_types','支付方式',1,'余额支付',NULL,NULL,'2022-02-09 15:56:13'),(80,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-02-09 15:56:13'),(81,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-02-09 15:56:13'),(82,'sex_types','性别类型名称',2,'女',NULL,NULL,'2022-02-09 15:56:13'),(83,'sex_types','性别类型名称',1,'男',NULL,NULL,'2022-02-09 15:56:13'),(84,'goods_order_types','订单类型名称',1,'退款',NULL,NULL,'2022-02-09 15:56:13'),(85,'goods_order_types','订单类型名称',2,'已支付',NULL,NULL,'2022-02-09 15:56:13'),(86,'goods_order_types','订单类型名称',3,'已发货',NULL,NULL,'2022-02-09 15:56:13'),(87,'goods_order_types','订单类型名称',4,'已收货',NULL,NULL,'2022-02-09 15:56:13'),(88,'goods_order_types','订单类型名称',5,'已评价',NULL,NULL,'2022-02-09 15:56:13'),(89,'news_types','新闻类型名称',1,'优惠活动',NULL,NULL,'2022-02-09 15:56:13'),(90,'news_types','新闻类型名称',2,'紧急情况',NULL,NULL,'2022-02-09 15:56:13'),(91,'cuxiao_types','是否促销',1,'正常',NULL,NULL,'2022-02-09 15:56:13'),(92,'cuxiao_types','是否促销',2,'促销',NULL,NULL,'2022-02-09 15:56:13'),(93,'shangjia_yesno_types','审核状态',1,'未审核',NULL,NULL,'2022-02-09 15:56:13'),(94,'shangjia_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-02-09 15:56:13'),(95,'shangjia_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-02-09 15:56:13');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '农户',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '农副产品名称  Search111 ',
  `goods_types` int(11) DEFAULT NULL COMMENT '农副产品类型  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '农副产品照片',
  `goods_kucun_number` int(11) DEFAULT '0' COMMENT '农副产品库存',
  `cuxiao_types` int(11) DEFAULT '0' COMMENT '是否促销',
  `goods_old_money` decimal(10,2) DEFAULT NULL COMMENT '农副产品原价 ',
  `goods_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价 ',
  `goods_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `goods_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `goods_content` text COMMENT '农副产品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='农产品信息';

/*Data for the table `goods` */

insert  into `goods`(`id`,`shangjia_id`,`goods_name`,`goods_types`,`goods_photo`,`goods_kucun_number`,`cuxiao_types`,`goods_old_money`,`goods_new_money`,`goods_clicknum`,`shangxia_types`,`goods_delete`,`goods_content`,`create_time`) values (1,1,'农副产品名称1',1,'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395034729.webp',10001,2,'944.67','139.93',108,1,1,'<p>农副产品简介1</p>','2022-02-09 15:57:38'),(2,2,'农副产品名称2',2,'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395028307.webp',10001,2,'628.44','85.38',167,1,1,'<p>农副产品简介2</p>','2022-02-09 15:57:38'),(3,2,'农副产品名称3',3,'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395020751.webp',10002,1,'949.82','185.96',267,1,1,'<p>农副产品简介3</p>','2022-02-09 15:57:38'),(4,2,'农副产品名称4',2,'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395013449.webp',10000,2,'708.52','136.25',359,1,1,'<p>农副产品简介4</p>','2022-02-09 15:57:38'),(5,3,'农副产品名称5',1,'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395005596.jpg',10005,2,'642.23','162.98',453,1,1,'<p>农副产品简介5</p>','2022-02-09 15:57:38'),(6,3,'农副产品名称6',2,'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394994872.jpg',10006,2,'544.89','113.58',186,1,1,'<p>农副产品简介6</p>','2022-02-09 15:57:38'),(7,2,'农副产品名称7',3,'http://localhost:8080/nonfuchanpinxiaoshou/upload/photo.jpg',10007,2,'706.69','135.00',85,1,2,'农副产品简介7','2022-02-09 15:57:38'),(8,1,'农副产品名称8',2,'http://localhost:8080/nonfuchanpinxiaoshou/upload/photo1.jpg',10008,2,'694.01','270.61',154,1,2,'农副产品简介8','2022-02-09 15:57:38'),(9,1,'农副产品名称9',3,'http://localhost:8080/nonfuchanpinxiaoshou/upload/photo2.jpg',10009,1,'848.15','286.13',305,1,2,'农副产品简介9','2022-02-09 15:57:38'),(10,1,'农副产品名称10',1,'http://localhost:8080/nonfuchanpinxiaoshou/upload/photo3.jpg',100010,2,'654.41','125.84',213,1,2,'农副产品简介10','2022-02-09 15:57:38'),(11,1,'农副产品名称11',1,'http://localhost:8080/nonfuchanpinxiaoshou/upload/photo4.jpg',100011,1,'661.13','428.60',448,1,2,'农副产品简介11','2022-02-09 15:57:38');

/*Table structure for table `goods_commentback` */

DROP TABLE IF EXISTS `goods_commentback`;

CREATE TABLE `goods_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '农副产品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `goods_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='农副产品评价';

/*Data for the table `goods_commentback` */

insert  into `goods_commentback`(`id`,`goods_id`,`yonghu_id`,`goods_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'评价内容1','回复信息1','2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(2,2,1,'评价内容2','回复信息2','2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(3,3,2,'评价内容3','回复信息3','2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(4,4,2,'评价内容4','回复信息4','2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(5,5,2,'评价内容5','回复信息5','2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(6,6,2,'评价内容6','回复信息6','2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(7,7,2,'评价内容7','回复信息7','2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(8,8,3,'评价内容8','回复信息8','2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(9,9,1,'评价内容9','回复信息9','2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(10,10,1,'评价内容10','回复信息10','2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(11,11,2,'评价内容11','回复信息11','2022-02-09 15:57:38','2022-02-09 15:57:38','2022-02-09 15:57:38'),(12,4,1,'购买完成后可以评论','管理和 农户可以回复11111','2022-02-14 21:36:45','2022-02-14 21:38:20','2022-02-14 21:36:45');

/*Table structure for table `goods_order` */

DROP TABLE IF EXISTS `goods_order`;

CREATE TABLE `goods_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收获地址 ',
  `goods_id` int(11) DEFAULT NULL COMMENT '农副产品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(200) DEFAULT NULL COMMENT '购买的数量',
  `goods_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `goods_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `goods_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='农副产品订单';

/*Data for the table `goods_order` */

insert  into `goods_order`(`id`,`goods_order_uuid_number`,`address_id`,`goods_id`,`yonghu_id`,`buy_number`,`goods_order_true_price`,`goods_order_types`,`goods_order_payment_types`,`insert_time`,`create_time`) values (4,'1644396256661',8,3,1,1,'185.96',2,1,'2022-02-09 16:44:17','2022-02-09 16:44:17'),(5,'1644396256661',8,2,1,1,'85.38',3,1,'2024-01-12 16:44:17','2024-01-12 16:44:17'),(6,'1644396256661',8,6,1,1,'136.25',2,1,'2022-02-09 16:44:17','2022-02-09 16:44:17'),(7,'1644845748955',5,4,1,3,'408.75',5,1,'2022-02-14 21:35:49','2022-02-14 21:35:49');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` text COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395296183.jpg',2,'2022-02-09 15:57:38','<p>新闻详情1</p>','2022-02-09 15:57:38'),(2,'新闻名称2','http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395289584.jpg',2,'2022-02-09 15:57:38','<p>新闻详情2</p>','2022-02-09 15:57:38'),(3,'新闻名称3','http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395283035.jpg',1,'2022-02-09 15:57:38','<p>新闻详情3</p>','2022-02-09 15:57:38'),(4,'新闻名称4','http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395276575.jpg',1,'2022-02-09 15:57:38','<p>新闻详情4</p>','2022-02-09 15:57:38'),(5,'新闻名称5','http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395268139.jpg',1,'2022-02-09 15:57:38','<p>新闻详情5</p>','2022-02-09 15:57:38'),(6,'新闻名称6','http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395262192.jpg',2,'2022-02-09 15:57:38','<p>新闻详情6</p>','2022-02-09 15:57:38');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '农户名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '农户头像 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '农户简介 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='农户';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_yesno_types`,`shangjia_photo`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','农户名称1','17703786901','1@qq.com',2,'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394640455.webp','429.98','<p>农户简介1</p>',1,'2022-02-09 15:57:38'),(2,'a2','123456','农户名称2','17703786902','2@qq.com',2,'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394652467.jpg','612.71','<p>农户简介2</p>',1,'2022-02-09 15:57:38'),(3,'a3','123456','农户名称3','17703786903','3@qq.com',3,'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394619183.jpg','398.54','<p>农户简介3</p>',1,'2022-02-09 15:57:38');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','dbqttj759dj65uav6v8tdujph7bar0cy','2022-02-09 15:59:52','2022-02-14 22:37:33'),(2,1,'a1','yonghu','用户','mblkn5l6iyfjrri56u08zboe40udm6vi','2022-02-09 16:30:10','2022-02-14 22:36:28'),(3,1,'a1','shangjia','农户','5lhnd937evkpjv89o5xwj84s9c2vfl81','2022-02-09 16:52:29','2022-02-14 22:36:01'),(4,2,'a2','shangjia','农户','qj2upo4pghzdaytic546yqvtks0et2ga','2022-02-09 17:14:17','2022-02-14 22:38:13'),(5,3,'a3','yonghu','用户','v9o6i2v1s5r3p1ucr9otsbuyuwp3foqq','2022-02-09 17:19:34','2022-02-09 18:19:35');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`new_money`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394682541.jpg','17703786901','410224199610232001',2,'9900.88',1,'2022-02-09 15:57:38'),(2,'a2','123456','用户姓名2','http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394674035.jpg','17703786902','410224199610232002',1,'977.12',1,'2022-02-09 15:57:38'),(3,'a3','123456','用户姓名3','http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394664025.webp','17703786903','410224199610232003',1,'416.60',1,'2022-02-09 15:57:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
