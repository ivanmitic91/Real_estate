-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 24, 2019 at 05:57 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--
CREATE DATABASE IF NOT EXISTS `real_estate` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `real_estate`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/real_estate', 'yes'),
(2, 'home', 'http://localhost/real_estate', 'yes'),
(3, 'blogname', 'Real Estate', 'yes'),
(4, 'blogdescription', 'The biggest Real Estate company in Serbia', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ivanmitic91@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:115:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"estate/?$\";s:31:\"index.php?post_type=real_estate\";s:39:\"estate/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=real_estate&feed=$matches[1]\";s:34:\"estate/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=real_estate&feed=$matches[1]\";s:26:\"estate/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=real_estate&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:37:\"index.php?type=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?type=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:26:\"index.php?type=$matches[1]\";s:34:\"estate/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"estate/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"estate/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"estate/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"estate/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"estate/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"estate/([^/]+)/embed/?$\";s:44:\"index.php?real_estate=$matches[1]&embed=true\";s:27:\"estate/([^/]+)/trackback/?$\";s:38:\"index.php?real_estate=$matches[1]&tb=1\";s:47:\"estate/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?real_estate=$matches[1]&feed=$matches[2]\";s:42:\"estate/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?real_estate=$matches[1]&feed=$matches[2]\";s:35:\"estate/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?real_estate=$matches[1]&paged=$matches[2]\";s:42:\"estate/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?real_estate=$matches[1]&cpage=$matches[2]\";s:31:\"estate/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?real_estate=$matches[1]&page=$matches[2]\";s:23:\"estate/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"estate/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"estate/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"estate/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"estate/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"estate/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:49:\"location/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?location=$matches[1]&feed=$matches[2]\";s:44:\"location/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?location=$matches[1]&feed=$matches[2]\";s:25:\"location/([^/]+)/embed/?$\";s:41:\"index.php?location=$matches[1]&embed=true\";s:37:\"location/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?location=$matches[1]&paged=$matches[2]\";s:19:\"location/([^/]+)/?$\";s:30:\"index.php?location=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'real_estate', 'yes'),
(41, 'stylesheet', 'real_estate', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '7', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(205, 'new_admin_email', 'ivanmitic91@gmail.com', 'yes'),
(102, 'cron', 'a:6:{i:1571942852;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1571968052;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572011252;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572011262;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572011263;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1571752944;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1571939449;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(150, 'acf_version', '5.8.5', 'yes'),
(254, '_site_transient_timeout_theme_roots', '1571941250', 'no'),
(255, '_site_transient_theme_roots', 'a:1:{s:11:\"real_estate\";s:7:\"/themes\";}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1571939450;s:7:\"checked\";a:1:{s:11:\"real_estate\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_timeout_browser_289d30a4d23579d26a05a8aa808752b5', '1572356862', 'no'),
(122, '_site_transient_browser_289d30a4d23579d26a05a8aa808752b5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"77.0.3865.120\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(123, '_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89', '1572356863', 'no'),
(124, '_site_transient_php_check_472f71d2a071d463a95f84346288dc89', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(204, 'WPLANG', '', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(142, 'current_theme', 'Real Estate', 'yes'),
(143, 'theme_mods_real_estate', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(149, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1571939450;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.5\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(158, 'category_children', 'a:0:{}', 'yes'),
(161, 'recovery_mode_email_last_sent', '1571779702', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1571759841:1'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1571759847:1'),
(7, 9, '_edit_last', '1'),
(8, 9, '_edit_lock', '1571763017:1'),
(9, 25, '_edit_last', '1'),
(10, 25, '_edit_lock', '1571821850:1'),
(11, 29, '_edit_last', '1'),
(12, 29, '_edit_lock', '1571828713:1'),
(13, 33, '_edit_last', '1'),
(14, 33, '_edit_lock', '1571850101:1'),
(15, 33, 'image', '36'),
(16, 33, '_image', 'field_5daf7925937ad'),
(17, 33, 'subtitle', 'Blue Street 1'),
(18, 33, '_subtitle', 'field_5daf77d8a1680'),
(19, 34, '_edit_last', '1'),
(20, 34, '_edit_lock', '1571852646:1'),
(21, 34, 'image', '38'),
(22, 34, '_image', 'field_5daf7925937ad'),
(23, 34, 'subtitle', 'White Street 1 '),
(24, 34, '_subtitle', 'field_5daf77d8a1680'),
(25, 36, '_wp_attached_file', '2019/10/real-estate-ira.png'),
(26, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:840;s:6:\"height\";i:663;s:4:\"file\";s:27:\"2019/10/real-estate-ira.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"real-estate-ira-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"real-estate-ira-300x237.png\";s:5:\"width\";i:300;s:6:\"height\";i:237;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"real-estate-ira-768x606.png\";s:5:\"width\";i:768;s:6:\"height\";i:606;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:983;s:6:\"height\";i:390;s:4:\"file\";s:34:\"2019/10/HomeIllustrated983x390.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"HomeIllustrated983x390-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"HomeIllustrated983x390-300x119.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"HomeIllustrated983x390-768x305.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:305;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 46, '_wp_attached_file', '2019/10/HomeIllustrated983x390.jpg'),
(56, 45, '_edit_lock', '1571847736:1'),
(52, 42, '_edit_lock', '1571832969:1'),
(55, 45, '_edit_last', '1'),
(51, 42, '_edit_last', '1'),
(36, 37, '_edit_last', '1'),
(37, 37, '_edit_lock', '1571852641:1'),
(38, 37, 'image', '36'),
(39, 37, '_image', 'field_5daf7925937ad'),
(40, 37, 'subtitle', 'Green Street 1 '),
(41, 37, '_subtitle', 'field_5daf77d8a1680'),
(42, 38, '_wp_attached_file', '2019/10/flat.jpg'),
(43, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1077;s:4:\"file\";s:16:\"2019/10/flat.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"flat-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"flat-768x636.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:636;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"flat-1024x848.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:848;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:187:\"The real estate advertisement poster, banner, card with the city landscape and big brick  house in the center of the image. Real estate services advertisement concept. Vector Flat Design.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:3:\"Web\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:48:{i:0;s:4:\"Real\";i:1;s:6:\"Estate\";i:2;s:11:\"Real estate\";i:3;s:4:\"rent\";i:4;s:6:\"rental\";i:5;s:4:\"sale\";i:6;s:4:\"sold\";i:7;s:7:\"exhange\";i:8;s:5:\"house\";i:9;s:9:\"apartment\";i:10;s:4:\"home\";i:11;s:4:\"flat\";i:12;s:4:\"room\";i:13;s:4:\"city\";i:14;s:4:\"town\";i:15;s:6:\"agency\";i:16;s:8:\"servises\";i:17;s:13:\"advertisement\";i:18;s:6:\"people\";i:19;s:6:\"manage\";i:20;s:9:\"manageres\";i:21;s:6:\"bureau\";i:22;s:6:\"stores\";i:23;s:6:\"banner\";i:24;s:3:\"web\";i:25;s:8:\"internet\";i:26;s:2:\"ad\";i:27;s:8:\"location\";i:28;s:6:\"search\";i:29;s:7:\"nursing\";i:30;s:5:\"adult\";i:31;s:7:\"pension\";i:32;s:7:\"village\";i:33;s:11:\"countryside\";i:34;s:3:\"geo\";i:35;s:3:\"tag\";i:36;s:7:\"geo tag\";i:37;s:6:\"vector\";i:38;s:4:\"flat\";i:39;s:6:\"design\";i:40;s:3:\"art\";i:41;s:12:\"illustration\";i:42;s:5:\"style\";i:43;s:7:\"website\";i:44;s:10:\"connection\";i:45;s:13:\"communication\";i:46;s:8:\"business\";i:47;s:4:\"deal\";}}}'),
(44, 39, '_edit_last', '1'),
(45, 39, '_edit_lock', '1571832978:1'),
(59, 45, 'image', '46'),
(60, 45, '_image', 'field_5daf7925937ad'),
(61, 45, 'subtitle', 'Orange Street 1'),
(62, 45, '_subtitle', 'field_5daf77d8a1680'),
(63, 47, '_edit_last', '1'),
(64, 47, '_edit_lock', '1571849963:1'),
(65, 47, 'image', '38'),
(66, 47, '_image', 'field_5daf7925937ad'),
(67, 47, 'subtitle', 'Yellow Street 1 '),
(68, 47, '_subtitle', 'field_5daf77d8a1680'),
(78, 46, '_wp_attachment_image_alt', 'House in Nature');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2019-10-22 13:47:32', '2019-10-22 13:47:32', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/real_estate/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-10-22 13:47:32', '2019-10-22 13:47:32', '', 0, 'http://localhost/real_estate/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-22 13:47:32', '2019-10-22 13:47:32', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/real_estate.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-10-22 13:47:32', '2019-10-22 13:47:32', '', 0, 'http://localhost/real_estate/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-10-22 13:47:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-22 13:47:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?p=4', 0, 'post', '', 0),
(5, 1, '2019-10-22 15:59:45', '2019-10-22 15:59:45', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-22 15:59:45', '2019-10-22 15:59:45', '', 0, 'http://localhost/real_estate/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-10-22 15:59:45', '2019-10-22 15:59:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-10-22 15:59:45', '2019-10-22 15:59:45', '', 5, 'http://localhost/real_estate/2019/10/22/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-10-22 15:59:50', '2019-10-22 15:59:50', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-10-22 15:59:50', '2019-10-22 15:59:50', '', 0, 'http://localhost/real_estate/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-10-22 15:59:50', '2019-10-22 15:59:50', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-22 15:59:50', '2019-10-22 15:59:50', '', 7, 'http://localhost/real_estate/2019/10/22/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-10-22 16:20:21', '2019-10-22 16:20:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum suscipit ultricies turpis nec volutpat. Nam eu placerat eros. Mauris accumsan leo vitae neque gravida sodales. Aliquam posuere porttitor ultrices. Fusce fringilla odio non tincidunt aliquet. Vestibulum luctus ullamcorper enim, eget tincidunt est convallis eu. Duis tristique, velit ac volutpat sodales, augue mauris dapibus est, in vestibulum diam nisl quis mauris. Etiam dictum malesuada tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris tristique turpis ut placerat interdum. Cras rutrum mi non velit ullamcorper tempor. Mauris viverra ipsum vitae tellus volutpat lacinia. Suspendisse malesuada, mi ut elementum auctor, libero sem accumsan dolor, ut tempus mi lacus eu massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a malesuada urna. Fusce at ligula enim.\r\n\r\nCurabitur egestas nisi vel laoreet venenatis. Mauris bibendum quam justo, tristique fringilla nulla posuere vel. Nullam eget dapibus nisi, ut mattis lectus. In euismod mi id justo consectetur placerat. Pellentesque a vulputate sapien, at elementum felis. Vestibulum vulputate eu diam ut posuere. Pellentesque diam tortor, lobortis quis mi at, venenatis aliquet tortor. Vivamus commodo arcu a ex lacinia, eget consequat lacus tempus. Ut laoreet elit tellus, in maximus leo pellentesque suscipit. Pellentesque nec dapibus est. Morbi facilisis rutrum ipsum a ullamcorper. Etiam cursus orci nunc, vel iaculis erat dictum nec. Duis posuere, felis scelerisque dapibus cursus, justo nibh tristique neque, sit amet auctor nibh odio ac lorem. Vivamus condimentum ac lorem feugiat interdum. Nullam vehicula pellentesque dui, sit amet tincidunt mi iaculis vel.', 'Real Estate', '', 'publish', 'closed', 'closed', '', 'real-estate', '', '', '2019-10-22 16:20:21', '2019-10-22 16:20:21', '', 0, 'http://localhost/real_estate/?post_type=realestate&#038;p=9', 0, 'realestate', '', 0),
(10, 1, '2019-10-22 16:26:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 16:26:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=realestate&p=10', 0, 'realestate', '', 0),
(11, 1, '2019-10-22 16:27:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 16:27:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=realestate&p=11', 0, 'realestate', '', 0),
(12, 1, '2019-10-22 16:28:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 16:28:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=realestate&p=12', 0, 'realestate', '', 0),
(13, 1, '2019-10-22 17:23:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 17:23:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=deals&p=13', 0, 'deals', '', 0),
(14, 1, '2019-10-22 17:25:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 17:25:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=deals&p=14', 0, 'deals', '', 0),
(15, 1, '2019-10-22 17:25:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 17:25:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=deals&p=15', 0, 'deals', '', 0),
(16, 1, '2019-10-22 17:26:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 17:26:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=deals&p=16', 0, 'deals', '', 0),
(17, 1, '2019-10-22 17:28:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 17:28:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=deals&p=17', 0, 'deals', '', 0),
(18, 1, '2019-10-22 17:29:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 17:29:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=deals&p=18', 0, 'deals', '', 0),
(19, 1, '2019-10-22 17:40:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 17:40:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=deals&p=19', 0, 'deals', '', 0),
(20, 1, '2019-10-22 17:53:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 17:53:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=deals&p=20', 0, 'deals', '', 0),
(21, 1, '2019-10-22 17:53:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 17:53:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=deals&p=21', 0, 'deals', '', 0),
(22, 1, '2019-10-22 18:01:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 18:01:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=real_estate&p=22', 0, 'real_estate', '', 0),
(23, 1, '2019-10-22 18:03:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 18:03:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=real_estate&p=23', 0, 'real_estate', '', 0),
(24, 1, '2019-10-22 18:03:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 18:03:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=real_estate&p=24', 0, 'real_estate', '', 0),
(25, 1, '2019-10-22 21:46:35', '2019-10-22 21:46:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"real_estate\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'group_5daf779386eb1', '', '', '2019-10-22 21:49:39', '2019-10-22 21:49:39', '', 0, 'http://localhost/real_estate/?post_type=acf-field-group&#038;p=25', 0, 'acf-field-group', '', 0),
(26, 1, '2019-10-22 21:46:35', '2019-10-22 21:46:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5daf77d8a1680', '', '', '2019-10-22 21:49:39', '2019-10-22 21:49:39', '', 25, 'http://localhost/real_estate/?post_type=acf-field&#038;p=26', 0, 'acf-field', '', 0),
(27, 1, '2019-10-22 21:46:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 21:46:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=real_estate&p=27', 0, 'real_estate', '', 0),
(28, 1, '2019-10-22 21:47:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 21:47:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=real_estate&p=28', 0, 'real_estate', '', 0),
(29, 1, '2019-10-22 21:49:03', '2019-10-22 21:49:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"real_estate\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'group_5daf79125bbc8', '', '', '2019-10-22 21:49:03', '2019-10-22 21:49:03', '', 0, 'http://localhost/real_estate/?post_type=acf-field-group&#038;p=29', 0, 'acf-field-group', '', 0),
(30, 1, '2019-10-22 21:49:03', '2019-10-22 21:49:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5daf7925937ad', '', '', '2019-10-22 21:49:03', '2019-10-22 21:49:03', '', 29, 'http://localhost/real_estate/?post_type=acf-field&p=30', 0, 'acf-field', '', 0),
(31, 1, '2019-10-22 21:49:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 21:49:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=real_estate&p=31', 0, 'real_estate', '', 0),
(32, 1, '2019-10-22 21:49:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-22 21:49:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?post_type=real_estate&p=32', 0, 'real_estate', '', 0),
(33, 1, '2019-10-22 22:02:50', '2019-10-22 22:02:50', '<div id=\"bannerR\"></div>\r\n<div class=\"boxed\">\r\n<div id=\"lipsum\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In mauris arcu, hendrerit id elit vel, varius fermentum leo. Phasellus at lacus ultrices, congue lectus a, tincidunt lectus. Vivamus eleifend eros ac vestibulum tristique. Duis sed quam semper, lacinia metus vel, ultrices ligula. Mauris pretium vehicula odio sit amet ullamcorper. Suspendisse potenti. Ut sit amet accumsan erat. Pellentesque nec lorem mi. Vivamus sit amet diam nibh.\r\n\r\nSed ullamcorper lorem nec urna eleifend cursus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla posuere et libero in pulvinar. Nam in bibendum est. Praesent bibendum enim vitae ligula placerat laoreet. Fusce hendrerit erat arcu, eu semper diam vestibulum scelerisque. Maecenas venenatis venenatis ante, nec feugiat felis malesuada a. Nam ullamcorper quis sem ac egestas.\r\n\r\n</div>\r\n</div>', 'Blue House', '', 'publish', 'closed', 'closed', '', 'proba-za-title', '', '', '2019-10-23 12:08:52', '2019-10-23 12:08:52', '', 0, 'http://localhost/real_estate/?post_type=real_estate&#038;p=33', 0, 'real_estate', '', 0),
(34, 1, '2019-10-22 22:10:33', '2019-10-22 22:10:33', '<div id=\"bannerR\"></div>\r\n<div class=\"boxed\">\r\n<div id=\"lipsum\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In mauris arcu, hendrerit id elit vel, varius fermentum leo. Phasellus at lacus ultrices, congue lectus a, tincidunt lectus. Vivamus eleifend eros ac vestibulum tristique. Duis sed quam semper, lacinia metus vel, ultrices ligula. Mauris pretium vehicula odio sit amet ullamcorper. Suspendisse potenti. Ut sit amet accumsan erat. Pellentesque nec lorem mi. Vivamus sit amet diam nibh.\r\n\r\nSed ullamcorper lorem nec urna eleifend cursus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla posuere et libero in pulvinar. Nam in bibendum est. Praesent bibendum enim vitae ligula placerat laoreet. Fusce hendrerit erat arcu, eu semper diam vestibulum scelerisque. Maecenas venenatis venenatis ante, nec feugiat felis malesuada a. Nam ullamcorper quis sem ac egestas.\r\n\r\n</div>\r\n</div>', 'White Flat', '', 'publish', 'closed', 'closed', '', 'proba-2-za-title', '', '', '2019-10-23 17:03:46', '2019-10-23 17:03:46', '', 0, 'http://localhost/real_estate/?post_type=real_estate&#038;p=34', 0, 'real_estate', '', 0),
(37, 1, '2019-10-23 10:44:04', '2019-10-23 10:44:04', '<div id=\"bannerR\"></div>\r\n<div class=\"boxed\">\r\n<div id=\"lipsum\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In mauris arcu, hendrerit id elit vel, varius fermentum leo. Phasellus at lacus ultrices, congue lectus a, tincidunt lectus. Vivamus eleifend eros ac vestibulum tristique. Duis sed quam semper, lacinia metus vel, ultrices ligula. Mauris pretium vehicula odio sit amet ullamcorper. Suspendisse potenti. Ut sit amet accumsan erat. Pellentesque nec lorem mi. Vivamus sit amet diam nibh.\r\n\r\nSed ullamcorper lorem nec urna eleifend cursus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla posuere et libero in pulvinar. Nam in bibendum est. Praesent bibendum enim vitae ligula placerat laoreet. Fusce hendrerit erat arcu, eu semper diam vestibulum scelerisque. Maecenas venenatis venenatis ante, nec feugiat felis malesuada a. Nam ullamcorper quis sem ac egestas.\r\n\r\n</div>\r\n</div>', 'Green house', '', 'publish', 'closed', 'closed', '', 'new-stuff', '', '', '2019-10-23 16:27:51', '2019-10-23 16:27:51', '', 0, 'http://localhost/real_estate/?post_type=real_estate&#038;p=37', 0, 'real_estate', '', 0),
(36, 1, '2019-10-22 22:34:41', '2019-10-22 22:34:41', '', 'real-estate-ira', '', 'inherit', 'open', 'closed', '', 'real-estate-ira', '', '', '2019-10-22 22:34:41', '2019-10-22 22:34:41', '', 0, 'http://localhost/real_estate/wp-content/uploads/2019/10/real-estate-ira.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2019-10-23 12:18:29', '2019-10-23 12:18:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut commodo ante ut nulla eleifend tristique. Donec consequat pulvinar vestibulum. Donec scelerisque est sit amet semper mattis. Sed placerat est sed est ornare vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ac libero semper, ultricies justo in, laoreet elit. Nunc rhoncus purus ut tempus sollicitudin. Cras vitae diam ac elit suscipit consequat scelerisque sagittis urna. Fusce eget venenatis lacus, eget facilisis elit. Donec interdum, leo in vehicula tincidunt, dui quam consectetur libero, eu rhoncus risus nunc venenatis massa. Quisque id metus a odio porttitor scelerisque. Mauris iaculis accumsan eros, id varius lacus tempus ac. Morbi a urna fermentum, lacinia leo ac, egestas urna. Aliquam aliquet finibus lorem.\r\n\r\nNullam pellentesque quam vitae ante volutpat, vel iaculis dolor viverra. Fusce eu ligula in justo aliquam tincidunt. Ut a sollicitudin nisl, laoreet tincidunt leo. Aliquam molestie vehicula lorem, vitae sagittis odio. Integer vitae lectus sit amet ante dignissim eleifend quis eget dui. In sem nulla, maximus ac consectetur gravida, congue non nulla. Aenean at velit et erat consectetur mattis in nec est. Pellentesque lorem ligula, maximus vitae ante in, bibendum fermentum risus. Ut consequat urna nisl, eu ornare arcu eleifend id. Curabitur fermentum sem ut velit maximus, vel fringilla metus eleifend. Duis iaculis sed nisl sit amet cursus. Vestibulum urna dui, accumsan eget pulvinar nec, bibendum eu neque. Praesent gravida malesuada tellus, at laoreet justo fermentum ac. Fusce eros justo, sodales elementum lorem elementum, condimentum placerat arcu. Curabitur eu feugiat est, in mollis libero.\r\n\r\nAliquam erat volutpat. Vivamus euismod magna neque, ut tempor tellus fermentum nec. Praesent ac elit purus. Nullam ac lorem in nibh ullamcorper sodales nec sit amet est. Sed elit tortor, faucibus at pretium et, pulvinar eget enim. Praesent facilisis tellus id imperdiet vehicula. Sed in faucibus turpis. Ut sed magna vel augue elementum ultrices. Nunc nec massa dui.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper lobortis turpis ac sollicitudin. Nam et sollicitudin dolor, nec tincidunt lectus. Etiam et est malesuada, volutpat turpis ornare, cursus nisl. Sed tempor rhoncus ipsum mattis ullamcorper. Praesent accumsan, risus sed facilisis rutrum, turpis enim tempus nibh, euismod consectetur arcu lectus ac ex. Mauris convallis dui vitae nulla lacinia laoreet. Maecenas lobortis et metus non consequat. Donec elementum, sapien ac lobortis tristique, neque urna dapibus mauris, id blandit dui nisi nec leo. Phasellus congue sem id felis sollicitudin, ac pulvinar nulla porta. Duis risus lacus, dictum at eros non, malesuada rutrum ipsum. Vestibulum finibus facilisis dolor eget sagittis. Nam molestie consequat nibh, a posuere ante. Suspendisse quis pellentesque orci. Ut lorem ex, venenatis nec suscipit et, dapibus ac orci. Sed auctor consectetur libero non cursus.', 'Real Estate Post 2', '', 'publish', 'open', 'open', '', 'real-estate-post-2', '', '', '2019-10-23 12:18:29', '2019-10-23 12:18:29', '', 0, 'http://localhost/real_estate/?p=42', 0, 'post', '', 0),
(38, 1, '2019-10-23 11:51:31', '2019-10-23 11:51:31', '', 'Web', 'The real estate advertisement poster, banner, card with the city landscape and big brick  house in the center of the image. Real estate services advertisement concept. Vector Flat Design.', 'inherit', 'open', 'closed', '', 'web', '', '', '2019-10-23 11:51:31', '2019-10-23 11:51:31', '', 34, 'http://localhost/real_estate/wp-content/uploads/2019/10/flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-10-23 12:15:15', '2019-10-23 12:15:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut commodo ante ut nulla eleifend tristique. Donec consequat pulvinar vestibulum. Donec scelerisque est sit amet semper mattis. Sed placerat est sed est ornare vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ac libero semper, ultricies justo in, laoreet elit. Nunc rhoncus purus ut tempus sollicitudin. Cras vitae diam ac elit suscipit consequat scelerisque sagittis urna. Fusce eget venenatis lacus, eget facilisis elit. Donec interdum, leo in vehicula tincidunt, dui quam consectetur libero, eu rhoncus risus nunc venenatis massa. Quisque id metus a odio porttitor scelerisque. Mauris iaculis accumsan eros, id varius lacus tempus ac. Morbi a urna fermentum, lacinia leo ac, egestas urna. Aliquam aliquet finibus lorem.\r\n\r\nNullam pellentesque quam vitae ante volutpat, vel iaculis dolor viverra. Fusce eu ligula in justo aliquam tincidunt. Ut a sollicitudin nisl, laoreet tincidunt leo. Aliquam molestie vehicula lorem, vitae sagittis odio. Integer vitae lectus sit amet ante dignissim eleifend quis eget dui. In sem nulla, maximus ac consectetur gravida, congue non nulla. Aenean at velit et erat consectetur mattis in nec est. Pellentesque lorem ligula, maximus vitae ante in, bibendum fermentum risus. Ut consequat urna nisl, eu ornare arcu eleifend id. Curabitur fermentum sem ut velit maximus, vel fringilla metus eleifend. Duis iaculis sed nisl sit amet cursus. Vestibulum urna dui, accumsan eget pulvinar nec, bibendum eu neque. Praesent gravida malesuada tellus, at laoreet justo fermentum ac. Fusce eros justo, sodales elementum lorem elementum, condimentum placerat arcu. Curabitur eu feugiat est, in mollis libero.\r\n\r\nAliquam erat volutpat. Vivamus euismod magna neque, ut tempor tellus fermentum nec. Praesent ac elit purus. Nullam ac lorem in nibh ullamcorper sodales nec sit amet est. Sed elit tortor, faucibus at pretium et, pulvinar eget enim. Praesent facilisis tellus id imperdiet vehicula. Sed in faucibus turpis. Ut sed magna vel augue elementum ultrices. Nunc nec massa dui.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper lobortis turpis ac sollicitudin. Nam et sollicitudin dolor, nec tincidunt lectus. Etiam et est malesuada, volutpat turpis ornare, cursus nisl. Sed tempor rhoncus ipsum mattis ullamcorper. Praesent accumsan, risus sed facilisis rutrum, turpis enim tempus nibh, euismod consectetur arcu lectus ac ex. Mauris convallis dui vitae nulla lacinia laoreet. Maecenas lobortis et metus non consequat. Donec elementum, sapien ac lobortis tristique, neque urna dapibus mauris, id blandit dui nisi nec leo. Phasellus congue sem id felis sollicitudin, ac pulvinar nulla porta. Duis risus lacus, dictum at eros non, malesuada rutrum ipsum. Vestibulum finibus facilisis dolor eget sagittis. Nam molestie consequat nibh, a posuere ante. Suspendisse quis pellentesque orci. Ut lorem ex, venenatis nec suscipit et, dapibus ac orci. Sed auctor consectetur libero non cursus.', 'Real Estate Post 1', '', 'publish', 'open', 'open', '', 'real-estate-news', '', '', '2019-10-23 12:18:42', '2019-10-23 12:18:42', '', 0, 'http://localhost/real_estate/?p=39', 0, 'post', '', 0),
(40, 1, '2019-10-23 12:15:15', '2019-10-23 12:15:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut commodo ante ut nulla eleifend tristique. Donec consequat pulvinar vestibulum. Donec scelerisque est sit amet semper mattis. Sed placerat est sed est ornare vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ac libero semper, ultricies justo in, laoreet elit. Nunc rhoncus purus ut tempus sollicitudin. Cras vitae diam ac elit suscipit consequat scelerisque sagittis urna. Fusce eget venenatis lacus, eget facilisis elit. Donec interdum, leo in vehicula tincidunt, dui quam consectetur libero, eu rhoncus risus nunc venenatis massa. Quisque id metus a odio porttitor scelerisque. Mauris iaculis accumsan eros, id varius lacus tempus ac. Morbi a urna fermentum, lacinia leo ac, egestas urna. Aliquam aliquet finibus lorem.\r\n\r\nNullam pellentesque quam vitae ante volutpat, vel iaculis dolor viverra. Fusce eu ligula in justo aliquam tincidunt. Ut a sollicitudin nisl, laoreet tincidunt leo. Aliquam molestie vehicula lorem, vitae sagittis odio. Integer vitae lectus sit amet ante dignissim eleifend quis eget dui. In sem nulla, maximus ac consectetur gravida, congue non nulla. Aenean at velit et erat consectetur mattis in nec est. Pellentesque lorem ligula, maximus vitae ante in, bibendum fermentum risus. Ut consequat urna nisl, eu ornare arcu eleifend id. Curabitur fermentum sem ut velit maximus, vel fringilla metus eleifend. Duis iaculis sed nisl sit amet cursus. Vestibulum urna dui, accumsan eget pulvinar nec, bibendum eu neque. Praesent gravida malesuada tellus, at laoreet justo fermentum ac. Fusce eros justo, sodales elementum lorem elementum, condimentum placerat arcu. Curabitur eu feugiat est, in mollis libero.\r\n\r\nAliquam erat volutpat. Vivamus euismod magna neque, ut tempor tellus fermentum nec. Praesent ac elit purus. Nullam ac lorem in nibh ullamcorper sodales nec sit amet est. Sed elit tortor, faucibus at pretium et, pulvinar eget enim. Praesent facilisis tellus id imperdiet vehicula. Sed in faucibus turpis. Ut sed magna vel augue elementum ultrices. Nunc nec massa dui.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper lobortis turpis ac sollicitudin. Nam et sollicitudin dolor, nec tincidunt lectus. Etiam et est malesuada, volutpat turpis ornare, cursus nisl. Sed tempor rhoncus ipsum mattis ullamcorper. Praesent accumsan, risus sed facilisis rutrum, turpis enim tempus nibh, euismod consectetur arcu lectus ac ex. Mauris convallis dui vitae nulla lacinia laoreet. Maecenas lobortis et metus non consequat. Donec elementum, sapien ac lobortis tristique, neque urna dapibus mauris, id blandit dui nisi nec leo. Phasellus congue sem id felis sollicitudin, ac pulvinar nulla porta. Duis risus lacus, dictum at eros non, malesuada rutrum ipsum. Vestibulum finibus facilisis dolor eget sagittis. Nam molestie consequat nibh, a posuere ante. Suspendisse quis pellentesque orci. Ut lorem ex, venenatis nec suscipit et, dapibus ac orci. Sed auctor consectetur libero non cursus.', 'Real Estate News', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-23 12:15:15', '2019-10-23 12:15:15', '', 39, 'http://localhost/real_estate/estate/39-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-10-23 12:18:29', '2019-10-23 12:18:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut commodo ante ut nulla eleifend tristique. Donec consequat pulvinar vestibulum. Donec scelerisque est sit amet semper mattis. Sed placerat est sed est ornare vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ac libero semper, ultricies justo in, laoreet elit. Nunc rhoncus purus ut tempus sollicitudin. Cras vitae diam ac elit suscipit consequat scelerisque sagittis urna. Fusce eget venenatis lacus, eget facilisis elit. Donec interdum, leo in vehicula tincidunt, dui quam consectetur libero, eu rhoncus risus nunc venenatis massa. Quisque id metus a odio porttitor scelerisque. Mauris iaculis accumsan eros, id varius lacus tempus ac. Morbi a urna fermentum, lacinia leo ac, egestas urna. Aliquam aliquet finibus lorem.\r\n\r\nNullam pellentesque quam vitae ante volutpat, vel iaculis dolor viverra. Fusce eu ligula in justo aliquam tincidunt. Ut a sollicitudin nisl, laoreet tincidunt leo. Aliquam molestie vehicula lorem, vitae sagittis odio. Integer vitae lectus sit amet ante dignissim eleifend quis eget dui. In sem nulla, maximus ac consectetur gravida, congue non nulla. Aenean at velit et erat consectetur mattis in nec est. Pellentesque lorem ligula, maximus vitae ante in, bibendum fermentum risus. Ut consequat urna nisl, eu ornare arcu eleifend id. Curabitur fermentum sem ut velit maximus, vel fringilla metus eleifend. Duis iaculis sed nisl sit amet cursus. Vestibulum urna dui, accumsan eget pulvinar nec, bibendum eu neque. Praesent gravida malesuada tellus, at laoreet justo fermentum ac. Fusce eros justo, sodales elementum lorem elementum, condimentum placerat arcu. Curabitur eu feugiat est, in mollis libero.\r\n\r\nAliquam erat volutpat. Vivamus euismod magna neque, ut tempor tellus fermentum nec. Praesent ac elit purus. Nullam ac lorem in nibh ullamcorper sodales nec sit amet est. Sed elit tortor, faucibus at pretium et, pulvinar eget enim. Praesent facilisis tellus id imperdiet vehicula. Sed in faucibus turpis. Ut sed magna vel augue elementum ultrices. Nunc nec massa dui.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper lobortis turpis ac sollicitudin. Nam et sollicitudin dolor, nec tincidunt lectus. Etiam et est malesuada, volutpat turpis ornare, cursus nisl. Sed tempor rhoncus ipsum mattis ullamcorper. Praesent accumsan, risus sed facilisis rutrum, turpis enim tempus nibh, euismod consectetur arcu lectus ac ex. Mauris convallis dui vitae nulla lacinia laoreet. Maecenas lobortis et metus non consequat. Donec elementum, sapien ac lobortis tristique, neque urna dapibus mauris, id blandit dui nisi nec leo. Phasellus congue sem id felis sollicitudin, ac pulvinar nulla porta. Duis risus lacus, dictum at eros non, malesuada rutrum ipsum. Vestibulum finibus facilisis dolor eget sagittis. Nam molestie consequat nibh, a posuere ante. Suspendisse quis pellentesque orci. Ut lorem ex, venenatis nec suscipit et, dapibus ac orci. Sed auctor consectetur libero non cursus.', 'Real Estate Post 2', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-10-23 12:18:29', '2019-10-23 12:18:29', '', 42, 'http://localhost/real_estate/estate/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-10-23 12:18:42', '2019-10-23 12:18:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut commodo ante ut nulla eleifend tristique. Donec consequat pulvinar vestibulum. Donec scelerisque est sit amet semper mattis. Sed placerat est sed est ornare vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ac libero semper, ultricies justo in, laoreet elit. Nunc rhoncus purus ut tempus sollicitudin. Cras vitae diam ac elit suscipit consequat scelerisque sagittis urna. Fusce eget venenatis lacus, eget facilisis elit. Donec interdum, leo in vehicula tincidunt, dui quam consectetur libero, eu rhoncus risus nunc venenatis massa. Quisque id metus a odio porttitor scelerisque. Mauris iaculis accumsan eros, id varius lacus tempus ac. Morbi a urna fermentum, lacinia leo ac, egestas urna. Aliquam aliquet finibus lorem.\r\n\r\nNullam pellentesque quam vitae ante volutpat, vel iaculis dolor viverra. Fusce eu ligula in justo aliquam tincidunt. Ut a sollicitudin nisl, laoreet tincidunt leo. Aliquam molestie vehicula lorem, vitae sagittis odio. Integer vitae lectus sit amet ante dignissim eleifend quis eget dui. In sem nulla, maximus ac consectetur gravida, congue non nulla. Aenean at velit et erat consectetur mattis in nec est. Pellentesque lorem ligula, maximus vitae ante in, bibendum fermentum risus. Ut consequat urna nisl, eu ornare arcu eleifend id. Curabitur fermentum sem ut velit maximus, vel fringilla metus eleifend. Duis iaculis sed nisl sit amet cursus. Vestibulum urna dui, accumsan eget pulvinar nec, bibendum eu neque. Praesent gravida malesuada tellus, at laoreet justo fermentum ac. Fusce eros justo, sodales elementum lorem elementum, condimentum placerat arcu. Curabitur eu feugiat est, in mollis libero.\r\n\r\nAliquam erat volutpat. Vivamus euismod magna neque, ut tempor tellus fermentum nec. Praesent ac elit purus. Nullam ac lorem in nibh ullamcorper sodales nec sit amet est. Sed elit tortor, faucibus at pretium et, pulvinar eget enim. Praesent facilisis tellus id imperdiet vehicula. Sed in faucibus turpis. Ut sed magna vel augue elementum ultrices. Nunc nec massa dui.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ullamcorper lobortis turpis ac sollicitudin. Nam et sollicitudin dolor, nec tincidunt lectus. Etiam et est malesuada, volutpat turpis ornare, cursus nisl. Sed tempor rhoncus ipsum mattis ullamcorper. Praesent accumsan, risus sed facilisis rutrum, turpis enim tempus nibh, euismod consectetur arcu lectus ac ex. Mauris convallis dui vitae nulla lacinia laoreet. Maecenas lobortis et metus non consequat. Donec elementum, sapien ac lobortis tristique, neque urna dapibus mauris, id blandit dui nisi nec leo. Phasellus congue sem id felis sollicitudin, ac pulvinar nulla porta. Duis risus lacus, dictum at eros non, malesuada rutrum ipsum. Vestibulum finibus facilisis dolor eget sagittis. Nam molestie consequat nibh, a posuere ante. Suspendisse quis pellentesque orci. Ut lorem ex, venenatis nec suscipit et, dapibus ac orci. Sed auctor consectetur libero non cursus.', 'Real Estate Post 1', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-23 12:18:42', '2019-10-23 12:18:42', '', 39, 'http://localhost/real_estate/estate/39-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-10-23 16:24:22', '2019-10-23 16:24:22', '<div id=\"Content\">\r\n<div id=\"bannerR\"></div>\r\n<div class=\"boxed\">\r\n<div id=\"lipsum\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse in eros eros. Mauris tincidunt at elit non pretium. Sed consectetur dictum felis, non pharetra dui rhoncus et. Sed gravida dolor ut eros tincidunt, at ultricies magna dignissim. Fusce aliquam non nisl ut euismod. Nullam vestibulum aliquet efficitur. Sed risus nisi, varius id dapibus non, elementum id metus. Pellentesque ornare luctus sem sed rutrum. Vestibulum sit amet elit nec odio sodales congue. Donec sit amet sodales mi, sed iaculis ante.\r\n\r\nPraesent vel tristique ligula. Etiam non faucibus quam. Maecenas porta, felis a scelerisque tincidunt, sem enim ultricies nulla, ut accumsan dolor eros vitae elit. Phasellus non bibendum tellus. Nulla ut volutpat turpis. Pellentesque lectus risus, iaculis ac imperdiet ac, eleifend viverra libero. Quisque fermentum ut tortor ac eleifend. Sed ac molestie magna, in viverra sem.\r\n\r\nNullam pellentesque elit lectus, eget tempus arcu feugiat a. Nullam rhoncus est neque. Morbi vehicula sodales lacus vel vestibulum. Maecenas est nibh, fermentum sed magna et, maximus fermentum mauris. Praesent sodales sit amet sem non tempus. Vestibulum tincidunt aliquet sollicitudin. Curabitur tincidunt magna turpis, at ultricies risus facilisis quis. Morbi aliquet, lectus ut feugiat ornare, lectus leo suscipit ex, et venenatis turpis est vitae dolor. Aenean semper velit eget metus dignissim placerat. Nunc maximus molestie leo non vehicula. Nunc tristique ipsum sem, at consectetur nibh elementum interdum. Fusce consectetur ultricies est, et auctor justo placerat non. Praesent posuere mollis justo.\r\n\r\nFusce luctus, arcu sed rhoncus pharetra, velit mi ornare metus, eu pharetra magna ante in risus. Sed sollicitudin dui id tortor bibendum egestas. Aliquam id feugiat sem. Vestibulum sit amet aliquam nisi. Praesent vel mi molestie sapien pellentesque viverra. Integer sollicitudin lacinia rhoncus. Vestibulum nec sem nunc. Ut nec nibh turpis. In faucibus id dui in mollis.\r\n\r\n</div>\r\n</div>\r\n</div>', 'Orange House', '', 'publish', 'closed', 'closed', '', 'orange-house', '', '', '2019-10-23 16:24:37', '2019-10-23 16:24:37', '', 0, 'http://localhost/real_estate/?post_type=real_estate&#038;p=45', 0, 'real_estate', '', 0),
(46, 1, '2019-10-23 16:24:06', '2019-10-23 16:24:06', '', 'HomeIllustrated983x390', '', 'inherit', 'open', 'closed', '', 'homeillustrated983x390', '', '', '2019-10-23 18:35:48', '2019-10-23 18:35:48', '', 45, 'http://localhost/real_estate/wp-content/uploads/2019/10/HomeIllustrated983x390.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-10-23 16:27:12', '2019-10-23 16:27:12', '<div id=\"Content\">\r\n<div id=\"bannerR\"></div>\r\n<div class=\"boxed\">\r\n<div id=\"lipsum\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse in eros eros. Mauris tincidunt at elit non pretium. Sed consectetur dictum felis, non pharetra dui rhoncus et. Sed gravida dolor ut eros tincidunt, at ultricies magna dignissim. Fusce aliquam non nisl ut euismod. Nullam vestibulum aliquet efficitur. Sed risus nisi, varius id dapibus non, elementum id metus. Pellentesque ornare luctus sem sed rutrum. Vestibulum sit amet elit nec odio sodales congue. Donec sit amet sodales mi, sed iaculis ante.\r\n\r\nPraesent vel tristique ligula. Etiam non faucibus quam. Maecenas porta, felis a scelerisque tincidunt, sem enim ultricies nulla, ut accumsan dolor eros vitae elit. Phasellus non bibendum tellus. Nulla ut volutpat turpis. Pellentesque lectus risus, iaculis ac imperdiet ac, eleifend viverra libero. Quisque fermentum ut tortor ac eleifend. Sed ac molestie magna, in viverra sem.\r\n\r\nNullam pellentesque elit lectus, eget tempus arcu feugiat a. Nullam rhoncus est neque. Morbi vehicula sodales lacus vel vestibulum. Maecenas est nibh, fermentum sed magna et, maximus fermentum mauris. Praesent sodales sit amet sem non tempus. Vestibulum tincidunt aliquet sollicitudin. Curabitur tincidunt magna turpis, at ultricies risus facilisis quis. Morbi aliquet, lectus ut feugiat ornare, lectus leo suscipit ex, et venenatis turpis est vitae dolor. Aenean semper velit eget metus dignissim placerat. Nunc maximus molestie leo non vehicula. Nunc tristique ipsum sem, at consectetur nibh elementum interdum. Fusce consectetur ultricies est, et auctor justo placerat non. Praesent posuere mollis justo.\r\n\r\nFusce luctus, arcu sed rhoncus pharetra, velit mi ornare metus, eu pharetra magna ante in risus. Sed sollicitudin dui id tortor bibendum egestas. Aliquam id feugiat sem. Vestibulum sit amet aliquam nisi. Praesent vel mi molestie sapien pellentesque viverra. Integer sollicitudin lacinia rhoncus. Vestibulum nec sem nunc. Ut nec nibh turpis. In faucibus id dui in mollis.\r\n\r\n</div>\r\n</div>\r\n</div>', 'Yellow Flat', '', 'publish', 'closed', 'closed', '', 'yellow-flat', '', '', '2019-10-23 17:59:20', '2019-10-23 17:59:20', '', 0, 'http://localhost/real_estate/?post_type=real_estate&#038;p=47', 0, 'real_estate', '', 0),
(49, 1, '2019-10-23 18:16:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-23 18:16:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?p=49', 0, 'post', '', 0),
(50, 3, '2019-10-23 18:39:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-23 18:39:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/real_estate/?p=50', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Belgrade', 'belgrade', 0),
(3, 'City', 'city', 0),
(4, 'Travel', 'travel', 0),
(5, 'house', 'house', 0),
(6, 'flat', 'flat', 0),
(7, 'Novi Sad', 'novi-sad', 0),
(8, 'Nis', 'nis', 0),
(9, 'Kragujevac', 'kragujevac', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(42, 1, 0),
(39, 1, 0),
(45, 8, 0),
(33, 5, 0),
(33, 2, 0),
(34, 7, 0),
(37, 2, 0),
(34, 6, 0),
(37, 5, 0),
(45, 5, 0),
(47, 9, 0),
(47, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'location', '', 0, 2),
(3, 3, 'type', '', 0, 0),
(4, 4, 'type', '', 0, 0),
(7, 7, 'location', '', 0, 1),
(5, 5, 'type', '', 0, 3),
(6, 6, 'type', '', 0, 2),
(8, 8, 'location', '', 0, 1),
(9, 9, 'location', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Ivan Mitic'),
(2, 1, 'first_name', 'Ivan'),
(3, 1, 'last_name', 'Mitic'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"75362f1553a39edd56d53bcb663de36401bf2907364131dfd2a67a52672ab73f\";a:4:{s:10:\"expiration\";i:1571924862;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571752062;}s:64:\"a4a198c43bdf24f27981a10d4d909cc80c0e739955188ec4a600c5856c53f293\";a:4:{s:10:\"expiration\";i:1571951806;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571779006;}s:64:\"074813639e571fa1ecd0b8ad9cac02127f0cccf271a2535bb85da6d2bd22ec11\";a:4:{s:10:\"expiration\";i:1571990048;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571817248;}s:64:\"8c7c71af79eef8b27de56668f37f5baae56ab6164baf49c35038e37b84657270\";a:4:{s:10:\"expiration\";i:1572016127;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571843327;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1571783690'),
(50, 3, 'wp_user_level', '2'),
(49, 3, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(48, 3, 'locale', ''),
(47, 3, 'show_admin_bar_front', 'true'),
(46, 3, 'use_ssl', '0'),
(45, 3, 'admin_color', 'fresh'),
(44, 3, 'comment_shortcuts', 'false'),
(43, 3, 'syntax_highlighting', 'true'),
(42, 3, 'rich_editing', 'true'),
(41, 3, 'description', ''),
(38, 3, 'nickname', 'editor'),
(39, 3, 'first_name', 'Milan'),
(40, 3, 'last_name', 'Petrovic'),
(51, 3, 'dismissed_wp_pointers', ''),
(53, 3, 'wp_dashboard_quick_press_last_post_id', '50');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BSuJgn4fm341fm827e/xjh7Lz7QNud1', 'admin', 'ivanmitic91@gmail.com', '', '2019-10-22 13:47:32', '', 0, 'Ivan Mitic'),
(3, 'editor', '$P$BnJYhd7Cw7/WvFkZ6PHECGC0cYg5QK0', 'editor', 'editor@gmail.com', '', '2019-10-23 18:39:29', '1571855970:$P$BJWl3HdyVyU/S0CsM6thXUpc5IcZcr.', 0, 'Milan Petrovic');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
