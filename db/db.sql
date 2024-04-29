/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : 127.0.0.1:3306
 Source Schema         : nonfuchanpinxiaoshou

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 29/04/2024 17:59:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`nonfuchanpinxiaoshou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `nonfuchanpinxiaoshou`;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收货地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 2, '收货人1', '17703786901', '地址1', 1, '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `address` VALUES (2, 3, '收货人2', '17703786902', '地址2', 1, '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `address` VALUES (3, 2, '收货人3', '17703786903', '地址3', 1, '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `address` VALUES (4, 1, '收货人4', '17703786904', '地址4', 1, '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `address` VALUES (5, 1, '收货人5', '17703786905', '地址5', 1, '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `address` VALUES (6, 2, '收货人6', '17703786906', '地址6', 1, '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `address` VALUES (7, 1, '收货人7', '17703786907', '地址7', 1, '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `address` VALUES (8, 1, '收货人8', '17703786908', '地址8', 1, '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `address` VALUES (9, 1, '收货人9', '17703786909', '地址9', 2, '2022-02-09 15:57:38', '2022-02-14 21:35:19', '2022-02-09 15:57:38');
INSERT INTO `address` VALUES (10, 3, '收货人10', '17703786910', '地址10', 1, '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `address` VALUES (11, 3, '收货人11', '17703786911', '地址11', 1, '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '所属用户',
  `goods_id` int NULL DEFAULT NULL COMMENT '农副产品',
  `buy_number` int NULL DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, '轮播图1', 'http://localhost:8080/nonfuchanpinxiaoshou/upload/config1.jpg');
INSERT INTO `config` VALUES (2, '轮播图2', 'http://localhost:8080/nonfuchanpinxiaoshou/upload/config2.jpg');
INSERT INTO `config` VALUES (3, '轮播图3', 'http://localhost:8080/nonfuchanpinxiaoshou/upload/config3.jpg');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段名',
  `code_index` int NULL DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int NULL DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (74, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (75, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (76, 'goods_types', '农副产品名称', 1, '产品类型1', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (77, 'goods_types', '农副产品名称', 2, '产品类型2', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (78, 'goods_types', '农副产品名称', 3, '产品类型3', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (79, 'goods_order_payment_types', '支付方式', 1, '余额支付', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (80, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (81, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (82, 'sex_types', '性别类型名称', 2, '女', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (83, 'sex_types', '性别类型名称', 1, '男', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (84, 'goods_order_types', '订单类型名称', 1, '退款', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (85, 'goods_order_types', '订单类型名称', 2, '已支付', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (86, 'goods_order_types', '订单类型名称', 3, '已发货', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (87, 'goods_order_types', '订单类型名称', 4, '已收货', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (88, 'goods_order_types', '订单类型名称', 5, '已评价', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (89, 'news_types', '新闻类型名称', 1, '优惠活动', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (90, 'news_types', '新闻类型名称', 2, '紧急情况', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (91, 'cuxiao_types', '是否促销', 1, '正常', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (92, 'cuxiao_types', '是否促销', 2, '促销', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (93, 'shangjia_yesno_types', '审核状态', 1, '未审核', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (94, 'shangjia_yesno_types', '审核状态', 2, '通过', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (95, 'shangjia_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (96, 'shangxia_types', '上下架', 3, '待审核', NULL, NULL, '2022-02-09 15:56:13');
INSERT INTO `dictionary` VALUES (97, 'shangxia_types', '上下架', 4, '审核失败', NULL, NULL, '2022-02-09 15:56:13');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int NULL DEFAULT NULL COMMENT '农户',
  `goods_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农副产品名称  Search111 ',
  `goods_types` int NULL DEFAULT NULL COMMENT '农副产品类型  Search111 ',
  `goods_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农副产品照片',
  `goods_kucun_number` int NULL DEFAULT 0 COMMENT '农副产品库存',
  `cuxiao_types` int NULL DEFAULT 0 COMMENT '是否促销',
  `goods_old_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '农副产品原价 ',
  `goods_new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '现价 ',
  `goods_clicknum` int NULL DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int NULL DEFAULT NULL COMMENT '是否上架 ',
  `check_types` int NULL DEFAULT NULL COMMENT '是否审核',
  `goods_delete` int NULL DEFAULT NULL COMMENT '逻辑删除',
  `goods_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '农副产品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '农产品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 1, '农副产品名称1', 1, 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395034729.webp', 10001, 2, 944.67, 139.93, 108, 4, NULL, 1, '<p>农副产品简介1</p>', '2022-02-09 15:57:38');
INSERT INTO `goods` VALUES (2, 2, '农副产品名称2', 2, 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395028307.webp', 10001, 2, 628.44, 85.38, 167, 1, NULL, 1, '<p>农副产品简介2</p>', '2022-02-09 15:57:38');
INSERT INTO `goods` VALUES (3, 2, '农副产品名称3', 3, 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395020751.webp', 10002, 1, 949.82, 185.96, 267, 1, NULL, 1, '<p>农副产品简介3</p>', '2022-02-09 15:57:38');
INSERT INTO `goods` VALUES (4, 2, '农副产品名称4', 2, 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395013449.webp', 10000, 2, 708.52, 136.25, 363, 1, NULL, 1, '<p>农副产品简介4</p>', '2022-02-09 15:57:38');
INSERT INTO `goods` VALUES (5, 3, '农副产品名称5', 1, 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395005596.jpg', 10005, 2, 642.23, 162.98, 453, 1, NULL, 1, '<p>农副产品简介5</p>', '2022-02-09 15:57:38');
INSERT INTO `goods` VALUES (6, 3, '农副产品名称6', 2, 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394994872.jpg', 10006, 2, 544.89, 113.58, 186, 1, NULL, 1, '<p>农副产品简介6</p>', '2022-02-09 15:57:38');
INSERT INTO `goods` VALUES (7, 2, '农副产品名称7', 3, 'http://localhost:8080/nonfuchanpinxiaoshou/upload/photo.jpg', 10007, 2, 706.69, 135.00, 85, 1, NULL, 2, '农副产品简介7', '2022-02-09 15:57:38');
INSERT INTO `goods` VALUES (8, 1, '农副产品名称8', 2, 'http://localhost:8080/nonfuchanpinxiaoshou/upload/photo1.jpg', 10008, 2, 694.01, 270.61, 154, 1, NULL, 2, '农副产品简介8', '2022-02-09 15:57:38');
INSERT INTO `goods` VALUES (9, 1, '农副产品名称9', 3, 'http://localhost:8080/nonfuchanpinxiaoshou/upload/photo2.jpg', 10009, 1, 848.15, 286.13, 305, 1, NULL, 2, '农副产品简介9', '2022-02-09 15:57:38');
INSERT INTO `goods` VALUES (10, 1, '农副产品名称10', 1, 'http://localhost:8080/nonfuchanpinxiaoshou/upload/photo3.jpg', 100010, 2, 654.41, 125.84, 213, 1, NULL, 2, '农副产品简介10', '2022-02-09 15:57:38');
INSERT INTO `goods` VALUES (11, 1, '农副产品名称11', 1, 'http://localhost:8080/nonfuchanpinxiaoshou/upload/photo4.jpg', 100011, 1, 661.13, 428.60, 448, 1, NULL, 2, '农副产品简介11', '2022-02-09 15:57:38');
INSERT INTO `goods` VALUES (12, 1, '111', 1, '', 111, 2, NULL, NULL, 1, 2, NULL, 1, '<p>1111</p>', '2024-04-29 09:53:54');
INSERT INTO `goods` VALUES (13, 1, '222', 3, '', 2222, 2, NULL, NULL, 1, 2, NULL, 1, '<p>222</p>', '2024-04-29 09:54:35');
INSERT INTO `goods` VALUES (14, 1, '333', 3, '', 333, 2, NULL, NULL, 1, 2, NULL, 1, '<p>333</p>', '2024-04-29 09:56:13');
INSERT INTO `goods` VALUES (15, 1, '444', 3, '', 444, 2, NULL, NULL, 1, 2, NULL, 1, '<p>444</p>', '2024-04-29 09:56:44');
INSERT INTO `goods` VALUES (16, 1, '555', 3, '', 555, 2, NULL, NULL, 1, 3, NULL, 1, '<p>555</p>', '2024-04-29 09:57:22');

-- ----------------------------
-- Table structure for goods_commentback
-- ----------------------------
DROP TABLE IF EXISTS `goods_commentback`;
CREATE TABLE `goods_commentback`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int NULL DEFAULT NULL COMMENT '农副产品',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `goods_commentback_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评价内容',
  `reply_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '农副产品评价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_commentback
-- ----------------------------
INSERT INTO `goods_commentback` VALUES (1, 1, 2, '评价内容1', '回复信息1', '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `goods_commentback` VALUES (2, 2, 1, '评价内容2', '回复信息2', '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `goods_commentback` VALUES (3, 3, 2, '评价内容3', '回复信息3', '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `goods_commentback` VALUES (4, 4, 2, '评价内容4', '回复信息4', '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `goods_commentback` VALUES (5, 5, 2, '评价内容5', '回复信息5', '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `goods_commentback` VALUES (6, 6, 2, '评价内容6', '回复信息6', '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `goods_commentback` VALUES (7, 7, 2, '评价内容7', '回复信息7', '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `goods_commentback` VALUES (8, 8, 3, '评价内容8', '回复信息8', '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `goods_commentback` VALUES (9, 9, 1, '评价内容9', '回复信息9', '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `goods_commentback` VALUES (10, 10, 1, '评价内容10', '回复信息10', '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `goods_commentback` VALUES (11, 11, 2, '评价内容11', '回复信息11', '2022-02-09 15:57:38', '2022-02-09 15:57:38', '2022-02-09 15:57:38');
INSERT INTO `goods_commentback` VALUES (12, 4, 1, '购买完成后可以评论', '管理和 农户可以回复11111', '2022-02-14 21:36:45', '2022-02-14 21:38:20', '2022-02-14 21:36:45');

-- ----------------------------
-- Table structure for goods_order
-- ----------------------------
DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE `goods_order`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_uuid_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `address_id` int NULL DEFAULT NULL COMMENT '收获地址 ',
  `goods_id` int NULL DEFAULT NULL COMMENT '农副产品',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `buy_number` int NULL DEFAULT NULL COMMENT '购买的数量',
  `goods_order_true_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '实付价格 ',
  `goods_order_types` int NULL DEFAULT NULL COMMENT '订单类型',
  `goods_order_payment_types` int NULL DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '农副产品订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_order
-- ----------------------------
INSERT INTO `goods_order` VALUES (4, '1644396256661', 8, 3, 1, 1, 185.96, 2, 1, '2022-02-09 16:44:17', '2022-02-09 16:44:17');
INSERT INTO `goods_order` VALUES (5, '1644396256661', 8, 2, 1, 1, 85.38, 3, 1, '2024-01-12 16:44:17', '2024-01-12 16:44:17');
INSERT INTO `goods_order` VALUES (6, '1644396256661', 8, 6, 1, 1, 136.25, 2, 1, '2022-02-09 16:44:17', '2022-02-09 16:44:17');
INSERT INTO `goods_order` VALUES (7, '1644845748955', 5, 4, 1, 3, 408.75, 5, 1, '2022-02-14 21:35:49', '2022-02-14 21:35:49');
INSERT INTO `goods_order` VALUES (8, '1714378645137', 9, 4, 1, 1, 136.25, 1, 1, '2024-04-29 08:17:25', '2024-04-29 08:17:25');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int NOT NULL COMMENT '新闻类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '新闻名称1', 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395296183.jpg', 2, '2022-02-09 15:57:38', '<p>新闻详情1</p>', '2022-02-09 15:57:38');
INSERT INTO `news` VALUES (2, '新闻名称2', 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395289584.jpg', 2, '2022-02-09 15:57:38', '<p>新闻详情2</p>', '2022-02-09 15:57:38');
INSERT INTO `news` VALUES (3, '新闻名称3', 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395283035.jpg', 1, '2022-02-09 15:57:38', '<p>新闻详情3</p>', '2022-02-09 15:57:38');
INSERT INTO `news` VALUES (4, '新闻名称4', 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395276575.jpg', 1, '2022-02-09 15:57:38', '<p>新闻详情4</p>', '2022-02-09 15:57:38');
INSERT INTO `news` VALUES (5, '新闻名称5', 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395268139.jpg', 1, '2022-02-09 15:57:38', '<p>新闻详情5</p>', '2022-02-09 15:57:38');
INSERT INTO `news` VALUES (6, '新闻名称6', 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644395262192.jpg', 2, '2022-02-09 15:57:38', '<p>新闻详情6</p>', '2022-02-09 15:57:38');

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农户名称 Search111 ',
  `shangjia_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shangjia_yesno_types` int NULL DEFAULT NULL COMMENT '审核状态',
  `shangjia_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '农户头像 ',
  `new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '农户简介 ',
  `shangjia_delete` int NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '农户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES (1, 'a1', '123456', '农户名称1', '17703786901', '1@qq.com', 2, 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394640455.webp', 429.98, '<p>农户简介1</p>', 1, '2022-02-09 15:57:38');
INSERT INTO `shangjia` VALUES (2, 'a2', '123456', '农户名称2', '17703786902', '2@qq.com', 2, 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394652467.jpg', 612.71, '<p>农户简介2</p>', 1, '2022-02-09 15:57:38');
INSERT INTO `shangjia` VALUES (3, 'a3', '123456', '农户名称3', '17703786903', '3@qq.com', 3, 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394619183.jpg', 398.54, '<p>农户简介3</p>', 1, '2022-02-09 15:57:38');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', 'c3onld08r0s321ma1tkqjowj8o7vktxe', '2022-02-09 15:59:52', '2024-04-29 10:58:12');
INSERT INTO `token` VALUES (2, 1, 'a1', 'yonghu', '用户', 'qhbaccpg7e19ajccbu6or3jb8pq8oc2p', '2022-02-09 16:30:10', '2024-04-29 09:15:55');
INSERT INTO `token` VALUES (3, 1, 'a1', 'shangjia', '农户', 'gjfb9u4dw0d90qk2secjmd26g2exjjxh', '2022-02-09 16:52:29', '2024-04-29 10:57:14');
INSERT INTO `token` VALUES (4, 2, 'a2', 'shangjia', '农户', 'qj2upo4pghzdaytic546yqvtks0et2ga', '2022-02-09 17:14:17', '2022-02-14 22:38:13');
INSERT INTO `token` VALUES (5, 3, 'a3', 'yonghu', '用户', 'v9o6i2v1s5r3p1ucr9otsbuyuwp3foqq', '2022-02-09 17:19:34', '2022-02-09 18:19:35');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2021-02-25 15:59:12');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int NULL DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int NULL DEFAULT 1 COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, 'a1', '123456', '用户姓名1', 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394682541.jpg', '17703786901', '410224199610232001', 2, 9900.88, 1, '2022-02-09 15:57:38');
INSERT INTO `yonghu` VALUES (2, 'a2', '123456', '用户姓名2', 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394674035.jpg', '17703786902', '410224199610232002', 1, 977.12, 1, '2022-02-09 15:57:38');
INSERT INTO `yonghu` VALUES (3, 'a3', '123456', '用户姓名3', 'http://localhost:8080/nonfuchanpinxiaoshou/file/download?fileName=1644394664025.webp', '17703786903', '410224199610232003', 1, 416.60, 1, '2022-02-09 15:57:38');

SET FOREIGN_KEY_CHECKS = 1;
