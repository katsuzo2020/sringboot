/*
Navicat MySQL Data Transfer

Source Server         : download
Source Server Version : 80018
Source Host           : 192.168.1.70:3306
Source Database       : download

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-06-24 19:59:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `software_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('149', '办公软件');
INSERT INTO `category` VALUES ('155', '安全杀毒');
INSERT INTO `category` VALUES ('156', '输入法');
INSERT INTO `category` VALUES ('157', '浏览器');
INSERT INTO `category` VALUES ('159', '办公软件');
INSERT INTO `category` VALUES ('161', '打印机驱动');
INSERT INTO `category` VALUES ('162', '维护工具');
INSERT INTO `category` VALUES ('169', '其他软件');
