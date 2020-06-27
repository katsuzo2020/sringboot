/*
Navicat MySQL Data Transfer

Source Server         : download
Source Server Version : 80018
Source Host           : 192.168.1.70:3306
Source Database       : download

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-06-24 20:01:34
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

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `software_name` varchar(255) DEFAULT NULL,
  `software_type` varchar(255) DEFAULT NULL,
  `software_url` varchar(255) DEFAULT NULL,
  `Specification` varchar(255) DEFAULT NULL,
  `Cid` int(11) DEFAULT NULL,
  `software_imge` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `d_c_id` (`Cid`),
  CONSTRAINT `d_c_id` FOREIGN KEY (`Cid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='private int id;\r\n//软件的名称\r\nprivate String software_name;\r\n//软件的类型名\r\nprivate String software_type;\r\n//软件的下载地址\r\nprivate String software_url;\r\n//对软件的描述\r\nprivate String Specification;\r\n//区分软件的类型id\r\nprivate int cid;\r\nId\r\nsoftware_category\r\nprivate String software_imge;';

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES ('1', 'Baofeng16-9', 'application/x-msdownload', 'Baofeng16-9.04.1029.1111.exe', null, '162', 'ico/Baofeng16-9.ico', '2020-05-23');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `isadmin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '10', '1', '1');
