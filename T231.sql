/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t231`;
CREATE DATABASE IF NOT EXISTS `t231` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t231`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'shiyong_types', '是否启用', 1, '使用', NULL, NULL, '2022-04-18 12:00:40'),
	(2, 'shiyong_types', '是否启用', 2, '禁用', NULL, NULL, '2022-04-18 12:00:40'),
	(3, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-18 12:00:40'),
	(4, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-18 12:00:40'),
	(5, 'bumen_types', '部门', 1, '市场部', NULL, NULL, '2022-04-18 12:00:40'),
	(6, 'bumen_types', '部门', 2, '人事部', NULL, NULL, '2022-04-18 12:00:40'),
	(7, 'bumen_types', '部门', 2, '研发部', NULL, NULL, '2022-04-18 12:00:40'),
	(8, 'zhiwei_types', '职位', 1, '普通员工', NULL, NULL, '2022-04-18 12:00:40'),
	(9, 'zhiwei_types', '职位', 2, '小组长', NULL, NULL, '2022-04-18 12:00:40'),
	(10, 'zhiwei_types', '职位', 2, '大组长', NULL, NULL, '2022-04-18 12:00:40'),
	(11, 'liuyan_types', '留言类型', 1, '留言类型1', NULL, NULL, '2022-04-18 12:00:40'),
	(12, 'liuyan_types', '留言类型', 2, '留言类型2', NULL, NULL, '2022-04-18 12:00:40'),
	(13, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-18 12:00:40'),
	(14, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-18 12:00:40'),
	(15, 'liuyan_types', '留言类型', 3, '留言类型3', NULL, '', '2022-04-18 13:14:39');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 1, '2022-04-18 12:00:45', '公告详情1', '2022-04-18 12:00:45'),
	(2, '公告名称2', 2, '2022-04-18 12:00:45', '公告详情2', '2022-04-18 12:00:45'),
	(3, '公告名称3', 1, '2022-04-18 12:00:45', '公告详情3', '2022-04-18 12:00:45'),
	(4, '公告名称4', 2, '2022-04-18 12:00:45', '公告详情4', '2022-04-18 12:00:45'),
	(5, '公告名称5', 1, '2022-04-18 12:00:45', '公告详情5', '2022-04-18 12:00:45'),
	(6, '股票哪个111', 2, '2022-04-18 13:14:53', '<p>个人防护家家户户</p>', '2022-04-18 13:14:53');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='留言';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yuangong_id`, `liuyan_name`, `liuyan_types`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, '留言标题1', 1, '留言内容1', '2022-04-18 12:00:45', '回复信息1', '2022-04-18 12:00:45', '2022-04-18 12:00:45'),
	(2, 1, '留言标题2', 2, '留言内容2', '2022-04-18 12:00:45', '回复信息2', '2022-04-18 12:00:45', '2022-04-18 12:00:45'),
	(3, 1, '留言标题3', 2, '留言内容3', '2022-04-18 12:00:45', '回复信息3', '2022-04-18 12:00:45', '2022-04-18 12:00:45'),
	(4, 2, '留言标题4', 1, '留言内容4', '2022-04-18 12:00:45', '回复信息4', '2022-04-18 12:00:45', '2022-04-18 12:00:45'),
	(5, 1, '留言标题5', 1, '留言内容5', '2022-04-18 12:00:45', '回复信息5', '2022-04-18 12:00:45', '2022-04-18 12:00:45'),
	(6, 2, '标题1111', 1, '内容111', '2022-04-18 13:14:04', '送达噶黑胡椒', '2022-04-18 13:15:00', '2022-04-18 13:14:04'),
	(7, 2, '我的4月份薪资不对', 3, '爱上岗哈哈哈', '2022-04-18 13:18:00', '', NULL, '2022-04-18 13:18:00');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'weut2l3gbhcu0lx3hp8yrm9pz5ykz843', '2022-04-18 12:53:52', '2024-06-21 09:10:51'),
	(2, 2, 'a2', 'yuangong', '员工', 'sw4b39qdqnd0zozceyzfapyri7gk9emv', '2022-04-18 13:12:30', '2024-06-21 09:11:49');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `xinzi`;
CREATE TABLE IF NOT EXISTS `xinzi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `xinzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '薪资编号 Search111 ',
  `xinzi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `xinzi_month` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
  `jiben_jine` decimal(10,2) DEFAULT NULL COMMENT '基本工资',
  `jiangjin_jine` decimal(10,2) DEFAULT NULL COMMENT '奖金',
  `jixiao_jine` decimal(10,2) DEFAULT NULL COMMENT '绩效',
  `butie_jine` decimal(10,2) DEFAULT NULL COMMENT '补贴',
  `yingfa_jine` decimal(10,2) DEFAULT NULL COMMENT '应发',
  `daikou_shiyejin_jine` decimal(10,2) DEFAULT NULL COMMENT '代扣失业金',
  `daikou_yanglaojin_jine` decimal(10,2) DEFAULT NULL COMMENT '代扣养老保险金',
  `daikou_gongjijin_jine` decimal(10,2) DEFAULT NULL COMMENT '代扣公积金',
  `daikou_gerensuodeshui_jine` decimal(10,2) DEFAULT NULL COMMENT '代扣个人所得税',
  `shifa_jine` decimal(10,2) DEFAULT NULL COMMENT '实发工资',
  `xinzi_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='薪资';

DELETE FROM `xinzi`;
INSERT INTO `xinzi` (`id`, `yuangong_id`, `xinzi_uuid_number`, `xinzi_name`, `xinzi_month`, `jiben_jine`, `jiangjin_jine`, `jixiao_jine`, `butie_jine`, `yingfa_jine`, `daikou_shiyejin_jine`, `daikou_yanglaojin_jine`, `daikou_gongjijin_jine`, `daikou_gerensuodeshui_jine`, `shifa_jine`, `xinzi_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '165028324585713', '标题1', '2022-03', 537.45, 659.78, 103.67, 571.69, 134.76, 370.51, 180.34, 717.25, 362.97, 511.81, '备注1', '2022-04-18 12:00:45', '2022-04-18 12:00:45'),
	(2, 2, '16502832458588', '标题2', '2022-01', 472.23, 797.28, 755.37, 994.89, 457.60, 275.43, 280.69, 288.82, 477.83, 178.81, '备注2', '2022-04-18 12:00:45', '2022-04-18 12:00:45'),
	(3, 2, '165028324585811', '标题3', '2022-02', 212.48, 957.40, 81.34, 603.63, 471.63, 835.18, 676.70, 131.35, 966.83, 107.00, '备注3', '2022-04-18 12:00:45', '2022-04-18 12:00:45'),
	(4, 2, '165028324585814', '标题4', '2022-03', 742.21, 936.01, 897.40, 457.76, 952.44, 590.58, 543.25, 593.75, 160.48, 833.80, '备注4', '2022-04-18 12:00:45', '2022-04-18 12:00:45'),
	(5, 1, '16502832458580', '标题5', '2022-03', 78.54, 347.60, 748.39, 444.92, 83.69, 733.39, 920.62, 392.86, 350.32, 837.52, '备注5', '2022-04-18 12:00:45', '2022-04-18 12:00:45'),
	(12, 2, '1650287712312', '员工姓名2的5月份薪资', '2022-05', 3000.00, 31000.00, 4000.00, 5000.00, 43000.00, 402.00, 403.00, 401.00, 400.00, 41394.00, '<p>按时</p>', '2022-04-18 13:15:58', '2022-04-18 13:15:58');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '员工工号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `bumen_types` int DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111 ',
  `shiyong_types` int DEFAULT NULL COMMENT '是否启用 Search111 ',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `username`, `password`, `yuangong_uuid_number`, `yuangong_name`, `yuangong_phone`, `yuangong_id_number`, `yuangong_photo`, `sex_types`, `bumen_types`, `zhiwei_types`, `shiyong_types`, `yuangong_email`, `create_time`) VALUES
	(1, '员工1', '123456', '165028324586419', '员工姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/qiyeyuangongxinchouguanxi/upload/yuangong1.jpg', 2, 1, 1, 2, '1@qq.com', '2022-04-18 12:00:45'),
	(2, '员工2', '123456', '165028324586417', '员工姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/qiyeyuangongxinchouguanxi/upload/yuangong2.jpg', 2, 1, 1, 1, '2@qq.com', '2022-04-18 12:00:45'),
	(3, '员工3', '123456', '1650283245864171', '员工姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/qiyeyuangongxinchouguanxi/upload/yuangong3.jpg', 2, 2, 2, 1, '3@qq.com', '2022-04-18 12:00:45');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
