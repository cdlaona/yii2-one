-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-07-31 10:36:21
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yii`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('测试', '1', 1501465532);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/admin/*', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/default/*', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/default/index', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/menu/*', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/menu/create', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/menu/index', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/menu/update', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/menu/view', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/permission/*', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/permission/create', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/permission/index', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/permission/update', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/permission/view', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/role/*', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/role/assign', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/role/create', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/role/delete', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/role/index', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/role/remove', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/role/update', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/role/view', 2, NULL, NULL, NULL, 1501466045, 1501466045),
('/admin/route/*', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/route/assign', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/route/create', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/route/index', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/route/remove', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/rule/*', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/rule/create', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/rule/index', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/rule/update', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/rule/view', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/user/*', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/admin/user/activate', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/user/delete', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/user/index', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/user/login', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/user/logout', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/user/signup', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/admin/user/view', 2, NULL, NULL, NULL, 1501466046, 1501466046),
('/blog/*', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/blog/create', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/blog/delete', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/blog/index', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/blog/update', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/blog/view', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/debug/*', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/debug/default/*', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/debug/default/index', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/debug/default/view', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/gii/*', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/gii/default/*', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/gii/default/action', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/gii/default/diff', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/gii/default/index', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/gii/default/preview', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/gii/default/view', 2, NULL, NULL, NULL, 1501466047, 1501466047),
('/site/*', 2, NULL, NULL, NULL, 1501235268, 1501235268),
('/site/about', 2, NULL, NULL, NULL, 1501235260, 1501235260),
('/site/captcha', 2, NULL, NULL, NULL, 1501235274, 1501235274),
('/site/contact', 2, NULL, NULL, NULL, 1501235258, 1501235258),
('/site/error', 2, NULL, NULL, NULL, 1501235264, 1501235264),
('/site/index', 2, NULL, NULL, NULL, 1501235253, 1501235253),
('/site/login', 2, NULL, NULL, NULL, 1501235255, 1501235255),
('/site/logout', 2, NULL, NULL, NULL, 1501235257, 1501235257),
('/site/request-password-reset', 2, NULL, NULL, NULL, 1501235273, 1501235273),
('/site/reset-password', 2, NULL, NULL, NULL, 1501235271, 1501235271),
('/site/signup', 2, NULL, NULL, NULL, 1501235262, 1501235262),
('所有权限', 2, NULL, NULL, NULL, 1501235379, 1501479323),
('测试', 1, NULL, NULL, NULL, 1501235430, 1501235430);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('所有权限', '/*'),
('所有权限', '/admin/*'),
('所有权限', '/admin/assignment/*'),
('所有权限', '/admin/assignment/assign'),
('所有权限', '/admin/assignment/index'),
('所有权限', '/admin/assignment/revoke'),
('所有权限', '/admin/assignment/view'),
('所有权限', '/admin/default/*'),
('所有权限', '/admin/default/index'),
('所有权限', '/admin/menu/*'),
('所有权限', '/admin/menu/create'),
('所有权限', '/admin/menu/delete'),
('所有权限', '/admin/menu/index'),
('所有权限', '/admin/menu/update'),
('所有权限', '/admin/menu/view'),
('所有权限', '/admin/permission/*'),
('所有权限', '/admin/permission/assign'),
('所有权限', '/admin/permission/create'),
('所有权限', '/admin/permission/delete'),
('所有权限', '/admin/permission/index'),
('所有权限', '/admin/permission/remove'),
('所有权限', '/admin/permission/update'),
('所有权限', '/admin/permission/view'),
('所有权限', '/admin/role/*'),
('所有权限', '/admin/role/assign'),
('所有权限', '/admin/role/create'),
('所有权限', '/admin/role/delete'),
('所有权限', '/admin/role/index'),
('所有权限', '/admin/role/remove'),
('所有权限', '/admin/role/update'),
('所有权限', '/admin/role/view'),
('所有权限', '/admin/route/*'),
('所有权限', '/admin/route/assign'),
('所有权限', '/admin/route/create'),
('所有权限', '/admin/route/index'),
('所有权限', '/admin/route/refresh'),
('所有权限', '/admin/route/remove'),
('所有权限', '/admin/rule/*'),
('所有权限', '/admin/rule/create'),
('所有权限', '/admin/rule/delete'),
('所有权限', '/admin/rule/index'),
('所有权限', '/admin/rule/update'),
('所有权限', '/admin/rule/view'),
('所有权限', '/admin/user/*'),
('所有权限', '/admin/user/activate'),
('所有权限', '/admin/user/change-password'),
('所有权限', '/admin/user/delete'),
('所有权限', '/admin/user/index'),
('所有权限', '/admin/user/login'),
('所有权限', '/admin/user/logout'),
('所有权限', '/admin/user/request-password-reset'),
('所有权限', '/admin/user/reset-password'),
('所有权限', '/admin/user/signup'),
('所有权限', '/admin/user/view'),
('所有权限', '/blog/*'),
('所有权限', '/blog/create'),
('所有权限', '/blog/delete'),
('所有权限', '/blog/index'),
('所有权限', '/blog/update'),
('所有权限', '/blog/view'),
('所有权限', '/debug/*'),
('所有权限', '/debug/default/*'),
('所有权限', '/debug/default/db-explain'),
('所有权限', '/debug/default/download-mail'),
('所有权限', '/debug/default/index'),
('所有权限', '/debug/default/toolbar'),
('所有权限', '/debug/default/view'),
('所有权限', '/gii/*'),
('所有权限', '/gii/default/*'),
('所有权限', '/gii/default/action'),
('所有权限', '/gii/default/diff'),
('所有权限', '/gii/default/index'),
('所有权限', '/gii/default/preview'),
('所有权限', '/gii/default/view'),
('所有权限', '/site/*'),
('所有权限', '/site/about'),
('所有权限', '/site/captcha'),
('所有权限', '/site/contact'),
('所有权限', '/site/error'),
('所有权限', '/site/index'),
('所有权限', '/site/login'),
('所有权限', '/site/logout'),
('所有权限', '/site/request-password-reset'),
('所有权限', '/site/reset-password'),
('所有权限', '/site/signup'),
('测试', '所有权限');

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1501151400),
('m130524_201442_init', 1501151406),
('m140506_102106_rbac_init', 1501229576),
('m140602_111327_create_menu_table', 1501222988),
('m160312_050000_create_user', 1501222988),
('m170727_095552_create_blog_table', 1501151407);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'QUW3BvLt_4CA6Sm_8lQGz5BJS5gE2RZA', '$2y$13$K3nLH9pvscSfEwje6OD1RO6BxnljmPAYHxsME4135p2T69eaLRdY.', NULL, 'admin@qq.com', 10, 1501214561, 1501214561);

--
-- 限制导出的表
--

--
-- 限制表 `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
