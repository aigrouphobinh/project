-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2020 at 04:17 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecats`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-03-02 12:44:53', '2020-03-02 12:44:53', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/project/ecats', 'yes'),
(2, 'home', 'http://localhost/project/ecats', 'yes'),
(3, 'blogname', 'Ecat', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hovietbinh.johnny@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:21:\"polylang/polylang.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:33:\"lingotek-translation/lingotek.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:63:\"G:\\xampp\\htdocs\\project\\ecats/wp-content/themes/ecats/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'ecats', 'yes'),
(41, 'stylesheet', 'ecats', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1598705093', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'vi', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:6:\"banner\";a:1:{i:0;s:13:\"custom_html-2\";}s:8:\"banner_1\";a:1:{i:0;s:13:\"custom_html-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:5:{i:1583293494;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583325894;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1583325906;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583325907;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:3:{i:2;a:2:{s:5:\"title\";s:8:\"Banner 1\";s:7:\"content\";s:297:\"<img src=\"https://ecattrade.com/wp-content/themes/cat/images/i/broker.jpg\" width=\"300\" height=\"314\" alt=\"Danh sách nhà môi giới quyền chọn nhị phân Việt Nam\" data-lazy-src=\"https://ecattrade.com/wp-content/themes/cat/images/i/broker.jpg\" class=\"lazyloaded\" data-was-processed=\"true\">\";}i:3;a:2:{s:5:\"title\";s:8:\"Banner 2\";s:7:\"content\";s:297:\"<img src=\"https://ecattrade.com/wp-content/themes/cat/images/i/broker.jpg\" width=\"300\" height=\"314\" alt=\"Danh sách nhà môi giới quyền chọn nhị phân Việt Nam\" data-lazy-src=\"https://ecattrade.com/wp-content/themes/cat/images/i/broker.jpg\" class=\"lazyloaded\" data-was-processed=\"true\">\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"FL7WwIrsl7gvVp4TOXumE6\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BJ5mVWKld3dzuLT6vhnbou5sAiMIkV1\";s:10:\"created_at\";i:1583225458;}}', 'yes'),
(122, '_site_transient_timeout_browser_ac05ce2b54bf6619514b7c7c2e5ab81a', '1583757906', 'no'),
(123, '_site_transient_browser_ac05ce2b54bf6619514b7c7c2e5ab81a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.122\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, '_site_transient_timeout_php_check_03ae8a8b160bf69638c2d8cd3a1e7007', '1583757907', 'no'),
(125, '_site_transient_php_check_03ae8a8b160bf69638c2d8cd3a1e7007', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(140, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583153113;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(141, 'current_theme', 'Themes Aigroup', 'yes'),
(142, 'theme_mods_ecats', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:8:\"main_nav\";i:2;s:7:\"top_nav\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(144, 'widget_postnew_category_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'widget_posttop_category_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'widget_post_category_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, '_transient_timeout_plugin_slugs', '1583289405', 'no'),
(148, '_transient_plugin_slugs', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"lingotek-translation/lingotek.php\";i:2;s:21:\"polylang/polylang.php\";}', 'no'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'acf_version', '5.8.3', 'yes'),
(152, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(157, 'new_admin_email', 'hovietbinh.johnny@gmail.com', 'yes'),
(162, '_transient_timeout_acf_plugin_updates', '1583329396', 'no'),
(163, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.3\";}}', 'no'),
(170, 'polylang', 'a:15:{s:7:\"browser\";b:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:1:{i:0;s:5:\"forex\";}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:6:\"2.6.10\";s:16:\"first_activation\";i:1583165390;s:12:\"default_lang\";s:2:\"en\";s:9:\"nav_menus\";a:1:{s:5:\"ecats\";a:2:{s:8:\"main_nav\";a:8:{s:2:\"en\";i:2;s:2:\"vi\";i:2;s:2:\"pt\";i:2;s:2:\"es\";i:2;s:2:\"th\";i:2;s:2:\"id\";i:2;s:2:\"ms\";i:2;s:2:\"ko\";i:2;}s:7:\"top_nav\";a:8:{s:2:\"en\";i:0;s:2:\"vi\";i:0;s:2:\"pt\";i:0;s:2:\"es\";i:0;s:2:\"th\";i:0;s:2:\"id\";i:0;s:2:\"ms\";i:0;s:2:\"ko\";i:0;}}}}', 'yes'),
(171, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(172, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(233, '_site_transient_timeout_browser_37a36c2f4dcdaeece8d58b455ac2abba', '1583805231', 'no'),
(234, '_site_transient_browser_37a36c2f4dcdaeece8d58b455ac2abba', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.122\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(235, '_site_transient_timeout_php_check_7ddb89c02f1abf791c6717dc46cef1eb', '1583805232', 'no'),
(236, '_site_transient_php_check_7ddb89c02f1abf791c6717dc46cef1eb', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(238, 'options_ag_logo', '103', 'no'),
(239, '_options_ag_logo', 'field_5e5d0792b7a08', 'no'),
(240, 'options_ten_cong_ty', '', 'no'),
(241, '_options_ten_cong_ty', 'field_5e5d1e4554414', 'no'),
(242, 'options_phone_number', '', 'no'),
(243, '_options_phone_number', 'field_5e5d1e7a54416', 'no'),
(244, 'options_dia_chi', '', 'no'),
(245, '_options_dia_chi', 'field_5e5d1e4e54415', 'no'),
(246, 'options_title_intro', 'eCatTrade - Giới thiệu website', 'no'),
(247, '_options_title_intro', 'field_5e5d20b3cf0d8', 'no'),
(248, 'options_image_intro', '96', 'no'),
(249, '_options_image_intro', 'field_5e5d1f69336cd', 'no'),
(250, 'options_content_intro', 'Xin chào! Chào mừng bạn đến với Ecattrade.com, trang thông tin đáng tin cậy dành cho các nhà giao dịch đến từ Việt Nam về giao dịch Forex, CFD, Tiền Điện Tử và Quyền Chọn Nhị Phân.\r\n\r\nTại Ecattrade.com bạn sẽ tìm thấy các thông tin về các chiến lược giao dịch cơ bản, các tín hiệu, chỉ số, đánh giá về các nền tảng quyền chọn nhị phân và nhà môi giới Forex…\r\n\r\nChúng tôi lý giải vì sao quyền chọn nhị phân lại rất phổ biến hiện nay, làm thế nào để tham gia thị trường này và những điều bạn có thể kỳ vọng. Chúng tôi tổng hợp một cách chi tiết cách nhà đầu tư giao dịch trên nền tảng (công ty môi giới) như thế nào và làm thế nào có thể chọn được công ty giao dịch tốt, giúp bạn có thể tạo ra lợi nhuận.\r\n\r\nMột trong những quyết định quan trọng nhất trong sự nghiệp của một nhà đầu tư là chọn được đúng công ty môi giới đáng tin cậy. Chúng tôi đánh giá và tổng hợp ra các công ty tốt nhất, cung cấp thông tin quan tọng về từng công ty để bạn lựa chọn.', 'no'),
(251, '_options_content_intro', 'field_5e5d1f9b336ce', 'no'),
(256, 'lingotek_profiles', 'a:3:{s:9:\"automatic\";a:4:{s:7:\"profile\";s:9:\"automatic\";s:4:\"name\";s:9:\"Automatic\";s:6:\"upload\";s:9:\"automatic\";s:8:\"download\";s:9:\"automatic\";}s:6:\"manual\";a:4:{s:7:\"profile\";s:6:\"manual\";s:4:\"name\";s:6:\"Manual\";s:6:\"upload\";s:6:\"manual\";s:8:\"download\";s:6:\"manual\";}s:8:\"disabled\";a:2:{s:7:\"profile\";s:8:\"disabled\";s:4:\"name\";s:8:\"Disabled\";}}', 'yes'),
(258, 'lingotek_plugin_version', '1.4.6', 'yes'),
(338, 'rewrite_rules', 'a:213:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"lingotek/?$\";s:32:\"index.php?lingotek=1&$matches[1]\";s:31:\"(vi|pt|es|th|id|ms|ko)/forex/?$\";s:42:\"index.php?lang=$matches[1]&post_type=forex\";s:8:\"forex/?$\";s:33:\"index.php?lang=en&post_type=forex\";s:61:\"(vi|pt|es|th|id|ms|ko)/forex/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&post_type=forex&feed=$matches[2]\";s:38:\"forex/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&post_type=forex&feed=$matches[1]\";s:56:\"(vi|pt|es|th|id|ms|ko)/forex/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&post_type=forex&feed=$matches[2]\";s:33:\"forex/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&post_type=forex&feed=$matches[1]\";s:48:\"(vi|pt|es|th|id|ms|ko)/forex/page/([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&post_type=forex&paged=$matches[2]\";s:25:\"forex/page/([0-9]{1,})/?$\";s:51:\"index.php?lang=en&post_type=forex&paged=$matches[1]\";s:70:\"(vi|pt|es|th|id|ms|ko)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:65:\"(vi|pt|es|th|id|ms|ko)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:46:\"(vi|pt|es|th|id|ms|ko)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:58:\"(vi|pt|es|th|id|ms|ko)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:40:\"(vi|pt|es|th|id|ms|ko)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:67:\"(vi|pt|es|th|id|ms|ko)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:62:\"(vi|pt|es|th|id|ms|ko)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:43:\"(vi|pt|es|th|id|ms|ko)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:55:\"(vi|pt|es|th|id|ms|ko)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:37:\"(vi|pt|es|th|id|ms|ko)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:68:\"(vi|pt|es|th|id|ms|ko)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]\";s:63:\"(vi|pt|es|th|id|ms|ko)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]\";s:44:\"(vi|pt|es|th|id|ms|ko)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=en&post_format=$matches[1]&embed=true\";s:56:\"(vi|pt|es|th|id|ms|ko)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=en&post_format=$matches[1]&paged=$matches[2]\";s:38:\"(vi|pt|es|th|id|ms|ko)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=en&post_format=$matches[1]\";s:56:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:33:\"forex/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:66:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:43:\"forex/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:86:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:63:\"forex/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:81:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:58:\"forex/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:81:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:58:\"forex/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:62:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:39:\"forex/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/embed/?$\";s:55:\"index.php?lang=$matches[1]&forex=$matches[2]&embed=true\";s:22:\"forex/([^/]+)/embed/?$\";s:38:\"index.php?forex=$matches[1]&embed=true\";s:49:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/trackback/?$\";s:49:\"index.php?lang=$matches[1]&forex=$matches[2]&tb=1\";s:26:\"forex/([^/]+)/trackback/?$\";s:32:\"index.php?forex=$matches[1]&tb=1\";s:69:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?lang=$matches[1]&forex=$matches[2]&feed=$matches[3]\";s:46:\"forex/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?forex=$matches[1]&feed=$matches[2]\";s:64:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?lang=$matches[1]&forex=$matches[2]&feed=$matches[3]\";s:41:\"forex/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?forex=$matches[1]&feed=$matches[2]\";s:57:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?lang=$matches[1]&forex=$matches[2]&paged=$matches[3]\";s:34:\"forex/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?forex=$matches[1]&paged=$matches[2]\";s:64:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/comment-page-([0-9]{1,})/?$\";s:62:\"index.php?lang=$matches[1]&forex=$matches[2]&cpage=$matches[3]\";s:41:\"forex/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?forex=$matches[1]&cpage=$matches[2]\";s:53:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)(?:/([0-9]+))?/?$\";s:61:\"index.php?lang=$matches[1]&forex=$matches[2]&page=$matches[3]\";s:30:\"forex/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?forex=$matches[1]&page=$matches[2]\";s:45:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:22:\"forex/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:32:\"forex/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\"forex/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:47:\"forex/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:47:\"forex/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:28:\"forex/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:55:\"(vi|pt|es|th|id|ms|ko)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=en&&feed=$matches[1]\";s:50:\"(vi|pt|es|th|id|ms|ko)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=en&&feed=$matches[1]\";s:31:\"(vi|pt|es|th|id|ms|ko)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=en&&embed=true\";s:43:\"(vi|pt|es|th|id|ms|ko)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=en&&paged=$matches[1]\";s:25:\"(vi|pt|es|th|id|ms|ko)/?$\";s:26:\"index.php?lang=$matches[1]\";s:64:\"(vi|pt|es|th|id|ms|ko)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&&feed=$matches[1]&withcomments=1\";s:59:\"(vi|pt|es|th|id|ms|ko)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&&feed=$matches[1]&withcomments=1\";s:40:\"(vi|pt|es|th|id|ms|ko)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=en&&embed=true\";s:67:\"(vi|pt|es|th|id|ms|ko)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=en&s=$matches[1]&feed=$matches[2]\";s:62:\"(vi|pt|es|th|id|ms|ko)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=en&s=$matches[1]&feed=$matches[2]\";s:43:\"(vi|pt|es|th|id|ms|ko)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=en&s=$matches[1]&embed=true\";s:55:\"(vi|pt|es|th|id|ms|ko)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=en&s=$matches[1]&paged=$matches[2]\";s:37:\"(vi|pt|es|th|id|ms|ko)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=en&s=$matches[1]\";s:70:\"(vi|pt|es|th|id|ms|ko)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]\";s:65:\"(vi|pt|es|th|id|ms|ko)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]\";s:46:\"(vi|pt|es|th|id|ms|ko)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=en&author_name=$matches[1]&embed=true\";s:58:\"(vi|pt|es|th|id|ms|ko)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=en&author_name=$matches[1]&paged=$matches[2]\";s:40:\"(vi|pt|es|th|id|ms|ko)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=en&author_name=$matches[1]\";s:92:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:87:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:68:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:82:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:80:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:89:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:62:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:71:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:79:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:74:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:55:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:66:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&embed=true\";s:67:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:73:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:49:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:55:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]\";s:66:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=en&year=$matches[1]&feed=$matches[2]\";s:61:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=en&year=$matches[1]&feed=$matches[2]\";s:42:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:45:\"index.php?lang=en&year=$matches[1]&embed=true\";s:54:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:52:\"index.php?lang=en&year=$matches[1]&paged=$matches[2]\";s:36:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:34:\"index.php?lang=en&year=$matches[1]\";s:50:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:60:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:56:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:43:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:63:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:58:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:51:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:58:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:47:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:50:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:60:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:56:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/embed/?$\";s:54:\"index.php?lang=$matches[1]&name=$matches[2]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:43:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/trackback/?$\";s:48:\"index.php?lang=$matches[1]&name=$matches[2]&tb=1\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:63:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:58:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:51:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:58:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:47:\"(vi|pt|es|th|id|ms|ko)/([^/]+)(?:/([0-9]+))?/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&page=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:39:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(407, 'recovery_mode_email_last_sent', '1583225458', 'yes'),
(478, 'category_children', 'a:0:{}', 'yes'),
(498, '_site_transient_timeout_theme_roots', '1583285865', 'no'),
(499, '_site_transient_theme_roots', 'a:1:{s:5:\"ecats\";s:7:\"/themes\";}', 'no'),
(501, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.3.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1583284069;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(502, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583284070;s:7:\"checked\";a:1:{s:5:\"ecats\";s:4:\"0.01\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(503, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1583284071;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.3\";s:33:\"lingotek-translation/lingotek.php\";s:5:\"1.4.6\";s:21:\"polylang/polylang.php\";s:6:\"2.6.10\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:20:\"lingotek-translation\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"1.4.6\";s:7:\"updated\";s:19:\"2019-09-30 06:30:08\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/translation/plugin/lingotek-translation/1.4.6/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:8:\"polylang\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:6:\"2.6.10\";s:7:\"updated\";s:19:\"2019-06-27 14:21:12\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/polylang/2.6.10/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:8:\"polylang\";s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:6:\"2.6.10\";s:7:\"updated\";s:19:\"2019-12-12 21:05:00\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/polylang/2.6.10/pt_PT.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:8:\"polylang\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:6:\"2.6.10\";s:7:\"updated\";s:19:\"2020-02-22 10:42:16\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/polylang/2.6.10/es_ES.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:33:\"lingotek-translation/lingotek.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/lingotek-translation\";s:4:\"slug\";s:20:\"lingotek-translation\";s:6:\"plugin\";s:33:\"lingotek-translation/lingotek.php\";s:11:\"new_version\";s:5:\"1.4.6\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/lingotek-translation/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/lingotek-translation.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/lingotek-translation/assets/icon-256x256.png?rev=1694577\";s:2:\"1x\";s:73:\"https://ps.w.org/lingotek-translation/assets/icon-128x128.png?rev=1694577\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/lingotek-translation/assets/banner-1544x500.png?rev=1694577\";s:2:\"1x\";s:75:\"https://ps.w.org/lingotek-translation/assets/banner-772x250.png?rev=1694577\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:6:\"2.6.10\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/polylang.2.6.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(504, '_transient_pll_languages_list', 'a:8:{i:0;a:27:{s:7:\"term_id\";i:4;s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:4;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"en_GB\";s:6:\"parent\";i:0;s:5:\"count\";i:10;s:10:\"tl_term_id\";i:5;s:19:\"tl_term_taxonomy_id\";i:5;s:8:\"tl_count\";i:3;s:6:\"locale\";R:9;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-GB\";s:8:\"facebook\";s:5:\"en_GB\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/gb.png\";s:4:\"flag\";s:897:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAflJREFUeNpinDRzn5qN3uFDt16+YWBg+Pv339+KGN0rbVP+//2rW5tf0Hfy/2+mr99+yKpyOl3Ydt8njEWIn8f9zj639NC7j78eP//8739GVUUhNUNuhl8//ysKeZrJ/v7z10Zb2PTQTIY1XZO2Xmfad+f7XgkXxuUrVB6cjPVXef78JyMjA8PFuwyX7gAZj97+T2e9o3d4BWNp84K1NzubTjAB3fH0+fv6N3qP/ir9bW6ozNQCijB8/8zw/TuQ7r4/ndvN5mZgkpPXiis3Pv34+ZPh5t23//79Rwehof/9/NDEgMrOXHvJcrllgpoRN8PFOwy/fzP8+gUlgZI/f/5xcPj/69e/37//AUX+/mXRkN555gsOG2xt/5hZQMwF4r9///75++f3nz8nr75gSms82jfvQnT6zqvXPjC8e/srJQHo9P9fvwNtAHmG4f8zZ6dDc3bIyM2LTNlsbtfM9OPHH3FhtqUz3eXX9H+cOy9ZMB2o6t/Pn0DHMPz/b+2wXGTvPlPGFxdcD+mZyjP8+8MUE6sa7a/xo6Pykn1s4zdzIZ6///8zMGpKM2pKAB0jqy4UE7/msKat6Jw5mafrsxNtWZ6/fjvNLW29qv25pQd///n+5+/fxDDVbcc//P/zx/36m5Ub9zL8+7t66yEROcHK7q5bldMBAgwADcRBCuVLfoEAAAAASUVORK5CYII=\" title=\"English (en_GB)\" alt=\"English\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:31:\"http://localhost/project/ecats/\";s:10:\"search_url\";s:31:\"http://localhost/project/ecats/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"55\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"gb\";s:15:\"lingotek_locale\";s:5:\"en-GB\";}i:1;a:27:{s:7:\"term_id\";i:7;s:4:\"name\";s:14:\"Tiếng Việt\";s:4:\"slug\";s:2:\"vi\";s:10:\"term_group\";i:1;s:16:\"term_taxonomy_id\";i:7;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:2:\"vi\";s:6:\"parent\";i:0;s:5:\"count\";i:2;s:10:\"tl_term_id\";i:8;s:19:\"tl_term_taxonomy_id\";i:8;s:8:\"tl_count\";i:3;s:6:\"locale\";R:36;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:2:\"vi\";s:8:\"facebook\";s:5:\"vi_VN\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/vn.png\";s:4:\"flag\";s:740:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFsSURBVHjaYvzPgAD/UNlYEUAAmuTYAAAQhAEYqF/zFbe50RZ1cMmS9TLi0pJLRjZohAMTGFUN9HdnHgEE1sDw//+Tp0ClINW/f4NI9d////3+f+b3/1+////+9f/XL6A4o6ws0AaAAGIBm/0fRTVQ2v3Pf97f/4/9Aqv+DdHA8Ps3UANAALEAMSNQNdDGP3+ALvnf8vv/t9//9X/////7f+uv/4K//iciNABNBwggsJP+/IW4kuH3n//1v/8v+wVSDURmv/57//7/CeokoKFA0wECiAnkpL9/wH4CO+DNr/+VQA1A9PN/w6//j36CVIMRxEkAAQR20m+QpSBXgU0CuSTj9/93v/8v//V/xW+48UBD/zAwAAQQSAMzOMiABoBUswCd8ev/M7A669//OX7///Lr/x+gBlCoAJ0DEEAgDUy//zBISoKNAfoepJNRFmQkyJecfxj4/kDCEIiAigECiPErakTiiWMIAAgwAB4ZUlqMMhQQAAAAAElFTkSuQmCC\" title=\"Tiếng Việt (vi)\" alt=\"Tiếng Việt\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/vi/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/vi/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"56\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"vn\";s:15:\"lingotek_locale\";s:5:\"vi-VN\";}i:2;a:27:{s:7:\"term_id\";i:11;s:4:\"name\";s:10:\"Português\";s:4:\"slug\";s:2:\"pt\";s:10:\"term_group\";i:2;s:16:\"term_taxonomy_id\";i:11;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"pt_PT\";s:6:\"parent\";i:0;s:5:\"count\";i:2;s:10:\"tl_term_id\";i:12;s:19:\"tl_term_taxonomy_id\";i:12;s:8:\"tl_count\";i:3;s:6:\"locale\";R:63;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"pt-PT\";s:8:\"facebook\";s:5:\"pt_PT\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/pt.png\";s:4:\"flag\";s:843:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAG8SURBVHjaYmSIZGD4wgAF/xgYWBj+boQysSKAAGJh+MRQnVoNUgEE///9ZfzLoPiX4e8fxj9/mP/8Yfr9+/+fP/9h5JdNmwACiIWBCaj4/5P3T7mY/xoJ/9UR/v0n8O+f17/Zlv/+//73/1+////+9f/XL6BqRllZoA0AAcQCNvv/339/C03+8v/8w7bk7+/vv/+7/P4S95ur+xdY9W+IBobfv4EaAAKICeiuv////vnz58PX3xxb/7BlN3/K7Ph1WoSR/fcfhl//f4KN/wW1BGg6QAAxMfxi+PP37++/v1kYfn//+usnE+cHCbWfTKz/mH7+ZgUpQmj48wdoA0AAsQA1/P0HZP458/qXqvNfjdnVItxy3wNvApUIvwPb8BvqJEawkwACiIXhDwPQ+F9/f+2890dY6/cnrycCb++z3frNfOwX01eEagZgKAHdzcAAEEAgG4DGA/W8+fO79+Rvdt5f2+b++sP+m+kdWDVEwx+gBmBY/wX6ASCAWBi+Mfz+80eSX/L3n99AzwBDm0H2NwtQHS/QapDBIPT3LwQBnQQQQIwMxgwM7xgYfjAArQKRTAyvP2OPYwgACDAAjtdGduN8tIgAAAAASUVORK5CYII=\" title=\"Português (pt_PT)\" alt=\"Português\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/pt/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/pt/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"57\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"pt\";s:15:\"lingotek_locale\";s:5:\"pt-PT\";}i:3;a:27:{s:7:\"term_id\";i:15;s:4:\"name\";s:8:\"Español\";s:4:\"slug\";s:2:\"es\";s:10:\"term_group\";i:3;s:16:\"term_taxonomy_id\";i:15;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"es_ES\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:16;s:19:\"tl_term_taxonomy_id\";i:16;s:8:\"tl_count\";i:3;s:6:\"locale\";R:90;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"es-ES\";s:8:\"facebook\";s:5:\"es_ES\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/es.png\";s:4:\"flag\";s:727:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFnSURBVHjaYvzPgAD/UNlYEUAAmuTYAAAQhAEYqF/zFbe50RZ1cMmS9TLi0pJLRjZohAMTGFUN9HdnHgEE1sDw//+Tp0ClINW/f0NIKPoFJH/9//ULyGaUlQXaABBALAx/Gf4zAt31F4i+ffj3/cN/XrFfzOx//v///f//LzACM/79ZmD8/e8TA0AAMYHdDVT958vXP38nMDB0s3x94/Tj5y+YahhiAKLfQKUAAcQEdtJfoDHMF2L+vPzDmFXLelf551tGFOOhev4A/QgQQExgHwAd8IdFT/Wz6j+GhlpmXSOW/2z///8Eq/sJ18Dw/zdQA0AAMQExxJjjdy9x2/76EfLz4MXdP/i+wsyGkkA3Aw3984cBIIAYfzIwMKel/bt3jwEaLNAwgZIQxp/fDH/+MqqovL14ESCAWICeZvr9h0FSEhSgwBgAygFDEMT+wwAhgQgc4kAEVAwQQIxfUSMSTxxDAECAAQAJWke8v4u1tAAAAABJRU5ErkJggg==\" title=\"Español (es_ES)\" alt=\"Español\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/es/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/es/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"58\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"es\";s:15:\"lingotek_locale\";s:5:\"es-ES\";}i:4;a:27:{s:7:\"term_id\";i:19;s:4:\"name\";s:9:\"ไทย\";s:4:\"slug\";s:2:\"th\";s:10:\"term_group\";i:4;s:16:\"term_taxonomy_id\";i:19;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:2:\"th\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:20;s:19:\"tl_term_taxonomy_id\";i:20;s:8:\"tl_count\";i:3;s:6:\"locale\";R:117;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:2:\"th\";s:8:\"facebook\";s:5:\"th_TH\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/th.png\";s:4:\"flag\";s:702:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFWSURBVHjaYvzPgAD/UNlYEUAAisQgBwAQhGGi/pzP8EBvG+BImqbL7pzuUlda9SJ7DMs85NYEBgX5Ir4AYvz/H2QHhIQz/mMDjIyMnz59AgggRkfXjTmZOu/e/fz7D2jH/7///v398+8PkPEHCEHsv3///fn978+/f8JCnGWlWwACiGX/7jOmhiKPHn3+8wck8fvPv9+//wLRr1//wORfOCkvz8fAsAUggIB++AdxJ8iRQNf++f/rF8TZ/4B6fgEZQPIXRAEoLAACCKjhx9+/f/78+f0LaC/YbIjxyGaDSaCFvxgYvgAEEAs3r5qKqhAPLzs4GP4CnQR2G9CMf2A2iPEH7BNJSe5Tp8wAAojx58+fzMzM//79wxU4EACUBYbS27dvAQKI5R87O1NJCQPEjX//MvwGkn8Yf/8GRggCAY0DSgFt2bsXIIAYv6JGJJ44hgCAAAMA8pZimQIezaoAAAAASUVORK5CYII=\" title=\"ไทย (th)\" alt=\"ไทย\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/th/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/th/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"59\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"th\";s:15:\"lingotek_locale\";s:5:\"th-TH\";}i:5;a:27:{s:7:\"term_id\";i:27;s:4:\"name\";s:16:\"Bahasa Indonesia\";s:4:\"slug\";s:2:\"id\";s:10:\"term_group\";i:5;s:16:\"term_taxonomy_id\";i:27;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"id_ID\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:10:\"tl_term_id\";i:28;s:19:\"tl_term_taxonomy_id\";i:28;s:8:\"tl_count\";i:3;s:6:\"locale\";R:144;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"id-ID\";s:8:\"facebook\";s:5:\"id_ID\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/id.png\";s:4:\"flag\";s:691:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFASURBVHjaYrwvyMzw6S8DGPwD0//ACAj+wNj/kNgAAcTC8P6vUF87UPr/v38M//79//v3/18g+Yfh35//v//++/vn/x8g+v3/N4hxe9YigABiYWAGG/biOQNI6V+wNBj9/f0PqOj3738g1b////rFLCUNtAEggFgY/jIAjYSo/gdWygBU8ec3iP37z7/fv0DsXyARxj9AOQaAAGIBOe7b179fPv3/85cBah5Q6a9/v8HafoOM//frF1CckYf3FwMDQACxCOSmctjY//34EeSef2AEchiY8QfsB4jlf/8yCwiKnT8LEECMf/+CguY/EDCAIW7AxMT0/v17gABi+ffvHyMjI0g9Az7VEFmgLwACiAmoAb9SNG0AAQSyAWgXRA8DDADtZEABQC5IFqgYIIBAGn78+PEPAhjAEAeAaAUIMAD/YnbumkL3sQAAAABJRU5ErkJggg==\" title=\"Bahasa Indonesia (id_ID)\" alt=\"Bahasa Indonesia\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/id/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/id/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"64\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"id\";s:15:\"lingotek_locale\";s:5:\"id-ID\";}i:6;a:27:{s:7:\"term_id\";i:31;s:4:\"name\";s:13:\"Bahasa Melayu\";s:4:\"slug\";s:2:\"ms\";s:10:\"term_group\";i:6;s:16:\"term_taxonomy_id\";i:31;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"ms_MY\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:32;s:19:\"tl_term_taxonomy_id\";i:32;s:8:\"tl_count\";i:3;s:6:\"locale\";R:171;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"ms-MY\";s:8:\"facebook\";s:5:\"ms_MY\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/my.png\";s:4:\"flag\";s:873:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHNSURBVHjaYmRgOCnIeWHTkh4GBgavqKLPP/UYGP4B0UkGewEIi4HhDxIJEECMgpwzH95nBqref1RdR/0RG9vP9VsNb98T6mgSYWf++5+B4f+/f/9h4MuzZwABADEAzv8Edm6yAABQxskPNS7GDAr2AP79SkHncL1W7GJjCAD5//v8//v6/vv7//r6Axwb3KipAoiFAQT+vXjJo6bExMPx59t35v////7+zSAwexoH85///8HGgwlGZmaV/AKAAGLkZp7+6vm//3+fd0z2Sgjbz/D/z7QFNucvSc1lK+dk+Pnvzx+w8b////nNLCNzfcMGgABiZGA4OmUit6fDdqDB+VWRQCf8Ajth8ypRTuZfYOPB5jMwAG34eO8eQAAxnmRgkMsv//ngEcPv3//+gEwCmvfv12+O358YOdj/AwWBusEkq7z81T17AAKI8ffzp4y8fP///mX4zwB1LMTRQIMhZoNJoBwjC8ubu3cBAojlnqS0aH7+nwcPQCb9+QMyDOImcMiAuBDBv3/ZFBUvHT0KEECM3+/fZxEUhBoDC3UGIAmPATCDASz7+uZNgABi+fXi2Y8nT/4BATBAgAjG+ANmM0D4fyCMf0wMDAABBgDcZ1sWFOFmVAAAAABJRU5ErkJggg==\" title=\"Bahasa Melayu (ms_MY)\" alt=\"Bahasa Melayu\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/ms/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/ms/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"65\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"my\";s:15:\"lingotek_locale\";s:5:\"ms-MY\";}i:7;a:27:{s:7:\"term_id\";i:35;s:4:\"name\";s:9:\"한국어\";s:4:\"slug\";s:2:\"ko\";s:10:\"term_group\";i:7;s:16:\"term_taxonomy_id\";i:35;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"ko_KR\";s:6:\"parent\";i:0;s:5:\"count\";i:3;s:10:\"tl_term_id\";i:36;s:19:\"tl_term_taxonomy_id\";i:36;s:8:\"tl_count\";i:3;s:6:\"locale\";R:198;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"ko-KR\";s:8:\"facebook\";s:5:\"ko_KR\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/kr.png\";s:4:\"flag\";s:893:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHiSURBVHjaYvz4/SsDEvj37x+YhLCgGAb+ADFAADEBpfk4uIDo2YNHV89fZP3PyMfBLcDFxc/NLcjNy8nMfPnM2cd374ry84sJCAE1AAQQC8Tg169fb9269cP7DyJiYsqKiv/v3v3/589/FZVnL16uXbtGQFBQWEhIRlYWaAVAAIFs+P///4cPH37//m1oYqwsJfm/t/d/QcH/vJz/ddUKYqJuXl5v3rx5/uIFUBnQBoAAYgT6gZedE6jt1atXXLy8jHsOcEyd+P/37y9/mH7+/CWQEPEpIvLj6zdS0lKMjIwPnj0BCCAWiC+BukVERICMnW/4jP8w/2bibDLMf/aTvfrxOX12dm5pKaACBkZGoJMAAgioAaQaCN6+fcvDzfVVXTdXvZKZjfURu9iHHz/vGrupf//85u1HSUlJRqCef/8AAogJiIGqb968OW3aNKC/PQw4VS1UnjALMXz/4azD5uokvW/f/vr6+pMnT0L8ABBALP/AocTFxQXkHzx0WFNLszZM7ZIJ+5+//3UV2O/du7l6zXphYWEBAQGgAqCTAAII5AcgS1pa2t3d/eXLl2JikkD9ekpcEHeKi0t5eHgANairq4PjlQEggBifv32LHJFwiuEPmMEAYf/5A1YNxAABBgCFMRk3L8TWJAAAAABJRU5ErkJggg==\" title=\"한국어 (ko_KR)\" alt=\"한국어\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/ko/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/ko/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"66\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"kr\";s:15:\"lingotek_locale\";s:5:\"ko-KR\";}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'post_type'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '2'),
(6, 5, '_menu_item_object', 'page'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', ''),
(12, 6, '_menu_item_type', 'custom'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '6'),
(15, 6, '_menu_item_object', 'custom'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', '#'),
(20, 6, '_menu_item_orphaned', '1583153788'),
(21, 7, '_edit_last', '1'),
(22, 7, '_edit_lock', '1583284716:1'),
(23, 8, '_edit_last', '1'),
(24, 8, '_edit_lock', '1583154156:1'),
(25, 25, '_edit_last', '1'),
(26, 25, '_edit_lock', '1583289150:1'),
(27, 36, '_edit_last', '1'),
(28, 36, '_edit_lock', '1583289296:1'),
(29, 55, '_pll_strings_translations', 'a:0:{}'),
(30, 56, '_pll_strings_translations', 'a:0:{}'),
(31, 57, '_pll_strings_translations', 'a:0:{}'),
(32, 58, '_pll_strings_translations', 'a:0:{}'),
(33, 59, '_pll_strings_translations', 'a:0:{}'),
(35, 62, '_wp_attached_file', '2020/03/logo.gif'),
(36, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:40;s:4:\"file\";s:16:\"2020/03/logo.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 63, '_menu_item_type', 'custom'),
(38, 63, '_menu_item_menu_item_parent', '0'),
(39, 63, '_menu_item_object_id', '63'),
(40, 63, '_menu_item_object', 'custom'),
(41, 63, '_menu_item_target', ''),
(42, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 63, '_menu_item_xfn', ''),
(44, 63, '_menu_item_url', '#pll_switcher'),
(46, 63, '_pll_menu_item', 'a:6:{s:22:\"hide_if_no_translation\";i:0;s:12:\"hide_current\";i:0;s:10:\"force_home\";i:0;s:10:\"show_flags\";i:1;s:10:\"show_names\";i:0;s:8:\"dropdown\";i:0;}'),
(47, 64, '_pll_strings_translations', 'a:0:{}'),
(48, 65, '_pll_strings_translations', 'a:0:{}'),
(49, 66, '_pll_strings_translations', 'a:0:{}'),
(50, 68, '_edit_last', '1'),
(51, 68, '_edit_lock', '1583204652:1'),
(54, 67, '_edit_lock', '1583204891:1'),
(55, 67, '_edit_last', '1'),
(58, 72, '_edit_last', '1'),
(61, 72, '_edit_lock', '1583204895:1'),
(62, 74, '_edit_last', '1'),
(65, 74, '_edit_lock', '1583204902:1'),
(66, 76, '_edit_last', '1'),
(69, 76, '_edit_lock', '1583204764:1'),
(70, 78, '_edit_last', '1'),
(73, 78, '_edit_lock', '1583204914:1'),
(74, 80, '_edit_last', '1'),
(77, 80, '_edit_lock', '1583204777:1'),
(78, 82, '_edit_lock', '1583204787:1'),
(79, 84, '_edit_last', '1'),
(82, 84, '_edit_lock', '1583205415:1'),
(83, 87, '_edit_last', '1'),
(84, 87, '_edit_lock', '1583224593:1'),
(85, 88, '_wp_attached_file', '2020/03/iqoption_small.jpg'),
(86, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:235;s:4:\"file\";s:26:\"2020/03/iqoption_small.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 89, '_wp_attached_file', '2020/03/iqoption_logo.jpg'),
(88, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:40;s:4:\"file\";s:25:\"2020/03/iqoption_logo.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:2:{i:0;s:7:\"370x300\";i:1;s:6:\"125x40\";}}}'),
(89, 87, '_thumbnail_id', '89'),
(90, 87, 'money_minimum', '10'),
(91, 87, '_money_minimum', 'field_5e5d2175c5336'),
(92, 87, 'tk_demo', '1'),
(93, 87, '_tk_demo', 'field_5e5d2825c5338'),
(94, 87, 'image_demo', '88'),
(95, 87, '_image_demo', 'field_5e5d29bb20487'),
(96, 87, 'nen_rivew', '1'),
(97, 87, '_nen_rivew', 'field_5e5d2e86f98f2'),
(98, 87, 'intro_content_0_thong_tin', 'Các nhà giao dịch có thể sử dụng nhiều loại công cụ để phân tích biểu đồ.'),
(99, 87, '_intro_content_0_thong_tin', 'field_5e5d2aeac8af7'),
(100, 87, 'intro_content_1_thong_tin', 'Các tin tức thị trường trong thời gian thực cũng được tích hợp trên nền tảng.'),
(101, 87, '_intro_content_1_thong_tin', 'field_5e5d2aeac8af7'),
(102, 87, 'intro_content_2_thong_tin', 'Nền tảng giao dịch của IQoption.com rất mượt mà.'),
(103, 87, '_intro_content_2_thong_tin', 'field_5e5d2aeac8af7'),
(104, 87, 'intro_content', '3'),
(105, 87, '_intro_content', 'field_5e5d2a27c8af6'),
(106, 68, 'views', '0'),
(107, 1, 'views', '1'),
(108, 87, 'views', '97'),
(109, 87, 'end_page', 'https://iqoption.org/'),
(110, 87, '_end_page', 'field_5e5de050a8451'),
(111, 92, '_edit_last', '1'),
(112, 92, '_edit_lock', '1583226013:1'),
(113, 93, '_wp_attached_file', '2020/03/olymptrade_vn_small.jpg'),
(114, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:235;s:4:\"file\";s:31:\"2020/03/olymptrade_vn_small.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 92, 'money_minimum', '10'),
(116, 92, '_money_minimum', 'field_5e5d2175c5336'),
(117, 92, 'tk_demo', '1'),
(118, 92, '_tk_demo', 'field_5e5d2825c5338'),
(119, 92, 'image_demo', '93'),
(120, 92, '_image_demo', 'field_5e5d29bb20487'),
(121, 92, 'nen_rivew', '0'),
(122, 92, '_nen_rivew', 'field_5e5d2e86f98f2'),
(123, 92, 'intro_content_0_thong_tin', 'Olymp Trade cung cấp ứng dụng trên thiết bị di động để giúp các nhà đầu tư có thể giao dịch mọi lúc mọi nơi.'),
(124, 92, '_intro_content_0_thong_tin', 'field_5e5d2aeac8af7'),
(125, 92, 'intro_content_1_thong_tin', 'khi bạn trở thành thành viên của Olymp, bạn có quyền tham gia tất cả các chương trình đào tạo giao dịch của công ty này hoàn toàn miễn phí.'),
(126, 92, '_intro_content_1_thong_tin', 'field_5e5d2aeac8af7'),
(127, 92, 'intro_content_2_thong_tin', 'Miễn phí tài khoản Demo.'),
(128, 92, '_intro_content_2_thong_tin', 'field_5e5d2aeac8af7'),
(129, 92, 'intro_content', '3'),
(130, 92, '_intro_content', 'field_5e5d2a27c8af6'),
(131, 92, 'end_page', 'https://ecattrade.com/demo/olymptrade-vietnam'),
(132, 92, '_end_page', 'field_5e5de050a8451'),
(133, 94, '_wp_attached_file', '2020/03/olymp_trade_logo.jpg'),
(134, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:40;s:4:\"file\";s:28:\"2020/03/olymp_trade_logo.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:6:\"125x40\";}}}'),
(135, 92, '_thumbnail_id', '94'),
(136, 95, 'money_minimum', '10'),
(137, 95, 'tk_demo', '1'),
(138, 95, 'image_demo', '93'),
(139, 95, 'nen_rivew', '0'),
(140, 95, 'intro_content_0_thong_tin', 'Olymp Trade cung cấp ứng dụng trên thiết bị di động để giúp các nhà đầu tư có thể giao dịch mọi lúc mọi nơi.'),
(141, 95, 'intro_content_1_thong_tin', 'khi bạn trở thành thành viên của Olymp, bạn có quyền tham gia tất cả các chương trình đào tạo giao dịch của công ty này hoàn toàn miễn phí.'),
(142, 95, 'intro_content_2_thong_tin', 'Miễn phí tài khoản Demo.'),
(143, 95, 'intro_content', '3'),
(144, 95, 'end_page', 'https://ecattrade.com/demo/olymptrade-vietnam'),
(145, 95, '_thumbnail_id', '94'),
(146, 95, '_edit_last', '1'),
(147, 95, '_edit_lock', '1583226104:1'),
(148, 95, '_money_minimum', 'field_5e5d2175c5336'),
(149, 95, '_tk_demo', 'field_5e5d2825c5338'),
(150, 95, '_image_demo', 'field_5e5d29bb20487'),
(151, 95, '_nen_rivew', 'field_5e5d2e86f98f2'),
(152, 95, '_intro_content_0_thong_tin', 'field_5e5d2aeac8af7'),
(153, 95, '_intro_content_1_thong_tin', 'field_5e5d2aeac8af7'),
(154, 95, '_intro_content_2_thong_tin', 'field_5e5d2aeac8af7'),
(155, 95, '_intro_content', 'field_5e5d2a27c8af6'),
(156, 95, '_end_page', 'field_5e5de050a8451'),
(157, 95, 'views', '1'),
(158, 92, 'views', '14'),
(159, 96, '_wp_attached_file', '2020/03/index.gif'),
(160, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:546;s:4:\"file\";s:17:\"2020/03/index.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(179, 100, 'money_minimum', '10'),
(180, 100, 'tk_demo', '1'),
(181, 100, 'image_demo', '93'),
(182, 100, 'nen_rivew', '0'),
(183, 100, 'intro_content_0_thong_tin', 'Olymp Trade cung cấp ứng dụng trên thiết bị di động để giúp các nhà đầu tư có thể giao dịch mọi lúc mọi nơi.'),
(184, 100, 'intro_content_1_thong_tin', 'khi bạn trở thành thành viên của Olymp, bạn có quyền tham gia tất cả các chương trình đào tạo giao dịch của công ty này hoàn toàn miễn phí.'),
(185, 100, 'intro_content_2_thong_tin', 'Miễn phí tài khoản Demo.'),
(186, 100, 'intro_content', '3'),
(187, 100, 'end_page', 'https://ecattrade.com/demo/olymptrade-vietnam'),
(188, 100, 'views', '4'),
(189, 100, '_thumbnail_id', '94'),
(190, 100, '_edit_last', '1'),
(191, 100, '_edit_lock', '1583226094:1'),
(192, 100, '_money_minimum', 'field_5e5d2175c5336'),
(193, 100, '_tk_demo', 'field_5e5d2825c5338'),
(194, 100, '_image_demo', 'field_5e5d29bb20487'),
(195, 100, '_nen_rivew', 'field_5e5d2e86f98f2'),
(196, 100, '_intro_content_0_thong_tin', 'field_5e5d2aeac8af7'),
(197, 100, '_intro_content_1_thong_tin', 'field_5e5d2aeac8af7'),
(198, 100, '_intro_content_2_thong_tin', 'field_5e5d2aeac8af7'),
(199, 100, '_intro_content', 'field_5e5d2a27c8af6'),
(200, 100, '_end_page', 'field_5e5de050a8451'),
(201, 101, 'money_minimum', '10'),
(202, 101, 'tk_demo', '1'),
(203, 101, 'image_demo', '93'),
(204, 101, 'nen_rivew', '0'),
(205, 101, 'intro_content_0_thong_tin', 'Olymp Trade cung cấp ứng dụng trên thiết bị di động để giúp các nhà đầu tư có thể giao dịch mọi lúc mọi nơi.'),
(206, 101, 'intro_content_1_thong_tin', 'khi bạn trở thành thành viên của Olymp, bạn có quyền tham gia tất cả các chương trình đào tạo giao dịch của công ty này hoàn toàn miễn phí.'),
(207, 101, 'intro_content_2_thong_tin', 'Miễn phí tài khoản Demo.'),
(208, 101, 'intro_content', '3'),
(209, 101, 'end_page', 'https://ecattrade.com/demo/olymptrade-vietnam'),
(210, 101, 'views', '4'),
(211, 101, '_thumbnail_id', '94'),
(212, 101, '_edit_last', '1'),
(213, 101, '_money_minimum', 'field_5e5d2175c5336'),
(214, 101, '_tk_demo', 'field_5e5d2825c5338'),
(215, 101, '_image_demo', 'field_5e5d29bb20487'),
(216, 101, '_nen_rivew', 'field_5e5d2e86f98f2'),
(217, 101, '_intro_content_0_thong_tin', 'field_5e5d2aeac8af7'),
(218, 101, '_intro_content_1_thong_tin', 'field_5e5d2aeac8af7'),
(219, 101, '_intro_content_2_thong_tin', 'field_5e5d2aeac8af7'),
(220, 101, '_intro_content', 'field_5e5d2a27c8af6'),
(221, 101, '_end_page', 'field_5e5de050a8451'),
(222, 101, '_edit_lock', '1583225891:1'),
(232, 101, '_wp_old_slug', 'olymp-trade-4__trashed'),
(233, 100, '_wp_old_slug', 'olymp-trade-3__trashed'),
(234, 95, '_wp_old_slug', 'olymp-trade-2__trashed'),
(235, 102, 'money_minimum', '10'),
(236, 102, 'tk_demo', '1'),
(237, 102, 'image_demo', '88'),
(238, 102, 'nen_rivew', '1'),
(239, 102, 'intro_content_0_thong_tin', 'Các nhà giao dịch có thể sử dụng nhiều loại công cụ để phân tích biểu đồ.'),
(240, 102, 'intro_content_1_thong_tin', 'Các tin tức thị trường trong thời gian thực cũng được tích hợp trên nền tảng.'),
(241, 102, 'intro_content_2_thong_tin', 'Nền tảng giao dịch của IQoption.com rất mượt mà.'),
(242, 102, 'intro_content', '3'),
(243, 102, 'views', '10'),
(244, 102, 'end_page', 'https://iqoption.org/'),
(245, 102, '_thumbnail_id', '89'),
(246, 102, '_edit_last', '1'),
(247, 102, '_edit_lock', '1583226283:1'),
(248, 102, '_money_minimum', 'field_5e5d2175c5336'),
(249, 102, '_tk_demo', 'field_5e5d2825c5338'),
(250, 102, '_image_demo', 'field_5e5d29bb20487'),
(251, 102, '_nen_rivew', 'field_5e5d2e86f98f2'),
(252, 102, '_intro_content_0_thong_tin', 'field_5e5d2aeac8af7'),
(253, 102, '_intro_content_1_thong_tin', 'field_5e5d2aeac8af7'),
(254, 102, '_intro_content_2_thong_tin', 'field_5e5d2aeac8af7'),
(255, 102, '_intro_content', 'field_5e5d2a27c8af6'),
(256, 102, '_end_page', 'field_5e5de050a8451'),
(257, 67, 'views', '0'),
(258, 103, '_wp_attached_file', '2020/03/forexfanclub-logo.png'),
(259, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:55;s:4:\"file\";s:29:\"2020/03/forexfanclub-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-03-02 12:44:53', '2020-03-02 12:44:53', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2020-03-02 12:44:53', '2020-03-02 12:44:53', '', 0, 'http://localhost/project/ecats/?p=1', 0, 'post', '', 1),
(2, 1, '2020-03-02 12:44:53', '2020-03-02 12:44:53', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/project/ecats/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2020-03-02 12:44:53', '2020-03-02 12:44:53', '', 0, 'http://localhost/project/ecats/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-03-02 12:44:53', '2020-03-02 12:44:53', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost/project/ecats.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2020-03-02 12:44:53', '2020-03-02 12:44:53', '', 0, 'http://localhost/project/ecats/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-03-02 12:45:07', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-02 12:45:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=4', 0, 'post', '', 0),
(5, 1, '2020-03-02 12:55:56', '2020-03-02 12:55:56', ' ', '', '', 'publish', 'closed', 'closed', '', '5', '', '', '2020-03-03 09:05:44', '2020-03-03 09:05:44', '', 0, 'http://localhost/project/ecats/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2020-03-02 12:56:28', '0000-00-00 00:00:00', '', 'Forex', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-02 12:56:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2020-03-02 13:01:07', '2020-03-02 13:01:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"theme-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Theme Custom', 'theme-custom', 'publish', 'closed', 'closed', '', 'group_5e5d0383eab56', '', '', '2020-03-04 01:12:00', '2020-03-04 01:12:00', '', 0, 'http://localhost/project/ecats/?post_type=acf-field-group&#038;p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2020-03-02 13:02:36', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-02 13:02:36', '2020-03-02 13:02:36', '', 0, 'http://localhost/project/ecats/?post_type=slider&#038;p=8', 0, 'slider', '', 0),
(9, 1, '2020-03-02 13:04:11', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 13:04:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=slider&p=9', 0, 'slider', '', 0),
(10, 1, '2020-03-02 13:05:34', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 13:05:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=10', 0, 'forex', '', 0),
(11, 1, '2020-03-02 13:06:07', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 13:06:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=11', 0, 'forex', '', 0),
(12, 1, '2020-03-02 13:08:19', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 13:08:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=12', 0, 'forex', '', 0),
(13, 1, '2020-03-02 13:08:28', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 13:08:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=13', 0, 'forex', '', 0),
(14, 1, '2020-03-02 13:13:38', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 13:13:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=fsorex&p=14', 0, 'fsorex', '', 0),
(15, 1, '2020-03-02 13:13:53', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 13:13:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=fsorex&p=15', 0, 'fsorex', '', 0),
(16, 1, '2020-03-02 13:14:24', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 13:14:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=fsorex&p=16', 0, 'fsorex', '', 0),
(17, 1, '2020-03-02 13:19:27', '2020-03-02 13:19:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'ag_logo', 'publish', 'closed', 'closed', '', 'field_5e5d0792b7a08', '', '', '2020-03-03 02:30:12', '2020-03-03 02:30:12', '', 7, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=17', 0, 'acf-field', '', 0),
(18, 1, '2020-03-02 14:57:26', '2020-03-02 14:57:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"40\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tên công ty', 'ten_cong_ty', 'publish', 'closed', 'closed', '', 'field_5e5d1e4554414', '', '', '2020-03-02 14:59:29', '2020-03-02 14:59:29', '', 7, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=18', 1, 'acf-field', '', 0),
(19, 1, '2020-03-02 14:57:26', '2020-03-02 14:57:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Địa chỉ', 'dia_chi', 'publish', 'closed', 'closed', '', 'field_5e5d1e4e54415', '', '', '2020-03-02 14:59:29', '2020-03-02 14:59:29', '', 7, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=19', 3, 'acf-field', '', 0),
(20, 1, '2020-03-02 14:57:26', '2020-03-02 14:57:26', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Số điện thoại', 'phone_number', 'publish', 'closed', 'closed', '', 'field_5e5d1e7a54416', '', '', '2020-03-02 14:59:29', '2020-03-02 14:59:29', '', 7, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=20', 2, 'acf-field', '', 0),
(22, 1, '2020-03-02 15:01:08', '2020-03-02 15:01:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh giới thiệu', 'image_intro', 'publish', 'closed', 'closed', '', 'field_5e5d1f69336cd', '', '', '2020-03-03 07:37:03', '2020-03-03 07:37:03', '', 7, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=22', 5, 'acf-field', '', 0),
(23, 1, '2020-03-02 15:01:08', '2020-03-02 15:01:08', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"70\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Nội dung giới thiệu', 'content_intro', 'publish', 'closed', 'closed', '', 'field_5e5d1f9b336ce', '', '', '2020-03-02 15:05:56', '2020-03-02 15:05:56', '', 7, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=23', 6, 'acf-field', '', 0),
(24, 1, '2020-03-02 15:05:56', '2020-03-02 15:05:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề giới thiệu', 'title_intro', 'publish', 'closed', 'closed', '', 'field_5e5d20b3cf0d8', '', '', '2020-03-04 01:12:00', '2020-03-04 01:12:00', '', 7, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=24', 4, 'acf-field', '', 0),
(25, 1, '2020-03-02 15:08:29', '2020-03-02 15:08:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"forex\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Giá trị', 'gia-tri', 'publish', 'closed', 'closed', '', 'group_5e5d214900b27', '', '', '2020-03-04 02:33:52', '2020-03-04 02:33:52', '', 0, 'http://localhost/project/ecats/?post_type=acf-field-group&#038;p=25', 0, 'acf-field-group', '', 0),
(26, 1, '2020-03-02 15:08:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:08:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=26', 0, 'forex', '', 0),
(27, 1, '2020-03-02 15:39:09', '2020-03-02 15:39:09', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Tiền gửi tối thiểu ($)', 'money_minimum', 'publish', 'closed', 'closed', '', 'field_5e5d2175c5336', '', '', '2020-03-02 15:43:27', '2020-03-02 15:43:27', '', 25, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=27', 0, 'acf-field', '', 0),
(28, 1, '2020-03-02 15:39:09', '2020-03-02 15:39:09', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:3:\"Có\";s:11:\"ui_off_text\";s:10:\"Không có\";}', 'Tài khoản Demo', 'tk_demo', 'publish', 'closed', 'closed', '', 'field_5e5d2825c5338', '', '', '2020-03-03 04:15:46', '2020-03-03 04:15:46', '', 25, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=28', 1, 'acf-field', '', 0),
(29, 1, '2020-03-02 15:39:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:39:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=29', 0, 'forex', '', 0),
(30, 1, '2020-03-02 15:40:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:40:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=30', 0, 'forex', '', 0),
(31, 1, '2020-03-02 15:41:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:41:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=31', 0, 'forex', '', 0),
(32, 1, '2020-03-02 15:42:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:42:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=32', 0, 'forex', '', 0),
(33, 1, '2020-03-02 15:43:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:43:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=33', 0, 'forex', '', 0),
(34, 1, '2020-03-02 15:44:27', '2020-03-02 15:44:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image Demo', 'image_demo', 'publish', 'closed', 'closed', '', 'field_5e5d29bb20487', '', '', '2020-03-04 02:33:52', '2020-03-04 02:33:52', '', 25, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=34', 2, 'acf-field', '', 0),
(35, 1, '2020-03-02 15:44:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:44:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=35', 0, 'forex', '', 0),
(36, 1, '2020-03-02 15:45:41', '2020-03-02 15:45:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"forex\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Forex', 'forex', 'publish', 'closed', 'closed', '', 'group_5e5d2a18c6dd0', '', '', '2020-03-03 04:49:46', '2020-03-03 04:49:46', '', 0, 'http://localhost/project/ecats/?post_type=acf-field-group&#038;p=36', 0, 'acf-field-group', '', 0),
(37, 1, '2020-03-02 15:50:27', '2020-03-02 15:50:27', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Danh sách tính năng', 'intro_content', 'publish', 'closed', 'closed', '', 'field_5e5d2a27c8af6', '', '', '2020-03-03 04:43:39', '2020-03-03 04:43:39', '', 36, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=37', 0, 'acf-field', '', 0),
(38, 1, '2020-03-02 15:50:27', '2020-03-02 15:50:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Thông tin (BR)', 'thong_tin', 'publish', 'closed', 'closed', '', 'field_5e5d2aeac8af7', '', '', '2020-03-02 15:57:21', '2020-03-02 15:57:21', '', 37, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=38', 0, 'acf-field', '', 0),
(39, 1, '2020-03-02 15:50:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:50:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=39', 0, 'forex', '', 0),
(40, 1, '2020-03-02 15:50:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:50:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=40', 0, 'forex', '', 0),
(41, 1, '2020-03-02 15:51:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:51:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=41', 0, 'forex', '', 0),
(43, 1, '2020-03-02 15:56:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:56:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=43', 0, 'forex', '', 0),
(44, 1, '2020-03-02 15:57:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:57:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=44', 0, 'forex', '', 0),
(45, 1, '2020-03-02 15:58:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 15:58:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=45', 0, 'forex', '', 0),
(46, 1, '2020-03-02 16:01:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 16:01:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=46', 0, 'forex', '', 0),
(47, 1, '2020-03-02 16:02:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 16:02:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=47', 0, 'forex', '', 0),
(48, 1, '2020-03-02 16:02:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 16:02:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=48', 0, 'forex', '', 0),
(49, 1, '2020-03-02 16:02:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 16:02:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=49', 0, 'forex', '', 0),
(50, 1, '2020-03-02 16:02:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 16:02:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=50', 0, 'forex', '', 0),
(51, 1, '2020-03-02 16:03:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 16:03:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=51', 0, 'forex', '', 0),
(52, 1, '2020-03-02 16:05:00', '2020-03-02 16:05:00', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Bài viết nên xem', 'nen_rivew', 'publish', 'closed', 'closed', '', 'field_5e5d2e86f98f2', '', '', '2020-03-02 16:05:00', '2020-03-02 16:05:00', '', 25, 'http://localhost/project/ecats/?post_type=acf-field&p=52', 3, 'acf-field', '', 0),
(53, 1, '2020-03-02 16:05:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 16:05:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=53', 0, 'forex', '', 0),
(54, 1, '2020-03-02 16:07:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-02 16:07:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=54', 0, 'forex', '', 0),
(55, 1, '2020-03-02 16:11:41', '2020-03-02 16:11:41', '', 'polylang_mo_4', '', 'private', 'closed', 'closed', '', 'polylang_mo_4', '', '', '2020-03-02 16:11:41', '2020-03-02 16:11:41', '', 0, 'http://localhost/project/ecats/?post_type=polylang_mo&p=55', 0, 'polylang_mo', '', 0),
(56, 1, '2020-03-02 16:12:14', '2020-03-02 16:12:14', '', 'polylang_mo_7', '', 'private', 'closed', 'closed', '', 'polylang_mo_7', '', '', '2020-03-02 16:12:14', '2020-03-02 16:12:14', '', 0, 'http://localhost/project/ecats/?post_type=polylang_mo&p=56', 0, 'polylang_mo', '', 0),
(57, 1, '2020-03-02 16:14:15', '2020-03-02 16:14:15', '', 'polylang_mo_11', '', 'private', 'closed', 'closed', '', 'polylang_mo_11', '', '', '2020-03-02 16:14:15', '2020-03-02 16:14:15', '', 0, 'http://localhost/project/ecats/?post_type=polylang_mo&p=57', 0, 'polylang_mo', '', 0),
(58, 1, '2020-03-02 16:14:45', '2020-03-02 16:14:45', '', 'polylang_mo_15', '', 'private', 'closed', 'closed', '', 'polylang_mo_15', '', '', '2020-03-02 16:14:45', '2020-03-02 16:14:45', '', 0, 'http://localhost/project/ecats/?post_type=polylang_mo&p=58', 0, 'polylang_mo', '', 0),
(59, 1, '2020-03-02 16:17:38', '2020-03-02 16:17:38', '', 'polylang_mo_19', '', 'private', 'closed', 'closed', '', 'polylang_mo_19', '', '', '2020-03-02 16:17:38', '2020-03-02 16:17:38', '', 0, 'http://localhost/project/ecats/?post_type=polylang_mo&p=59', 0, 'polylang_mo', '', 0),
(61, 1, '2020-03-03 02:24:18', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-03 02:24:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=61', 0, 'forex', '', 0),
(62, 1, '2020-03-03 02:26:07', '2020-03-03 02:26:07', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-03-03 02:26:07', '2020-03-03 02:26:07', '', 0, 'http://localhost/project/ecats/wp-content/uploads/2020/03/logo.gif', 0, 'attachment', 'image/gif', 0),
(63, 1, '2020-03-03 02:46:54', '2020-03-03 02:46:54', '', 'Languages', '', 'publish', 'closed', 'closed', '', 'languages', '', '', '2020-03-03 09:05:44', '2020-03-03 09:05:44', '', 0, 'http://localhost/project/ecats/?p=63', 2, 'nav_menu_item', '', 0),
(64, 1, '2020-03-03 02:56:51', '2020-03-03 02:56:51', '', 'polylang_mo_27', '', 'private', 'closed', 'closed', '', 'polylang_mo_27', '', '', '2020-03-03 02:56:51', '2020-03-03 02:56:51', '', 0, 'http://localhost/project/ecats/?post_type=polylang_mo&p=64', 0, 'polylang_mo', '', 0),
(65, 1, '2020-03-03 02:59:34', '2020-03-03 02:59:34', '', 'polylang_mo_31', '', 'private', 'closed', 'closed', '', 'polylang_mo_31', '', '', '2020-03-03 02:59:34', '2020-03-03 02:59:34', '', 0, 'http://localhost/project/ecats/?post_type=polylang_mo&p=65', 0, 'polylang_mo', '', 0),
(66, 1, '2020-03-03 03:03:29', '2020-03-03 03:03:29', '', 'polylang_mo_35', '', 'private', 'closed', 'closed', '', 'polylang_mo_35', '', '', '2020-03-03 03:03:29', '2020-03-03 03:03:29', '', 0, 'http://localhost/project/ecats/?post_type=polylang_mo&p=66', 0, 'polylang_mo', '', 0),
(67, 1, '2020-03-03 03:08:08', '2020-03-03 03:08:08', '', 'Hello', '', 'publish', 'open', 'open', '', 'hello-2', '', '', '2020-03-03 03:08:08', '2020-03-03 03:08:08', '', 0, 'http://localhost/project/ecats/?p=67', 0, 'post', '', 0),
(68, 1, '2020-03-03 03:06:33', '2020-03-03 03:06:33', '', 'Hello', '', 'publish', 'open', 'open', '', 'hello', '', '', '2020-03-03 03:06:33', '2020-03-03 03:06:33', '', 0, 'http://localhost/project/ecats/?p=68', 0, 'post', '', 0),
(69, 1, '2020-03-03 03:06:33', '2020-03-03 03:06:33', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-03-03 03:06:33', '2020-03-03 03:06:33', '', 68, 'http://localhost/project/ecats/index.php/2020/03/03/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-03-03 03:07:37', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-03 03:07:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=70', 0, 'post', '', 0),
(71, 1, '2020-03-03 03:08:08', '2020-03-03 03:08:08', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-03-03 03:08:08', '2020-03-03 03:08:08', '', 67, 'http://localhost/project/ecats/67-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-03-03 03:08:14', '2020-03-03 03:08:14', '', 'Hello', '', 'publish', 'open', 'open', '', 'hello-3', '', '', '2020-03-03 03:08:14', '2020-03-03 03:08:14', '', 0, 'http://localhost/project/ecats/?p=72', 0, 'post', '', 0),
(73, 1, '2020-03-03 03:08:14', '2020-03-03 03:08:14', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2020-03-03 03:08:14', '2020-03-03 03:08:14', '', 72, 'http://localhost/project/ecats/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-03-03 03:08:19', '2020-03-03 03:08:19', '', 'Hello', '', 'publish', 'open', 'open', '', 'hello-4', '', '', '2020-03-03 03:08:19', '2020-03-03 03:08:19', '', 0, 'http://localhost/project/ecats/?p=74', 0, 'post', '', 0),
(75, 1, '2020-03-03 03:08:19', '2020-03-03 03:08:19', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-03-03 03:08:19', '2020-03-03 03:08:19', '', 74, 'http://localhost/project/ecats/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-03-03 03:08:25', '2020-03-03 03:08:25', '', 'Hello', '', 'publish', 'open', 'open', '', 'hello-5', '', '', '2020-03-03 03:08:25', '2020-03-03 03:08:25', '', 0, 'http://localhost/project/ecats/?p=76', 0, 'post', '', 0),
(77, 1, '2020-03-03 03:08:25', '2020-03-03 03:08:25', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-03-03 03:08:25', '2020-03-03 03:08:25', '', 76, 'http://localhost/project/ecats/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-03-03 03:08:31', '2020-03-03 03:08:31', '', 'Hello', '', 'publish', 'open', 'open', '', 'hello-6', '', '', '2020-03-03 03:08:31', '2020-03-03 03:08:31', '', 0, 'http://localhost/project/ecats/?p=78', 0, 'post', '', 0),
(79, 1, '2020-03-03 03:08:31', '2020-03-03 03:08:31', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-03-03 03:08:31', '2020-03-03 03:08:31', '', 78, 'http://localhost/project/ecats/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-03-03 03:08:37', '2020-03-03 03:08:37', '', 'Hello', '', 'publish', 'open', 'open', '', 'hello-7', '', '', '2020-03-03 03:08:37', '2020-03-03 03:08:37', '', 0, 'http://localhost/project/ecats/?p=80', 0, 'post', '', 0),
(81, 1, '2020-03-03 03:08:37', '2020-03-03 03:08:37', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-03-03 03:08:37', '2020-03-03 03:08:37', '', 80, 'http://localhost/project/ecats/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-03-03 03:08:42', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-03 03:08:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=82', 0, 'post', '', 0),
(83, 1, '2020-03-03 03:08:45', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-03 03:08:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=83', 0, 'post', '', 0),
(84, 1, '2020-03-03 03:09:02', '2020-03-03 03:09:02', '', 'Hello', '', 'publish', 'open', 'open', '', 'hello-8', '', '', '2020-03-03 03:09:02', '2020-03-03 03:09:02', '', 0, 'http://localhost/project/ecats/?p=84', 0, 'post', '', 0),
(85, 1, '2020-03-03 03:09:02', '2020-03-03 03:09:02', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2020-03-03 03:09:02', '2020-03-03 03:09:02', '', 84, 'http://localhost/project/ecats/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-03-03 03:22:01', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-03 03:22:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=86', 0, 'forex', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(87, 1, '2020-03-03 03:41:33', '2020-03-03 03:41:33', 'IQ Option là một trong những cái tên sàn giao dịch nổi bật nhất hiện nay. Không giống như các đối thủ cạnh tranh trực tiếp khác, sàn giao dịch này không chỉ cung cấp CFD mà còn có nhiều loại quyền chọn nhị phân khác. Ngoài ra, các nhà đầu tư cũng có thể giao dịch tiền điện tử như Bicoin hay Etheremum tại đây. Vậy thực tế, IQoption.com cung cấp các sản phẩm giao dịch gì và có đảm bảo an toàn cho người chơi hay không? Uy tín hay lừa đảo? Hãy đọc bài đánh giá chi tiết của chúng tôi ngay sau đây.<span id=\"more-1237\"></span>\r\n<div id=\"toc_container\" class=\"toc_white no_bullets\">\r\n<ul class=\"toc_list\">\r\n 	<li><a href=\"https://ecattrade.com/vi/review/iqoption#IQ_Option_hop_phap_va_uy_tin\">IQ Option hợp pháp và uy tín</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/iqoption#Thanh_tich_cua_IQ_Option_trong_nam_2020\">Thành tích của IQ Option trong năm 2020</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/iqoption#Cac_san_pham_giao_dich_tren_IQ_Option\">Các sản phẩm giao dịch trên IQ Option</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/iqoption#Cac_tinh_nang_tren_nen_tang_giao_dich_cua_IQ_Option\">Các tính năng trên nền tảng giao dịch của IQ Option</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/iqoption#Mo_tai_khoan_demo_tai_IQ_Option\">Mở tài khoản demo tại IQ Option</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/iqoption#Ho_tro_va_thanh_toan_cua_IQ_Option\">Hỗ trợ và thanh toán của IQ Option</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/iqoption#Giao_dich_tren_ung_dung_di_dong_IQ_Option\">Giao dịch trên ứng dụng di động IQ Option</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/iqoption#Ket_luan\">Kết luận</a></li>\r\n</ul>\r\n</div>\r\n<h2><span id=\"IQ_Option_hop_phap_va_uy_tin\">IQ Option hợp pháp và uy tín</span></h2>\r\n<img class=\"alignnone wp-image-1238 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/iqoption_hop_phap_va_uy_tin.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_hop_phap_va_uy_tin.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_hop_phap_va_uy_tin-300x158.jpg 300w\" alt=\"IQ Option hợp pháp và uy tín\" width=\"600\" height=\"316\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_hop_phap_va_uy_tin.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_hop_phap_va_uy_tin-300x158.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/iqoption_hop_phap_va_uy_tin.jpg\" data-was-processed=\"true\" />\r\n\r\nKhi tham gia vào thị trường tài chính, trước khi tìm hiểu về việc công ty  tài chính đó cung cấp các dịch vụ và sản phẩm gì thì điều đầu tiên bạn nên xác minh về sự uy tín của công ty đó, liệu công ty đó có phải là một công ty lừa đảo hay không để đảm bảo rằng số tiền tham gia của bạn sẽ được an toàn. Với trường hợp của IQ Option, chúng tôi đã xác minh và xác nhận công ty này là một công ty kinh doanh hợp pháp và đảm bảo uy tín, điều này được thể  hiện qua các yếu tố sau đây:\r\n\r\n<strong><em>Tính hợp pháp :</em></strong> IQ Option có trụ sở công ty đặt tại đảo Síp, một thành viên của khổi liên minh EU. IQ Option chịu sự giám sát của tổ chức CySEC là một tổ chức quản lý tài chính uy tín và là nơi các nhà đầu tư có thể khiếu kiện nếu như có bất cứ vấn đề rắc rối nào nảy sinh với IQ Option.\r\n\r\n<strong><em>Tính an toàn tài chính :</em></strong> IQ Option nhấn mạnh trên website rằng công ty tách biệt tiền của khách hàng và tài sản của công ty hoàn toàn độc lập. Ngay cả trong trường hợp xấu nhất là công ty mất khả năng thanh toán thì số tiền gửi của khách hàng vẫn được đảm bảo an toàn 100%.\r\n\r\nNgoài ra, một điểm cộng lớn đối với IQ Option đó là công ty đã hoạt động được hơn 5 năm và trong suốt thời gian hoạt động, công ty này đã xây dựng được thương hiệu uy tín và thành công trên thị trường, chưa từng có vấn đề rắc rối với các nhà đầu tư. Điều này bạn có thể trực tiếp kiểm chứng bằng cách tìm kiếm thông tin từ các forum hoặc cộng đồng đầu tư tài chính nói chung và quyền chọn nhị phân nói riêng, bạn sẽ gần như không tìm thấy các đánh giá tiêu cực về công ty này.\r\n\r\n<strong><em>Kết luận:</em></strong> IQoption là một sàn giao dịch quyền chọn nhị phân nghiêm túc và uy tín. Bạn có thể an tâm khi giao dịch tại đây.\r\n<h2><span id=\"Thanh_tich_cua_IQ_Option_trong_nam_2020\">Thành tích của IQ Option trong năm 2020</span></h2>\r\n<ul>\r\n 	<li>IQ Option hiện chỉ mất 0.7 giây để xử lý các lệnh giao dịch của khách hàng.</li>\r\n 	<li>Đội ngũ hỗ trợ khách hàng đa ngôn ngữ lên tới 91 thành viên.</li>\r\n 	<li>IQ Option chỉ mất 1 ngày để xử lý các yêu cầu thanh toán của bạn.</li>\r\n 	<li>Hàng tháng, các nhà giao dịch nhận được lợi nhuận $24,969,200 từ sàn giao dịch này.</li>\r\n 	<li>IQ Option thu hút các nhà giao dịch từ hơn 150 quốc gia khác nhau.</li>\r\n 	<li>Từ 2014-2018, khối lượng giao dịch tăng lên 1700% trong khi số lượng giao dịch hàng ngày tăng lên 650%.</li>\r\n 	<li>Số lượng khách hàng iQ Option đã tăng đến 41,463,400 vào năm 2018.</li>\r\n 	<li>Trong năm 2018, các nhà giao dịch đã nhận được lợi nhuận gấp 3.6 lần so với năm 2016.</li>\r\n</ul>\r\n<h2><span id=\"Cac_san_pham_giao_dich_tren_IQ_Option\">Các sản phẩm giao dịch trên IQ Option</span></h2>\r\n<img class=\"alignnone wp-image-1245 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/cac_san_pham_giao_dich_tren_iqoption.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/cac_san_pham_giao_dich_tren_iqoption.jpg 600w, https://ecattrade.com/wp-content/uploads/cac_san_pham_giao_dich_tren_iqoption-300x131.jpg 300w\" alt=\"Các sản phẩm giao dịch trên IQ Option\" width=\"600\" height=\"262\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/cac_san_pham_giao_dich_tren_iqoption.jpg 600w, https://ecattrade.com/wp-content/uploads/cac_san_pham_giao_dich_tren_iqoption-300x131.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/cac_san_pham_giao_dich_tren_iqoption.jpg\" data-was-processed=\"true\" />\r\n\r\nIQ gần đây đã mở rộng các sản phẩm giao dịch và cung cấp khá đa dạng các dịch vụ tài chính. Ngoài giao dịch quyền chọn nhị phân, công ty còn mở rộng sang cả lĩnh vực tiền điện tử. Cụ thể bạn có thể lựa chọn giao dịch trên các sản phẩm như sau:\r\n<ul>\r\n 	<li><strong><em>Cổ phiếu: </em></strong>Bạn có thể lựa chọn giao dịch các loại cổ phiếu danh giá được niêm yết trên NYSE và NASDAQ.</li>\r\n 	<li><strong><em>Forex:</em></strong> Có 92 cặp tiền tệ forex để bạn lựa chọn giao dịch với đòn bẩy lên tới 300 lần.</li>\r\n 	<li><strong><em>Hàng hóa: </em></strong>Bạn có thể lựa chọn giao dịch từ các cặp hàng hóa như vàng, dầu, platinum… để giao dịch với đòn bẩy lên tới 150 lần.</li>\r\n 	<li><strong><em>Quyền chọn: </em></strong>Với 56 loại quyền chọn, bạn có thể dự đoán biến động giá của các tài sản giao dịch phổ biến nhất với các quyền chọn khác nhau bao gồm Nhị phân, kỹ thuật số, FX.</li>\r\n 	<li><strong><em>Tiền điện tử:</em></strong> Bạn có thể giao dịch với 17 loại tiền điện tử phổ biến nhất hiện nay bao gồm Bitcoin, Ethereum, Litecoin…</li>\r\n 	<li><strong><em>ETF: </em></strong>Bạn có thể lựa chọn đa dạng hóa danh mục đầu tư với chứng khoán giao dịch trao đổi theo dõi các chỉ mục, hàng hóa, giỏ tài sản với đòn bẩy lên tới 100 lần.</li>\r\n</ul>\r\n<h2><span id=\"Cac_tinh_nang_tren_nen_tang_giao_dich_cua_IQ_Option\">Các tính năng trên nền tảng giao dịch của IQ Option<strong>\r\n</strong></span></h2>\r\n<img class=\"alignnone wp-image-1252 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_platform.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_platform.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_vn_platform-300x124.jpg 300w\" alt=\"Các tính năng trên nền tảng giao dịch của IQ Option\" width=\"600\" height=\"248\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_platform.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_vn_platform-300x124.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_platform.jpg\" data-was-processed=\"true\" />\r\n\r\nTrong quá trình nghiên cứu IQ Option, chúng tôi không chỉ quan tâm đến chỉ riêng các sản phẩm giao dịch mà còn quan tâm cả nền tảng giao dịch của nó. Giải pháp phần mềm giao dịch do IQ Option tự phát triển rất dễ sử dụng. Tất cả các tính năng quan trọng đều được tích hợp trên giao dịch và được thiết kế rất thân thiện với người chơi nên ngay cả những người chơi mới bắt đầu cũng có thể nhanh chóng làm quen và sử dụng thành thạo chỉ trong một thời gian ngắn.\r\n\r\nMột số tính năng nổi bật của sàn giao dịch này như sau:\r\n<ul>\r\n 	<li><strong><em>Công cụ phân tích:</em></strong> Các nhà giao dịch có thể sử dụng nhiều loại công cụ để phân tích biểu đồ. Ngay cả các chỉ số kỹ thuật quan trọng cũng có thể xem trực tiếp trên biểu đồ giúp người chơi có thể kiểm tra và ra quyết định giao dịch.</li>\r\n 	<li><strong><em>Tin tức:</em></strong> Các tin tức thị trường trong thời gian thực cũng được tích hợp trên nền tảng. Nhà giao dịch có thể cập nhật liên tục và dễ dàng tham khảo các dữ liệu.</li>\r\n 	<li><strong><em>Đào tạo:</em></strong> IQ Option còn có các chương trình đào tạo kiến thức giúp nhà giao dịch có thể tìm hiểu và học hỏi ngay trên chính trang web.</li>\r\n 	<li><strong><em>Tính ổn định:</em></strong> Nền tảng giao dịch của IQoption.com rất mượt mà. Người chơi sẽ không gặp khó khăn trong quá trình sử dụng, điều này đã được chứng minh trong suốt thời gian hoạt động của công ty này.</li>\r\n</ul>\r\n<h2><span id=\"Mo_tai_khoan_demo_tai_IQ_Option\">Mở tài khoản demo tại IQ Option</span></h2>\r\n<img class=\"alignnone wp-image-1259 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_mo_tai_khoan_demo_tai.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_mo_tai_khoan_demo_tai.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_vn_mo_tai_khoan_demo_tai-300x136.jpg 300w\" alt=\"Mở tài khoản demo tại IQ Option\" width=\"600\" height=\"271\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_mo_tai_khoan_demo_tai.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_vn_mo_tai_khoan_demo_tai-300x136.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_mo_tai_khoan_demo_tai.jpg\" data-was-processed=\"true\" />\r\n\r\nNếu bạn vẫn cảm thấy e ngại khi tham gia chơi tại sàn giao dịch này, bạn hoàn toàn có thể trải nghiệm trước hoàn toàn miễn phí bằng cách mở một tài khoản demo tại công ty. Tài khoản demo của IQ Option cho phép bạn truy cập tất cả các tính năng như khi bạn tham gia bằng tài khoản thật. Nó cho phép bạn tham gia và thử nghiệm mà không cần lo ngại đến rủi ro nào, điều này hoàn toàn có lợi đặc biệt là đối với những người chơi mới.\r\n\r\nViệc mở tài khoản demo hoàn toàn đơn giản, chỉ mất vài phút đăng ký thông tin cá nhân bằng cách cung cấp học và tên của bạn, địa chỉ email, mật khẩu để xác nhận đăng ký là bạn có thể sở hữu ngay một tài khoản với $10000 tiền ảo để bạn có thể tha hồ giao dịch trên IQ Option.\r\n\r\nSau khi đã trải nghiệm và tin tưởng vào IQ Option cũng như tin tưởng vào khả năng của mình, bạn có thể nạp tiền để tham gia chơi bằng tài khoản tiền thật.\r\n\r\nVới người chơi tiền thật, bạn có thể đăng ký 2 loại tài khoản là <strong>Tài khoản thường</strong> và <strong>Tài khoản VIP</strong>.\r\n\r\n<strong>Tài khoản thường ( Real Account) </strong>chỉ yêu cần bạn nạp tối thiểu từ $10, và mỗi lần giao dịch chỉ mất từ $1.\r\n\r\n<strong>Tài khoản VIP (VIP Account) </strong>dành cho cách thành viên có số tiền nạp từ $3000, bạn sẽ được nâng cấp tự động lên thành viên VIP. Với tài khoản VIP bạn sẽ có thêm quyền lợi là có người quản lý hỗ trợ cá nhân, ngoài ra bạn được quyền nhận báo cáo phân tích hàng tháng từ các chuyên gia nhằm tăng khả năng giành chiến thắng cho bạn.\r\n\r\nViệc đăng ký tài khoản demo miễn phí là hoàn toàn đơn giản và dễ dàng, và chúng tôi khuyên bạn nên bắt đầu từ tài khoản demo trước. Bạn có thể đăng ký ngay tại đây…\r\n<h2><span id=\"Ho_tro_va_thanh_toan_cua_IQ_Option\">Hỗ trợ và thanh toán của IQ Option</span></h2>\r\n<img class=\"alignnone wp-image-1266 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/iqoption_ho_tro_va_thanh_toan_cua.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_ho_tro_va_thanh_toan_cua.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_ho_tro_va_thanh_toan_cua-300x26.jpg 300w\" alt=\"Hỗ trợ và thanh toán của IQ Option\" width=\"600\" height=\"52\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_ho_tro_va_thanh_toan_cua.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_ho_tro_va_thanh_toan_cua-300x26.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/iqoption_ho_tro_va_thanh_toan_cua.jpg\" data-was-processed=\"true\" />\r\n\r\nIQ cung cấp dịch vụ hỗ trợ khách hàng tại 24/7 và hỗ trợ hotline riêng tại 18 quốc gia. Rất tiếc, đên thời điểm hiện tại, IQ Option chưa có hỗ trợ tiếng Việt, nếu cần hỗ trợ bạn cần sử dụng tiếng Anh và gửi email: support@iqoption.com  hoặc gửi đến Hotline (miễn phí cước gọi quốc tế).\r\n\r\nNgoài ra, bạn cũng có thể theo dõi mạng xã hội của IQ Option trên Facebook, Twitter, Telegram, Youtube, Instagram để tham gia cộng đồng và cập nhật các tin tức mới nhất từ IQ Option. Các đường link này, bạn có thể tìm thấy ở cuối trang chủ của website.\r\n\r\nVề vấn đề chuyển tiền và rút tiền, IQ Option hỗ trợ nhiều hình thức nạp, rút khác nhau và hoàn toàn linh hoạt với người Việt Nam. Bạn có thể dễ dàng nạp tiền bằng thể tín dụng, tiền điện tử, ví điện tử hoặc đơn giản nhất là chuyển khoản qua ngân hàng chỉ với số tiền nạp từ $10 trở lên.\r\n\r\nĐối với những người chơi Việt Nam, IQ Option hỗ trợ các hình thức nạp tiền bao gồm chuyển khoản qua các ngân hàng: Vietcombank, Techcombank, Vietinbank, ACB, BIDV, Sacombank, Dong A Bank, Eximbank; Visa, NetTeller, Skrill, Web Money WMZ, AdvCash, AstroPay Card với thời gian nạp tiền chỉ mất đối đa 5 phút là bạn có thể nhìn thấy tiền trong tài khoản và hoàn toàn không mất phí giao dịch.\r\n\r\nKhi rút tiền, IQ sẽ sử dụng phương thức mà bạn đã dùng khi nạp tiền nên bạn cần cung cấp đầy đủ và chính xác để thuận lợi cho việc rút tiền.\r\n\r\nThời gian rút tiền thông thường mất tối đa là 3 ngày để bạn có thể nhận được tiền.\r\n\r\nLần đầu tiên có thể sẽ mất nhiều thời gian hơn để đảm bảo an toàn cho bạn nhưng từ lần nạp rút thứ hai thì sẽ nhanh hơn.\r\n<h2><span id=\"Giao_dich_tren_ung_dung_di_dong_IQ_Option\"><strong><b>Giao dịch trên ứng dụng di động IQ Option</b></strong></span></h2>\r\n<img class=\"size-full wp-image-9134 alignnone lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/iqoption_vi_mobile_app.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_vi_mobile_app.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_vi_mobile_app-300x116.jpg 300w\" alt=\"Giao dịch trên ứng dụng di động IQ Option\" width=\"600\" height=\"231\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_vi_mobile_app.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_vi_mobile_app-300x116.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/iqoption_vi_mobile_app.jpg\" data-was-processed=\"true\" />\r\n\r\nNhằm hỗ trợ người chơi có thể giao dịch mọi lúc mọi nợi, ngoài giao diện trên các trình duyệt và trên máy tính, IQ Option còn phát triển ứng dụng giao dịch dành cho các thiết bị di động trên hệ điều hành iOS và Android.\r\n\r\nĐể tải ứng dụng, bạn có thể truy cập trang chủ IQ Option, sau đó click vào mục “Dành cho Trader” è “Tải ứng dụng” hoặc bạn có thể truy cập cửa hàng App Store với các thiết bị iOS và cửa hàng Google Play với các thiết bị Android.\r\n<h2><span id=\"Ket_luan\">Kết luận</span></h2>\r\n<img class=\"alignnone wp-image-1273 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_giao_dich.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_giao_dich.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_vn_giao_dich-300x124.jpg 300w\" alt=\"Kết luận IQ Option\" width=\"600\" height=\"247\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_giao_dich.jpg 600w, https://ecattrade.com/wp-content/uploads/iqoption_vn_giao_dich-300x124.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/iqoption_vn_giao_dich.jpg\" data-was-processed=\"true\" />\r\n\r\nTừ các phân tích trên đây, chúng tôi tin tưởng rằng IQ Option là một nơi mà bạn có thể an tâm để đầu tư và giao dịch quyền chọn nhị phân. Tuy nhiên, chúng tôi khuyên bạn nên bắt đầu bằng tài khoản demo trước và chỉ tham gia bằng tiền thật khi nào bạn đã cảm thấy thành thạo và tự tin vào tỷ lệ thắng của mình.\r\n<div><iframe class=\"lazyloaded\" src=\"https://player.vimeo.com/video/350988147?title=0&amp;byline=0&amp;portrait=0\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-rocket-lazyload=\"fitvidscompatible\" data-lazy-src=\"https://player.vimeo.com/video/350988147?title=0&amp;byline=0&amp;portrait=0\" data-was-processed=\"true\" data-mce-fragment=\"1\"></iframe></div>\r\nBạn có thể đăng ký ngay tại đây…\r\n\r\nChúc bạn thành công!', 'IQ OPTION', '', 'publish', 'closed', 'closed', '', 'iq-option', '', '', '2020-03-03 08:38:45', '2020-03-03 08:38:45', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=87', 0, 'forex', '', 0),
(88, 1, '2020-03-03 03:41:02', '2020-03-03 03:41:02', '', 'iqoption_small', '', 'inherit', 'open', 'closed', '', 'iqoption_small', '', '', '2020-03-03 03:41:02', '2020-03-03 03:41:02', '', 87, 'http://localhost/project/ecats/wp-content/uploads/2020/03/iqoption_small.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2020-03-03 03:41:30', '2020-03-03 03:41:30', '', 'iqoption_logo', '', 'inherit', 'open', 'closed', '', 'iqoption_logo', '', '', '2020-03-03 03:41:30', '2020-03-03 03:41:30', '', 87, 'http://localhost/project/ecats/wp-content/uploads/2020/03/iqoption_logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2020-03-03 04:15:38', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-03 04:15:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=90', 0, 'forex', '', 0),
(91, 1, '2020-03-03 04:43:39', '2020-03-03 04:43:39', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Trang đích', 'end_page', 'publish', 'closed', 'closed', '', 'field_5e5de050a8451', '', '', '2020-03-03 04:43:39', '2020-03-03 04:43:39', '', 36, 'http://localhost/project/ecats/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(92, 1, '2020-03-03 06:23:52', '2020-03-03 06:23:52', 'Olymp Trade hiện tại cũng đang là một trong những sàn giao dịch quyền chọn  được yêu thích nhất tại Việt Nam. Website hỗ trợ nhiều ngôn ngữ khác nhau trong đó có tiếng Việt. Hãy cùng các chuyên gia giao dịch hàng đầu của chúng tôi đánh giá chi tiết Olymptrade để xác định xem sàn giao dịch này đáng tin cậy hay lừa đảo và bạn có nên tham gia chơi tại đây hay không\r\n<h2><img class=\"alignnone size-full wp-image-1324 lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn-300x159.jpg 300w\" alt=\"Olymp Trade\" width=\"600\" height=\"318\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn-300x159.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg\" data-was-processed=\"true\" /></h2>\r\n<div id=\"toc_container\" class=\"toc_white no_bullets\">\r\n<ul class=\"toc_list\">\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Oymp_Trade_co_dang_tin_cay_hay_lua_dao\">Oymp Trade có đáng tin cậy hay lừa đảo?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Thanh_tich_cua_Olymp_Trade_trong_nam_2019\">Thành tích của Olymp Trade trong năm 2019</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_tai_khoan_Demo_khong\">Olymp Trade có tài khoản Demo không?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Cac_loai_tai_khoan\">Các loại tài khoản</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_chuong_trinh_dao_tao_mien_phi_cho_cac_nha_giao_dich_hay_khong\">Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Nap_tien_vao_tai_khoan_Olymp_Trade_bang_cach_nao\">Nạp tiền vào tài khoản Olymp Trade bằng cách nào?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Rut_tien_tu_tai_khoan_Olymptrade_nhu_the_nao\">Rút tiền từ tài khoản Olymptrade như thế nào?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong\">Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?</a>\r\n<ul>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Ung_dung_tren_Android\">Ứng dụng trên Android</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Ung_dung_tren_iOS\">Ứng dụng trên iOS</a></li>\r\n</ul>\r\n</li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Vay_Olymp_Trade_co_phai_la_mot_su_lua_chon_tot_danh_cho_cac_nha_giao_dich_Viet_nam_hay_khong\">Vậy Olymp Trade có phải là một sự lựa chọn tốt dành cho các nhà giao dịch Việt nam hay không?</a></li>\r\n</ul>\r\n</div>\r\n<h2><span id=\"Oymp_Trade_co_dang_tin_cay_hay_lua_dao\">Oymp Trade có đáng tin cậy hay lừa đảo?</span></h2>\r\n<img class=\"alignnone wp-image-1289 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao-300x175.jpg 300w\" alt=\"Oymp Trade có đáng tin cậy hay lừa đảo?\" width=\"600\" height=\"350\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao-300x175.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg\" data-was-processed=\"true\" />\r\n\r\nVào năm 2016, Olymp Trade đã được công nhận là thành viên chính thức của tổ chức Fina Com (Ủy Ban Tài Chính). Tương tự như FMRRC, vai trò của FinaCom là hỗ trợ các khách hàng với tư cách là trung gian thứ ba nhằm giải quyết các khiếu nại hoặc tranh chấp phát sinh nếu như các khách hàng không tìm được tiếng nói chung với nhà môi giới của họ.\r\n\r\nTuy nhiên vẫn nhiều người e ngại rằng liệu Finacom có thể đảm bảo tiền của nhà đầu tư tại Olymp Trade an toàn như CySEC có thể làm hay không? Theo như trên website của Olymp Trade có đề cập, họ đang trong quá trình đăng ký thành viên của CySEC và chúng tôi sẽ tiếp tục cập nhật trong thời gian gian tới.\r\n\r\nHiện tại với sự bảo trợ của FMRRC và FinaCom cùng với hơn 4 năm hoạt động trên thị trường giao dịch quyền chọn  không để lại tiếng xấu gì, tốc độ phát triển nhanh và ổn định, có thể khẳng định rằng Olymp Trade là một sàn giao dịch hoàn toàn đáng tin cậy.\r\n<div><iframe class=\"lazyloaded\" src=\"https://player.vimeo.com/video/294569770?color=ff0179&amp;title=0&amp;byline=0&amp;portrait=0\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-rocket-lazyload=\"fitvidscompatible\" data-lazy-src=\"https://player.vimeo.com/video/294569770?color=ff0179&amp;title=0&amp;byline=0&amp;portrait=0\" data-was-processed=\"true\" data-mce-fragment=\"1\"></iframe></div>\r\n<h2><span id=\"Thanh_tich_cua_Olymp_Trade_trong_nam_2019\">Thành tích của Olymp Trade trong năm 2019</span></h2>\r\n<ul>\r\n 	<li>Có 37,990,740 giao dịch đã được thực hiện trong tháng trước.</li>\r\n 	<li>Mức giao dịch trung bình là $4.7 trong tháng trước.</li>\r\n 	<li>Oymp Trade hiện có hơn 25,000 nhà giao dịch hoạt động.</li>\r\n 	<li>Tháng trước, các nhà giao dịch nhận được mức lợi nhuận lên tới $13,681,062 từ sàn giao dịch.</li>\r\n 	<li>Hàng tháng, tỷ lệ thanh toán của sàn giao dịch tăng trung bình 7%.</li>\r\n</ul>\r\n<h2><span id=\"Olymp_Trade_co_tai_khoan_Demo_khong\">Olymp Trade có tài khoản Demo không?</span></h2>\r\n<img class=\"alignnone wp-image-1296 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong-300x250.jpg 300w\" alt=\"Olymp Trade có tài khoản Demo không?\" width=\"600\" height=\"500\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong-300x250.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg\" data-was-processed=\"true\" />\r\n\r\nCâu trả lời là CÓ. Olymp có hai loại tài khoản khác nhau là Tài khoản Demo và Tài Khoản Thực.\r\n<h2><span id=\"Cac_loai_tai_khoan\">Các loại tài khoản</span></h2>\r\n<strong><em>Tài khoản Demo: </em></strong>Là loại tài khoản lý tưởng dành cho những người chơi mới tham gia giao dịch tại Olymp Trade. Việc đăng ký tài khoản rất đơn giản, bạn chỉ cần điền đầy đủ các thông tin đăng ký bao gồm Tên, email, số điện thoại đăng ký và tiền tệ. Sau khi xác nhận qua email, bạn sẽ có ngay tài khoản với $10000 tiền ảo trong tài khoản để bạn giao dịch. Về cơ bản, tài khoản demo hoàn toàn giống với tài khoản thực, chỉ có điều là thay vì giao dịch bằng tiền thật thì bạn giao dịch bằng tiền ảo và sẽ không bị mất tiền khi bạn giao dịch thua. Đây là điều lý tưởng để giúp bạn làm quen dần với nền tảng và khi bạn đã có thể nắm rõ được cách chơi cũng như tỷ lệ thắng cao thì bạn có thể đăng ký tài khoản thực và tham gia bằng tiền thật.\r\n\r\n<strong><em>Tài khoản thực</em></strong>: Để đăng ký tài khoản thực bạn chỉ cần thực hiện nạp tiền vào tài khoản demo của bạn với số tiền từ $10 trở lên. Bạn có thể thực hiện giao dịch bằng số tiền bạn nạp và khi bạn giành chiến thắng, bạn có thể rút tiền.\r\n\r\nTài khoản thực được chia làm 2 loại là <strong>tài khoản thường</strong> và <strong>tài khoản VIP</strong> trong đó tài khoản thường là tài khoản có số tiền nạp từ $10-$2000. Tài khoản VIP là tài khoản có số tiền lớn hơn $2000. Khi trở thành thành viên VIP, bạn sẽ được hưởng thêm 1 số quyền lợi bao gồm sẽ có một người quản lý hỗ trợ và có thể truy cập vào nhiều thông tin hơn trên website, tăng tiền giao dịch và lợi nhuận.\r\n<h2><span id=\"Olymp_Trade_co_chuong_trinh_dao_tao_mien_phi_cho_cac_nha_giao_dich_hay_khong\">Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?</span></h2>\r\n<img class=\"alignnone wp-image-1303 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien-300x139.jpg 300w\" alt=\"Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?\" width=\"600\" height=\"277\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien-300x139.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg\" data-was-processed=\"true\" />\r\n\r\nMột trong những ưu điểm của Olymp Trade đồng thời cũng là lợi thế của các nhà giao dịch tham gia đầu tư tại đây, đó là khi bạn trở thành thành viên của Olymp, bạn có quyền tham gia tất cả các chương trình đào tạo giao dịch của công ty này hoàn toàn miễn phí. Các chương trình này sẽ giúp bạn bổ sung các kiến thức cần thiết cũng như các chia sẻ từ những nhà giao dịch thành công sẽ giúp người chơi, đặc biệt là người chơi mới có thể hỏi hỏi và gia tăng tỷ lệ thắng.\r\n<h2><span id=\"Nap_tien_vao_tai_khoan_Olymp_Trade_bang_cach_nao\">Nạp tiền vào tài khoản Olymp Trade bằng cách nào?</span></h2>\r\n<img class=\"alignnone wp-image-1310 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan-300x199.jpg 300w\" alt=\"Nạp tiền vào tài khoản Olymp Trade bằng cách nào?\" width=\"600\" height=\"398\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan-300x199.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg\" data-was-processed=\"true\" />\r\n\r\nOlymptrade hỗ trợ rất nhiều hình thức nạp tiền khác nhau, hoàn toàn dễ dàng cho những người chơi Việt Nam bằng các hình thức sau :\r\n<ul>\r\n 	<li>Các hình thức nạp tiền qua thẻ tín dụng và ví điện tử như Epayments, Skrill, Neteller.</li>\r\n 	<li>Các ngân hàng trực tuyến bao gồm Vietcombank, Vietinbank, Techcombank, Sacombank, ACB, Đông Á, BIDV, Eximbank…</li>\r\n 	<li>Bitcoin</li>\r\n</ul>\r\nBạn cần lưu ý rằng, Olymp Trade chỉ chấp thuận tiền gửi từ $10 trở lên, nếu như bạn gửi ít hơn thì số tiền sẽ không được ghi có vào tài khoản.\r\n<h2><span id=\"Rut_tien_tu_tai_khoan_Olymptrade_nhu_the_nao\">Rút tiền từ tài khoản Olymptrade như thế nào?</span></h2>\r\nViệc rút tiền từ tài khoản Olymptrade sẽ thực hiện bằng phương thức mà bạn sử dụng để nạp tiền. Ví dụ như bạn nạp tiền bằng hình thức chuyển khoản ngân hàng thì khi rút tiền, thì tiền sẽ chuyển về tài khoản ngân hàng mà bạn dùng để nạp trừ trường hợp bạn gặp rắc rối với ngân hàng hoặc có yêu cầu khác thì bạn cần phải trao đổi lại với đội ngũ hỗ trợ của Olymp Trade.\r\n\r\nĐối với lần rút tiền đầu tiên, Olymp Trade sẽ yêu cầu bạn xác thực thông tin bằng cách cung cấp ảnh chụp chứng minh nhân dân hoặc ảnh chụp thẻ ngân hàng hoặc cả hai. Thời gian rút tiền thường là 5 ngày và Olymp Trade không tính phí rút tiền. Tuy nhiên, các bên trung gian thanh toán như ngân hàng có thể khiến việc nhận tiền của bạn lâu hơn và thông thường họ có tính phí nên số tiền bạn nhận được sẽ ít hơn số tiền mà bạn rút.\r\n<h2><span id=\"Olymp_Trade_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong\">Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?</span></h2>\r\n<img class=\"alignnone wp-image-1317 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757-300x169.jpg 300w\" alt=\"Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?\" width=\"600\" height=\"337\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757-300x169.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg\" data-was-processed=\"true\" />\r\n\r\nCũng giống như các nền tảng giao dịch khác như <a href=\"https://ecattrade.com/vi/review/iqoption\">IQ Option,</a> Olymp Trade cung cấp ứng dụng trên thiết bị di động để giúp các nhà đầu tư có thể giao dịch mọi lúc mọi nơi. Bằng việc cài đặt và sử dụng ứng dụng này, các nhà giao dịch có thể sử dụng đầy đủ các tính năng giao dịch bao gồm biểu đồ, các nguồn lực kỹ thuật và công cụ. Ứng dụng này tương thích với cả thiết bị hoạt động trên nền tảng iOS và Android.\r\n<h3><span id=\"Ung_dung_tren_Android\">Ứng dụng trên Android</span></h3>\r\nỨng dụng có thể hoạt động trên các thiết bị Android chạy hệ điều hành mới nhất. Bạn không cần phải sử dụng một chiếc điện thoại cao cấp mới có thể sử dụng ứng dụng mà chỉ cần đảm bảo thiết bị của bạn có thể xem được các công cụ kỹ thuật khác nhau và các chỉ số cũng như biểu đồ giá.\r\n\r\nĐể sử dụng ứng dụng, các nhà giao dịch cần tải xuống từ Google Play Store. Sau khi app được tải và cài đặt thành công, nhà giao dịch có thể bắt đầu sử dụng để tham gia giao dịch.\r\n<h3><span id=\"Ung_dung_tren_iOS\">Ứng dụng trên iOS</span></h3>\r\nĐể sử dụng ứng dụn trên thiết bị iOS, các nhà giao dịch cần phải tải ứng dụng từ App store. Khi ứng dụng được tải và cài đặt thành công, các nhà đầu tư có thể dễ dàng sử dụng và giao dịch bất cứ lúc nào, bất cứ ở đâu.\r\n\r\nCả ứng dụng trên iOS và Android đều cung cấp cho các nhà giao dịch toàn bộ quyền truy cập các nguồn lực quan trọng và các công cụ giao dịch, giúp người chơi có thể tiết kiệm thời gian và tranh thủ giao dịch được bất cứ lúc nào chỉ cần thiết bị có kết nối internet.\r\n<h2><span id=\"Vay_Olymp_Trade_co_phai_la_mot_su_lua_chon_tot_danh_cho_cac_nha_giao_dich_Viet_nam_hay_khong\">Vậy Olymp Trade có phải là một sự lựa chọn tốt dành cho các nhà giao dịch Việt nam hay không?</span></h2>\r\n<img class=\"alignnone wp-image-1282 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi-300x140.jpg 300w\" alt=\"Olymp Trade là gì?\" width=\"600\" height=\"279\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi-300x140.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg\" data-was-processed=\"true\" />\r\n\r\nQua các phân tích ở trên, chúng tôi có thể khẳng định lại một lần nữa Olymptrade là một trong những sàn giao dịch quyền chọn  mà bạn nên tham gia nếu như bạn muốn bước chân vào lĩnh vực này. Vừa được hỗ trợ kiến thức thông qua các chương trình đào tạo, vừa được sử dụng tài khoản demo hoàn toàn miễn phí và thỏa thích đến bất cứ khi nào chán thì thôi, ngoài ra thương hiệu và độ uy tín của Olymp Trade đã được khẳng định.\r\n\r\nChúng tôi khuyên bạn nên tham gia tại đây…\r\n\r\nChúc bạn thành công!', 'OLYMP TRADE', '', 'publish', 'closed', 'closed', '', 'olymp-trade', '', '', '2020-03-03 08:38:34', '2020-03-03 08:38:34', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=92', 0, 'forex', '', 0),
(93, 1, '2020-03-03 06:23:40', '2020-03-03 06:23:40', '', 'olymptrade_vn_small', '', 'inherit', 'open', 'closed', '', 'olymptrade_vn_small', '', '', '2020-03-03 06:23:40', '2020-03-03 06:23:40', '', 92, 'http://localhost/project/ecats/wp-content/uploads/2020/03/olymptrade_vn_small.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2020-03-03 06:24:32', '2020-03-03 06:24:32', '', 'olymp_trade_logo', '', 'inherit', 'open', 'closed', '', 'olymp_trade_logo', '', '', '2020-03-03 06:24:32', '2020-03-03 06:24:32', '', 92, 'http://localhost/project/ecats/wp-content/uploads/2020/03/olymp_trade_logo.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(95, 1, '2020-03-03 06:33:56', '2020-03-03 06:33:56', 'Olymp Trade hiện tại cũng đang là một trong những sàn giao dịch quyền chọn  được yêu thích nhất tại Việt Nam. Website hỗ trợ nhiều ngôn ngữ khác nhau trong đó có tiếng Việt. Hãy cùng các chuyên gia giao dịch hàng đầu của chúng tôi đánh giá chi tiết Olymptrade để xác định xem sàn giao dịch này đáng tin cậy hay lừa đảo và bạn có nên tham gia chơi tại đây hay không\r\n<h2><img class=\"alignnone size-full wp-image-1324 lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn-300x159.jpg 300w\" alt=\"Olymp Trade\" width=\"600\" height=\"318\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn-300x159.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg\" data-was-processed=\"true\" /></h2>\r\n<div id=\"toc_container\" class=\"toc_white no_bullets\">\r\n<ul class=\"toc_list\">\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Oymp_Trade_co_dang_tin_cay_hay_lua_dao\">Oymp Trade có đáng tin cậy hay lừa đảo?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Thanh_tich_cua_Olymp_Trade_trong_nam_2019\">Thành tích của Olymp Trade trong năm 2019</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_tai_khoan_Demo_khong\">Olymp Trade có tài khoản Demo không?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Cac_loai_tai_khoan\">Các loại tài khoản</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_chuong_trinh_dao_tao_mien_phi_cho_cac_nha_giao_dich_hay_khong\">Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Nap_tien_vao_tai_khoan_Olymp_Trade_bang_cach_nao\">Nạp tiền vào tài khoản Olymp Trade bằng cách nào?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Rut_tien_tu_tai_khoan_Olymptrade_nhu_the_nao\">Rút tiền từ tài khoản Olymptrade như thế nào?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong\">Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?</a>\r\n<ul>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Ung_dung_tren_Android\">Ứng dụng trên Android</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Ung_dung_tren_iOS\">Ứng dụng trên iOS</a></li>\r\n</ul>\r\n</li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Vay_Olymp_Trade_co_phai_la_mot_su_lua_chon_tot_danh_cho_cac_nha_giao_dich_Viet_nam_hay_khong\">Vậy Olymp Trade có phải là một sự lựa chọn tốt dành cho các nhà giao dịch Việt nam hay không?</a></li>\r\n</ul>\r\n</div>\r\n<h2><span id=\"Oymp_Trade_co_dang_tin_cay_hay_lua_dao\">Oymp Trade có đáng tin cậy hay lừa đảo?</span></h2>\r\n<img class=\"alignnone wp-image-1289 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao-300x175.jpg 300w\" alt=\"Oymp Trade có đáng tin cậy hay lừa đảo?\" width=\"600\" height=\"350\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao-300x175.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg\" data-was-processed=\"true\" />\r\n\r\nVào năm 2016, Olymp Trade đã được công nhận là thành viên chính thức của tổ chức Fina Com (Ủy Ban Tài Chính). Tương tự như FMRRC, vai trò của FinaCom là hỗ trợ các khách hàng với tư cách là trung gian thứ ba nhằm giải quyết các khiếu nại hoặc tranh chấp phát sinh nếu như các khách hàng không tìm được tiếng nói chung với nhà môi giới của họ.\r\n\r\nTuy nhiên vẫn nhiều người e ngại rằng liệu Finacom có thể đảm bảo tiền của nhà đầu tư tại Olymp Trade an toàn như CySEC có thể làm hay không? Theo như trên website của Olymp Trade có đề cập, họ đang trong quá trình đăng ký thành viên của CySEC và chúng tôi sẽ tiếp tục cập nhật trong thời gian gian tới.\r\n\r\nHiện tại với sự bảo trợ của FMRRC và FinaCom cùng với hơn 4 năm hoạt động trên thị trường giao dịch quyền chọn  không để lại tiếng xấu gì, tốc độ phát triển nhanh và ổn định, có thể khẳng định rằng Olymp Trade là một sàn giao dịch hoàn toàn đáng tin cậy.\r\n<div><iframe class=\"lazyloaded\" src=\"https://player.vimeo.com/video/294569770?color=ff0179&amp;title=0&amp;byline=0&amp;portrait=0\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-rocket-lazyload=\"fitvidscompatible\" data-lazy-src=\"https://player.vimeo.com/video/294569770?color=ff0179&amp;title=0&amp;byline=0&amp;portrait=0\" data-was-processed=\"true\" data-mce-fragment=\"1\"></iframe></div>\r\n<h2><span id=\"Thanh_tich_cua_Olymp_Trade_trong_nam_2019\">Thành tích của Olymp Trade trong năm 2019</span></h2>\r\n<ul>\r\n 	<li>Có 37,990,740 giao dịch đã được thực hiện trong tháng trước.</li>\r\n 	<li>Mức giao dịch trung bình là $4.7 trong tháng trước.</li>\r\n 	<li>Oymp Trade hiện có hơn 25,000 nhà giao dịch hoạt động.</li>\r\n 	<li>Tháng trước, các nhà giao dịch nhận được mức lợi nhuận lên tới $13,681,062 từ sàn giao dịch.</li>\r\n 	<li>Hàng tháng, tỷ lệ thanh toán của sàn giao dịch tăng trung bình 7%.</li>\r\n</ul>\r\n<h2><span id=\"Olymp_Trade_co_tai_khoan_Demo_khong\">Olymp Trade có tài khoản Demo không?</span></h2>\r\n<img class=\"alignnone wp-image-1296 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong-300x250.jpg 300w\" alt=\"Olymp Trade có tài khoản Demo không?\" width=\"600\" height=\"500\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong-300x250.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg\" data-was-processed=\"true\" />\r\n\r\nCâu trả lời là CÓ. Olymp có hai loại tài khoản khác nhau là Tài khoản Demo và Tài Khoản Thực.\r\n<h2><span id=\"Cac_loai_tai_khoan\">Các loại tài khoản</span></h2>\r\n<strong><em>Tài khoản Demo: </em></strong>Là loại tài khoản lý tưởng dành cho những người chơi mới tham gia giao dịch tại Olymp Trade. Việc đăng ký tài khoản rất đơn giản, bạn chỉ cần điền đầy đủ các thông tin đăng ký bao gồm Tên, email, số điện thoại đăng ký và tiền tệ. Sau khi xác nhận qua email, bạn sẽ có ngay tài khoản với $10000 tiền ảo trong tài khoản để bạn giao dịch. Về cơ bản, tài khoản demo hoàn toàn giống với tài khoản thực, chỉ có điều là thay vì giao dịch bằng tiền thật thì bạn giao dịch bằng tiền ảo và sẽ không bị mất tiền khi bạn giao dịch thua. Đây là điều lý tưởng để giúp bạn làm quen dần với nền tảng và khi bạn đã có thể nắm rõ được cách chơi cũng như tỷ lệ thắng cao thì bạn có thể đăng ký tài khoản thực và tham gia bằng tiền thật.\r\n\r\n<strong><em>Tài khoản thực</em></strong>: Để đăng ký tài khoản thực bạn chỉ cần thực hiện nạp tiền vào tài khoản demo của bạn với số tiền từ $10 trở lên. Bạn có thể thực hiện giao dịch bằng số tiền bạn nạp và khi bạn giành chiến thắng, bạn có thể rút tiền.\r\n\r\nTài khoản thực được chia làm 2 loại là <strong>tài khoản thường</strong> và <strong>tài khoản VIP</strong> trong đó tài khoản thường là tài khoản có số tiền nạp từ $10-$2000. Tài khoản VIP là tài khoản có số tiền lớn hơn $2000. Khi trở thành thành viên VIP, bạn sẽ được hưởng thêm 1 số quyền lợi bao gồm sẽ có một người quản lý hỗ trợ và có thể truy cập vào nhiều thông tin hơn trên website, tăng tiền giao dịch và lợi nhuận.\r\n<h2><span id=\"Olymp_Trade_co_chuong_trinh_dao_tao_mien_phi_cho_cac_nha_giao_dich_hay_khong\">Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?</span></h2>\r\n<img class=\"alignnone wp-image-1303 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien-300x139.jpg 300w\" alt=\"Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?\" width=\"600\" height=\"277\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien-300x139.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg\" data-was-processed=\"true\" />\r\n\r\nMột trong những ưu điểm của Olymp Trade đồng thời cũng là lợi thế của các nhà giao dịch tham gia đầu tư tại đây, đó là khi bạn trở thành thành viên của Olymp, bạn có quyền tham gia tất cả các chương trình đào tạo giao dịch của công ty này hoàn toàn miễn phí. Các chương trình này sẽ giúp bạn bổ sung các kiến thức cần thiết cũng như các chia sẻ từ những nhà giao dịch thành công sẽ giúp người chơi, đặc biệt là người chơi mới có thể hỏi hỏi và gia tăng tỷ lệ thắng.\r\n<h2><span id=\"Nap_tien_vao_tai_khoan_Olymp_Trade_bang_cach_nao\">Nạp tiền vào tài khoản Olymp Trade bằng cách nào?</span></h2>\r\n<img class=\"alignnone wp-image-1310 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan-300x199.jpg 300w\" alt=\"Nạp tiền vào tài khoản Olymp Trade bằng cách nào?\" width=\"600\" height=\"398\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan-300x199.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg\" data-was-processed=\"true\" />\r\n\r\nOlymptrade hỗ trợ rất nhiều hình thức nạp tiền khác nhau, hoàn toàn dễ dàng cho những người chơi Việt Nam bằng các hình thức sau :\r\n<ul>\r\n 	<li>Các hình thức nạp tiền qua thẻ tín dụng và ví điện tử như Epayments, Skrill, Neteller.</li>\r\n 	<li>Các ngân hàng trực tuyến bao gồm Vietcombank, Vietinbank, Techcombank, Sacombank, ACB, Đông Á, BIDV, Eximbank…</li>\r\n 	<li>Bitcoin</li>\r\n</ul>\r\nBạn cần lưu ý rằng, Olymp Trade chỉ chấp thuận tiền gửi từ $10 trở lên, nếu như bạn gửi ít hơn thì số tiền sẽ không được ghi có vào tài khoản.\r\n<h2><span id=\"Rut_tien_tu_tai_khoan_Olymptrade_nhu_the_nao\">Rút tiền từ tài khoản Olymptrade như thế nào?</span></h2>\r\nViệc rút tiền từ tài khoản Olymptrade sẽ thực hiện bằng phương thức mà bạn sử dụng để nạp tiền. Ví dụ như bạn nạp tiền bằng hình thức chuyển khoản ngân hàng thì khi rút tiền, thì tiền sẽ chuyển về tài khoản ngân hàng mà bạn dùng để nạp trừ trường hợp bạn gặp rắc rối với ngân hàng hoặc có yêu cầu khác thì bạn cần phải trao đổi lại với đội ngũ hỗ trợ của Olymp Trade.\r\n\r\nĐối với lần rút tiền đầu tiên, Olymp Trade sẽ yêu cầu bạn xác thực thông tin bằng cách cung cấp ảnh chụp chứng minh nhân dân hoặc ảnh chụp thẻ ngân hàng hoặc cả hai. Thời gian rút tiền thường là 5 ngày và Olymp Trade không tính phí rút tiền. Tuy nhiên, các bên trung gian thanh toán như ngân hàng có thể khiến việc nhận tiền của bạn lâu hơn và thông thường họ có tính phí nên số tiền bạn nhận được sẽ ít hơn số tiền mà bạn rút.\r\n<h2><span id=\"Olymp_Trade_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong\">Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?</span></h2>\r\n<img class=\"alignnone wp-image-1317 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757-300x169.jpg 300w\" alt=\"Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?\" width=\"600\" height=\"337\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757-300x169.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg\" data-was-processed=\"true\" />\r\n\r\nCũng giống như các nền tảng giao dịch khác như <a href=\"https://ecattrade.com/vi/review/iqoption\">IQ Option,</a> Olymp Trade cung cấp ứng dụng trên thiết bị di động để giúp các nhà đầu tư có thể giao dịch mọi lúc mọi nơi. Bằng việc cài đặt và sử dụng ứng dụng này, các nhà giao dịch có thể sử dụng đầy đủ các tính năng giao dịch bao gồm biểu đồ, các nguồn lực kỹ thuật và công cụ. Ứng dụng này tương thích với cả thiết bị hoạt động trên nền tảng iOS và Android.\r\n<h3><span id=\"Ung_dung_tren_Android\">Ứng dụng trên Android</span></h3>\r\nỨng dụng có thể hoạt động trên các thiết bị Android chạy hệ điều hành mới nhất. Bạn không cần phải sử dụng một chiếc điện thoại cao cấp mới có thể sử dụng ứng dụng mà chỉ cần đảm bảo thiết bị của bạn có thể xem được các công cụ kỹ thuật khác nhau và các chỉ số cũng như biểu đồ giá.\r\n\r\nĐể sử dụng ứng dụng, các nhà giao dịch cần tải xuống từ Google Play Store. Sau khi app được tải và cài đặt thành công, nhà giao dịch có thể bắt đầu sử dụng để tham gia giao dịch.\r\n<h3><span id=\"Ung_dung_tren_iOS\">Ứng dụng trên iOS</span></h3>\r\nĐể sử dụng ứng dụn trên thiết bị iOS, các nhà giao dịch cần phải tải ứng dụng từ App store. Khi ứng dụng được tải và cài đặt thành công, các nhà đầu tư có thể dễ dàng sử dụng và giao dịch bất cứ lúc nào, bất cứ ở đâu.\r\n\r\nCả ứng dụng trên iOS và Android đều cung cấp cho các nhà giao dịch toàn bộ quyền truy cập các nguồn lực quan trọng và các công cụ giao dịch, giúp người chơi có thể tiết kiệm thời gian và tranh thủ giao dịch được bất cứ lúc nào chỉ cần thiết bị có kết nối internet.\r\n<h2><span id=\"Vay_Olymp_Trade_co_phai_la_mot_su_lua_chon_tot_danh_cho_cac_nha_giao_dich_Viet_nam_hay_khong\">Vậy Olymp Trade có phải là một sự lựa chọn tốt dành cho các nhà giao dịch Việt nam hay không?</span></h2>\r\n<img class=\"alignnone wp-image-1282 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi-300x140.jpg 300w\" alt=\"Olymp Trade là gì?\" width=\"600\" height=\"279\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi-300x140.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg\" data-was-processed=\"true\" />\r\n\r\nQua các phân tích ở trên, chúng tôi có thể khẳng định lại một lần nữa Olymptrade là một trong những sàn giao dịch quyền chọn  mà bạn nên tham gia nếu như bạn muốn bước chân vào lĩnh vực này. Vừa được hỗ trợ kiến thức thông qua các chương trình đào tạo, vừa được sử dụng tài khoản demo hoàn toàn miễn phí và thỏa thích đến bất cứ khi nào chán thì thôi, ngoài ra thương hiệu và độ uy tín của Olymp Trade đã được khẳng định.\r\n\r\nChúng tôi khuyên bạn nên tham gia tại đây…\r\n\r\nChúc bạn thành công!', 'Olymp Trade', '', 'publish', 'closed', 'closed', '', 'olymp-trade-2', '', '', '2020-03-03 09:04:07', '2020-03-03 09:04:07', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=95', 0, 'forex', '', 0),
(96, 1, '2020-03-03 07:37:56', '2020-03-03 07:37:56', '', 'index', '', 'inherit', 'open', 'closed', '', 'index', '', '', '2020-03-03 07:37:56', '2020-03-03 07:37:56', '', 0, 'http://localhost/project/ecats/wp-content/uploads/2020/03/index.gif', 0, 'attachment', 'image/gif', 0),
(97, 1, '2020-03-03 08:06:29', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-03 08:06:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=97', 0, 'forex', '', 0),
(99, 1, '2020-03-03 08:34:13', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-03 08:34:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=99', 0, 'forex', '', 0),
(100, 1, '2020-03-03 08:58:11', '2020-03-03 08:58:11', 'Olymp Trade hiện tại cũng đang là một trong những sàn giao dịch quyền chọn  được yêu thích nhất tại Việt Nam. Website hỗ trợ nhiều ngôn ngữ khác nhau trong đó có tiếng Việt. Hãy cùng các chuyên gia giao dịch hàng đầu của chúng tôi đánh giá chi tiết Olymptrade để xác định xem sàn giao dịch này đáng tin cậy hay lừa đảo và bạn có nên tham gia chơi tại đây hay không\r\n<h2><img class=\"alignnone size-full wp-image-1324 lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn-300x159.jpg 300w\" alt=\"Olymp Trade\" width=\"600\" height=\"318\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn-300x159.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg\" data-was-processed=\"true\" /></h2>\r\n<div id=\"toc_container\" class=\"toc_white no_bullets\">\r\n<ul class=\"toc_list\">\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Oymp_Trade_co_dang_tin_cay_hay_lua_dao\">Oymp Trade có đáng tin cậy hay lừa đảo?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Thanh_tich_cua_Olymp_Trade_trong_nam_2019\">Thành tích của Olymp Trade trong năm 2019</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_tai_khoan_Demo_khong\">Olymp Trade có tài khoản Demo không?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Cac_loai_tai_khoan\">Các loại tài khoản</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_chuong_trinh_dao_tao_mien_phi_cho_cac_nha_giao_dich_hay_khong\">Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Nap_tien_vao_tai_khoan_Olymp_Trade_bang_cach_nao\">Nạp tiền vào tài khoản Olymp Trade bằng cách nào?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Rut_tien_tu_tai_khoan_Olymptrade_nhu_the_nao\">Rút tiền từ tài khoản Olymptrade như thế nào?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong\">Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?</a>\r\n<ul>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Ung_dung_tren_Android\">Ứng dụng trên Android</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Ung_dung_tren_iOS\">Ứng dụng trên iOS</a></li>\r\n</ul>\r\n</li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Vay_Olymp_Trade_co_phai_la_mot_su_lua_chon_tot_danh_cho_cac_nha_giao_dich_Viet_nam_hay_khong\">Vậy Olymp Trade có phải là một sự lựa chọn tốt dành cho các nhà giao dịch Việt nam hay không?</a></li>\r\n</ul>\r\n</div>\r\n<h2><span id=\"Oymp_Trade_co_dang_tin_cay_hay_lua_dao\">Oymp Trade có đáng tin cậy hay lừa đảo?</span></h2>\r\n<img class=\"alignnone wp-image-1289 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao-300x175.jpg 300w\" alt=\"Oymp Trade có đáng tin cậy hay lừa đảo?\" width=\"600\" height=\"350\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao-300x175.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg\" data-was-processed=\"true\" />\r\n\r\nVào năm 2016, Olymp Trade đã được công nhận là thành viên chính thức của tổ chức Fina Com (Ủy Ban Tài Chính). Tương tự như FMRRC, vai trò của FinaCom là hỗ trợ các khách hàng với tư cách là trung gian thứ ba nhằm giải quyết các khiếu nại hoặc tranh chấp phát sinh nếu như các khách hàng không tìm được tiếng nói chung với nhà môi giới của họ.\r\n\r\nTuy nhiên vẫn nhiều người e ngại rằng liệu Finacom có thể đảm bảo tiền của nhà đầu tư tại Olymp Trade an toàn như CySEC có thể làm hay không? Theo như trên website của Olymp Trade có đề cập, họ đang trong quá trình đăng ký thành viên của CySEC và chúng tôi sẽ tiếp tục cập nhật trong thời gian gian tới.\r\n\r\nHiện tại với sự bảo trợ của FMRRC và FinaCom cùng với hơn 4 năm hoạt động trên thị trường giao dịch quyền chọn  không để lại tiếng xấu gì, tốc độ phát triển nhanh và ổn định, có thể khẳng định rằng Olymp Trade là một sàn giao dịch hoàn toàn đáng tin cậy.\r\n<div><iframe class=\"lazyloaded\" src=\"https://player.vimeo.com/video/294569770?color=ff0179&amp;title=0&amp;byline=0&amp;portrait=0\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-rocket-lazyload=\"fitvidscompatible\" data-lazy-src=\"https://player.vimeo.com/video/294569770?color=ff0179&amp;title=0&amp;byline=0&amp;portrait=0\" data-was-processed=\"true\" data-mce-fragment=\"1\"></iframe></div>\r\n<h2><span id=\"Thanh_tich_cua_Olymp_Trade_trong_nam_2019\">Thành tích của Olymp Trade trong năm 2019</span></h2>\r\n<ul>\r\n 	<li>Có 37,990,740 giao dịch đã được thực hiện trong tháng trước.</li>\r\n 	<li>Mức giao dịch trung bình là $4.7 trong tháng trước.</li>\r\n 	<li>Oymp Trade hiện có hơn 25,000 nhà giao dịch hoạt động.</li>\r\n 	<li>Tháng trước, các nhà giao dịch nhận được mức lợi nhuận lên tới $13,681,062 từ sàn giao dịch.</li>\r\n 	<li>Hàng tháng, tỷ lệ thanh toán của sàn giao dịch tăng trung bình 7%.</li>\r\n</ul>\r\n<h2><span id=\"Olymp_Trade_co_tai_khoan_Demo_khong\">Olymp Trade có tài khoản Demo không?</span></h2>\r\n<img class=\"alignnone wp-image-1296 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong-300x250.jpg 300w\" alt=\"Olymp Trade có tài khoản Demo không?\" width=\"600\" height=\"500\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong-300x250.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg\" data-was-processed=\"true\" />\r\n\r\nCâu trả lời là CÓ. Olymp có hai loại tài khoản khác nhau là Tài khoản Demo và Tài Khoản Thực.\r\n<h2><span id=\"Cac_loai_tai_khoan\">Các loại tài khoản</span></h2>\r\n<strong><em>Tài khoản Demo: </em></strong>Là loại tài khoản lý tưởng dành cho những người chơi mới tham gia giao dịch tại Olymp Trade. Việc đăng ký tài khoản rất đơn giản, bạn chỉ cần điền đầy đủ các thông tin đăng ký bao gồm Tên, email, số điện thoại đăng ký và tiền tệ. Sau khi xác nhận qua email, bạn sẽ có ngay tài khoản với $10000 tiền ảo trong tài khoản để bạn giao dịch. Về cơ bản, tài khoản demo hoàn toàn giống với tài khoản thực, chỉ có điều là thay vì giao dịch bằng tiền thật thì bạn giao dịch bằng tiền ảo và sẽ không bị mất tiền khi bạn giao dịch thua. Đây là điều lý tưởng để giúp bạn làm quen dần với nền tảng và khi bạn đã có thể nắm rõ được cách chơi cũng như tỷ lệ thắng cao thì bạn có thể đăng ký tài khoản thực và tham gia bằng tiền thật.\r\n\r\n<strong><em>Tài khoản thực</em></strong>: Để đăng ký tài khoản thực bạn chỉ cần thực hiện nạp tiền vào tài khoản demo của bạn với số tiền từ $10 trở lên. Bạn có thể thực hiện giao dịch bằng số tiền bạn nạp và khi bạn giành chiến thắng, bạn có thể rút tiền.\r\n\r\nTài khoản thực được chia làm 2 loại là <strong>tài khoản thường</strong> và <strong>tài khoản VIP</strong> trong đó tài khoản thường là tài khoản có số tiền nạp từ $10-$2000. Tài khoản VIP là tài khoản có số tiền lớn hơn $2000. Khi trở thành thành viên VIP, bạn sẽ được hưởng thêm 1 số quyền lợi bao gồm sẽ có một người quản lý hỗ trợ và có thể truy cập vào nhiều thông tin hơn trên website, tăng tiền giao dịch và lợi nhuận.\r\n<h2><span id=\"Olymp_Trade_co_chuong_trinh_dao_tao_mien_phi_cho_cac_nha_giao_dich_hay_khong\">Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?</span></h2>\r\n<img class=\"alignnone wp-image-1303 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien-300x139.jpg 300w\" alt=\"Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?\" width=\"600\" height=\"277\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien-300x139.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg\" data-was-processed=\"true\" />\r\n\r\nMột trong những ưu điểm của Olymp Trade đồng thời cũng là lợi thế của các nhà giao dịch tham gia đầu tư tại đây, đó là khi bạn trở thành thành viên của Olymp, bạn có quyền tham gia tất cả các chương trình đào tạo giao dịch của công ty này hoàn toàn miễn phí. Các chương trình này sẽ giúp bạn bổ sung các kiến thức cần thiết cũng như các chia sẻ từ những nhà giao dịch thành công sẽ giúp người chơi, đặc biệt là người chơi mới có thể hỏi hỏi và gia tăng tỷ lệ thắng.\r\n<h2><span id=\"Nap_tien_vao_tai_khoan_Olymp_Trade_bang_cach_nao\">Nạp tiền vào tài khoản Olymp Trade bằng cách nào?</span></h2>\r\n<img class=\"alignnone wp-image-1310 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan-300x199.jpg 300w\" alt=\"Nạp tiền vào tài khoản Olymp Trade bằng cách nào?\" width=\"600\" height=\"398\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan-300x199.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg\" data-was-processed=\"true\" />\r\n\r\nOlymptrade hỗ trợ rất nhiều hình thức nạp tiền khác nhau, hoàn toàn dễ dàng cho những người chơi Việt Nam bằng các hình thức sau :\r\n<ul>\r\n 	<li>Các hình thức nạp tiền qua thẻ tín dụng và ví điện tử như Epayments, Skrill, Neteller.</li>\r\n 	<li>Các ngân hàng trực tuyến bao gồm Vietcombank, Vietinbank, Techcombank, Sacombank, ACB, Đông Á, BIDV, Eximbank…</li>\r\n 	<li>Bitcoin</li>\r\n</ul>\r\nBạn cần lưu ý rằng, Olymp Trade chỉ chấp thuận tiền gửi từ $10 trở lên, nếu như bạn gửi ít hơn thì số tiền sẽ không được ghi có vào tài khoản.\r\n<h2><span id=\"Rut_tien_tu_tai_khoan_Olymptrade_nhu_the_nao\">Rút tiền từ tài khoản Olymptrade như thế nào?</span></h2>\r\nViệc rút tiền từ tài khoản Olymptrade sẽ thực hiện bằng phương thức mà bạn sử dụng để nạp tiền. Ví dụ như bạn nạp tiền bằng hình thức chuyển khoản ngân hàng thì khi rút tiền, thì tiền sẽ chuyển về tài khoản ngân hàng mà bạn dùng để nạp trừ trường hợp bạn gặp rắc rối với ngân hàng hoặc có yêu cầu khác thì bạn cần phải trao đổi lại với đội ngũ hỗ trợ của Olymp Trade.\r\n\r\nĐối với lần rút tiền đầu tiên, Olymp Trade sẽ yêu cầu bạn xác thực thông tin bằng cách cung cấp ảnh chụp chứng minh nhân dân hoặc ảnh chụp thẻ ngân hàng hoặc cả hai. Thời gian rút tiền thường là 5 ngày và Olymp Trade không tính phí rút tiền. Tuy nhiên, các bên trung gian thanh toán như ngân hàng có thể khiến việc nhận tiền của bạn lâu hơn và thông thường họ có tính phí nên số tiền bạn nhận được sẽ ít hơn số tiền mà bạn rút.\r\n<h2><span id=\"Olymp_Trade_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong\">Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?</span></h2>\r\n<img class=\"alignnone wp-image-1317 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757-300x169.jpg 300w\" alt=\"Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?\" width=\"600\" height=\"337\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757-300x169.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg\" data-was-processed=\"true\" />\r\n\r\nCũng giống như các nền tảng giao dịch khác như <a href=\"https://ecattrade.com/vi/review/iqoption\">IQ Option,</a> Olymp Trade cung cấp ứng dụng trên thiết bị di động để giúp các nhà đầu tư có thể giao dịch mọi lúc mọi nơi. Bằng việc cài đặt và sử dụng ứng dụng này, các nhà giao dịch có thể sử dụng đầy đủ các tính năng giao dịch bao gồm biểu đồ, các nguồn lực kỹ thuật và công cụ. Ứng dụng này tương thích với cả thiết bị hoạt động trên nền tảng iOS và Android.\r\n<h3><span id=\"Ung_dung_tren_Android\">Ứng dụng trên Android</span></h3>\r\nỨng dụng có thể hoạt động trên các thiết bị Android chạy hệ điều hành mới nhất. Bạn không cần phải sử dụng một chiếc điện thoại cao cấp mới có thể sử dụng ứng dụng mà chỉ cần đảm bảo thiết bị của bạn có thể xem được các công cụ kỹ thuật khác nhau và các chỉ số cũng như biểu đồ giá.\r\n\r\nĐể sử dụng ứng dụng, các nhà giao dịch cần tải xuống từ Google Play Store. Sau khi app được tải và cài đặt thành công, nhà giao dịch có thể bắt đầu sử dụng để tham gia giao dịch.\r\n<h3><span id=\"Ung_dung_tren_iOS\">Ứng dụng trên iOS</span></h3>\r\nĐể sử dụng ứng dụn trên thiết bị iOS, các nhà giao dịch cần phải tải ứng dụng từ App store. Khi ứng dụng được tải và cài đặt thành công, các nhà đầu tư có thể dễ dàng sử dụng và giao dịch bất cứ lúc nào, bất cứ ở đâu.\r\n\r\nCả ứng dụng trên iOS và Android đều cung cấp cho các nhà giao dịch toàn bộ quyền truy cập các nguồn lực quan trọng và các công cụ giao dịch, giúp người chơi có thể tiết kiệm thời gian và tranh thủ giao dịch được bất cứ lúc nào chỉ cần thiết bị có kết nối internet.\r\n<h2><span id=\"Vay_Olymp_Trade_co_phai_la_mot_su_lua_chon_tot_danh_cho_cac_nha_giao_dich_Viet_nam_hay_khong\">Vậy Olymp Trade có phải là một sự lựa chọn tốt dành cho các nhà giao dịch Việt nam hay không?</span></h2>\r\n<img class=\"alignnone wp-image-1282 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi-300x140.jpg 300w\" alt=\"Olymp Trade là gì?\" width=\"600\" height=\"279\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi-300x140.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg\" data-was-processed=\"true\" />\r\n\r\nQua các phân tích ở trên, chúng tôi có thể khẳng định lại một lần nữa Olymptrade là một trong những sàn giao dịch quyền chọn  mà bạn nên tham gia nếu như bạn muốn bước chân vào lĩnh vực này. Vừa được hỗ trợ kiến thức thông qua các chương trình đào tạo, vừa được sử dụng tài khoản demo hoàn toàn miễn phí và thỏa thích đến bất cứ khi nào chán thì thôi, ngoài ra thương hiệu và độ uy tín của Olymp Trade đã được khẳng định.\r\n\r\nChúng tôi khuyên bạn nên tham gia tại đây…\r\n\r\nChúc bạn thành công!', 'OLYMP TRADE', '', 'publish', 'closed', 'closed', '', 'olymp-trade-3', '', '', '2020-03-03 09:03:50', '2020-03-03 09:03:50', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=100', 0, 'forex', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(101, 1, '2020-03-03 09:00:30', '2020-03-03 09:00:30', '&nbsp;\r\n\r\nOlymp Trade hiện tại cũng đang là một trong những sàn giao dịch quyền chọn  được yêu thích nhất tại Việt Nam. Website hỗ trợ nhiều ngôn ngữ khác nhau trong đó có tiếng Việt. Hãy cùng các chuyên gia giao dịch hàng đầu của chúng tôi đánh giá chi tiết Olymptrade để xác định xem sàn giao dịch này đáng tin cậy hay lừa đảo và bạn có nên tham gia chơi tại đây hay không\r\n<h2><img class=\"alignnone size-full wp-image-1324 lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn-300x159.jpg 300w\" alt=\"Olymp Trade\" width=\"600\" height=\"318\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn-300x159.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg\" data-was-processed=\"true\" /></h2>\r\n<div id=\"toc_container\" class=\"toc_white no_bullets\">\r\n<ul class=\"toc_list\">\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Oymp_Trade_co_dang_tin_cay_hay_lua_dao\">Oymp Trade có đáng tin cậy hay lừa đảo?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Thanh_tich_cua_Olymp_Trade_trong_nam_2019\">Thành tích của Olymp Trade trong năm 2019</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_tai_khoan_Demo_khong\">Olymp Trade có tài khoản Demo không?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Cac_loai_tai_khoan\">Các loại tài khoản</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_chuong_trinh_dao_tao_mien_phi_cho_cac_nha_giao_dich_hay_khong\">Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Nap_tien_vao_tai_khoan_Olymp_Trade_bang_cach_nao\">Nạp tiền vào tài khoản Olymp Trade bằng cách nào?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Rut_tien_tu_tai_khoan_Olymptrade_nhu_the_nao\">Rút tiền từ tài khoản Olymptrade như thế nào?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong\">Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?</a>\r\n<ul>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Ung_dung_tren_Android\">Ứng dụng trên Android</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Ung_dung_tren_iOS\">Ứng dụng trên iOS</a></li>\r\n</ul>\r\n</li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Vay_Olymp_Trade_co_phai_la_mot_su_lua_chon_tot_danh_cho_cac_nha_giao_dich_Viet_nam_hay_khong\">Vậy Olymp Trade có phải là một sự lựa chọn tốt dành cho các nhà giao dịch Việt nam hay không?</a></li>\r\n</ul>\r\n</div>\r\n<h2><span id=\"Oymp_Trade_co_dang_tin_cay_hay_lua_dao\">Oymp Trade có đáng tin cậy hay lừa đảo?</span></h2>\r\n<img class=\"alignnone wp-image-1289 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao-300x175.jpg 300w\" alt=\"Oymp Trade có đáng tin cậy hay lừa đảo?\" width=\"600\" height=\"350\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao-300x175.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg\" data-was-processed=\"true\" />\r\n\r\nVào năm 2016, Olymp Trade đã được công nhận là thành viên chính thức của tổ chức Fina Com (Ủy Ban Tài Chính). Tương tự như FMRRC, vai trò của FinaCom là hỗ trợ các khách hàng với tư cách là trung gian thứ ba nhằm giải quyết các khiếu nại hoặc tranh chấp phát sinh nếu như các khách hàng không tìm được tiếng nói chung với nhà môi giới của họ.\r\n\r\nTuy nhiên vẫn nhiều người e ngại rằng liệu Finacom có thể đảm bảo tiền của nhà đầu tư tại Olymp Trade an toàn như CySEC có thể làm hay không? Theo như trên website của Olymp Trade có đề cập, họ đang trong quá trình đăng ký thành viên của CySEC và chúng tôi sẽ tiếp tục cập nhật trong thời gian gian tới.\r\n\r\nHiện tại với sự bảo trợ của FMRRC và FinaCom cùng với hơn 4 năm hoạt động trên thị trường giao dịch quyền chọn  không để lại tiếng xấu gì, tốc độ phát triển nhanh và ổn định, có thể khẳng định rằng Olymp Trade là một sàn giao dịch hoàn toàn đáng tin cậy.\r\n<div><iframe class=\"lazyloaded\" src=\"https://player.vimeo.com/video/294569770?color=ff0179&amp;title=0&amp;byline=0&amp;portrait=0\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-rocket-lazyload=\"fitvidscompatible\" data-lazy-src=\"https://player.vimeo.com/video/294569770?color=ff0179&amp;title=0&amp;byline=0&amp;portrait=0\" data-was-processed=\"true\" data-mce-fragment=\"1\"></iframe></div>\r\n<h2><span id=\"Thanh_tich_cua_Olymp_Trade_trong_nam_2019\">Thành tích của Olymp Trade trong năm 2019</span></h2>\r\n<ul>\r\n 	<li>Có 37,990,740 giao dịch đã được thực hiện trong tháng trước.</li>\r\n 	<li>Mức giao dịch trung bình là $4.7 trong tháng trước.</li>\r\n 	<li>Oymp Trade hiện có hơn 25,000 nhà giao dịch hoạt động.</li>\r\n 	<li>Tháng trước, các nhà giao dịch nhận được mức lợi nhuận lên tới $13,681,062 từ sàn giao dịch.</li>\r\n 	<li>Hàng tháng, tỷ lệ thanh toán của sàn giao dịch tăng trung bình 7%.</li>\r\n</ul>\r\n<h2><span id=\"Olymp_Trade_co_tai_khoan_Demo_khong\">Olymp Trade có tài khoản Demo không?</span></h2>\r\n<img class=\"alignnone wp-image-1296 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong-300x250.jpg 300w\" alt=\"Olymp Trade có tài khoản Demo không?\" width=\"600\" height=\"500\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong-300x250.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg\" data-was-processed=\"true\" />\r\n\r\nCâu trả lời là CÓ. Olymp có hai loại tài khoản khác nhau là Tài khoản Demo và Tài Khoản Thực.\r\n<h2><span id=\"Cac_loai_tai_khoan\">Các loại tài khoản</span></h2>\r\n<strong><em>Tài khoản Demo: </em></strong>Là loại tài khoản lý tưởng dành cho những người chơi mới tham gia giao dịch tại Olymp Trade. Việc đăng ký tài khoản rất đơn giản, bạn chỉ cần điền đầy đủ các thông tin đăng ký bao gồm Tên, email, số điện thoại đăng ký và tiền tệ. Sau khi xác nhận qua email, bạn sẽ có ngay tài khoản với $10000 tiền ảo trong tài khoản để bạn giao dịch. Về cơ bản, tài khoản demo hoàn toàn giống với tài khoản thực, chỉ có điều là thay vì giao dịch bằng tiền thật thì bạn giao dịch bằng tiền ảo và sẽ không bị mất tiền khi bạn giao dịch thua. Đây là điều lý tưởng để giúp bạn làm quen dần với nền tảng và khi bạn đã có thể nắm rõ được cách chơi cũng như tỷ lệ thắng cao thì bạn có thể đăng ký tài khoản thực và tham gia bằng tiền thật.\r\n\r\n<strong><em>Tài khoản thực</em></strong>: Để đăng ký tài khoản thực bạn chỉ cần thực hiện nạp tiền vào tài khoản demo của bạn với số tiền từ $10 trở lên. Bạn có thể thực hiện giao dịch bằng số tiền bạn nạp và khi bạn giành chiến thắng, bạn có thể rút tiền.\r\n\r\nTài khoản thực được chia làm 2 loại là <strong>tài khoản thường</strong> và <strong>tài khoản VIP</strong> trong đó tài khoản thường là tài khoản có số tiền nạp từ $10-$2000. Tài khoản VIP là tài khoản có số tiền lớn hơn $2000. Khi trở thành thành viên VIP, bạn sẽ được hưởng thêm 1 số quyền lợi bao gồm sẽ có một người quản lý hỗ trợ và có thể truy cập vào nhiều thông tin hơn trên website, tăng tiền giao dịch và lợi nhuận.\r\n<h2><span id=\"Olymp_Trade_co_chuong_trinh_dao_tao_mien_phi_cho_cac_nha_giao_dich_hay_khong\">Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?</span></h2>\r\n<img class=\"alignnone wp-image-1303 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien-300x139.jpg 300w\" alt=\"Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?\" width=\"600\" height=\"277\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien-300x139.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg\" data-was-processed=\"true\" />\r\n\r\nMột trong những ưu điểm của Olymp Trade đồng thời cũng là lợi thế của các nhà giao dịch tham gia đầu tư tại đây, đó là khi bạn trở thành thành viên của Olymp, bạn có quyền tham gia tất cả các chương trình đào tạo giao dịch của công ty này hoàn toàn miễn phí. Các chương trình này sẽ giúp bạn bổ sung các kiến thức cần thiết cũng như các chia sẻ từ những nhà giao dịch thành công sẽ giúp người chơi, đặc biệt là người chơi mới có thể hỏi hỏi và gia tăng tỷ lệ thắng.\r\n<h2><span id=\"Nap_tien_vao_tai_khoan_Olymp_Trade_bang_cach_nao\">Nạp tiền vào tài khoản Olymp Trade bằng cách nào?</span></h2>\r\n<img class=\"alignnone wp-image-1310 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan-300x199.jpg 300w\" alt=\"Nạp tiền vào tài khoản Olymp Trade bằng cách nào?\" width=\"600\" height=\"398\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan-300x199.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg\" data-was-processed=\"true\" />\r\n\r\nOlymptrade hỗ trợ rất nhiều hình thức nạp tiền khác nhau, hoàn toàn dễ dàng cho những người chơi Việt Nam bằng các hình thức sau :\r\n<ul>\r\n 	<li>Các hình thức nạp tiền qua thẻ tín dụng và ví điện tử như Epayments, Skrill, Neteller.</li>\r\n 	<li>Các ngân hàng trực tuyến bao gồm Vietcombank, Vietinbank, Techcombank, Sacombank, ACB, Đông Á, BIDV, Eximbank…</li>\r\n 	<li>Bitcoin</li>\r\n</ul>\r\nBạn cần lưu ý rằng, Olymp Trade chỉ chấp thuận tiền gửi từ $10 trở lên, nếu như bạn gửi ít hơn thì số tiền sẽ không được ghi có vào tài khoản.\r\n<h2><span id=\"Rut_tien_tu_tai_khoan_Olymptrade_nhu_the_nao\">Rút tiền từ tài khoản Olymptrade như thế nào?</span></h2>\r\nViệc rút tiền từ tài khoản Olymptrade sẽ thực hiện bằng phương thức mà bạn sử dụng để nạp tiền. Ví dụ như bạn nạp tiền bằng hình thức chuyển khoản ngân hàng thì khi rút tiền, thì tiền sẽ chuyển về tài khoản ngân hàng mà bạn dùng để nạp trừ trường hợp bạn gặp rắc rối với ngân hàng hoặc có yêu cầu khác thì bạn cần phải trao đổi lại với đội ngũ hỗ trợ của Olymp Trade.\r\n\r\nĐối với lần rút tiền đầu tiên, Olymp Trade sẽ yêu cầu bạn xác thực thông tin bằng cách cung cấp ảnh chụp chứng minh nhân dân hoặc ảnh chụp thẻ ngân hàng hoặc cả hai. Thời gian rút tiền thường là 5 ngày và Olymp Trade không tính phí rút tiền. Tuy nhiên, các bên trung gian thanh toán như ngân hàng có thể khiến việc nhận tiền của bạn lâu hơn và thông thường họ có tính phí nên số tiền bạn nhận được sẽ ít hơn số tiền mà bạn rút.\r\n<h2><span id=\"Olymp_Trade_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong\">Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?</span></h2>\r\n<img class=\"alignnone wp-image-1317 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757-300x169.jpg 300w\" alt=\"Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?\" width=\"600\" height=\"337\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757-300x169.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg\" data-was-processed=\"true\" />\r\n\r\nCũng giống như các nền tảng giao dịch khác như <a href=\"https://ecattrade.com/vi/review/iqoption\">IQ Option,</a> Olymp Trade cung cấp ứng dụng trên thiết bị di động để giúp các nhà đầu tư có thể giao dịch mọi lúc mọi nơi. Bằng việc cài đặt và sử dụng ứng dụng này, các nhà giao dịch có thể sử dụng đầy đủ các tính năng giao dịch bao gồm biểu đồ, các nguồn lực kỹ thuật và công cụ. Ứng dụng này tương thích với cả thiết bị hoạt động trên nền tảng iOS và Android.\r\n<h3><span id=\"Ung_dung_tren_Android\">Ứng dụng trên Android</span></h3>\r\nỨng dụng có thể hoạt động trên các thiết bị Android chạy hệ điều hành mới nhất. Bạn không cần phải sử dụng một chiếc điện thoại cao cấp mới có thể sử dụng ứng dụng mà chỉ cần đảm bảo thiết bị của bạn có thể xem được các công cụ kỹ thuật khác nhau và các chỉ số cũng như biểu đồ giá.\r\n\r\nĐể sử dụng ứng dụng, các nhà giao dịch cần tải xuống từ Google Play Store. Sau khi app được tải và cài đặt thành công, nhà giao dịch có thể bắt đầu sử dụng để tham gia giao dịch.\r\n<h3><span id=\"Ung_dung_tren_iOS\">Ứng dụng trên iOS</span></h3>\r\nĐể sử dụng ứng dụn trên thiết bị iOS, các nhà giao dịch cần phải tải ứng dụng từ App store. Khi ứng dụng được tải và cài đặt thành công, các nhà đầu tư có thể dễ dàng sử dụng và giao dịch bất cứ lúc nào, bất cứ ở đâu.\r\n\r\nCả ứng dụng trên iOS và Android đều cung cấp cho các nhà giao dịch toàn bộ quyền truy cập các nguồn lực quan trọng và các công cụ giao dịch, giúp người chơi có thể tiết kiệm thời gian và tranh thủ giao dịch được bất cứ lúc nào chỉ cần thiết bị có kết nối internet.\r\n<h2><span id=\"Vay_Olymp_Trade_co_phai_la_mot_su_lua_chon_tot_danh_cho_cac_nha_giao_dich_Viet_nam_hay_khong\">Vậy Olymp Trade có phải là một sự lựa chọn tốt dành cho các nhà giao dịch Việt nam hay không?</span></h2>\r\n<img class=\"alignnone wp-image-1282 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi-300x140.jpg 300w\" alt=\"Olymp Trade là gì?\" width=\"600\" height=\"279\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi-300x140.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg\" data-was-processed=\"true\" />\r\n\r\nQua các phân tích ở trên, chúng tôi có thể khẳng định lại một lần nữa Olymptrade là một trong những sàn giao dịch quyền chọn  mà bạn nên tham gia nếu như bạn muốn bước chân vào lĩnh vực này. Vừa được hỗ trợ kiến thức thông qua các chương trình đào tạo, vừa được sử dụng tài khoản demo hoàn toàn miễn phí và thỏa thích đến bất cứ khi nào chán thì thôi, ngoài ra thương hiệu và độ uy tín của Olymp Trade đã được khẳng định.\r\n\r\nChúng tôi khuyên bạn nên tham gia tại đây…\r\n\r\nChúc bạn thành công!', 'OLYMP TRADE', '', 'publish', 'closed', 'closed', '', 'olymp-trade-4', '', '', '2020-03-03 09:02:50', '2020-03-03 09:02:50', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=101', 0, 'forex', '', 0),
(102, 1, '2020-03-03 09:05:06', '2020-03-03 09:05:06', '', 'AsB', '', 'publish', 'closed', 'closed', '', 'asb', '', '', '2020-03-03 09:05:06', '2020-03-03 09:05:06', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=102', 0, 'forex', '', 0),
(103, 1, '2020-03-04 01:15:32', '2020-03-04 01:15:32', '', 'forexfanclub logo', '', 'inherit', 'open', 'closed', '', 'forexfanclub-logo', '', '', '2020-03-04 01:15:32', '2020-03-04 01:15:32', '', 0, 'http://localhost/project/ecats/wp-content/uploads/2020/03/forexfanclub-logo.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'Menu', 'menu', 0),
(4, 'English', 'en', 0),
(5, 'English', 'pll_en', 0),
(6, 'pll_5e5d303da0f79', 'pll_5e5d303da0f79', 0),
(7, 'Tiếng Việt', 'vi', 1),
(8, 'Tiếng Việt', 'pll_vi', 0),
(9, 'Uncategorized', 'uncategorized-vi', 0),
(11, 'Português', 'pt', 2),
(12, 'Português', 'pll_pt', 0),
(13, 'Uncategorized', 'uncategorized-pt', 0),
(15, 'Español', 'es', 3),
(16, 'Español', 'pll_es', 0),
(17, 'Uncategorized', 'uncategorized-es', 0),
(19, 'ไทย', 'th', 4),
(20, 'ไทย', 'pll_th', 0),
(21, 'Uncategorized', 'uncategorized-th', 0),
(27, 'Bahasa Indonesia', 'id', 5),
(28, 'Bahasa Indonesia', 'pll_id', 0),
(29, 'Uncategorized', 'uncategorized-id', 0),
(31, 'Bahasa Melayu', 'ms', 6),
(32, 'Bahasa Melayu', 'pll_ms', 0),
(33, 'Uncategorized', 'uncategorized-ms', 0),
(35, '한국어', 'ko', 7),
(36, '한국어', 'pll_ko', 0),
(37, 'Uncategorized', 'uncategorized-ko', 0),
(39, 'pll_5e5dc9b8a6927', 'pll_5e5dc9b8a6927', 0),
(41, 'pll_5e5dfa542cf65', 'pll_5e5dfa542cf65', 0),
(42, 'Sàn Forex', 'san-forex', 0),
(43, 'Sàn Binary', 'san-binary', 0),
(44, 'Sàn Forex', 'san-forex', 0),
(45, 'pll_5e5e17689f788', 'pll_5e5e17689f788', 0),
(46, 'Sàn Binary', 'san-binary', 0),
(47, 'pll_5e5e1779a2f61', 'pll_5e5e1779a2f61', 0),
(48, 'Forex', 'forex', 0),
(50, 'Forex', 'forex-pt', 0),
(52, 'Forex', 'forex-es', 0),
(54, 'Forex', 'forex-th', 0),
(56, 'Forex', 'forex-id', 0),
(58, 'Forex', 'forex-ms', 0),
(60, 'Forex', 'forex-ko', 0),
(62, 'Binary', 'binary', 0),
(64, 'Binary', 'binary-pt', 0),
(66, 'Binary', 'binary-es', 0),
(68, 'Binary', 'binary-th', 0),
(70, 'Binary', 'binary-id', 0),
(72, 'Binary', 'binary-ms', 0),
(74, 'Binary', 'binary-ko', 0),
(76, 'pll_5e5e1dc23f536', 'pll_5e5e1dc23f536', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(2, 4, 0),
(3, 4, 0),
(5, 2, 0),
(9, 6, 0),
(9, 8, 0),
(13, 6, 0),
(13, 12, 0),
(17, 6, 0),
(17, 16, 0),
(21, 6, 0),
(21, 20, 0),
(29, 6, 0),
(29, 28, 0),
(33, 6, 0),
(33, 32, 0),
(37, 6, 0),
(37, 36, 0),
(44, 5, 0),
(44, 45, 0),
(46, 5, 0),
(46, 47, 0),
(48, 8, 0),
(48, 45, 0),
(50, 12, 0),
(50, 45, 0),
(52, 16, 0),
(52, 45, 0),
(54, 20, 0),
(54, 45, 0),
(56, 28, 0),
(56, 45, 0),
(58, 32, 0),
(58, 45, 0),
(60, 36, 0),
(60, 45, 0),
(62, 4, 0),
(62, 8, 0),
(62, 47, 0),
(63, 2, 0),
(64, 12, 0),
(64, 47, 0),
(66, 16, 0),
(66, 47, 0),
(67, 1, 0),
(67, 4, 0),
(68, 1, 0),
(68, 4, 0),
(68, 20, 0),
(68, 39, 0),
(68, 47, 0),
(70, 1, 0),
(70, 28, 0),
(70, 47, 0),
(72, 7, 0),
(72, 9, 0),
(72, 32, 0),
(72, 39, 0),
(72, 47, 0),
(74, 11, 0),
(74, 13, 0),
(74, 36, 0),
(74, 39, 0),
(74, 47, 0),
(76, 15, 0),
(76, 17, 0),
(76, 39, 0),
(78, 19, 0),
(78, 21, 0),
(78, 39, 0),
(80, 31, 0),
(80, 33, 0),
(80, 39, 0),
(82, 27, 0),
(82, 29, 0),
(83, 35, 0),
(83, 37, 0),
(84, 35, 0),
(84, 37, 0),
(84, 39, 0),
(86, 4, 0),
(87, 4, 0),
(87, 44, 0),
(87, 76, 0),
(88, 4, 0),
(89, 4, 0),
(90, 4, 0),
(92, 4, 0),
(92, 41, 0),
(92, 46, 0),
(93, 4, 0),
(94, 4, 0),
(95, 7, 0),
(95, 41, 0),
(95, 62, 0),
(96, 4, 0),
(97, 4, 0),
(98, 43, 0),
(99, 4, 0),
(100, 35, 0),
(100, 41, 0),
(100, 74, 0),
(101, 11, 0),
(101, 41, 0),
(101, 64, 0),
(102, 35, 0),
(102, 60, 0),
(102, 76, 0),
(103, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 2),
(4, 4, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_GB\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"gb\";}', 0, 10),
(5, 5, 'term_language', '', 0, 3),
(6, 6, 'term_translations', 'a:8:{s:2:\"en\";i:1;s:2:\"vi\";i:9;s:2:\"pt\";i:13;s:2:\"es\";i:17;s:2:\"th\";i:21;s:2:\"id\";i:29;s:2:\"ms\";i:33;s:2:\"ko\";i:37;}', 0, 9),
(7, 7, 'language', 'a:3:{s:6:\"locale\";s:2:\"vi\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"vn\";}', 0, 2),
(8, 8, 'term_language', '', 0, 3),
(9, 9, 'category', '', 0, 1),
(11, 11, 'language', 'a:3:{s:6:\"locale\";s:5:\"pt_PT\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"pt\";}', 0, 2),
(12, 12, 'term_language', '', 0, 3),
(13, 13, 'category', '', 0, 1),
(15, 15, 'language', 'a:3:{s:6:\"locale\";s:5:\"es_ES\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"es\";}', 0, 1),
(16, 16, 'term_language', '', 0, 3),
(17, 17, 'category', '', 0, 1),
(19, 19, 'language', 'a:3:{s:6:\"locale\";s:2:\"th\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"th\";}', 0, 1),
(20, 20, 'term_language', '', 0, 3),
(21, 21, 'category', '', 0, 1),
(27, 27, 'language', 'a:3:{s:6:\"locale\";s:5:\"id_ID\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"id\";}', 0, 0),
(28, 28, 'term_language', '', 0, 3),
(29, 29, 'category', '', 0, 0),
(31, 31, 'language', 'a:3:{s:6:\"locale\";s:5:\"ms_MY\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"my\";}', 0, 1),
(32, 32, 'term_language', '', 0, 3),
(33, 33, 'category', '', 0, 1),
(35, 35, 'language', 'a:3:{s:6:\"locale\";s:5:\"ko_KR\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"kr\";}', 0, 3),
(36, 36, 'term_language', '', 0, 3),
(37, 37, 'category', '', 0, 1),
(39, 39, 'post_translations', 'a:7:{s:2:\"en\";i:68;s:2:\"vi\";i:72;s:2:\"pt\";i:74;s:2:\"es\";i:76;s:2:\"th\";i:78;s:2:\"ms\";i:80;s:2:\"ko\";i:84;}', 0, 8),
(41, 41, 'post_translations', 'a:4:{s:2:\"vi\";i:95;s:2:\"en\";i:92;s:2:\"ko\";i:100;s:2:\"pt\";i:101;}', 0, 4),
(42, 42, 'forex_category', '', 0, 0),
(43, 43, 'forex_category', '', 0, 0),
(44, 44, 'category', '', 0, 1),
(45, 45, 'term_translations', 'a:8:{s:2:\"en\";i:44;s:2:\"vi\";i:48;s:2:\"pt\";i:50;s:2:\"es\";i:52;s:2:\"th\";i:54;s:2:\"id\";i:56;s:2:\"ms\";i:58;s:2:\"ko\";i:60;}', 0, 8),
(46, 46, 'category', '', 0, 1),
(47, 47, 'term_translations', 'a:8:{s:2:\"en\";i:46;s:2:\"vi\";i:62;s:2:\"pt\";i:64;s:2:\"es\";i:66;s:2:\"th\";i:68;s:2:\"id\";i:70;s:2:\"ms\";i:72;s:2:\"ko\";i:74;}', 0, 8),
(48, 48, 'category', '', 0, 0),
(50, 50, 'category', '', 0, 0),
(52, 52, 'category', '', 0, 0),
(54, 54, 'category', '', 0, 0),
(56, 56, 'category', '', 0, 0),
(58, 58, 'category', '', 0, 0),
(60, 60, 'category', '', 0, 1),
(62, 62, 'category', '', 0, 1),
(64, 64, 'category', '', 0, 1),
(66, 66, 'category', '', 0, 0),
(68, 68, 'category', '', 0, 0),
(70, 70, 'category', '', 0, 0),
(72, 72, 'category', '', 0, 0),
(74, 74, 'category', '', 0, 1),
(76, 76, 'post_translations', 'a:2:{s:2:\"ko\";i:102;s:2:\"en\";i:87;}', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,lingotek-professional-translation,lingotek-translation'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"3e06dc238bc220d9851624003feba0b895cf60919036c663d36bb1c1dd147249\";a:4:{s:10:\"expiration\";i:1583325905;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1583153105;}s:64:\"db8e885448bb8fb46092ac07592799a4986c99100d0ccd585d26106fdf6484eb\";a:4:{s:10:\"expiration\";i:1583332501;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1583159701;}s:64:\"977867f95836c737c485a2968221a33bef896e3bfd77022da2b3f3403144f827\";a:4:{s:10:\"expiration\";i:1583373230;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1583200430;}s:64:\"2df35bbd7159daaea3f9490159b8bd56f1d4b65f210f3c294654af77f109e0c5\";a:4:{s:10:\"expiration\";i:1583375752;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1583202952;}s:64:\"cd350300e3e0aef1550d22ac909177d5996d8dd6834699048d64ed81f0cf1634\";a:4:{s:10:\"expiration\";i:1583456991;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1583284191;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:20:\"add-post-type-slider\";i:1;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(22, 1, 'wp_user-settings-time', '1583284334'),
(23, 1, 'pll_filter_content', 'en'),
(24, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:57:\"custom_help_widget,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:0:\"\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(25, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(27, 1, 'pll_dismissed_notices', 'a:1:{i:0;s:8:\"lingotek\";}'),
(28, 1, 'pll_lang_per_page', '15'),
(29, 1, 'meta-box-order_forex', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:76:\"ml_box,acf-group_5e5d214900b27,submitdiv,postimagediv,lingotek_post_meta_box\";s:6:\"normal\";s:31:\"acf-group_5e5d2a18c6dd0,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(30, 1, 'screen_layout_forex', '2'),
(31, 1, 'closedpostboxes_forex', 'a:0:{}'),
(32, 1, 'metaboxhidden_forex', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bvu19NWPia7KxrKdMWwqgp33triSn.0', 'admin', 'hovietbinh.johnny@gmail.com', '', '2020-03-02 12:44:53', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
