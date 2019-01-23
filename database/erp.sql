/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : erp

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-01-23 16:50:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `powername` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `leaf` int(2) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power
-- ----------------------------
INSERT INTO `power` VALUES ('1', '用户管理', '一级菜单', '1', '0', '0');
INSERT INTO `power` VALUES ('2', '用户管理', '二级菜单', '1', '1', '1');
INSERT INTO `power` VALUES ('3', '角色管理', '二级菜单', '1', '1', '1');
INSERT INTO `power` VALUES ('4', '权限管理', '二级菜单', '1', '1', '1');
INSERT INTO `power` VALUES ('11', '订单管理', '订单', '1', '0', '0');
INSERT INTO `power` VALUES ('6', '角色权限管理', '二级菜单', '1', '1', '1');
INSERT INTO `power` VALUES ('8', '测试', '测试', '1', '0', '0');
INSERT INTO `power` VALUES ('9', '测试1', '测试1', '1', '1', '8');
INSERT INTO `power` VALUES ('10', '测试3', '测试3', '1', '1', '8');
INSERT INTO `power` VALUES ('12', '订单信息', '二级菜单', '1', '1', '11');
INSERT INTO `power` VALUES ('13', '报表管理', '一级菜单', '1', '0', '0');
INSERT INTO `power` VALUES ('14', '图表管理', '二级菜单', '1', '1', '13');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', '管理员', '1');
INSERT INTO `role` VALUES ('2', '测试', '测试', '1');

-- ----------------------------
-- Table structure for rolepower
-- ----------------------------
DROP TABLE IF EXISTS `rolepower`;
CREATE TABLE `rolepower` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `powerid` int(11) DEFAULT NULL,
  `roleid` int(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolepower
-- ----------------------------
INSERT INTO `rolepower` VALUES ('1', '1', '1', '1');
INSERT INTO `rolepower` VALUES ('2', '2', '1', '1');
INSERT INTO `rolepower` VALUES ('3', '3', '1', '1');
INSERT INTO `rolepower` VALUES ('4', '4', '1', '1');
INSERT INTO `rolepower` VALUES ('26', '11', '1', '1');
INSERT INTO `rolepower` VALUES ('6', '6', '1', '1');
INSERT INTO `rolepower` VALUES ('13', '5', '2', '1');
INSERT INTO `rolepower` VALUES ('14', '6', '2', '1');
INSERT INTO `rolepower` VALUES ('15', '4', '2', '2');
INSERT INTO `rolepower` VALUES ('19', '8', '1', '1');
INSERT INTO `rolepower` VALUES ('20', '9', '1', '1');
INSERT INTO `rolepower` VALUES ('21', '10', '1', '1');
INSERT INTO `rolepower` VALUES ('22', '1', '2', '1');
INSERT INTO `rolepower` VALUES ('23', '8', '2', '1');
INSERT INTO `rolepower` VALUES ('24', '9', '2', '1');
INSERT INTO `rolepower` VALUES ('25', '10', '2', '1');
INSERT INTO `rolepower` VALUES ('27', '12', '1', '1');
INSERT INTO `rolepower` VALUES ('28', '13', '1', '1');
INSERT INTO `rolepower` VALUES ('29', '14', '1', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `account` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `six` int(2) DEFAULT NULL COMMENT '性别 0 男 1 女',
  `address` varchar(255) DEFAULT NULL COMMENT '用户地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `age` int(255) DEFAULT NULL COMMENT '年龄',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `status` int(255) DEFAULT NULL COMMENT '状态',
  `isDelete` varchar(255) DEFAULT NULL COMMENT '是否被删除 0 没被删除 1 被删除',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `update_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('20', 'test', 'test', '202cb962ac59075b964b07152d234b70', '1', 'sdf', '17777777777', '25', '25@qq.com', '1', '0', null, null, null);

-- ----------------------------
-- Table structure for userrole
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userrole
-- ----------------------------
INSERT INTO `userrole` VALUES ('4', '20', '1');
