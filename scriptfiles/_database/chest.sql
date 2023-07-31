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

 Date: 30/07/2023 19:50:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chest
-- ----------------------------
DROP TABLE IF EXISTS `chest`;
CREATE TABLE `chest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posx` float(11, 6) NULL DEFAULT NULL,
  `posy` float(11, 6) NULL DEFAULT NULL,
  `posz` float(11, 6) NULL DEFAULT NULL,
  `item0` int(11) NULL DEFAULT NULL,
  `item1` int(11) NULL DEFAULT NULL,
  `item2` int(11) NULL DEFAULT NULL,
  `item3` int(11) NULL DEFAULT NULL,
  `item4` int(11) NULL DEFAULT NULL,
  `item5` int(11) NULL DEFAULT NULL,
  `item6` int(11) NULL DEFAULT NULL,
  `item7` int(11) NULL DEFAULT NULL,
  `item8` int(11) NULL DEFAULT NULL,
  `item9` int(11) NULL DEFAULT NULL,
  `item10` int(11) NULL DEFAULT NULL,
  `item11` int(11) NULL DEFAULT NULL,
  `item12` int(11) NULL DEFAULT NULL,
  `item13` int(11) NULL DEFAULT NULL,
  `item14` int(11) NULL DEFAULT NULL,
  `item15` int(11) NULL DEFAULT NULL,
  `item16` int(11) NULL DEFAULT NULL,
  `item17` int(11) NULL DEFAULT NULL,
  `item18` int(11) NULL DEFAULT NULL,
  `item19` int(11) NULL DEFAULT NULL,
  `amount0` int(11) NULL DEFAULT NULL,
  `amount1` int(11) NULL DEFAULT NULL,
  `amount2` int(11) NULL DEFAULT NULL,
  `amount3` int(11) NULL DEFAULT NULL,
  `amount4` int(11) NULL DEFAULT NULL,
  `amount5` int(11) NULL DEFAULT NULL,
  `amount6` int(11) NULL DEFAULT NULL,
  `amount7` int(11) NULL DEFAULT NULL,
  `amount8` int(11) NULL DEFAULT NULL,
  `amount9` int(11) NULL DEFAULT NULL,
  `amount10` int(11) NULL DEFAULT NULL,
  `amount11` int(11) NULL DEFAULT NULL,
  `amount12` int(11) NULL DEFAULT NULL,
  `amount13` int(11) NULL DEFAULT NULL,
  `amount14` int(11) NULL DEFAULT NULL,
  `amount15` int(11) NULL DEFAULT NULL,
  `amount16` int(11) NULL DEFAULT NULL,
  `amount17` int(11) NULL DEFAULT NULL,
  `amount18` int(11) NULL DEFAULT NULL,
  `amount19` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
