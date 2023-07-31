/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50515 (5.5.15)
 Source Host           : localhost:3306
 Source Schema         : svn

 Target Server Type    : MySQL
 Target Server Version : 50515 (5.5.15)
 File Encoding         : 65001

 Date: 25/07/2023 21:19:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `item` int(11) NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inventory
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
