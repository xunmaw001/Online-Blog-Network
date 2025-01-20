/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : springboot2o1bg

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2020-11-09 16:52:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `boke`
-- ----------------------------
DROP TABLE IF EXISTS `boke`;
CREATE TABLE `boke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bokemingcheng` varchar(200) NOT NULL COMMENT '博客名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='博客';

-- ----------------------------
-- Records of boke
-- ----------------------------
INSERT INTO `boke` VALUES ('1', '2020-11-09 16:15:40', '名称1', 'C++', '人工智能', 'http://localhost:8080/springboot2o1bg/upload/1604910141610.jpg', '<p>内容1</p>', '2020-11-10', '用户名1');
INSERT INTO `boke` VALUES ('2', '2020-11-09 16:15:40', '名称2', 'java', '架构', 'http://localhost:8080/springboot2o1bg/upload/1604910158600.jpeg', '<p>内容2</p>', '2020-11-24', '用户名2');
INSERT INTO `boke` VALUES ('3', '2020-11-09 16:15:40', '名称3', 'html', '前端', 'http://localhost:8080/springboot2o1bg/upload/1604910176394.jpg', '<p>内容3</p>', '2020-11-22', '用户名3');

-- ----------------------------
-- Table structure for `bokebiaoqian`
-- ----------------------------
DROP TABLE IF EXISTS `bokebiaoqian`;
CREATE TABLE `bokebiaoqian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `biaoqian` varchar(200) NOT NULL COMMENT '标签',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `biaoqian` (`biaoqian`)
) ENGINE=InnoDB AUTO_INCREMENT=1604910123763 DEFAULT CHARSET=utf8 COMMENT='博客标签';

-- ----------------------------
-- Records of bokebiaoqian
-- ----------------------------
INSERT INTO `bokebiaoqian` VALUES ('1', '2020-11-09 16:15:40', '人工智能', 'http://localhost:8080/springboot2o1bg/upload/1604910042439.jpg');
INSERT INTO `bokebiaoqian` VALUES ('2', '2020-11-09 16:15:40', '环境搭建', 'http://localhost:8080/springboot2o1bg/upload/1604910062468.jpg');
INSERT INTO `bokebiaoqian` VALUES ('3', '2020-11-09 16:15:40', '架构', 'http://localhost:8080/springboot2o1bg/upload/1604910073397.jpg');
INSERT INTO `bokebiaoqian` VALUES ('1604910115156', '2020-11-09 16:21:54', ' 数据库 ', 'http://localhost:8080/springboot2o1bg/upload/1604910114251.jpg');
INSERT INTO `bokebiaoqian` VALUES ('1604910123762', '2020-11-09 16:22:03', '前端', 'http://localhost:8080/springboot2o1bg/upload/1604910121153.jpg');

-- ----------------------------
-- Table structure for `bokefenlei`
-- ----------------------------
DROP TABLE IF EXISTS `bokefenlei`;
CREATE TABLE `bokefenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='博客分类';

-- ----------------------------
-- Records of bokefenlei
-- ----------------------------
INSERT INTO `bokefenlei` VALUES ('1', '2020-11-09 16:15:40', 'java', 'http://localhost:8080/springboot2o1bg/upload/1604910013599.jpg');
INSERT INTO `bokefenlei` VALUES ('2', '2020-11-09 16:15:40', 'html', 'http://localhost:8080/springboot2o1bg/upload/1604910022825.jpg');
INSERT INTO `bokefenlei` VALUES ('3', '2020-11-09 16:15:40', 'C++', 'http://localhost:8080/springboot2o1bg/upload/1604910031622.jpeg');

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/springboot2o1bg/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/springboot2o1bg/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/springboot2o1bg/upload/picture3.jpg');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/springboot2o1bg/upload/picture4.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/springboot2o1bg/upload/picture5.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for `discussboke`
-- ----------------------------
DROP TABLE IF EXISTS `discussboke`;
CREATE TABLE `discussboke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='博客评论表';

-- ----------------------------
-- Records of discussboke
-- ----------------------------
INSERT INTO `discussboke` VALUES ('1', '2020-11-09 16:15:40', '1', '评论内容1', '1');
INSERT INTO `discussboke` VALUES ('2', '2020-11-09 16:15:40', '2', '评论内容2', '2');
INSERT INTO `discussboke` VALUES ('3', '2020-11-09 16:15:40', '3', '评论内容3', '3');

-- ----------------------------
-- Table structure for `discusstukuxiangce`
-- ----------------------------
DROP TABLE IF EXISTS `discusstukuxiangce`;
CREATE TABLE `discusstukuxiangce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='图库相册评论表';

-- ----------------------------
-- Records of discusstukuxiangce
-- ----------------------------
INSERT INTO `discusstukuxiangce` VALUES ('1', '2020-11-09 16:15:40', '1', '评论内容1', '1');
INSERT INTO `discusstukuxiangce` VALUES ('2', '2020-11-09 16:15:40', '2', '评论内容2', '2');
INSERT INTO `discusstukuxiangce` VALUES ('3', '2020-11-09 16:15:40', '3', '评论内容3', '3');

-- ----------------------------
-- Table structure for `forum`
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '是否关闭[关闭/开放]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='论坛表';

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('1', '2020-11-09 16:15:40', '帖子标题1', '帖子内容1', '1', '1', '用户名1', '是否关闭[关闭/开放]1');
INSERT INTO `forum` VALUES ('2', '2020-11-09 16:15:40', '帖子标题2', '帖子内容2', '2', '2', '用户名2', '是否关闭[关闭/开放]2');
INSERT INTO `forum` VALUES ('3', '2020-11-09 16:15:40', '帖子标题3', '帖子内容3', '3', '3', '用户名3', '是否关闭[关闭/开放]3');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '2020-11-09 16:15:40', '标题1', 'http://localhost:8080/springboot2o1bg/upload/1604910257407.jpg', '<p>内容1</p>');
INSERT INTO `news` VALUES ('2', '2020-11-09 16:15:40', '标题2', 'http://localhost:8080/springboot2o1bg/upload/1604910318757.jpg', '<p>内容2</p>');
INSERT INTO `news` VALUES ('3', '2020-11-09 16:15:40', '标题3', 'http://localhost:8080/springboot2o1bg/upload/1604910270314.jpg', '<p>内容3</p>');

-- ----------------------------
-- Table structure for `storeup`
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1', '2020-11-09 16:15:40', '1', '1', '表名1', '收藏名称1', 'http://localhost:8080/springboot2o1bg/upload/storeup_picture1.jpg');
INSERT INTO `storeup` VALUES ('2', '2020-11-09 16:15:40', '2', '2', '表名2', '收藏名称2', 'http://localhost:8080/springboot2o1bg/upload/storeup_picture2.jpg');
INSERT INTO `storeup` VALUES ('3', '2020-11-09 16:15:40', '3', '3', '表名3', '收藏名称3', 'http://localhost:8080/springboot2o1bg/upload/storeup_picture3.jpg');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', 'tlx5fl1auo64av157u23cwu7r9bh7h9x', '2020-11-09 16:18:53', '2020-11-09 09:41:38');

-- ----------------------------
-- Table structure for `tukuxiangce`
-- ----------------------------
DROP TABLE IF EXISTS `tukuxiangce`;
CREATE TABLE `tukuxiangce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `xiangcemingcheng` varchar(200) NOT NULL COMMENT '相册名称',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `xiangcefengmian` varchar(200) DEFAULT NULL COMMENT '相册封面',
  `xiangceneirong` longtext COMMENT '相册内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='图库相册';

-- ----------------------------
-- Records of tukuxiangce
-- ----------------------------
INSERT INTO `tukuxiangce` VALUES ('1', '2020-11-09 16:15:40', '相册名称1', '标签1', 'http://localhost:8080/springboot2o1bg/upload/1604910190520.jpg', '<p><img src=\"http://localhost:8080/springboot2o1bg/upload/1604910200658.jpg\"><img src=\"http://localhost:8080/springboot2o1bg/upload/1604910203049.jpeg\"></p>', '2020-11-16', '用户1');
INSERT INTO `tukuxiangce` VALUES ('2', '2020-11-09 16:15:40', '相册名称2', '标签2', 'http://localhost:8080/springboot2o1bg/upload/1604910215292.jpg', '<p><img src=\"http://localhost:8080/springboot2o1bg/upload/1604910219462.jpg\"><img src=\"http://localhost:8080/springboot2o1bg/upload/1604910221785.jpg\"></p>', '2020-11-18', '用户2');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-11-09 16:15:40');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '2020-11-09 16:15:40', '用户1', '123456', '姓名1', '男', '13823888881', 'http://localhost:8080/springboot2o1bg/upload/yonghu_zhaopian1.jpg');
INSERT INTO `yonghu` VALUES ('2', '2020-11-09 16:15:40', '用户2', '123456', '姓名2', '男', '13823888882', 'http://localhost:8080/springboot2o1bg/upload/yonghu_zhaopian2.jpg');
INSERT INTO `yonghu` VALUES ('3', '2020-11-09 16:15:40', '用户3', '123456', '姓名3', '男', '13823888883', 'http://localhost:8080/springboot2o1bg/upload/yonghu_zhaopian3.jpg');
