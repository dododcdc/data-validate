/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : ncbc

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 19/04/2021 08:27:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wb_field_rule
-- ----------------------------
DROP TABLE IF EXISTS `wb_field_rule`;
CREATE TABLE `wb_field_rule`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `db_id` int(11) NULL DEFAULT NULL COMMENT '资源id',
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则编码',
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wb_field_rule
-- ----------------------------
INSERT INTO `wb_field_rule` VALUES (1, 2, 'addresses', '0002', 'address');
INSERT INTO `wb_field_rule` VALUES (2, 1, 'car_price', '0002', 'brand');
INSERT INTO `wb_field_rule` VALUES (10, 2, 'addresses', '0001', 'name');
INSERT INTO `wb_field_rule` VALUES (11, 2, 'greatests', '0002', 'y');
INSERT INTO `wb_field_rule` VALUES (12, 4, 'a', '0001', 'name');
INSERT INTO `wb_field_rule` VALUES (13, 1, 'business_day_report', '0002', 'company_name');
INSERT INTO `wb_field_rule` VALUES (14, 1, 'business_day_report', '0001,0002', 'business_date');
INSERT INTO `wb_field_rule` VALUES (15, 1, 'ab_date', '0002', 'date');
INSERT INTO `wb_field_rule` VALUES (16, 2, 'accounts', '0001,0002', 'prc_date');
INSERT INTO `wb_field_rule` VALUES (17, 2, 'accounts', '0002', 'prc_amt');
INSERT INTO `wb_field_rule` VALUES (18, 4, 'ods_zpgd_eat_daysaleinfo', '0001', 'ordertype');
INSERT INTO `wb_field_rule` VALUES (19, 2, 'addresses', '0001,0002', 'family_id');
INSERT INTO `wb_field_rule` VALUES (20, 1, 'demodata', '0001', 'turnover');
INSERT INTO `wb_field_rule` VALUES (21, 1, 'demodata', '0001,0002', 'business_date');
INSERT INTO `wb_field_rule` VALUES (22, 4, 'null_empty', '0001', 'id');

-- ----------------------------
-- Table structure for wb_metadata_source
-- ----------------------------
DROP TABLE IF EXISTS `wb_metadata_source`;
CREATE TABLE `wb_metadata_source`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `db_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_type` int(2) NULL DEFAULT NULL,
  `driver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wb_metadata_source
-- ----------------------------
INSERT INTO `wb_metadata_source` VALUES (1, 'jdbc:mysql://localhost:3306/db1', 'root', '1111', 'db1', 0, 'com.mysql.jdbc.Driver');
INSERT INTO `wb_metadata_source` VALUES (2, 'jdbc:mysql://localhost:3306/sql_jinjiejiaocheng', 'root', '1111', 'sql_jinjiejiaocheng', 0, 'com.mysql.jdbc.Driver');
INSERT INTO `wb_metadata_source` VALUES (4, 'jdbc:hive2://172.16.20.42:21050/nbcb;auth=noSasl', 'root', '2w3e4r5t', 'nbcb', 1, 'org.apache.hive.jdbc.HiveDriver');

-- ----------------------------
-- Table structure for wb_rule
-- ----------------------------
DROP TABLE IF EXISTS `wb_rule`;
CREATE TABLE `wb_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `validate_sql` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '通用校验sql',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则描述',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wb_rule
-- ----------------------------
INSERT INTO `wb_rule` VALUES (1, 'select count(*) from ${table} where ${field} is null', '值不能为null', '0001');
INSERT INTO `wb_rule` VALUES (2, 'select count(*) from \r\n(select count(${field}) as c from ${table}) a \r\njoin \r\n(select count(distinct ${field}) as c from ${table}) b \r\non a.c <> b.c', '字段值不重复', '0002');

SET FOREIGN_KEY_CHECKS = 1;
