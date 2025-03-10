/*
 Navicat Premium Data Transfer

 Source Server         : 家用笔记本MySQL
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : 192.168.1.103:3306
 Source Schema         : vvs

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 10/03/2025 12:54:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (3, 'v_type', '视频类别', NULL, NULL, 'VType', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'type', '视频类别', 'ruoyi', '0', '/', '{\"parentMenuId\":0}', 'admin', '2025-03-06 16:42:27', '', '2025-03-06 16:50:29', NULL);
INSERT INTO `gen_table` VALUES (4, 'v_video', '视频信息', NULL, NULL, 'VVideo', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'video', '视频信息', 'wahaha', '0', '/', '{}', 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57', NULL);
INSERT INTO `gen_table` VALUES (5, 'refresh_info', '爬虫更新表', NULL, NULL, 'RefreshInfo', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'info', '更新表', 'wahaha', '0', '/', '{}', 'admin', '2025-03-06 18:49:09', '', '2025-03-06 18:50:37', NULL);
INSERT INTO `gen_table` VALUES (6, 'v_person', '用户表', NULL, NULL, 'VPerson', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'person', '用户表', 'wahaha', '0', '/', '{}', 'admin', '2025-03-07 11:30:12', '', '2025-03-07 11:34:39', NULL);
INSERT INTO `gen_table` VALUES (7, 'v_vip', '会员表', NULL, NULL, 'VVip', 'crud', 'element-ui', 'com.ruoyi.por', 'por', 'vip', '会员表', 'ruoyi', '0', '/', '{}', 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:51:23', NULL);
INSERT INTO `gen_table` VALUES (8, 'v_vip_type', '会员类别表', NULL, NULL, 'VVipType', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'type', '会员类别表', 'wahaha', '0', '/', '{}', 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:33:31', NULL);
INSERT INTO `gen_table` VALUES (9, 'v_fx', '分销类别表', NULL, NULL, 'VFx', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'fx', '分销类别', 'wahaha', '0', '/', '{}', 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:09:29', NULL);
INSERT INTO `gen_table` VALUES (10, 'v_fx_person', '分销商信息表', NULL, NULL, 'VFxPerson', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'fxPerson', '分销商信息', 'wahaha', '0', '/', '{\"parentMenuId\":0}', 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:33:52', NULL);
INSERT INTO `gen_table` VALUES (11, 'v_sys', '系统信息', NULL, NULL, 'VSys', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'sys', '系统信息', 'wahaha', '0', '/', '{\"parentMenuId\":0}', 'admin', '2025-03-09 18:43:23', '', '2025-03-09 18:47:28', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (6, 3, 'type_id', '自增ID', 'int', 'Long', 'typeId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-06 16:42:27', '', '2025-03-06 16:50:29');
INSERT INTO `gen_table_column` VALUES (7, 3, 'type_name', '视频类别', 'varchar(255)', 'String', 'typeName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-03-06 16:42:27', '', '2025-03-06 16:50:29');
INSERT INTO `gen_table_column` VALUES (8, 3, 'status', '状态', 'tinyint', 'Long', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 3, 'admin', '2025-03-06 16:42:27', '', '2025-03-06 16:50:29');
INSERT INTO `gen_table_column` VALUES (9, 3, 'type_pid', '父级ID', 'int unsigned', 'Long', 'typePid', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', 'video_type', 4, 'admin', '2025-03-06 16:42:27', '', '2025-03-06 16:50:29');
INSERT INTO `gen_table_column` VALUES (10, 4, 'vod_id', '自增ID', 'int', 'Long', 'vodId', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (11, 4, 'vod_name', '名称', 'varchar(255)', 'String', 'vodName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (12, 4, 'type_id', '类别ID', 'int', 'Long', 'typeId', '0', '0', '0', '1', '1', '0', '1', 'EQ', 'select', 'video_type', 3, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (13, 4, 'type_name', '类别名称', 'varchar(255)', 'String', 'typeName', '0', '0', '0', '1', '1', '1', '0', 'LIKE', 'input', '', 4, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (14, 4, 'vod_en', '拼音名称', 'varchar(255)', 'String', 'vodEn', '0', '0', '0', '1', '1', '0', '0', 'EQ', 'input', '', 5, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (15, 4, 'vod_create_time', '视频上传日期', 'timestamp', 'Date', 'vodCreateTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (16, 4, 'vod_remarks', '备注信息', 'varchar(255)', 'String', 'vodRemarks', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (17, 4, 'vod_play_form', '视频播放格式', 'varchar(255)', 'String', 'vodPlayForm', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (18, 4, 'vod_img', '视频背景图片', 'varchar(255)', 'String', 'vodImg', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (19, 4, 'vod_times', '视频播放时长', 'int', 'Long', 'vodTimes', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (20, 4, 'vod_area', '地区信息', 'varchar(255)', 'String', 'vodArea', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (21, 4, 'vod_actor', '视频主演', 'varchar(255)', 'String', 'vodActor', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (22, 4, 'vod_url', '视频播放地址', 'varchar(255)', 'String', 'vodUrl', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 13, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (23, 4, 'status', '状态', 'tinyint', 'Long', 'status', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'radio', '', 14, 'admin', '2025-03-06 17:12:36', '', '2025-03-06 17:14:57');
INSERT INTO `gen_table_column` VALUES (24, 5, 'id', '自增ID', 'int', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-06 18:49:09', '', '2025-03-06 18:50:37');
INSERT INTO `gen_table_column` VALUES (25, 5, 'refresh_type', '更新类别', 'varchar(255)', 'String', 'refreshType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2025-03-06 18:49:09', '', '2025-03-06 18:50:37');
INSERT INTO `gen_table_column` VALUES (26, 5, 'refresh_status', '更新状态', 'varchar(255)', 'String', 'refreshStatus', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'radio', '', 3, 'admin', '2025-03-06 18:49:09', '', '2025-03-06 18:50:37');
INSERT INTO `gen_table_column` VALUES (27, 5, 'refresh_tik', '更新标识符', 'varchar(255)', 'String', 'refreshTik', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2025-03-06 18:49:09', '', '2025-03-06 18:50:37');
INSERT INTO `gen_table_column` VALUES (28, 6, 'person_id', '自增ID', 'int', 'Long', 'personId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-07 11:30:12', '', '2025-03-07 11:34:39');
INSERT INTO `gen_table_column` VALUES (29, 6, 'acc', '账号', 'varchar(255)', 'String', 'acc', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-07 11:30:12', '', '2025-03-07 11:34:39');
INSERT INTO `gen_table_column` VALUES (30, 6, 'pwd', '密码', 'varchar(255)', 'String', 'pwd', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2025-03-07 11:30:12', '', '2025-03-07 11:34:39');
INSERT INTO `gen_table_column` VALUES (31, 6, 'nick_name', '昵称', 'varchar(255)', 'String', 'nickName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2025-03-07 11:30:12', '', '2025-03-07 11:34:39');
INSERT INTO `gen_table_column` VALUES (32, 6, 'create_time', '创建日期', 'timestamp', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2025-03-07 11:30:12', '', '2025-03-07 11:34:39');
INSERT INTO `gen_table_column` VALUES (33, 6, 'phone', '电话号码', 'varchar(255)', 'String', 'phone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-03-07 11:30:12', '', '2025-03-07 11:34:39');
INSERT INTO `gen_table_column` VALUES (34, 6, 'avatar', '头像', 'varchar(255)', 'String', 'avatar', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2025-03-07 11:30:12', '', '2025-03-07 11:34:39');
INSERT INTO `gen_table_column` VALUES (35, 6, 'sex', '性别', 'varchar(255)', 'String', 'sex', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 8, 'admin', '2025-03-07 11:30:12', '', '2025-03-07 11:34:39');
INSERT INTO `gen_table_column` VALUES (36, 6, 'borth_day', '出生日期', 'timestamp', 'Date', 'borthDay', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2025-03-07 11:30:12', '', '2025-03-07 11:34:39');
INSERT INTO `gen_table_column` VALUES (37, 7, 'vip_id', '自增ID', 'int', 'Long', 'vipId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:51:23');
INSERT INTO `gen_table_column` VALUES (38, 7, 'vip_type_id', '会员类别ID', 'int', 'Long', 'vipTypeId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:51:23');
INSERT INTO `gen_table_column` VALUES (39, 7, 'person_id', '用户ID', 'int', 'Long', 'personId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:51:23');
INSERT INTO `gen_table_column` VALUES (40, 7, 'end_time', '到期时间', 'timestamp', 'Date', 'endTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:51:23');
INSERT INTO `gen_table_column` VALUES (41, 8, 'vip_type_id', '自增ID', 'int', 'Long', 'vipTypeId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:33:31');
INSERT INTO `gen_table_column` VALUES (42, 8, 'vip_type', '类别名称', 'varchar(255)', 'String', 'vipType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:33:31');
INSERT INTO `gen_table_column` VALUES (43, 8, 'remarks', '描述', 'varchar(255)', 'String', 'remarks', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 3, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:33:31');
INSERT INTO `gen_table_column` VALUES (44, 8, 'vip_des', '简介', 'varchar(255)', 'String', 'vipDes', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:33:31');
INSERT INTO `gen_table_column` VALUES (45, 8, 'price', '单价', 'decimal(10,2)', 'BigDecimal', 'price', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:33:31');
INSERT INTO `gen_table_column` VALUES (46, 8, 'dw', '单位类型', 'varchar(255)', 'String', 'dw', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:33:31');
INSERT INTO `gen_table_column` VALUES (47, 8, 'status', '状态', 'tinyint', 'Boolean', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 7, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:33:31');
INSERT INTO `gen_table_column` VALUES (48, 8, 'create_time', '添加时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2025-03-07 11:30:19', '', '2025-03-07 11:33:32');
INSERT INTO `gen_table_column` VALUES (49, 9, 'fx_id', '分销ID', 'int', 'Long', 'fxId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:09:29');
INSERT INTO `gen_table_column` VALUES (50, 9, 'fx_leave', '分销级别', 'varchar(255)', 'String', 'fxLeave', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', 'fx_leave', 2, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:09:29');
INSERT INTO `gen_table_column` VALUES (51, 9, 'fx_type', '分销类别', 'varchar(255)', 'String', 'fxType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', 'fx_type', 3, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:09:29');
INSERT INTO `gen_table_column` VALUES (52, 9, 'fx_bl', '分销比率', 'varchar(255)', 'String', 'fxBl', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:09:29');
INSERT INTO `gen_table_column` VALUES (53, 9, 'status', '开启状态', 'varchar(255)', 'String', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:09:29');
INSERT INTO `gen_table_column` VALUES (54, 9, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:09:29');
INSERT INTO `gen_table_column` VALUES (55, 9, 'fx_up', '提升机制数量', 'int', 'Long', 'fxUp', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:09:29');
INSERT INTO `gen_table_column` VALUES (56, 10, 'v_fx_id', '分销ID', 'int', 'Long', 'vFxId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:33:52');
INSERT INTO `gen_table_column` VALUES (57, 10, 'v_fx_pid', '分销用户ID', 'int', 'Long', 'vFxPid', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:33:52');
INSERT INTO `gen_table_column` VALUES (58, 10, 'v_fx_fid', '分销级别ID', 'int', 'Long', 'vFxFid', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:33:52');
INSERT INTO `gen_table_column` VALUES (59, 10, 'v_fx_fName', '分销级别', 'varchar(255)', 'String', 'vFxFname', '0', '0', '0', '1', '1', '1', '0', 'LIKE', 'textarea', '', 4, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:33:52');
INSERT INTO `gen_table_column` VALUES (60, 10, 'v_fx_team', '团队成员', 'longtext', 'String', 'vFxTeam', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:33:52');
INSERT INTO `gen_table_column` VALUES (61, 10, 'create_time', '开通日期', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2025-03-08 13:04:39', '', '2025-03-08 13:33:52');
INSERT INTO `gen_table_column` VALUES (62, 11, 'sys_id', 'ID', 'int', 'Long', 'sysId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-09 18:43:23', '', '2025-03-09 18:47:28');
INSERT INTO `gen_table_column` VALUES (63, 11, 'sys_name', '系统名称', 'varchar(255)', 'String', 'sysName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-03-09 18:43:23', '', '2025-03-09 18:47:28');
INSERT INTO `gen_table_column` VALUES (64, 11, 'sys_type', '系统类型', 'varchar(255)', 'String', 'sysType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', 'sys_type', 3, 'admin', '2025-03-09 18:43:23', '', '2025-03-09 18:47:28');
INSERT INTO `gen_table_column` VALUES (65, 11, 'sys_icp', 'ICP备案号', 'varchar(255)', 'String', 'sysIcp', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2025-03-09 18:43:23', '', '2025-03-09 18:47:28');
INSERT INTO `gen_table_column` VALUES (66, 11, 'sys_police', '网安备案号', 'varchar(255)', 'String', 'sysPolice', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2025-03-09 18:43:23', '', '2025-03-09 18:47:28');
INSERT INTO `gen_table_column` VALUES (67, 11, 'sys_logo', 'LOGO', 'varchar(255)', 'String', 'sysLogo', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2025-03-09 18:43:23', '', '2025-03-09 18:47:28');
INSERT INTO `gen_table_column` VALUES (68, 11, 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2025-03-09 18:43:23', '', '2025-03-09 18:47:28');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for refresh_info
-- ----------------------------
DROP TABLE IF EXISTS `refresh_info`;
CREATE TABLE `refresh_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `refresh_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新类别',
  `refresh_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新状态',
  `refresh_tik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新标识符',
  `refresh_python` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新脚本路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of refresh_info
-- ----------------------------
INSERT INTO `refresh_info` VALUES (2, '类型目录', 'N', 'typeCode', 'E:\\\\pythonSpace\\\\testPython\\\\main.py');
INSERT INTO `refresh_info` VALUES (3, '视频源', 'Y', 'videoCode', 'E:\\\\pythonSpace\\\\testPython\\\\main.py');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2025-03-06 14:56:22', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2025-03-06 14:56:22', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2025-03-06 14:56:22', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2025-03-06 14:56:22', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2025-03-06 14:56:22', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2025-03-06 14:56:22', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '蜉蝣科技', 0, '管理员', '18288889999', 'fy@cmail.com', '0', '0', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-06 20:51:31');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '代理商分公司一', 1, '代理商一', '15888888888', 'dls01@cmail.com', '0', '0', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-06 20:20:18');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2025-03-06 14:56:21', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '技术研发中心', 1, '东东', '13308889949', 'dongdong@cmail.com', '0', '0', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-06 20:20:59');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2025-03-06 14:56:21', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2025-03-06 14:56:21', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2025-03-06 14:56:21', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2025-03-06 14:56:21', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2025-03-06 14:56:21', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2025-03-06 14:56:21', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 0, '一级分销', '0', 'fx_leave', NULL, 'default', 'N', '0', 'admin', '2025-03-08 13:06:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 1, '二级分销', '1', 'fx_leave', NULL, 'default', 'N', '0', 'admin', '2025-03-08 13:06:26', 'admin', '2025-03-08 13:06:40', NULL);
INSERT INTO `sys_dict_data` VALUES (102, 2, '三级分销', '2', 'fx_leave', NULL, 'default', 'N', '0', 'admin', '2025-03-08 13:06:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 0, '邀请码邀请', '0', 'fx_type', NULL, 'success', 'N', '0', 'admin', '2025-03-08 13:07:30', 'admin', '2025-03-08 13:07:56', NULL);
INSERT INTO `sys_dict_data` VALUES (104, 0, '内部邀请', '1', 'fx_type', NULL, 'warning', 'N', '0', 'admin', '2025-03-08 13:07:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 0, '数据系统', '0', 'sys_type', NULL, 'primary', 'N', '0', 'admin', '2025-03-09 18:45:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 1, '业务管理系统', '1', 'sys_type', NULL, 'success', 'N', '0', 'admin', '2025-03-09 18:46:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 2, '商城系统', '2', 'sys_type', NULL, 'warning', 'N', '0', 'admin', '2025-03-09 18:46:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 3, '外卖系统', '3', 'sys_type', NULL, 'danger', 'N', '0', 'admin', '2025-03-09 18:46:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 4, '其他', '4', 'sys_type', NULL, 'info', 'N', '0', 'admin', '2025-03-09 18:47:09', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2025-03-06 14:56:22', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '视频类别', 'video_type', '0', 'admin', '2025-03-06 15:29:36', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (101, '分销级别', 'fx_leave', '0', 'admin', '2025-03-08 13:05:45', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '分销类别', 'fx_type', '0', 'admin', '2025-03-08 13:05:58', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '系统类别', 'sys_type', '0', 'admin', '2025-03-09 18:45:30', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2025-03-06 14:56:22', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2025-03-06 14:56:22', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2025-03-06 14:56:22', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 190 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 15:27:59');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 16:42:05');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-06 18:22:15');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 18:22:21');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 18:30:10');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-06 19:24:14');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 19:24:22');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-06 19:25:28');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 19:25:34');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-06 19:27:06');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 19:27:12');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-06 19:34:28');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 19:34:32');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-06 19:36:34');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 19:47:21');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-06 19:47:30');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 19:47:44');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-06 19:52:51');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 19:52:54');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-06 19:53:52');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 19:53:57');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-06 19:54:12');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-03-06 19:54:24');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 19:54:27');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-06 19:55:28');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-07 11:03:50');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-07 14:19:49');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-07 15:05:21');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-07 15:05:44');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-07 15:05:49');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-07 15:06:22');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-07 15:06:35');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-07 15:06:44');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-07 15:07:01');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-07 16:23:28');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-07 16:55:25');
INSERT INTO `sys_logininfor` VALUES (136, NULL, '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2025-03-07 18:43:33');
INSERT INTO `sys_logininfor` VALUES (137, '最后的男人', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2025-03-07 18:48:26');
INSERT INTO `sys_logininfor` VALUES (138, '最后的男人', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2025-03-07 18:59:16');
INSERT INTO `sys_logininfor` VALUES (139, '最后的男人', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2025-03-07 19:08:26');
INSERT INTO `sys_logininfor` VALUES (140, '最后的男人', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-03-07 19:11:09');
INSERT INTO `sys_logininfor` VALUES (141, '最后的男人', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-03-07 19:12:00');
INSERT INTO `sys_logininfor` VALUES (142, '最后的男人', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-03-07 19:12:03');
INSERT INTO `sys_logininfor` VALUES (143, '最后的男人', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2025-03-07 19:17:32');
INSERT INTO `sys_logininfor` VALUES (144, '674158881@qq.com', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2025-03-07 19:20:20');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-07 19:20:40');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-07 19:27:01');
INSERT INTO `sys_logininfor` VALUES (147, '674158881@qq.com', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2025-03-07 19:27:30');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-08 11:06:57');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-08 14:17:27');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-08 14:31:17');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-08 14:31:27');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-08 14:31:33');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-08 14:31:57');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-08 14:32:04');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-08 14:32:35');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-08 14:32:41');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-08 14:34:33');
INSERT INTO `sys_logininfor` VALUES (158, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-08 14:34:40');
INSERT INTO `sys_logininfor` VALUES (159, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-08 14:34:50');
INSERT INTO `sys_logininfor` VALUES (160, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-08 14:35:19');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-08 14:35:27');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-08 14:35:31');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-08 14:35:36');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-08 14:35:48');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-08 14:36:01');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-08 14:37:15');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-08 14:42:53');
INSERT INTO `sys_logininfor` VALUES (168, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-08 14:42:58');
INSERT INTO `sys_logininfor` VALUES (169, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-08 14:43:49');
INSERT INTO `sys_logininfor` VALUES (170, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-09 01:02:16');
INSERT INTO `sys_logininfor` VALUES (171, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-09 01:02:26');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-09 01:02:33');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-09 01:09:07');
INSERT INTO `sys_logininfor` VALUES (174, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-09 01:09:14');
INSERT INTO `sys_logininfor` VALUES (175, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-09 01:10:50');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-09 01:10:57');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-09 01:11:57');
INSERT INTO `sys_logininfor` VALUES (178, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-03-09 01:12:06');
INSERT INTO `sys_logininfor` VALUES (179, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-09 01:12:10');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-09 01:35:10');
INSERT INTO `sys_logininfor` VALUES (181, '15692786655', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-09 01:35:12');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-09 01:35:22');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-03-09 01:51:30');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-09 01:51:39');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-09 18:28:47');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2025-03-09 19:27:05');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2025-03-09 19:50:42');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2025-03-09 19:50:49');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2025-03-09 19:50:50');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2049 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 8, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-07 11:43:13', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 9, 'monitor', NULL, '', '', 1, 0, 'M', '1', '1', '', 'monitor', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-07 11:43:06', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 10, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-07 11:42:53', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 12, 'http://ruoyi.vip', NULL, '', '', 0, 0, 'M', '1', '1', '', 'guide', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-07 11:42:59', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '平台账号管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-07 11:45:46', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2025-03-06 14:56:21', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2025-03-06 14:56:21', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2025-03-06 14:56:21', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2025-03-06 14:56:21', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2025-03-06 14:56:21', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '1', '1', 'system:config:list', 'edit', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-06 15:59:28', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '1', '1', 'system:notice:list', 'message', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-06 15:59:33', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '1', '1', '', 'log', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-06 20:22:06', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2025-03-06 14:56:21', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2025-03-06 14:56:21', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2025-03-06 14:56:21', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2025-03-06 14:56:21', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2025-03-06 14:56:21', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2025-03-06 14:56:21', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '1', '1', 'tool:build:list', 'build', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-08 14:13:19', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2025-03-06 14:56:21', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '1', '1', 'tool:swagger:list', 'swagger', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-08 14:13:25', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2025-03-06 14:56:21', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2025-03-06 14:56:21', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '视频类别', 1, 4, 'type', 'system/type/index', NULL, 'type', 1, 0, 'C', '1', '1', 'system:type:list', 'github', 'admin', '2025-03-06 15:41:37', 'admin', '2025-03-06 15:59:18', '');
INSERT INTO `sys_menu` VALUES (2001, '视频类别管理', 0, 1, 'type', 'system/type/index', NULL, 'type', 1, 0, 'C', '0', '0', 'system:type:list', 'clipboard', 'admin', '2025-03-06 15:57:57', 'admin', '2025-03-06 17:20:49', '');
INSERT INTO `sys_menu` VALUES (2002, '视频管理', 0, 0, 'video', 'system/video/index', NULL, 'video', 1, 0, 'C', '0', '0', 'system:video:list', 'international', 'admin', '2025-03-06 17:19:40', 'admin', '2025-03-06 17:21:11', '');
INSERT INTO `sys_menu` VALUES (2003, '信息更新', 0, 1, 'info', 'system/info/index', NULL, 'info', 1, 0, 'C', '0', '0', 'system:info:list', 'redis', 'admin', '2025-03-06 18:54:01', 'admin', '2025-03-06 18:54:38', '');
INSERT INTO `sys_menu` VALUES (2004, '会员管理', 0, 2, 'vType', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'peoples', 'admin', '2025-03-07 11:42:27', 'admin', '2025-03-07 11:49:04', '');
INSERT INTO `sys_menu` VALUES (2005, '类别信息', 2004, 1, 'vType', 'system/vType/index', NULL, 'vType', 1, 0, 'C', '0', '0', 'system:vType:list', 'dict', 'admin', '2025-03-07 11:44:57', 'admin', '2025-03-07 12:00:34', '');
INSERT INTO `sys_menu` VALUES (2006, '用户管理', 0, 3, 'person', 'system/person/index', NULL, '', 1, 0, 'C', '0', '0', 'system:person:list', 'peoples', 'admin', '2025-03-07 11:46:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '会员信息', 2004, 0, 'vip', 'por/vip/index', NULL, '', 1, 0, 'C', '0', '0', 'por:vip:list', 'documentation', 'admin', '2025-03-07 12:00:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '分销管理', 0, 4, 'fx', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'cascader', 'admin', '2025-03-08 13:12:30', 'admin', '2025-03-08 13:13:56', '');
INSERT INTO `sys_menu` VALUES (2009, '分销类别管理', 2008, 1, 'fx', 'system/fx/index', NULL, '', 1, 0, 'C', '0', '0', 'system:fx:list', 'list', 'admin', '2025-03-08 13:13:23', 'admin', '2025-03-08 14:41:47', '');
INSERT INTO `sys_menu` VALUES (2010, '分销商管理', 2008, 0, 'fxPerson', 'system/fxPerson/index', NULL, '', 1, 0, 'C', '0', '0', 'system:fxPerson:list', 'peoples', 'admin', '2025-03-08 13:37:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '查询', 2007, 0, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'por:vip:query', '#', 'admin', '2025-03-08 14:39:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '添加', 2007, 1, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'por:vip:add', '#', 'admin', '2025-03-08 14:39:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '修改', 2007, 2, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'por:vip:edit', '#', 'admin', '2025-03-08 14:40:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '删除', 2007, 3, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'por:vip:remove', '#', 'admin', '2025-03-08 14:40:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '查询', 2010, 0, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:fxPerson:query', '#', 'admin', '2025-03-08 14:40:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '添加', 2010, 1, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:fxPerson:add', '#', 'admin', '2025-03-08 14:40:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '修改', 2010, 2, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:fxPerson:edit', '#', 'admin', '2025-03-08 14:41:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '删除', 2010, 3, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:fxPerson:remove', '#', 'admin', '2025-03-08 14:41:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '查询', 2009, 0, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:fx:query', '#', 'admin', '2025-03-08 14:41:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '添加', 2009, 1, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:fx:add', '#', 'admin', '2025-03-08 14:42:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '修改', 2009, 2, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:fx:edit', '#', 'admin', '2025-03-08 14:42:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '删除', 2009, 3, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:fx:remove', '#', 'admin', '2025-03-08 14:42:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '查询', 2002, 0, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:video:query', '#', 'admin', '2025-03-09 01:03:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '添加', 2002, 1, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:video:add', '#', 'admin', '2025-03-09 01:03:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '修改', 2002, 2, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:video:edit', '#', 'admin', '2025-03-09 01:03:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '删除', 2002, 3, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:video:remove', '#', 'admin', '2025-03-09 01:03:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '查询', 2001, 0, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:type:query', '#', 'admin', '2025-03-09 01:03:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '添加', 2001, 1, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:type:add', '#', 'admin', '2025-03-09 01:04:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '修改', 2001, 2, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:type:edit', '#', 'admin', '2025-03-09 01:04:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '删除', 2001, 3, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:type:remove', '#', 'admin', '2025-03-09 01:04:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '查询', 2003, 0, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:info:query', '#', 'admin', '2025-03-09 01:04:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '添加', 2003, 1, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:info:add', '#', 'admin', '2025-03-09 01:05:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '修改', 2003, 2, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:info:edit', '#', 'admin', '2025-03-09 01:05:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '删除', 2003, 3, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:info:remove', '#', 'admin', '2025-03-09 01:05:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '查询', 2006, 0, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:person:query', '#', 'admin', '2025-03-09 01:05:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '添加', 2006, 1, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:person:add', '#', 'admin', '2025-03-09 01:06:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '修改', 2006, 2, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:person:edit', '#', 'admin', '2025-03-09 01:06:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '删除', 2006, 3, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:person:remove', '#', 'admin', '2025-03-09 01:06:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '查询', 2005, 0, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:vType:query', '#', 'admin', '2025-03-09 01:07:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '添加', 2005, 1, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:vType:add', '#', 'admin', '2025-03-09 01:07:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '修改', 2005, 2, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:vType:edit', '#', 'admin', '2025-03-09 01:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '删除', 2005, 3, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:vType:remove', '#', 'admin', '2025-03-09 01:07:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '用户信息查询', 2010, 4, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:person:list', '#', 'admin', '2025-03-09 01:11:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '系统设置', 1, 22, 'sys', 'system/sys/index', NULL, '', 1, 0, 'C', '0', '0', 'system:sys:list', 'system', 'admin', '2025-03-09 18:50:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '查询', 2044, 0, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:sys:query', '#', 'admin', '2025-03-09 18:51:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '添加', 2044, 1, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:sys:add', '#', 'admin', '2025-03-09 18:51:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '修改', 2044, 2, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:sys:edit', '#', 'admin', '2025-03-09 18:51:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '删除', 2044, 3, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:sys:remove', '#', 'admin', '2025-03-09 18:51:53', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2025-03-06 14:56:22', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2025-03-06 14:56:22', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 384 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:28:38', 47);
INSERT INTO `sys_oper_log` VALUES (101, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"视频类别\",\"dictType\":\"video_type\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:29:36', 45);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"v_type\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:33:52', 214);
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"VType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"自增ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:33:52\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VideoType\",\"columnComment\":\"视频类别\",\"columnId\":2,\"columnName\":\"video_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:33:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"videoType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"wahaha\",\"functionName\":\"视频类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{}\",\"packageName\":\"com.ruoyi.system\",\"params\":{},\"sub\":false,\"tableComment\":\"视频类别\",\"tableId\":1,\"tableName\":\"v_type\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-ui\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:34:44', 71);
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_type\"}', NULL, 0, NULL, '2025-03-06 15:34:50', 340);
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/type/index\",\"createBy\":\"admin\",\"icon\":\"github\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"视频类别\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":1,\"path\":\"type\",\"perms\":\"system:type:list\",\"routeName\":\"type\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:41:37', 289);
INSERT INTO `sys_oper_log` VALUES (106, '视频类别', 1, 'com.ruoyi.web.controller.system.VTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/type', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [E:\\MyProjects\\周健兼职文件\\wapProject\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\VTypeMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.VTypeMapper.insertVType-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into v_type\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2025-03-06 15:42:13', 181);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"VType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"自增ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:33:52\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-03-06 15:34:44\",\"usableColumn\":false},{\"capJavaField\":\"VideoType\",\"columnComment\":\"视频类别\",\"columnId\":2,\"columnName\":\"video_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:33:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"videoType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-03-06 15:34:44\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"wahaha\",\"functionName\":\"视频类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":0}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":0},\"parentMenuId\":0,\"sub\":false,\"tableComment\":\"视频类别\",\"tableId\":1,\"tableName\":\"v_type\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-ui\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:43:45', 143);
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_type\"}', NULL, 0, NULL, '2025-03-06 15:43:50', 356);
INSERT INTO `sys_oper_log` VALUES (109, '视频类别', 1, 'com.ruoyi.web.controller.system.VTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/type', '127.0.0.1', '内网IP', '{\"params\":{},\"videoType\":\"国产短片\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\MyProjects\\周健兼职文件\\wapProject\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\VTypeMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.VTypeMapper.insertVType-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into v_type          ( video_type )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2025-03-06 15:44:59', 13);
INSERT INTO `sys_oper_log` VALUES (110, '视频类别', 1, 'com.ruoyi.web.controller.system.VTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/type', '127.0.0.1', '内网IP', '{\"params\":{},\"videoType\":\"国产短片\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\MyProjects\\周健兼职文件\\wapProject\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\VTypeMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.VTypeMapper.insertVType-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into v_type          ( video_type )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2025-03-06 15:45:04', 12);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"VType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"自增ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:33:52\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-03-06 15:43:45\",\"usableColumn\":false},{\"capJavaField\":\"VideoType\",\"columnComment\":\"视频类别\",\"columnId\":2,\"columnName\":\"video_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:33:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"videoType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-03-06 15:43:45\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"wahaha\",\"functionName\":\"视频类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":0}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":0},\"parentMenuId\":0,\"sub\":false,\"tableComment\":\"视频类别\",\"tableId\":1,\"tableName\":\"v_type\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-ui\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:45:59', 69);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_type\"}', NULL, 0, NULL, '2025-03-06 15:46:01', 81);
INSERT INTO `sys_oper_log` VALUES (113, '视频类别', 1, 'com.ruoyi.web.controller.system.VTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/type', '127.0.0.1', '内网IP', '{\"params\":{},\"videoType\":\"国产短片\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:47:37', 190);
INSERT INTO `sys_oper_log` VALUES (114, '视频类别', 1, 'com.ruoyi.web.controller.system.VTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/type', '127.0.0.1', '内网IP', '{\"params\":{},\"videoType\":\"国产长片\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:47:55', 30);
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/1', '127.0.0.1', '内网IP', '[1]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:49:38', 61);
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"v_type\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:49:44', 167);
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"VType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"自增ID\",\"columnId\":3,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:49:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VideoType\",\"columnComment\":\"视频类别\",\"columnId\":4,\"columnName\":\"video_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:49:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"videoType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"状态\",\"columnId\":5,\"columnName\":\"status\",\"columnType\":\"tinyint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:49:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"status\",\"javaType\":\"Boolean\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"wahaha\",\"functionName\":\"视频类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{}\",\"packageName\":\"com.ruoyi.system\",\"params\":{},\"sub\":false,\"tableComment\":\"视频类别\",\"tableId\":2,\"tableName\":\"v_type\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-ui\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:50:26', 97);
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_type\"}', NULL, 0, NULL, '2025-03-06 15:50:29', 266);
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"VType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"自增ID\",\"columnId\":3,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:49:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-03-06 15:50:26\",\"usableColumn\":false},{\"capJavaField\":\"VideoType\",\"columnComment\":\"视频类别\",\"columnId\":4,\"columnName\":\"video_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:49:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"videoType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-03-06 15:50:26\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"状态\",\"columnId\":5,\"columnName\":\"status\",\"columnType\":\"tinyint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 15:49:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"status\",\"javaType\":\"Boolean\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2025-03-06 15:50:26\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"wahaha\",\"functionName\":\"视频类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":0}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":0},\"parentMenuId\":0,\"sub\":false,\"tableComment\":\"视频类别\",\"tableId\":2,\"t', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:53:13', 127);
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_type\"}', NULL, 0, NULL, '2025-03-06 15:53:15', 291);
INSERT INTO `sys_oper_log` VALUES (121, '视频类别', 1, 'com.ruoyi.web.controller.system.VTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/type', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"status\":true,\"videoType\":\"国产短片\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:54:54', 42);
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/type/index\",\"createBy\":\"admin\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"视频类别管理\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"type\",\"perms\":\"system:type:list\",\"routeName\":\"type\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:57:57', 54);
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/type/index\",\"createTime\":\"2025-03-06 15:41:37\",\"icon\":\"github\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"视频类别\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":1,\"path\":\"type\",\"perms\":\"system:type:list\",\"routeName\":\"type\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:59:18', 33);
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/config/index\",\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":106,\"menuName\":\"参数设置\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":1,\"path\":\"config\",\"perms\":\"system:config:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:59:28', 26);
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/notice/index\",\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":1,\"path\":\"notice\",\"perms\":\"system:notice:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 15:59:33', 29);
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 16:00:00', 34);
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/2', '127.0.0.1', '内网IP', '[2]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 16:42:22', 103);
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"v_type\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 16:42:27', 180);
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"VType\",\"columns\":[{\"capJavaField\":\"TypeId\",\"columnComment\":\"自增ID\",\"columnId\":6,\"columnName\":\"type_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 16:42:27\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"typeId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypeName\",\"columnComment\":\"视频类别\",\"columnId\":7,\"columnName\":\"type_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 16:42:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"typeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"状态\",\"columnId\":8,\"columnName\":\"status\",\"columnType\":\"tinyint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 16:42:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"status\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypePid\",\"columnComment\":\"父级ID\",\"columnId\":9,\"columnName\":\"type_pid\",\"columnType\":\"int unsigned\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 16:42:27\",\"dictType\":\"video_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaFiel', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 16:44:05', 114);
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_type\"}', NULL, 0, NULL, '2025-03-06 16:44:08', 330);
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_type\"}', NULL, 0, NULL, '2025-03-06 16:50:21', 434);
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"VType\",\"columns\":[{\"capJavaField\":\"TypeId\",\"columnComment\":\"自增ID\",\"columnId\":6,\"columnName\":\"type_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 16:42:27\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"typeId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-03-06 16:44:05\",\"usableColumn\":false},{\"capJavaField\":\"TypeName\",\"columnComment\":\"视频类别\",\"columnId\":7,\"columnName\":\"type_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 16:42:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"typeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-03-06 16:44:05\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"状态\",\"columnId\":8,\"columnName\":\"status\",\"columnType\":\"tinyint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 16:42:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"status\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2025-03-06 16:44:05\",\"usableColumn\":false},{\"capJavaField\":\"TypePid\",\"columnComment\":\"父级ID\",\"columnId\":9,\"columnName\":\"type_pid\",\"columnType\":\"int unsigned\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 16:42:27\",\"dictType\":\"video_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEd', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 16:50:29', 173);
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_type\"}', NULL, 0, NULL, '2025-03-06 16:50:32', 64);
INSERT INTO `sys_oper_log` VALUES (134, '视频类别', 1, 'com.ruoyi.web.controller.system.VTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/type', '127.0.0.1', '内网IP', '{\"params\":{},\"typeId\":4,\"typeName\":\"国产短片\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 16:51:31', 25);
INSERT INTO `sys_oper_log` VALUES (135, '视频类别', 1, 'com.ruoyi.web.controller.system.VTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/type', '127.0.0.1', '内网IP', '{\"params\":{},\"status\":1,\"typeId\":5,\"typeName\":\"国产长片\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 17:01:47', 26);
INSERT INTO `sys_oper_log` VALUES (136, '视频类别', 1, 'com.ruoyi.web.controller.system.VTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/type', '127.0.0.1', '内网IP', '{\"params\":{},\"status\":1,\"typeId\":6,\"typeName\":\"亚洲情色\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 17:02:48', 20);
INSERT INTO `sys_oper_log` VALUES (137, '视频类别', 1, 'com.ruoyi.web.controller.system.VTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/type', '127.0.0.1', '内网IP', '{\"params\":{},\"status\":1,\"typeId\":7,\"typeName\":\"日本情色\",\"typePid\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 17:05:19', 32);
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"v_video\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 17:12:36', 296);
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"video\",\"className\":\"VVideo\",\"columns\":[{\"capJavaField\":\"VodId\",\"columnComment\":\"自增ID\",\"columnId\":10,\"columnName\":\"vod_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 17:12:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vodId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VodName\",\"columnComment\":\"名称\",\"columnId\":11,\"columnName\":\"vod_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 17:12:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vodName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypeId\",\"columnComment\":\"类别ID\",\"columnId\":12,\"columnName\":\"type_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 17:12:36\",\"dictType\":\"video_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"typeId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypeName\",\"columnComment\":\"类别名称\",\"columnId\":13,\"columnName\":\"type_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 17:12:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaFie', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 17:14:57', 199);
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_video\"}', NULL, 0, NULL, '2025-03-06 17:15:00', 81);
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/video/index\",\"createBy\":\"admin\",\"icon\":\"international\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"视频管理\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"video\",\"perms\":\"system:video:list\",\"routeName\":\"video\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 17:19:40', 174);
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/type/index\",\"createTime\":\"2025-03-06 15:57:57\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"视频类别管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"type\",\"perms\":\"system:type:list\",\"routeName\":\"type\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 17:20:49', 37);
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 17:20:55', 31);
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/video/index\",\"createTime\":\"2025-03-06 17:19:40\",\"icon\":\"international\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"视频管理\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"video\",\"perms\":\"system:video:list\",\"routeName\":\"video\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 17:21:11', 36);
INSERT INTO `sys_oper_log` VALUES (145, '视频信息', 1, 'com.ruoyi.web.controller.system.VVideoController.add()', 'POST', 1, 'admin', '研发部门', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [E:\\MyProjects\\周健兼职文件\\wapProject\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\VVideoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.VVideoMapper.insertVVideo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into v_video\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2025-03-06 17:52:10', 195);
INSERT INTO `sys_oper_log` VALUES (146, '视频信息', 1, 'com.ruoyi.web.controller.system.VVideoController.add()', 'POST', 1, 'admin', '研发部门', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [E:\\MyProjects\\周健兼职文件\\wapProject\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\VVideoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.VVideoMapper.insertVVideo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into v_video\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2025-03-06 17:52:17', 12);
INSERT INTO `sys_oper_log` VALUES (147, '视频信息', 1, 'com.ruoyi.web.controller.system.VVideoController.add()', 'POST', 1, 'admin', '研发部门', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{},\"typeId\":4,\"typeName\":\"国产短片\",\"vodActor\":\"Smith.Lily\",\"vodArea\":\"美国\",\"vodCreateTime\":\"2025-03-06\",\"vodEn\":\"fsdfsdfsd\",\"vodImg\":\"sdfsdfsdfsdf.jpg\",\"vodName\":\"撒旦发射点速度速度f\",\"vodPlayForm\":\"m3u8\",\"vodRemarks\":\"士大夫速度发射点速度发士大夫士大夫\",\"vodTimes\":82,\"vodUrl\":\"sdhfkshdjkfsdhfk.html\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'vod_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\MyProjects\\周健兼职文件\\wapProject\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\VVideoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.VVideoMapper.insertVVideo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into v_video          ( vod_name,             type_id,             type_name,             vod_en,             vod_create_time,             vod_remarks,             vod_play_form,             vod_img,             vod_times,             vod_area,             vod_actor,             vod_url )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'vod_id\' doesn\'t have a default value\n; Field \'vod_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'vod_id\' doesn\'t have a default value', '2025-03-06 18:02:11', 43);
INSERT INTO `sys_oper_log` VALUES (148, '视频信息', 1, 'com.ruoyi.web.controller.system.VVideoController.add()', 'POST', 1, 'admin', '研发部门', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{},\"typeId\":4,\"typeName\":\"国产短片\",\"vodActor\":\"Smith.Lily\",\"vodArea\":\"美国\",\"vodCreateTime\":\"2025-03-06\",\"vodEn\":\"fsdfsdfsd\",\"vodImg\":\"sdfsdfsdfsdf.jpg\",\"vodName\":\"撒旦发射点速度速度f\",\"vodPlayForm\":\"m3u8\",\"vodRemarks\":\"士大夫速度发射点速度发士大夫士大夫\",\"vodTimes\":82,\"vodUrl\":\"sdhfkshdjkfsdhfk.html\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'vod_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\MyProjects\\周健兼职文件\\wapProject\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\VVideoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.VVideoMapper.insertVVideo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into v_video          ( vod_name,             type_id,             type_name,             vod_en,             vod_create_time,             vod_remarks,             vod_play_form,             vod_img,             vod_times,             vod_area,             vod_actor,             vod_url )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'vod_id\' doesn\'t have a default value\n; Field \'vod_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'vod_id\' doesn\'t have a default value', '2025-03-06 18:02:16', 25);
INSERT INTO `sys_oper_log` VALUES (149, '视频信息', 1, 'com.ruoyi.web.controller.system.VVideoController.add()', 'POST', 1, 'admin', '研发部门', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{},\"typeId\":4,\"typeName\":\"国产短片\",\"vodActor\":\"Smith.Lily\",\"vodArea\":\"美国\",\"vodCreateTime\":\"2025-03-06\",\"vodEn\":\"fsdfsdfsd\",\"vodImg\":\"sdfsdfsdfsdf.jpg\",\"vodName\":\"撒旦发射点速度速度f\",\"vodPlayForm\":\"m3u8\",\"vodRemarks\":\"士大夫速度发射点速度发士大夫士大夫\",\"vodTimes\":82,\"vodUrl\":\"sdhfkshdjkfsdhfk.html\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 18:02:30', 22);
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"refresh_info\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 18:49:09', 229);
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"info\",\"className\":\"RefreshInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"自增ID\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 18:49:09\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RefreshType\",\"columnComment\":\"更新类别\",\"columnId\":25,\"columnName\":\"refresh_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 18:49:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"refreshType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RefreshStatus\",\"columnComment\":\"更新状态\",\"columnId\":26,\"columnName\":\"refresh_status\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 18:49:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"refreshStatus\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RefreshTik\",\"columnComment\":\"更新标识符\",\"columnId\":27,\"columnName\":\"refresh_tik\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-06 18:49:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuer', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 18:50:37', 103);
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"refresh_info\"}', NULL, 0, NULL, '2025-03-06 18:50:40', 297);
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/info/index\",\"createBy\":\"admin\",\"icon\":\"download\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"信息更新\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"info\",\"perms\":\"system:info:list\",\"routeName\":\"info\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 18:54:01', 212);
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/info/index\",\"createTime\":\"2025-03-06 18:54:01\",\"icon\":\"redis\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"信息更新\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"info\",\"perms\":\"system:info:list\",\"routeName\":\"info\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 18:54:38', 28);
INSERT INTO `sys_oper_log` VALUES (155, '更新表', 1, 'com.ruoyi.web.controller.system.RefreshInfoController.add()', 'POST', 1, 'admin', '研发部门', '/system/info', '127.0.0.1', '内网IP', '{\"id\":1,\"params\":{},\"refreshStatus\":\"类型目录\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 19:06:18', 26);
INSERT INTO `sys_oper_log` VALUES (156, '更新表', 1, 'com.ruoyi.web.controller.system.RefreshInfoController.add()', 'POST', 1, 'admin', '研发部门', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshStatus\":\"1\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 19:07:29', 16);
INSERT INTO `sys_oper_log` VALUES (157, '更新表', 1, 'com.ruoyi.web.controller.system.RefreshInfoController.add()', 'POST', 1, 'admin', '研发部门', '/system/info', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshStatus\":\"Y\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 19:13:28', 15);
INSERT INTO `sys_oper_log` VALUES (158, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 19:16:16', 12);
INSERT INTO `sys_oper_log` VALUES (159, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/info', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshStatus\":\"N\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 19:16:48', 49);
INSERT INTO `sys_oper_log` VALUES (160, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/info', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshStatus\":\"N\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 19:16:53', 13);
INSERT INTO `sys_oper_log` VALUES (161, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 19:17:59', 11);
INSERT INTO `sys_oper_log` VALUES (162, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/101', '127.0.0.1', '内网IP', '101', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":601}', 0, NULL, '2025-03-06 20:14:56', 28);
INSERT INTO `sys_oper_log` VALUES (163, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/103', '127.0.0.1', '内网IP', '103', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', 0, NULL, '2025-03-06 20:15:03', 17);
INSERT INTO `sys_oper_log` VALUES (164, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/104', '127.0.0.1', '内网IP', '104', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:15:08', 33);
INSERT INTO `sys_oper_log` VALUES (165, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/105', '127.0.0.1', '内网IP', '105', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', 0, NULL, '2025-03-06 20:15:11', 14);
INSERT INTO `sys_oper_log` VALUES (166, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/106', '127.0.0.1', '内网IP', '106', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:15:14', 48);
INSERT INTO `sys_oper_log` VALUES (167, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/107', '127.0.0.1', '内网IP', '107', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:15:17', 32);
INSERT INTO `sys_oper_log` VALUES (168, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/109', '127.0.0.1', '内网IP', '109', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:15:19', 34);
INSERT INTO `sys_oper_log` VALUES (169, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/108', '127.0.0.1', '内网IP', '108', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:15:21', 34);
INSERT INTO `sys_oper_log` VALUES (170, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/102', '127.0.0.1', '内网IP', '102', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:15:23', 25);
INSERT INTO `sys_oper_log` VALUES (171, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/user/2', '127.0.0.1', '内网IP', '[2]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:17:35', 112);
INSERT INTO `sys_oper_log` VALUES (172, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/105', '127.0.0.1', '内网IP', '105', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:17:46', 34);
INSERT INTO `sys_oper_log` VALUES (173, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"六盘水蜉蝣科技\",\"email\":\"fy@cmail.com\",\"leader\":\"管理员\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"18288889999\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:19:31', 61);
INSERT INTO `sys_oper_log` VALUES (174, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"代理商分公司一\",\"email\":\"dls01@cmail.com\",\"leader\":\"代理商一\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"parentName\":\"六盘水蜉蝣科技\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:20:18', 101);
INSERT INTO `sys_oper_log` VALUES (175, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"技术研发中心\",\"email\":\"dongdong@cmail.com\",\"leader\":\"东东\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"parentName\":\"代理商分公司一\",\"phone\":\"13308889949\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:21:00', 66);
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":108,\"menuName\":\"日志管理\",\"menuType\":\"M\",\"orderNum\":9,\"params\":{},\"parentId\":1,\"path\":\"log\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:22:06', 31);
INSERT INTO `sys_oper_log` VALUES (177, '视频信息', 2, 'com.ruoyi.web.controller.system.VVideoController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{},\"status\":1,\"typeId\":4,\"typeName\":\"国产短片\",\"vodActor\":\"Smith.Lily\",\"vodArea\":\"美国-阿拉斯加州-婆宁区\",\"vodCreateTime\":\"2025-03-06\",\"vodEn\":\"fsdfsdfsd\",\"vodId\":1,\"vodImg\":\"sdfsdfsdfsdf.jpg\",\"vodName\":\"撒旦发射点速度速度f\",\"vodPlayForm\":\"m3u8\",\"vodRemarks\":\"士大夫速度发射点速度发士大夫士大夫\",\"vodTimes\":82,\"vodUrl\":\"sdhfkshdjkfsdhfk.html\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:24:17', 26);
INSERT INTO `sys_oper_log` VALUES (178, '视频信息', 2, 'com.ruoyi.web.controller.system.VVideoController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{},\"status\":1,\"typeId\":4,\"typeName\":\"国产短片\",\"vodActor\":\"Smith.Lily\",\"vodArea\":\"美国-阿拉斯加州-婆宁区\",\"vodCreateTime\":\"2025-03-06\",\"vodEn\":\"xiaodujuan\",\"vodId\":1,\"vodImg\":\"https://www.sks011.com/images/dd.jpg\",\"vodName\":\"小杜鹃_STS_佩奇的奇遇\",\"vodPlayForm\":\"m3u8\",\"vodRemarks\":\"士大夫速度发射点速度发士大夫士大夫\",\"vodTimes\":82,\"vodUrl\":\"https://www.sks011.com/d/1988736/pms.html\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:26:10', 29);
INSERT INTO `sys_oper_log` VALUES (179, '视频信息', 2, 'com.ruoyi.web.controller.system.VVideoController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{},\"status\":1,\"typeId\":4,\"typeName\":\"国产短片\",\"vodActor\":\"Smith.Lily\",\"vodArea\":\"美国-阿拉斯加州-婆宁区\",\"vodCreateTime\":\"2025-03-06\",\"vodEn\":\"xiaodujuan\",\"vodId\":1,\"vodImg\":\"https://www.sks011.com/images/dd.jpg\",\"vodName\":\"小杜鹃_STS_佩奇的奇遇\",\"vodPlayForm\":\"m3u8\",\"vodRemarks\":\"你懂的，你懂的。\",\"vodTimes\":82,\"vodUrl\":\"https://www.sks011.com/d/1988736/pms.html\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:26:39', 32);
INSERT INTO `sys_oper_log` VALUES (180, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/06/navbarFirst_20250306203837A001.jpg\",\"code\":200}', 0, NULL, '2025-03-06 20:38:38', 212);
INSERT INTO `sys_oper_log` VALUES (181, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"蜉蝣科技\",\"email\":\"fy@cmail.com\",\"leader\":\"管理员\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"18288889999\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-06 20:51:31', 48);
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '技术研发中心', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"v_person\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:30:12', 217);
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '技术研发中心', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"v_vip_type,v_vip\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:30:19', 223);
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '技术研发中心', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"VVipType\",\"columns\":[{\"capJavaField\":\"VipTypeId\",\"columnComment\":\"自增ID\",\"columnId\":41,\"columnName\":\"vip_type_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vipTypeId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VipType\",\"columnComment\":\"类别名称\",\"columnId\":42,\"columnName\":\"vip_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vipType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Remarks\",\"columnComment\":\"描述\",\"columnId\":43,\"columnName\":\"remarks\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"remarks\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VipDes\",\"columnComment\":\"简介\",\"columnId\":44,\"columnName\":\"vip_des\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:33:32', 201);
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '技术研发中心', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"person\",\"className\":\"VPerson\",\"columns\":[{\"capJavaField\":\"PersonId\",\"columnComment\":\"自增ID\",\"columnId\":28,\"columnName\":\"person_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"personId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Acc\",\"columnComment\":\"账号\",\"columnId\":29,\"columnName\":\"acc\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"acc\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Pwd\",\"columnComment\":\"密码\",\"columnId\":30,\"columnName\":\"pwd\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"pwd\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NickName\",\"columnComment\":\"昵称\",\"columnId\":31,\"columnName\":\"nick_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"nickName\",\"jav', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:34:39', 192);
INSERT INTO `sys_oper_log` VALUES (186, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术研发中心', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_vip_type,v_person\"}', NULL, 0, NULL, '2025-03-07 11:35:27', 397);
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"会员管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"system\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:42:27', 585);
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '技术研发中心', '/system/menu/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2025-03-07 11:42:41', 22);
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":10,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:42:53', 46);
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":12,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:42:59', 27);
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":9,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:43:06', 26);
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:43:13', 28);
INSERT INTO `sys_oper_log` VALUES (193, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-07 11:42:27\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2004,\"menuName\":\"会员管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:43:21', 28);
INSERT INTO `sys_oper_log` VALUES (194, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/vType/index\",\"createBy\":\"admin\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"会员类别管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2004,\"path\":\"vType\",\"perms\":\"system:vType:list\",\"routeName\":\"vType\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:44:57', 27);
INSERT INTO `sys_oper_log` VALUES (195, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/user/index\",\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":100,\"menuName\":\"平台账号管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"path\":\"user\",\"perms\":\"system:user:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:45:46', 30);
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/person/index\",\"createBy\":\"admin\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"用户管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"person\",\"perms\":\"system:person:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:46:35', 34);
INSERT INTO `sys_oper_log` VALUES (197, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-07 11:42:27\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2004,\"menuName\":\"会员管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"vType\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:49:04', 26);
INSERT INTO `sys_oper_log` VALUES (198, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '技术研发中心', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"vip\",\"className\":\"VVip\",\"columns\":[{\"capJavaField\":\"VipId\",\"columnComment\":\"自增ID\",\"columnId\":37,\"columnName\":\"vip_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vipId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VipTypeId\",\"columnComment\":\"会员类别ID\",\"columnId\":38,\"columnName\":\"vip_type_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vipTypeId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PersonId\",\"columnComment\":\"用户ID\",\"columnId\":39,\"columnName\":\"person_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"personId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EndTime\",\"columnComment\":\"到期时间\",\"columnId\":40,\"columnName\":\"end_time\",\"columnType\":\"timestamp\",\"createBy\":\"admin\",\"createTime\":\"2025-03-07 11:30:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"endTime\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 11:51:23', 135);
INSERT INTO `sys_oper_log` VALUES (199, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术研发中心', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_vip\"}', NULL, 0, NULL, '2025-03-07 11:51:26', 234);
INSERT INTO `sys_oper_log` VALUES (200, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"por/vip/index\",\"createBy\":\"admin\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"会员信息\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2004,\"path\":\"vip\",\"perms\":\"por:vip:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 12:00:24', 146);
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/vType/index\",\"createTime\":\"2025-03-07 11:44:57\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2005,\"menuName\":\"类别信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2004,\"path\":\"vType\",\"perms\":\"system:vType:list\",\"routeName\":\"vType\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 12:00:34', 49);
INSERT INTO `sys_oper_log` VALUES (202, '会员类别表', 1, 'com.ruoyi.web.controller.system.VVipTypeController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/vType', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-07 12:23:59\",\"dw\":\"月卡\",\"params\":{},\"price\":329,\"remarks\":\"\",\"vipDes\":\"月卡会员，按照30天计算\",\"vipType\":\"月卡会员\",\"vipTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 12:24:00', 145);
INSERT INTO `sys_oper_log` VALUES (203, '会员类别表', 1, 'com.ruoyi.web.controller.system.VVipTypeController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/vType', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-07 12:26:40\",\"dw\":\"季度卡\",\"params\":{},\"price\":950,\"status\":true,\"vipDes\":\"季度卡会员，3个月计算，合计90天\",\"vipType\":\"季度卡会员\",\"vipTypeId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 12:26:41', 18);
INSERT INTO `sys_oper_log` VALUES (204, '会员类别表', 2, 'com.ruoyi.web.controller.system.VVipTypeController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/vType', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-07 12:26:41\",\"dw\":\"季度卡\",\"params\":{},\"price\":950,\"remarks\":\"季度卡\",\"status\":true,\"vipDes\":\"季度卡会员，3个月计算，合计90天\",\"vipType\":\"季度卡会员\",\"vipTypeId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 12:26:53', 20);
INSERT INTO `sys_oper_log` VALUES (205, '会员类别表', 2, 'com.ruoyi.web.controller.system.VVipTypeController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/vType', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-07 12:24:00\",\"dw\":\"月卡\",\"params\":{},\"price\":329,\"remarks\":\"月卡\",\"vipDes\":\"月卡会员，按照30天计算\",\"vipType\":\"月卡会员\",\"vipTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 12:27:02', 21);
INSERT INTO `sys_oper_log` VALUES (206, '会员类别表', 1, 'com.ruoyi.web.controller.system.VVipTypeController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/vType', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-07 12:33:35\",\"dw\":\"年卡\",\"params\":{},\"price\":3850,\"remarks\":\"合计360天\",\"status\":true,\"vipDes\":\"年卡会员，按照每个月30天，计算12个月\",\"vipType\":\"年卡会员\",\"vipTypeId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 12:33:36', 35);
INSERT INTO `sys_oper_log` VALUES (207, '会员类别表', 2, 'com.ruoyi.web.controller.system.VVipTypeController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/vType', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-07 12:26:41\",\"dw\":\"季度卡\",\"params\":{},\"price\":950,\"remarks\":\"合计90天\",\"status\":true,\"vipDes\":\"季度卡会员，3个月计算，\",\"vipType\":\"季度卡会员\",\"vipTypeId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 12:33:50', 20);
INSERT INTO `sys_oper_log` VALUES (208, '会员类别表', 2, 'com.ruoyi.web.controller.system.VVipTypeController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/vType', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-07 12:24:00\",\"dw\":\"月卡\",\"params\":{},\"price\":329,\"remarks\":\"按照30天计算\",\"status\":true,\"vipDes\":\"月卡会员，\",\"vipType\":\"月卡会员\",\"vipTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 12:33:59', 26);
INSERT INTO `sys_oper_log` VALUES (209, '用户表', 1, 'com.ruoyi.web.controller.system.VPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/person', '127.0.0.1', '内网IP', '{\"acc\":\"674158881@qq.com\",\"borthDay\":\"2025-03-12\",\"createTime\":\"2025-03-07 12:39:11\",\"nickName\":\"最后的男人\",\"params\":{},\"personId\":1,\"phone\":\"13308589949\",\"pwd\":\"123456\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 12:39:12', 22);
INSERT INTO `sys_oper_log` VALUES (210, '用户表', 2, 'com.ruoyi.web.controller.system.VPersonController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/person', '127.0.0.1', '内网IP', '{\"acc\":\"674158881@qq.com\",\"borthDay\":\"2025-03-12\",\"createTime\":\"2025-03-07 12:39:11\",\"nickName\":\"最后的男人\",\"params\":{},\"personId\":1,\"phone\":\"13308589949\",\"pwd\":\"123456\",\"sex\":\"隐私\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 12:40:42', 27);
INSERT INTO `sys_oper_log` VALUES (211, '用户表', 1, 'com.ruoyi.web.controller.system.VPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/person', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-07 13:11:32\",\"params\":{},\"personId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 13:11:34', 152);
INSERT INTO `sys_oper_log` VALUES (212, '用户表', 3, 'com.ruoyi.web.controller.system.VPersonController.remove()', 'DELETE', 1, 'admin', '技术研发中心', '/system/person/2', '127.0.0.1', '内网IP', '[2]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 13:11:38', 20);
INSERT INTO `sys_oper_log` VALUES (213, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/903d4624-160e-4c3d-9e2a-3b710a08110d_20250307132019A001.png\",\"code\":200}', 0, NULL, '2025-03-07 13:20:20', 196);
INSERT INTO `sys_oper_log` VALUES (214, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/8c29ab36-0ed9-4df2-ba6d-b5d0c45b1b48_20250307132417A003.jpg\",\"code\":200}', 0, NULL, '2025-03-07 13:24:18', 32);
INSERT INTO `sys_oper_log` VALUES (215, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/8c29ab36-0ed9-4df2-ba6d-b5d0c45b1b48_20250307132417A002.jpg\",\"code\":200}', 0, NULL, '2025-03-07 13:24:18', 33);
INSERT INTO `sys_oper_log` VALUES (216, '用户表', 2, 'com.ruoyi.web.controller.system.VPersonController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/person', '127.0.0.1', '内网IP', '{\"acc\":\"674158881@qq.com\",\"borthDay\":\"2025-03-12\",\"createTime\":\"2025-03-07 12:39:11\",\"nickName\":\"最后的男人\",\"params\":{},\"personId\":1,\"phone\":\"13308589949\",\"pwd\":\"123456\",\"sex\":\"隐私\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 13:25:32', 15);
INSERT INTO `sys_oper_log` VALUES (217, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/6beb15be-8067-4cc3-8ff1-df84785b8e1f_20250307132617A004.png\",\"code\":200}', 0, NULL, '2025-03-07 13:26:17', 19);
INSERT INTO `sys_oper_log` VALUES (218, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/6beb15be-8067-4cc3-8ff1-df84785b8e1f_20250307132617A005.png\",\"code\":200}', 0, NULL, '2025-03-07 13:26:18', 1);
INSERT INTO `sys_oper_log` VALUES (219, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/67d22934-fa51-41a1-af70-7623308f22b7_20250307132819A007.png\",\"code\":200}', 0, NULL, '2025-03-07 13:28:19', 11);
INSERT INTO `sys_oper_log` VALUES (220, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/67d22934-fa51-41a1-af70-7623308f22b7_20250307132819A006.png\",\"code\":200}', 0, NULL, '2025-03-07 13:28:19', 15);
INSERT INTO `sys_oper_log` VALUES (221, '用户表', 1, 'com.ruoyi.web.controller.system.VPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/person', '127.0.0.1', '内网IP', '{\"acc\":\"83267794@qq.com\",\"borthDay\":\"2000-02-15\",\"createTime\":\"2025-03-07 13:29:03\",\"nickName\":\"Go With Wind\",\"params\":{},\"personId\":3,\"phone\":\"18212994656\",\"pwd\":\"qq.com\",\"sex\":\"女\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 13:29:04', 20);
INSERT INTO `sys_oper_log` VALUES (222, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/903d4624-160e-4c3d-9e2a-3b710a08110d_20250307133020A008.png\",\"code\":200}', 0, NULL, '2025-03-07 13:30:21', 29);
INSERT INTO `sys_oper_log` VALUES (223, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/903d4624-160e-4c3d-9e2a-3b710a08110d_20250307133020A009.png\",\"code\":200}', 0, NULL, '2025-03-07 13:30:21', 2);
INSERT INTO `sys_oper_log` VALUES (224, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/903d4624-160e-4c3d-9e2a-3b710a08110d_20250307133204A010.png\",\"code\":200}', 0, NULL, '2025-03-07 13:32:05', 20);
INSERT INTO `sys_oper_log` VALUES (225, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/903d4624-160e-4c3d-9e2a-3b710a08110d_20250307133204A011.png\",\"code\":200}', 0, NULL, '2025-03-07 13:32:05', 2);
INSERT INTO `sys_oper_log` VALUES (226, '用户表', 2, 'com.ruoyi.web.controller.system.VPersonController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/person', '127.0.0.1', '内网IP', '{\"acc\":\"674158881@qq.com\",\"avatar\":\"/profile/avatar/2025/03/07/903d4624-160e-4c3d-9e2a-3b710a08110d_20250307133204A010.png\",\"borthDay\":\"2025-03-12\",\"createTime\":\"2025-03-07 12:39:11\",\"nickName\":\"最后的男人\",\"params\":{},\"personId\":1,\"phone\":\"13308589949\",\"pwd\":\"123456\",\"sex\":\"隐私\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 13:32:06', 19);
INSERT INTO `sys_oper_log` VALUES (227, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/8c29ab36-0ed9-4df2-ba6d-b5d0c45b1b48_20250307133654A012.jpg\",\"code\":200}', 0, NULL, '2025-03-07 13:36:55', 2);
INSERT INTO `sys_oper_log` VALUES (228, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/8c29ab36-0ed9-4df2-ba6d-b5d0c45b1b48_20250307133654A013.jpg\",\"code\":200}', 0, NULL, '2025-03-07 13:36:55', 2);
INSERT INTO `sys_oper_log` VALUES (229, '用户表', 2, 'com.ruoyi.web.controller.system.VPersonController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/person', '127.0.0.1', '内网IP', '{\"acc\":\"83267794@qq.com\",\"avatar\":\"/profile/avatar/2025/03/07/8c29ab36-0ed9-4df2-ba6d-b5d0c45b1b48_20250307133654A012.jpg\",\"borthDay\":\"2000-02-15\",\"createTime\":\"2025-03-07 13:29:04\",\"nickName\":\"Go With Wind\",\"params\":{},\"personId\":3,\"phone\":\"18212994656\",\"pwd\":\"qq.com\",\"sex\":\"女\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 13:36:57', 16);
INSERT INTO `sys_oper_log` VALUES (230, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/3ea2bdf9-ef99-4aa0-afd2-0fb2223d3219_20250307134033A014.jpg\",\"code\":200}', 0, NULL, '2025-03-07 13:40:34', 61);
INSERT INTO `sys_oper_log` VALUES (231, '视频信息', 2, 'com.ruoyi.web.controller.system.VVideoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{},\"status\":1,\"typeId\":4,\"typeName\":\"国产短片\",\"vodActor\":\"Smith.Lily\",\"vodArea\":\"美国-阿拉斯加州-婆宁区\",\"vodCreateTime\":\"2025-03-06\",\"vodEn\":\"xiaodujuan\",\"vodId\":1,\"vodName\":\"小杜鹃_STS_佩奇的奇遇\",\"vodPlayForm\":\"m3u8\",\"vodRemarks\":\"你懂的，你懂的。\",\"vodTimes\":82,\"vodUrl\":\"https://www.sks011.com/d/1988736/pms.html\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 13:42:25', 25);
INSERT INTO `sys_oper_log` VALUES (232, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/2d1b4140-4491-471e-b311-f9b1cedc084c_20250307134336A015.jpg\",\"code\":200}', 0, NULL, '2025-03-07 13:43:37', 66);
INSERT INTO `sys_oper_log` VALUES (233, '视频信息', 2, 'com.ruoyi.web.controller.system.VVideoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{},\"status\":1,\"typeId\":4,\"typeName\":\"国产短片\",\"vodActor\":\"Smith.Lily\",\"vodArea\":\"美国-阿拉斯加州-婆宁区\",\"vodCreateTime\":\"2025-03-06\",\"vodEn\":\"xiaodujuan\",\"vodId\":1,\"vodName\":\"小杜鹃_STS_佩奇的奇遇\",\"vodPlayForm\":\"m3u8\",\"vodRemarks\":\"你懂的，你懂的。\",\"vodTimes\":82,\"vodUrl\":\"https://www.sks011.com/d/1988736/pms.html\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 13:43:41', 11);
INSERT INTO `sys_oper_log` VALUES (234, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/f1_20250307134647A016.jpg\",\"code\":200}', 0, NULL, '2025-03-07 13:46:48', 24);
INSERT INTO `sys_oper_log` VALUES (235, '视频信息', 2, 'com.ruoyi.web.controller.system.VVideoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{},\"status\":1,\"typeId\":4,\"typeName\":\"国产短片\",\"vodActor\":\"Smith.Lily\",\"vodArea\":\"美国-阿拉斯加州-婆宁区\",\"vodCreateTime\":\"2025-03-06\",\"vodEn\":\"xiaodujuan\",\"vodId\":1,\"vodImg\":\"/profile/avatar/2025/03/07/f1_20250307134647A016.jpg\",\"vodName\":\"小杜鹃_STS_佩奇的奇遇\",\"vodPlayForm\":\"m3u8\",\"vodRemarks\":\"你懂的，你懂的。\",\"vodTimes\":82,\"vodUrl\":\"https://www.sks011.com/d/1988736/pms.html\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 13:46:53', 19);
INSERT INTO `sys_oper_log` VALUES (236, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/07/f2_20250307135430A017.jpg\",\"code\":200}', 0, NULL, '2025-03-07 13:54:30', 23);
INSERT INTO `sys_oper_log` VALUES (237, '视频信息', 2, 'com.ruoyi.web.controller.system.VVideoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{},\"status\":1,\"typeId\":4,\"typeName\":\"国产短片\",\"vodActor\":\"Smith.Lily\",\"vodArea\":\"美国-阿拉斯加州-婆宁区\",\"vodCreateTime\":\"2025-03-06\",\"vodEn\":\"xiaodujuan\",\"vodId\":1,\"vodImg\":\"/profile/avatar/2025/03/07/f2_20250307135430A017.jpg\",\"vodName\":\"小杜鹃_STS_佩奇的奇遇\",\"vodPlayForm\":\"m3u8\",\"vodRemarks\":\"你懂的，你懂的。\",\"vodTimes\":82,\"vodUrl\":\"https://www.sks011.com/d/1988736/pms.html\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 13:54:33', 15);
INSERT INTO `sys_oper_log` VALUES (238, '会员表', 1, 'com.ruoyi.por.controller.VVipController.add()', 'POST', 1, 'admin', '技术研发中心', '/por/vip', '127.0.0.1', '内网IP', '{\"endTime\":\"2025-04-07\",\"params\":{},\"personId\":1,\"vipId\":1,\"vipTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 14:00:25', 21);
INSERT INTO `sys_oper_log` VALUES (239, '会员表', 2, 'com.ruoyi.por.controller.VVipController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/por/vip', '127.0.0.1', '内网IP', '{\"endTime\":\"2025-05-05\",\"params\":{},\"personId\":1,\"vipId\":1,\"vipTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 15:19:22', 47);
INSERT INTO `sys_oper_log` VALUES (240, '会员表', 2, 'com.ruoyi.por.controller.VVipController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/por/vip', '127.0.0.1', '内网IP', '{\"endTime\":\"2025-05-07\",\"params\":{},\"personId\":1,\"vipId\":1,\"vipTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 15:19:29', 25);
INSERT INTO `sys_oper_log` VALUES (241, '会员表', 2, 'com.ruoyi.por.controller.VVipController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/por/vip', '127.0.0.1', '内网IP', '{\"endTime\":\"2025-04-07\",\"params\":{},\"personId\":1,\"vipId\":1,\"vipTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 15:19:40', 19);
INSERT INTO `sys_oper_log` VALUES (242, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:/pythonSpace/testPython/main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:05:19', 87);
INSERT INTO `sys_oper_log` VALUES (243, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:/pythonSpace/testPython/main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:05:34', 52);
INSERT INTO `sys_oper_log` VALUES (244, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:/pythonSpace/testPython/main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:10:36', 22);
INSERT INTO `sys_oper_log` VALUES (245, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:/pythonSpace/testPython/main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:10:59', 16);
INSERT INTO `sys_oper_log` VALUES (246, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:/pythonSpace/testPython/main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:29:42', 687);
INSERT INTO `sys_oper_log` VALUES (247, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:30:59', 117);
INSERT INTO `sys_oper_log` VALUES (248, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:37:25', 43);
INSERT INTO `sys_oper_log` VALUES (249, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:37:25', 169);
INSERT INTO `sys_oper_log` VALUES (250, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:38:39', 17);
INSERT INTO `sys_oper_log` VALUES (251, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:38:40', 95);
INSERT INTO `sys_oper_log` VALUES (252, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:39:17', 25);
INSERT INTO `sys_oper_log` VALUES (253, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:39:35', 18);
INSERT INTO `sys_oper_log` VALUES (254, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:39:37', 103);
INSERT INTO `sys_oper_log` VALUES (255, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:40:20', 23);
INSERT INTO `sys_oper_log` VALUES (256, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:40:21', 99);
INSERT INTO `sys_oper_log` VALUES (257, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:40:25', 23);
INSERT INTO `sys_oper_log` VALUES (258, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:40:26', 92);
INSERT INTO `sys_oper_log` VALUES (259, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:40:44', 21);
INSERT INTO `sys_oper_log` VALUES (260, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-07 17:40:45', 93);
INSERT INTO `sys_oper_log` VALUES (261, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 11:07:16', 29);
INSERT INTO `sys_oper_log` VALUES (262, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 11:07:24', 7457);
INSERT INTO `sys_oper_log` VALUES (263, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '技术研发中心', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"平台\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 11:12:03', 37);
INSERT INTO `sys_oper_log` VALUES (264, '用户表', 3, 'com.ruoyi.web.controller.system.VPersonController.remove()', 'DELETE', 1, 'admin', '技术研发中心', '/system/person/4', '127.0.0.1', '内网IP', '[4]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 11:21:37', 29);
INSERT INTO `sys_oper_log` VALUES (265, '用户表', 3, 'com.ruoyi.web.controller.system.VPersonController.remove()', 'DELETE', 1, 'admin', '技术研发中心', '/system/person/5', '127.0.0.1', '内网IP', '[5]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 11:50:13', 52);
INSERT INTO `sys_oper_log` VALUES (266, '会员表', 3, 'com.ruoyi.por.controller.VVipController.remove()', 'DELETE', 1, 'admin', '技术研发中心', '/por/vip/3', '127.0.0.1', '内网IP', '[3]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 12:16:58', 26);
INSERT INTO `sys_oper_log` VALUES (267, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/08/tx_20250308125059A001.jpg\",\"code\":200}', 0, NULL, '2025-03-08 12:51:02', 177);
INSERT INTO `sys_oper_log` VALUES (268, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/08/tx_20250308125059A002.jpg\",\"code\":200}', 0, NULL, '2025-03-08 12:51:02', 6);
INSERT INTO `sys_oper_log` VALUES (269, '用户表', 2, 'com.ruoyi.web.controller.system.VPersonController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/person', '127.0.0.1', '内网IP', '{\"acc\":\"18212997343@qq.com\",\"avatar\":\"/profile/avatar/2025/03/08/tx_20250308125059A001.jpg\",\"borthDay\":\"1995-03-01\",\"createTime\":\"2025-03-08 11:50:16\",\"nickName\":\"笨鸭子\",\"params\":{},\"personId\":6,\"phone\":\"13308587797\",\"pwd\":\"123456\",\"sex\":\"女\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 12:51:21', 39);
INSERT INTO `sys_oper_log` VALUES (270, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 12:52:20', 22);
INSERT INTO `sys_oper_log` VALUES (271, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 12:52:22', 719);
INSERT INTO `sys_oper_log` VALUES (272, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '技术研发中心', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"v_fx,v_fx_person\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:04:39', 423);
INSERT INTO `sys_oper_log` VALUES (273, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"分销级别\",\"dictType\":\"fx_leave\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:05:45', 38);
INSERT INTO `sys_oper_log` VALUES (274, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"分销类别\",\"dictType\":\"fx_type\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:05:58', 42);
INSERT INTO `sys_oper_log` VALUES (275, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"一级分销\",\"dictSort\":0,\"dictType\":\"fx_leave\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:06:15', 31);
INSERT INTO `sys_oper_log` VALUES (276, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"二级分销\",\"dictSort\":0,\"dictType\":\"fx_leave\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:06:26', 46);
INSERT INTO `sys_oper_log` VALUES (277, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"三级分销\",\"dictSort\":2,\"dictType\":\"fx_leave\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:06:35', 30);
INSERT INTO `sys_oper_log` VALUES (278, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:06:26\",\"default\":false,\"dictCode\":101,\"dictLabel\":\"二级分销\",\"dictSort\":1,\"dictType\":\"fx_leave\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:06:40', 28);
INSERT INTO `sys_oper_log` VALUES (279, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"邀请码邀请\",\"dictSort\":0,\"dictType\":\"fx_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:07:30', 25);
INSERT INTO `sys_oper_log` VALUES (280, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"内部邀请\",\"dictSort\":0,\"dictType\":\"fx_type\",\"dictValue\":\"1\",\"listClass\":\"warning\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:07:51', 26);
INSERT INTO `sys_oper_log` VALUES (281, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:07:30\",\"default\":false,\"dictCode\":103,\"dictLabel\":\"邀请码邀请\",\"dictSort\":0,\"dictType\":\"fx_type\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:07:57', 47);
INSERT INTO `sys_oper_log` VALUES (282, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '技术研发中心', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"fx\",\"className\":\"VFx\",\"columns\":[{\"capJavaField\":\"FxId\",\"columnComment\":\"分销ID\",\"columnId\":49,\"columnName\":\"fx_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"fxId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FxLeave\",\"columnComment\":\"分销级别\",\"columnId\":50,\"columnName\":\"fx_leave\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"fx_leave\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"fxLeave\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FxType\",\"columnComment\":\"分销类别\",\"columnId\":51,\"columnName\":\"fx_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"fx_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"fxType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FxBl\",\"columnComment\":\"分销比率\",\"columnId\":52,\"columnName\":\"fx_bl\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:09:29', 134);
INSERT INTO `sys_oper_log` VALUES (283, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术研发中心', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_fx\"}', NULL, 0, NULL, '2025-03-08 13:09:33', 326);
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"分销管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"system\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:12:30', 186);
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/fx/index\",\"createBy\":\"admin\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"分销类别管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2008,\"path\":\"fx\",\"perms\":\"system:fx.list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:13:23', 25);
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-08 13:12:30\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"分销管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"fx\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:13:56', 36);
INSERT INTO `sys_oper_log` VALUES (287, '分销类别', 1, 'com.ruoyi.web.controller.system.VFxController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fx', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-08 13:20:03\",\"fxBl\":\"0.02\",\"fxId\":1,\"fxLeave\":\"0\",\"fxType\":\"0\",\"fxUp\":0,\"params\":{},\"status\":\"true\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:20:06', 29);
INSERT INTO `sys_oper_log` VALUES (288, '分销类别', 1, 'com.ruoyi.web.controller.system.VFxController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fx', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-08 13:20:18\",\"fxBl\":\"0.01\",\"fxId\":2,\"fxLeave\":\"1\",\"fxType\":\"0\",\"fxUp\":200,\"params\":{},\"status\":\"true\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:20:21', 18);
INSERT INTO `sys_oper_log` VALUES (289, '分销类别', 1, 'com.ruoyi.web.controller.system.VFxController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fx', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-08 13:20:36\",\"fxBl\":\"0.005\",\"fxId\":3,\"fxLeave\":\"2\",\"fxType\":\"0\",\"fxUp\":1000,\"params\":{},\"status\":\"true\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:20:39', 18);
INSERT INTO `sys_oper_log` VALUES (290, '分销类别', 2, 'com.ruoyi.web.controller.system.VFxController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/fx', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-08 13:20:04\",\"fxBl\":\"0.02\",\"fxId\":1,\"fxLeave\":\"0\",\"fxType\":\"0\",\"fxUp\":0,\"params\":{},\"status\":\"true\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:23:43', 16);
INSERT INTO `sys_oper_log` VALUES (291, '分销类别', 2, 'com.ruoyi.web.controller.system.VFxController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/fx', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-08 13:20:04\",\"fxBl\":\"0.02\",\"fxId\":1,\"fxLeave\":\"0\",\"fxType\":\"0\",\"fxUp\":0,\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:25:11', 18);
INSERT INTO `sys_oper_log` VALUES (292, '分销类别', 2, 'com.ruoyi.web.controller.system.VFxController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/fx', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-08 13:20:18\",\"fxBl\":\"0.01\",\"fxId\":2,\"fxLeave\":\"1\",\"fxType\":\"0\",\"fxUp\":200,\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:25:15', 55);
INSERT INTO `sys_oper_log` VALUES (293, '分销类别', 2, 'com.ruoyi.web.controller.system.VFxController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/fx', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-08 13:20:36\",\"fxBl\":\"0.005\",\"fxId\":3,\"fxLeave\":\"2\",\"fxType\":\"0\",\"fxUp\":1000,\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:25:19', 15);
INSERT INTO `sys_oper_log` VALUES (294, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '技术研发中心', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"person\",\"className\":\"VFxPerson\",\"columns\":[{\"capJavaField\":\"VFxId\",\"columnComment\":\"分销ID\",\"columnId\":56,\"columnName\":\"v_fx_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VFxPid\",\"columnComment\":\"分销用户ID\",\"columnId\":57,\"columnName\":\"v_fx_pid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxPid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VFxFid\",\"columnComment\":\"分销级别ID\",\"columnId\":58,\"columnName\":\"v_fx_fid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxFid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VFxFname\",\"columnComment\":\"分销级别\",\"columnId\":59,\"columnName\":\"v_fx_fName\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"vF', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:28:45', 204);
INSERT INTO `sys_oper_log` VALUES (295, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术研发中心', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_fx\"}', NULL, 0, NULL, '2025-03-08 13:28:47', 223);
INSERT INTO `sys_oper_log` VALUES (296, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '技术研发中心', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"person\",\"className\":\"VFxPerson\",\"columns\":[{\"capJavaField\":\"VFxId\",\"columnComment\":\"分销ID\",\"columnId\":56,\"columnName\":\"v_fx_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-03-08 13:28:44\",\"usableColumn\":false},{\"capJavaField\":\"VFxPid\",\"columnComment\":\"分销用户ID\",\"columnId\":57,\"columnName\":\"v_fx_pid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxPid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-03-08 13:28:44\",\"usableColumn\":false},{\"capJavaField\":\"VFxFid\",\"columnComment\":\"分销级别ID\",\"columnId\":58,\"columnName\":\"v_fx_fid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxFid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-03-08 13:28:44\",\"usableColumn\":false},{\"capJavaField\":\"VFxFname\",\"columnComment\":\"分销级别\",\"columnId\":59,\"columnName\":\"v_fx_fName\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:30:11', 107);
INSERT INTO `sys_oper_log` VALUES (297, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术研发中心', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_fx\"}', NULL, 0, NULL, '2025-03-08 13:30:14', 49);
INSERT INTO `sys_oper_log` VALUES (298, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '技术研发中心', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"person\",\"className\":\"VFxPerson\",\"columns\":[{\"capJavaField\":\"VFxId\",\"columnComment\":\"分销ID\",\"columnId\":56,\"columnName\":\"v_fx_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-03-08 13:30:11\",\"usableColumn\":false},{\"capJavaField\":\"VFxPid\",\"columnComment\":\"分销用户ID\",\"columnId\":57,\"columnName\":\"v_fx_pid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxPid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-03-08 13:30:11\",\"usableColumn\":false},{\"capJavaField\":\"VFxFid\",\"columnComment\":\"分销级别ID\",\"columnId\":58,\"columnName\":\"v_fx_fid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxFid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-03-08 13:30:11\",\"usableColumn\":false},{\"capJavaField\":\"VFxFname\",\"columnComment\":\"分销级别\",\"columnId\":59,\"columnName\":\"v_fx_fName\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:33:03', 100);
INSERT INTO `sys_oper_log` VALUES (299, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术研发中心', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_fx_person\"}', NULL, 0, NULL, '2025-03-08 13:33:07', 45);
INSERT INTO `sys_oper_log` VALUES (300, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '技术研发中心', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"fxPerson\",\"className\":\"VFxPerson\",\"columns\":[{\"capJavaField\":\"VFxId\",\"columnComment\":\"分销ID\",\"columnId\":56,\"columnName\":\"v_fx_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-03-08 13:33:02\",\"usableColumn\":false},{\"capJavaField\":\"VFxPid\",\"columnComment\":\"分销用户ID\",\"columnId\":57,\"columnName\":\"v_fx_pid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxPid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-03-08 13:33:03\",\"usableColumn\":false},{\"capJavaField\":\"VFxFid\",\"columnComment\":\"分销级别ID\",\"columnId\":58,\"columnName\":\"v_fx_fid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"vFxFid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2025-03-08 13:33:03\",\"usableColumn\":false},{\"capJavaField\":\"VFxFname\",\"columnComment\":\"分销级别\",\"columnId\":59,\"columnName\":\"v_fx_fName\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 13:04:39\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:33:52', 105);
INSERT INTO `sys_oper_log` VALUES (301, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术研发中心', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_fx_person\"}', NULL, 0, NULL, '2025-03-08 13:33:56', 51);
INSERT INTO `sys_oper_log` VALUES (302, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/fxPerson/index\",\"createBy\":\"admin\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"分销商管理\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2008,\"path\":\"fxPerson\",\"perms\":\"system:fxPerson:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:37:30', 163);
INSERT INTO `sys_oper_log` VALUES (303, '分销商信息', 1, 'com.ruoyi.web.controller.system.VFxPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fxPerson', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-08 13:54:12\",\"params\":{},\"vFxFname\":\"一级分销\",\"vFxId\":1,\"vFxPid\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 13:54:16', 37);
INSERT INTO `sys_oper_log` VALUES (304, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:06:14', 30);
INSERT INTO `sys_oper_log` VALUES (305, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:06:15', 94);
INSERT INTO `sys_oper_log` VALUES (306, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:06:18', 17);
INSERT INTO `sys_oper_log` VALUES (307, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:06:19', 93);
INSERT INTO `sys_oper_log` VALUES (308, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"tool/build/index\",\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":115,\"menuName\":\"表单构建\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"build\",\"perms\":\"tool:build:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:13:19', 29);
INSERT INTO `sys_oper_log` VALUES (309, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"tool/swagger/index\",\"createTime\":\"2025-03-06 14:56:21\",\"icon\":\"swagger\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":117,\"menuName\":\"系统接口\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":3,\"path\":\"swagger\",\"perms\":\"tool:swagger:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:13:25', 24);
INSERT INTO `sys_oper_log` VALUES (310, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/08/f1_20250308141438A001.jpg\",\"code\":200}', 0, NULL, '2025-03-08 14:14:42', 83);
INSERT INTO `sys_oper_log` VALUES (311, '视频信息', 1, 'com.ruoyi.web.controller.system.VVideoController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/video', '127.0.0.1', '内网IP', '{\"params\":{},\"status\":1,\"typeId\":5,\"typeName\":\"国产长片\",\"vodActor\":\"威尼斯.乔娜\",\"vodArea\":\"美国\",\"vodCreateTime\":\"2025-03-08\",\"vodEn\":\"saibopengke\",\"vodImg\":\"/profile/avatar/2025/03/08/f1_20250308141438A001.jpg\",\"vodName\":\"赛博朋克_01_逝去的光阴\",\"vodPlayForm\":\"m3u8\",\"vodRemarks\":\"很不错！！！\",\"vodTimes\":115,\"vodUrl\":\"http://127.0.0.1:8080/video/t/20250103/index.html\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:16:28', 30);
INSERT INTO `sys_oper_log` VALUES (312, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:17:08', 15);
INSERT INTO `sys_oper_log` VALUES (313, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, 'admin', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":3,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"Y\",\"refreshTik\":\"videoCode\",\"refreshType\":\"视频源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:17:09', 87);
INSERT INTO `sys_oper_log` VALUES (314, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":103,\"email\":\"132@qq.com\",\"nickName\":\"测试\",\"params\":{},\"phonenumber\":\"13308584454\",\"postIds\":[2],\"roleIds\":[2],\"sex\":\"0\",\"status\":\"0\",\"userId\":100,\"userName\":\"15692786655\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:33:50', 200);
INSERT INTO `sys_oper_log` VALUES (315, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2025-03-06 14:56:21\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2002,2001,2003,2008,2010,2009],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:34:23', 79);
INSERT INTO `sys_oper_log` VALUES (316, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2007,\"perms\":\"por:vip:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:39:02', 25);
INSERT INTO `sys_oper_log` VALUES (317, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2007,\"perms\":\"por:vip:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:39:45', 21);
INSERT INTO `sys_oper_log` VALUES (318, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2007,\"perms\":\"por:vip:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:40:00', 24);
INSERT INTO `sys_oper_log` VALUES (319, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2007,\"perms\":\"por:vip:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:40:13', 48);
INSERT INTO `sys_oper_log` VALUES (320, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2010,\"perms\":\"system:fxPerson:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:40:41', 28);
INSERT INTO `sys_oper_log` VALUES (321, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2010,\"perms\":\"system:fxPerson:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:40:54', 34);
INSERT INTO `sys_oper_log` VALUES (322, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2010,\"perms\":\"system:fxPerson:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:41:06', 36);
INSERT INTO `sys_oper_log` VALUES (323, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2010,\"perms\":\"system:fxPerson:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:41:17', 25);
INSERT INTO `sys_oper_log` VALUES (324, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2009,\"perms\":\"system:fx:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:41:40', 23);
INSERT INTO `sys_oper_log` VALUES (325, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/fx/index\",\"createTime\":\"2025-03-08 13:13:23\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"分销类别管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2008,\"path\":\"fx\",\"perms\":\"system:fx:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:41:47', 63);
INSERT INTO `sys_oper_log` VALUES (326, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2009,\"perms\":\"system:fx:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:42:01', 27);
INSERT INTO `sys_oper_log` VALUES (327, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2009,\"perms\":\"system:fx:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:42:12', 37);
INSERT INTO `sys_oper_log` VALUES (328, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2009,\"perms\":\"system:fx:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:42:24', 37);
INSERT INTO `sys_oper_log` VALUES (329, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2025-03-06 14:56:21\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2002,2001,2003,2008,2010,2015,2016,2017,2018,2009,2019,2020,2021,2022],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-08 14:42:44', 95);
INSERT INTO `sys_oper_log` VALUES (330, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2002,\"perms\":\"system:video:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:03:04', 44);
INSERT INTO `sys_oper_log` VALUES (331, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"perms\":\"system:video:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:03:15', 31);
INSERT INTO `sys_oper_log` VALUES (332, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2002,\"perms\":\"system:video:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:03:27', 32);
INSERT INTO `sys_oper_log` VALUES (333, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2002,\"perms\":\"system:video:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:03:39', 28);
INSERT INTO `sys_oper_log` VALUES (334, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2001,\"perms\":\"system:type:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:03:56', 30);
INSERT INTO `sys_oper_log` VALUES (335, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"perms\":\"system:type:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:04:06', 26);
INSERT INTO `sys_oper_log` VALUES (336, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2001,\"perms\":\"system:type:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:04:18', 39);
INSERT INTO `sys_oper_log` VALUES (337, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2001,\"perms\":\"system:type:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:04:31', 38);
INSERT INTO `sys_oper_log` VALUES (338, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2003,\"perms\":\"system:info:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:04:59', 28);
INSERT INTO `sys_oper_log` VALUES (339, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2003,\"perms\":\"system:info:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:05:10', 31);
INSERT INTO `sys_oper_log` VALUES (340, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2003,\"perms\":\"system:info:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:05:22', 26);
INSERT INTO `sys_oper_log` VALUES (341, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2003,\"perms\":\"system:info:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:05:33', 36);
INSERT INTO `sys_oper_log` VALUES (342, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2006,\"perms\":\"system:person:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:05:52', 30);
INSERT INTO `sys_oper_log` VALUES (343, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2006,\"perms\":\"system:person:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:06:05', 24);
INSERT INTO `sys_oper_log` VALUES (344, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2006,\"perms\":\"system:person:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:06:21', 32);
INSERT INTO `sys_oper_log` VALUES (345, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2006,\"perms\":\"system:person:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:06:33', 27);
INSERT INTO `sys_oper_log` VALUES (346, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2005,\"perms\":\"system:vType:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:07:05', 30);
INSERT INTO `sys_oper_log` VALUES (347, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2005,\"perms\":\"system:vType:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:07:15', 31);
INSERT INTO `sys_oper_log` VALUES (348, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2005,\"perms\":\"system:vType:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:07:26', 32);
INSERT INTO `sys_oper_log` VALUES (349, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2005,\"perms\":\"system:vType:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:07:39', 30);
INSERT INTO `sys_oper_log` VALUES (350, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2025-03-06 14:56:21\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2002,2023,2024,2025,2026,2001,2027,2028,2029,2030,2003,2031,2032,2033,2034,2008,2010,2015,2016,2017,2018,2009,2019,2020,2021,2022],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:08:34', 115);
INSERT INTO `sys_oper_log` VALUES (351, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2025-03-08 14:33:50\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"技术研发中心\",\"leader\":\"东东\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":103,\"email\":\"132@qq.com\",\"loginDate\":\"2025-03-09 01:02:13\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"测试\",\"params\":{},\"phonenumber\":\"13308584454\",\"postIds\":[2],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"15692786655\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:09:00', 132);
INSERT INTO `sys_oper_log` VALUES (352, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.edit()', 'PUT', 1, '15692786655', '技术研发中心', '/system/info', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:09:48', 31);
INSERT INTO `sys_oper_log` VALUES (353, '更新表', 2, 'com.ruoyi.web.controller.system.RefreshInfoController.refresh_python()', 'PUT', 1, '15692786655', '技术研发中心', '/system/info/refresh_python', '127.0.0.1', '内网IP', '{\"id\":2,\"params\":{},\"refreshPython\":\"E:\\\\\\\\pythonSpace\\\\\\\\testPython\\\\\\\\main.py\",\"refreshStatus\":\"N\",\"refreshTik\":\"typeCode\",\"refreshType\":\"类型目录\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:09:50', 537);
INSERT INTO `sys_oper_log` VALUES (354, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"用户信息查询\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":2010,\"perms\":\"system:person:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:11:33', 33);
INSERT INTO `sys_oper_log` VALUES (355, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '技术研发中心', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2025-03-06 14:56:21\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2002,2023,2024,2025,2026,2001,2027,2028,2029,2030,2003,2031,2032,2033,2034,2008,2010,2015,2016,2017,2018,2043,2009,2019,2020,2021,2022],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:11:52', 101);
INSERT INTO `sys_oper_log` VALUES (356, '分销商信息', 1, 'com.ruoyi.web.controller.system.VFxPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fxPerson', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-09 01:37:11\",\"params\":{},\"vFxFname\":\"一级分销\",\"vFxId\":2,\"vFxPid\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:37:14', 40);
INSERT INTO `sys_oper_log` VALUES (357, '分销商信息', 1, 'com.ruoyi.web.controller.system.VFxPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fxPerson', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-09 01:38:58\",\"params\":{},\"vFxFid\":0,\"vFxFname\":\"一级分销\",\"vFxId\":3,\"vFxPid\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:39:01', 19);
INSERT INTO `sys_oper_log` VALUES (358, '分销商信息', 1, 'com.ruoyi.web.controller.system.VFxPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fxPerson', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-09 01:49:14\",\"params\":{},\"vFxFid\":0,\"vFxFname\":\"一级分销\",\"vFxId\":4,\"vFxPid\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:49:17', 155);
INSERT INTO `sys_oper_log` VALUES (359, '分销商信息', 1, 'com.ruoyi.web.controller.system.VFxPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fxPerson', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-09 01:49:29\",\"params\":{},\"vFxFid\":0,\"vFxFname\":\"一级分销\",\"vFxId\":5,\"vFxPid\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 01:49:33', 25);
INSERT INTO `sys_oper_log` VALUES (360, '分销商信息', 1, 'com.ruoyi.web.controller.system.VFxPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fxPerson', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-09 02:02:25\",\"params\":{},\"vFxFartherId\":\"4\",\"vFxFartherName\":\"最后的男人\",\"vFxFid\":1,\"vFxFname\":\"二级分销\",\"vFxId\":6,\"vFxPid\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 02:02:28', 149);
INSERT INTO `sys_oper_log` VALUES (361, '分销商信息', 1, 'com.ruoyi.web.controller.system.VFxPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fxPerson', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-09 02:18:45\",\"params\":{},\"vFxFartherId\":\"4\",\"vFxFartherName\":\"最后的男人\",\"vFxFid\":1,\"vFxFname\":\"二级分销\",\"vFxId\":7,\"vFxPid\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 02:18:48', 169);
INSERT INTO `sys_oper_log` VALUES (362, '分销商信息', 1, 'com.ruoyi.web.controller.system.VFxPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fxPerson', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-09 02:21:16\",\"params\":{},\"vFxFartherId\":\"4\",\"vFxFartherName\":\"最后的男人\",\"vFxFid\":1,\"vFxFname\":\"二级分销\",\"vFxId\":9,\"vFxPid\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 02:21:19', 241);
INSERT INTO `sys_oper_log` VALUES (363, '分销商信息', 3, 'com.ruoyi.web.controller.system.VFxPersonController.remove()', 'DELETE', 1, 'admin', '技术研发中心', '/system/fxPerson/5', '127.0.0.1', '内网IP', '[5]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 02:22:07', 20);
INSERT INTO `sys_oper_log` VALUES (364, '分销商信息', 1, 'com.ruoyi.web.controller.system.VFxPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fxPerson', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-09 02:22:15\",\"params\":{},\"vFxFartherId\":\"4\",\"vFxFartherName\":\"最后的男人\",\"vFxFid\":1,\"vFxFname\":\"二级分销\",\"vFxId\":10,\"vFxPid\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 02:22:17', 57);
INSERT INTO `sys_oper_log` VALUES (365, '分销商信息', 1, 'com.ruoyi.web.controller.system.VFxPersonController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/fxPerson', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-03-09 02:24:02\",\"params\":{},\"vFxFartherId\":\"4\",\"vFxFartherName\":\"最后的男人\",\"vFxFid\":1,\"vFxFname\":\"二级分销\",\"vFxId\":11,\"vFxPid\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 02:24:05', 244);
INSERT INTO `sys_oper_log` VALUES (366, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '技术研发中心', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"v_sys\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:43:23', 252);
INSERT INTO `sys_oper_log` VALUES (367, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '技术研发中心', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"sys\",\"className\":\"VSys\",\"columns\":[{\"capJavaField\":\"SysId\",\"columnComment\":\"ID\",\"columnId\":62,\"columnName\":\"sys_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 18:43:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sysId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SysName\",\"columnComment\":\"系统名称\",\"columnId\":63,\"columnName\":\"sys_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 18:43:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sysName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SysType\",\"columnComment\":\"系统类型\",\"columnId\":64,\"columnName\":\"sys_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 18:43:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sysType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SysIcp\",\"columnComment\":\"ICP备案号\",\"columnId\":65,\"columnName\":\"sys_icp\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 18:43:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaFiel', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:45:03', 263);
INSERT INTO `sys_oper_log` VALUES (368, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"系统类别\",\"dictType\":\"sys_type\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:45:30', 50);
INSERT INTO `sys_oper_log` VALUES (369, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"数据系统\",\"dictSort\":0,\"dictType\":\"sys_type\",\"dictValue\":\"0\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:45:57', 35);
INSERT INTO `sys_oper_log` VALUES (370, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"业务管理系统\",\"dictSort\":1,\"dictType\":\"sys_type\",\"dictValue\":\"1\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:46:10', 38);
INSERT INTO `sys_oper_log` VALUES (371, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"商城系统\",\"dictSort\":2,\"dictType\":\"sys_type\",\"dictValue\":\"2\",\"listClass\":\"warning\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:46:32', 26);
INSERT INTO `sys_oper_log` VALUES (372, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"外卖系统\",\"dictSort\":3,\"dictType\":\"sys_type\",\"dictValue\":\"3\",\"listClass\":\"danger\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:46:59', 27);
INSERT INTO `sys_oper_log` VALUES (373, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"其他\",\"dictSort\":4,\"dictType\":\"sys_type\",\"dictValue\":\"4\",\"listClass\":\"info\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:47:09', 145);
INSERT INTO `sys_oper_log` VALUES (374, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '技术研发中心', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"sys\",\"className\":\"VSys\",\"columns\":[{\"capJavaField\":\"SysId\",\"columnComment\":\"ID\",\"columnId\":62,\"columnName\":\"sys_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 18:43:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sysId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 18:45:03\",\"usableColumn\":false},{\"capJavaField\":\"SysName\",\"columnComment\":\"系统名称\",\"columnId\":63,\"columnName\":\"sys_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 18:43:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sysName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 18:45:03\",\"usableColumn\":false},{\"capJavaField\":\"SysType\",\"columnComment\":\"系统类型\",\"columnId\":64,\"columnName\":\"sys_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 18:43:23\",\"dictType\":\"sys_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sysType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 18:45:03\",\"usableColumn\":false},{\"capJavaField\":\"SysIcp\",\"columnComment\":\"ICP备案号\",\"columnId\":65,\"columnName\":\"sys_icp\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 18:43:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":tr', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:47:29', 123);
INSERT INTO `sys_oper_log` VALUES (375, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '技术研发中心', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"v_sys\"}', NULL, 0, NULL, '2025-03-09 18:47:36', 381);
INSERT INTO `sys_oper_log` VALUES (376, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/sys/index\",\"createBy\":\"admin\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"系统设置\",\"menuType\":\"C\",\"orderNum\":22,\"params\":{},\"parentId\":1,\"path\":\"sys\",\"perms\":\"system:sys:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:50:57', 183);
INSERT INTO `sys_oper_log` VALUES (377, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2044,\"perms\":\"system:sys:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:51:17', 35);
INSERT INTO `sys_oper_log` VALUES (378, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2044,\"perms\":\"system:sys:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:51:29', 26);
INSERT INTO `sys_oper_log` VALUES (379, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2044,\"perms\":\"system:sys:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:51:42', 36);
INSERT INTO `sys_oper_log` VALUES (380, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2044,\"perms\":\"system:sys:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 18:51:53', 45);
INSERT INTO `sys_oper_log` VALUES (381, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/09/logo_20250309190413A001.png\",\"code\":200}', 0, NULL, '2025-03-09 19:04:14', 213);
INSERT INTO `sys_oper_log` VALUES (382, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.imgUpload()', 'POST', 1, 'admin', '技术研发中心', '/system/user/profile/imgUpload', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2025/03/09/logo_20250309190637A002.png\",\"code\":200}', 0, NULL, '2025-03-09 19:06:39', 18);
INSERT INTO `sys_oper_log` VALUES (383, '系统信息', 1, 'com.ruoyi.web.controller.system.VSysController.add()', 'POST', 1, 'admin', '技术研发中心', '/system/sys', '127.0.0.1', '内网IP', '{\"params\":{},\"remarks\":\"系统\",\"sysIcp\":\"-/-\",\"sysId\":1,\"sysLogo\":\"/profile/avatar/2025/03/09/logo_20250309190637A002.png\",\"sysName\":\"AikanPorn\",\"sysPolice\":\"-/-\",\"sysType\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 19:07:45', 497);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2025-03-06 14:56:21', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2025-03-06 14:56:21', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2025-03-06 14:56:21', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2025-03-06 14:56:21', 'admin', '2025-03-09 01:11:52', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2008);
INSERT INTO `sys_role_menu` VALUES (2, 2009);
INSERT INTO `sys_role_menu` VALUES (2, 2010);
INSERT INTO `sys_role_menu` VALUES (2, 2015);
INSERT INTO `sys_role_menu` VALUES (2, 2016);
INSERT INTO `sys_role_menu` VALUES (2, 2017);
INSERT INTO `sys_role_menu` VALUES (2, 2018);
INSERT INTO `sys_role_menu` VALUES (2, 2019);
INSERT INTO `sys_role_menu` VALUES (2, 2020);
INSERT INTO `sys_role_menu` VALUES (2, 2021);
INSERT INTO `sys_role_menu` VALUES (2, 2022);
INSERT INTO `sys_role_menu` VALUES (2, 2023);
INSERT INTO `sys_role_menu` VALUES (2, 2024);
INSERT INTO `sys_role_menu` VALUES (2, 2025);
INSERT INTO `sys_role_menu` VALUES (2, 2026);
INSERT INTO `sys_role_menu` VALUES (2, 2027);
INSERT INTO `sys_role_menu` VALUES (2, 2028);
INSERT INTO `sys_role_menu` VALUES (2, 2029);
INSERT INTO `sys_role_menu` VALUES (2, 2030);
INSERT INTO `sys_role_menu` VALUES (2, 2031);
INSERT INTO `sys_role_menu` VALUES (2, 2032);
INSERT INTO `sys_role_menu` VALUES (2, 2033);
INSERT INTO `sys_role_menu` VALUES (2, 2034);
INSERT INTO `sys_role_menu` VALUES (2, 2043);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '平台', '00', 'ry@163.com', '15888888888', '0', '/profile/avatar/2025/03/07/903d4624-160e-4c3d-9e2a-3b710a08110d_20250307132019A001.png', '$2a$10$1GqAdxD0JUCJW5OOjpQSZuApwMT6kqZ0J3GiKzDBf.hLuwSzS4P.m', '0', '0', '127.0.0.1', '2025-03-09 19:50:48', 'admin', '2025-03-06 14:56:21', '', '2025-03-09 19:50:48', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2025-03-06 14:56:21', 'admin', '2025-03-06 14:56:21', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, 103, '15692786655', '测试', '00', '132@qq.com', '13308584454', '0', '', '$2a$10$1GqAdxD0JUCJW5OOjpQSZuApwMT6kqZ0J3GiKzDBf.hLuwSzS4P.m', '0', '0', '127.0.0.1', '2025-03-09 01:12:07', 'admin', '2025-03-08 14:33:50', 'admin', '2025-03-09 01:12:10', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (100, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (100, 2);

-- ----------------------------
-- Table structure for v_fx
-- ----------------------------
DROP TABLE IF EXISTS `v_fx`;
CREATE TABLE `v_fx`  (
  `fx_id` int NOT NULL AUTO_INCREMENT COMMENT '分销ID',
  `fx_leave` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分销级别',
  `fx_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分销类别',
  `fx_bl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分销比率',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开启状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `fx_up` int NULL DEFAULT NULL COMMENT '提升机制数量',
  PRIMARY KEY (`fx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of v_fx
-- ----------------------------
INSERT INTO `v_fx` VALUES (1, '0', '0', '0.02', '1', '2025-03-08 13:20:04', 0);
INSERT INTO `v_fx` VALUES (2, '1', '0', '0.01', '1', '2025-03-08 13:20:18', 200);
INSERT INTO `v_fx` VALUES (3, '2', '0', '0.005', '1', '2025-03-08 13:20:36', 1000);

-- ----------------------------
-- Table structure for v_fx_person
-- ----------------------------
DROP TABLE IF EXISTS `v_fx_person`;
CREATE TABLE `v_fx_person`  (
  `v_fx_id` int NOT NULL AUTO_INCREMENT COMMENT '分销ID',
  `v_fx_pid` int NULL DEFAULT NULL COMMENT '分销用户ID',
  `v_fx_fid` int NULL DEFAULT NULL COMMENT '分销级别ID',
  `v_fx_fName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分销级别',
  `v_fx_team` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '团队成员',
  `create_time` datetime NULL DEFAULT NULL COMMENT '开通日期',
  `v_fx_farther_id` int NULL DEFAULT NULL COMMENT '父级ID',
  `v_fx_farther_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '父级名称',
  PRIMARY KEY (`v_fx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of v_fx_person
-- ----------------------------
INSERT INTO `v_fx_person` VALUES (4, 1, 0, '一级分销', '6,3', '2025-03-09 01:49:14', NULL, NULL);
INSERT INTO `v_fx_person` VALUES (9, 6, 1, '二级分销', NULL, '2025-03-09 02:21:17', 4, '最后的男人');
INSERT INTO `v_fx_person` VALUES (11, 3, 1, '二级分销', NULL, '2025-03-09 02:24:02', 4, '最后的男人');

-- ----------------------------
-- Table structure for v_person
-- ----------------------------
DROP TABLE IF EXISTS `v_person`;
CREATE TABLE `v_person`  (
  `person_id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `acc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '账号',
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '昵称',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建日期',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话号码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '头像',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '性别',
  `borth_day` timestamp NULL DEFAULT NULL COMMENT '出生日期',
  PRIMARY KEY (`person_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of v_person
-- ----------------------------
INSERT INTO `v_person` VALUES (1, '674158881@qq.com', '123456', '最后的男人', '2025-03-07 12:39:11', '13308589949', '/profile/avatar/2025/03/07/903d4624-160e-4c3d-9e2a-3b710a08110d_20250307133204A010.png', '隐私', '2025-03-12 00:00:00');
INSERT INTO `v_person` VALUES (3, '83267794@qq.com', 'qq.com', 'Go With Wind', '2025-03-07 13:29:04', '18212994656', '/profile/avatar/2025/03/07/8c29ab36-0ed9-4df2-ba6d-b5d0c45b1b48_20250307133654A012.jpg', '女', '2000-02-15 00:00:00');
INSERT INTO `v_person` VALUES (6, '18212997343@qq.com', '123456', '笨鸭子', '2025-03-08 11:50:16', '13308587797', '/profile/avatar/2025/03/08/tx_20250308125059A001.jpg', '女', '1995-03-01 00:00:00');

-- ----------------------------
-- Table structure for v_sys
-- ----------------------------
DROP TABLE IF EXISTS `v_sys`;
CREATE TABLE `v_sys`  (
  `sys_id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sys_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sys_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sys_icp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sys_police` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sys_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`sys_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of v_sys
-- ----------------------------
INSERT INTO `v_sys` VALUES (1, 'AikanPorn', '1', '-/-', '-/-', '/profile/avatar/2025/03/09/logo_20250309190637A002.png', '系统');

-- ----------------------------
-- Table structure for v_type
-- ----------------------------
DROP TABLE IF EXISTS `v_type`;
CREATE TABLE `v_type`  (
  `type_id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '视频类别',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态',
  `type_pid` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of v_type
-- ----------------------------
INSERT INTO `v_type` VALUES (4, '国产短片', 1, 0);
INSERT INTO `v_type` VALUES (5, '国产长片', 1, 0);
INSERT INTO `v_type` VALUES (6, '亚洲情色', 1, 0);
INSERT INTO `v_type` VALUES (7, '日本情色', 1, 0);

-- ----------------------------
-- Table structure for v_video
-- ----------------------------
DROP TABLE IF EXISTS `v_video`;
CREATE TABLE `v_video`  (
  `vod_id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `vod_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '名称',
  `type_id` int NULL DEFAULT NULL COMMENT '类别ID',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类别名称',
  `vod_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '拼音名称',
  `vod_create_time` timestamp NULL DEFAULT NULL COMMENT '视频上传日期',
  `vod_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注信息',
  `vod_play_form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '视频播放格式',
  `vod_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '视频背景图片',
  `vod_times` int NULL DEFAULT NULL COMMENT '视频播放时长',
  `vod_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地区信息',
  `vod_actor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '视频主演',
  `vod_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '视频播放地址',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`vod_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of v_video
-- ----------------------------
INSERT INTO `v_video` VALUES (1, '小杜鹃_STS_佩奇的奇遇', 4, '国产短片', 'xiaodujuan', '2025-03-06 00:00:00', '你懂的，你懂的。', 'm3u8', '/profile/avatar/2025/03/07/f2_20250307135430A017.jpg', 82, '美国-阿拉斯加州-婆宁区', 'Smith.Lily', 'https://www.sks011.com/d/1988736/pms.html', 1);
INSERT INTO `v_video` VALUES (2, '赛博朋克_01_逝去的光阴', 5, '国产长片', 'saibopengke', '2025-03-08 00:00:00', '很不错！！！', 'm3u8', '/profile/avatar/2025/03/08/f1_20250308141438A001.jpg', 115, '美国', '威尼斯.乔娜', 'http://127.0.0.1:8080/video/t/20250103/index.html', 1);

-- ----------------------------
-- Table structure for v_vip
-- ----------------------------
DROP TABLE IF EXISTS `v_vip`;
CREATE TABLE `v_vip`  (
  `vip_id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `vip_type_id` int NULL DEFAULT NULL COMMENT '会员类别ID',
  `person_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`vip_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of v_vip
-- ----------------------------
INSERT INTO `v_vip` VALUES (1, 1, 1, '2025-04-07 00:00:00');
INSERT INTO `v_vip` VALUES (2, 1, 6, '2025-04-08 00:00:00');

-- ----------------------------
-- Table structure for v_vip_type
-- ----------------------------
DROP TABLE IF EXISTS `v_vip_type`;
CREATE TABLE `v_vip_type`  (
  `vip_type_id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `vip_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类别名称',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '描述',
  `vip_des` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '简介',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `dw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单位类型',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`vip_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of v_vip_type
-- ----------------------------
INSERT INTO `v_vip_type` VALUES (1, '月卡会员', '按照30天计算', '月卡会员，', 329.00, '月卡', 1, '2025-03-07 12:24:00');
INSERT INTO `v_vip_type` VALUES (2, '季度卡会员', '合计90天', '季度卡会员，3个月计算，', 950.00, '季度卡', 1, '2025-03-07 12:26:41');
INSERT INTO `v_vip_type` VALUES (3, '年卡会员', '合计360天', '年卡会员，按照每个月30天，计算12个月', 3850.00, '年卡', 1, '2025-03-07 12:33:35');

SET FOREIGN_KEY_CHECKS = 1;
