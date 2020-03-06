-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 06, 2020 lúc 10:23 AM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_ecats`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
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
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-03-02 12:44:53', '2020-03-02 12:44:53', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
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
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
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
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:21:\"polylang/polylang.php\";i:1;s:25:\"kk-star-ratings/index.php\";i:2;s:34:\"advanced-custom-fields-pro/acf.php\";i:3;s:33:\"lingotek-translation/lingotek.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:63:\"G:\\xampp\\htdocs\\project\\ecats/wp-content/themes/ecats/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'ecats', 'yes'),
(41, 'stylesheet', 'ecats', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:29:\"multi-rating/multi-rating.php\";s:19:\"mr_uninstall_plugin\";}', 'no'),
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
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"mr_edit_ratings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"mr_edit_ratings\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'vi', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:6:\"banner\";a:1:{i:0;s:13:\"custom_html-2\";}s:8:\"banner_1\";a:1:{i:0;s:13:\"custom_html-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:5:{i:1583487894;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583498694;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1583498706;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583498707;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:3:{i:2;a:2:{s:5:\"title\";s:8:\"Banner 1\";s:7:\"content\";s:875:\"<div class=\"broker_reviews hidden-mobile\">\r\n						<img src=\"https://ecattrade.com/wp-content/themes/cat/images/i/broker.jpg\" width=\"300\" height=\"314\" alt=\"Danh sách nhà môi giới quyền chọn nhị phân Việt Nam\" data-lazy-src=\"https://ecattrade.com/wp-content/themes/cat/images/i/broker.jpg\" class=\"lazyloaded\" data-was-processed=\"true\"><noscript><img src=\"https://ecattrade.com/wp-content/themes/cat/images/i/broker.jpg\" width=\"300\" height=\"314\" alt=\"Danh sách nhà môi giới quyền chọn nhị phân Việt Nam\"></noscript>\r\n						<span class=\"description\">Top Sàn<br> Giao Dịch<br> Forex<br>Việt Nam</span>\r\n						<a href=\"https://ecattrade.com/vi/san-giao-dich-quyen-chon-nhi-phan-vietnam\" class=\"broker_reviews_button\">\r\n							<span class=\"normal\">Click here</span>\r\n							<span class=\"hover\" style=\"display: none;\"></span>\r\n						</a>\r\n					</div>\";}i:3;a:2:{s:5:\"title\";s:8:\"Banner 2\";s:7:\"content\";s:333:\"<img src=\"http://localhost/project/ecats/wp-content/uploads/2020/03/Banner-forexfanclub.jpg\" width=\"300\" height=\"314\" alt=\"Danh sách nhà môi giới quyền chọn nhị phân Việt Nam\" data-lazy-src=\"http://localhost/project/ecats/wp-content/uploads/2020/03/Banner-forexfanclub.jpg\" class=\"lazyloaded\" data-was-processed=\"true\">\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"Gyikn3COu2s64lK8MZ4l4w\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BhecuUF/UYQ9FXRkklae7Ol25d3X420\";s:10:\"created_at\";i:1583458990;}}', 'yes'),
(122, '_site_transient_timeout_browser_ac05ce2b54bf6619514b7c7c2e5ab81a', '1583757906', 'no'),
(123, '_site_transient_browser_ac05ce2b54bf6619514b7c7c2e5ab81a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.122\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, '_site_transient_timeout_php_check_03ae8a8b160bf69638c2d8cd3a1e7007', '1583757907', 'no'),
(125, '_site_transient_php_check_03ae8a8b160bf69638c2d8cd3a1e7007', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(140, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583153113;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(141, 'current_theme', 'Themes Aigroup', 'yes'),
(142, 'theme_mods_ecats', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:6:{s:8:\"main_nav\";i:2;s:7:\"top_nav\";i:106;s:7:\"ft1_nav\";i:0;s:7:\"ft2_nav\";i:0;s:7:\"ft3_nav\";i:0;s:7:\"ft4_nav\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(144, 'widget_postnew_category_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'widget_posttop_category_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'widget_post_category_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(149, 'recently_activated', 'a:7:{s:29:\"rate-my-post/rate-my-post.php\";i:1583313780;s:29:\"multi-rating/multi-rating.php\";i:1583313508;s:46:\"wp-post-comment-rating/wpcr-comment-rating.php\";i:1583313292;s:29:\"stars-rating/stars-rating.php\";i:1583312463;s:54:\"acf-star-rating-field-master/acf-star_rating_field.php\";i:1583304085;s:48:\"acf-field-star-rating-master/acf-star_rating.php\";i:1583303577;s:37:\"comments-ratings/comments-ratings.php\";i:1583301960;}', 'yes'),
(150, 'acf_version', '5.8.3', 'yes'),
(152, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(157, 'new_admin_email', 'hovietbinh.johnny@gmail.com', 'yes'),
(170, 'polylang', 'a:15:{s:7:\"browser\";b:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:2:{i:0;s:8:\"gt_intro\";i:1;s:5:\"forex\";}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:6:\"2.6.10\";s:16:\"first_activation\";i:1583165390;s:12:\"default_lang\";s:2:\"en\";s:9:\"nav_menus\";a:1:{s:5:\"ecats\";a:6:{s:8:\"main_nav\";a:8:{s:2:\"en\";i:2;s:2:\"vi\";i:2;s:2:\"pt\";i:2;s:2:\"es\";i:2;s:2:\"th\";i:2;s:2:\"id\";i:2;s:2:\"ms\";i:2;s:2:\"ko\";i:2;}s:7:\"top_nav\";a:8:{s:2:\"en\";i:106;s:2:\"vi\";i:106;s:2:\"pt\";i:106;s:2:\"es\";i:106;s:2:\"th\";i:106;s:2:\"id\";i:106;s:2:\"ms\";i:106;s:2:\"ko\";i:106;}s:7:\"ft1_nav\";a:8:{s:2:\"en\";i:0;s:2:\"vi\";i:0;s:2:\"pt\";i:0;s:2:\"es\";i:0;s:2:\"th\";i:0;s:2:\"id\";i:0;s:2:\"ms\";i:0;s:2:\"ko\";i:0;}s:7:\"ft2_nav\";a:8:{s:2:\"en\";i:0;s:2:\"vi\";i:0;s:2:\"pt\";i:0;s:2:\"es\";i:0;s:2:\"th\";i:0;s:2:\"id\";i:0;s:2:\"ms\";i:0;s:2:\"ko\";i:0;}s:7:\"ft3_nav\";a:8:{s:2:\"en\";i:0;s:2:\"vi\";i:0;s:2:\"pt\";i:0;s:2:\"es\";i:0;s:2:\"th\";i:0;s:2:\"id\";i:0;s:2:\"ms\";i:0;s:2:\"ko\";i:0;}s:7:\"ft4_nav\";a:8:{s:2:\"en\";i:0;s:2:\"vi\";i:0;s:2:\"pt\";i:0;s:2:\"es\";i:0;s:2:\"th\";i:0;s:2:\"id\";i:0;s:2:\"ms\";i:0;s:2:\"ko\";i:0;}}}}', 'yes'),
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
(407, 'recovery_mode_email_last_sent', '1583458990', 'yes'),
(520, 'wpcr_settings', 'a:18:{s:9:\"checkbox1\";s:3:\"yes\";s:7:\"rtlabel\";s:0:\"\";s:8:\"txtcolor\";s:0:\"\";s:14:\"wpcrrichschema\";s:3:\"yes\";s:25:\"wpcr_structured_data_type\";s:4:\"none\";s:9:\"rateimage\";s:8:\"grateimg\";s:9:\"cmstr_pos\";s:1:\"0\";s:13:\"stremptycolor\";s:4:\"#ddd\";s:12:\"strfillcolor\";s:7:\"#ffd700\";s:16:\"strselectedcolor\";s:4:\"#ea0\";s:8:\"starsize\";s:0:\"\";s:14:\"tooltip_inline\";s:1:\"0\";s:12:\"wpcravg_text\";s:0:\"\";s:11:\"tltpbgcolor\";s:0:\"\";s:11:\"tiptxtcolor\";s:4:\"#fff\";s:10:\"tiptxtsize\";s:0:\"\";s:7:\"shownav\";s:1:\"1\";s:11:\"wpcr_social\";s:1:\"1\";}', 'yes'),
(543, 'pixreviews_settings', 'a:10:{s:19:\"settings_saved_once\";s:1:\"0\";s:24:\"enable_selective_ratings\";b:0;s:14:\"default_rating\";i:4;s:21:\"display_on_post_types\";a:2:{s:4:\"post\";s:2:\"on\";s:4:\"page\";s:2:\"on\";}s:19:\"review_rating_label\";s:36:\"Your overall rating of this listing:\";s:18:\"review_title_label\";s:21:\"Title of your review:\";s:24:\"review_title_placeholder\";s:57:\"Summarize your opinion or highlight an interesting detail\";s:12:\"review_label\";s:11:\"Your Review\";s:18:\"review_placeholder\";s:52:\"Tell about your experience or leave a tip for others\";s:20:\"review_submit_button\";s:18:\"Submit your Review\";}', 'yes'),
(570, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:24:\"kk-star-ratings/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.0\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1583311711;s:11:\"plugin_path\";s:25:\"kk-star-ratings/index.php\";}}s:7:\"abspath\";s:30:\"G:\\xampp\\htdocs\\project\\ecats/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:25:\"kk-star-ratings/index.php\";s:8:\"sdk_path\";s:24:\"kk-star-ratings/freemius\";s:7:\"version\";s:5:\"2.3.0\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1583311711;}}', 'yes'),
(571, 'fs_debug_mode', '', 'yes'),
(572, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:3890;a:3:{s:4:\"slug\";s:15:\"kk-star-ratings\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:25:\"kk-star-ratings/index.php\";}}s:11:\"plugin_data\";a:1:{s:15:\"kk-star-ratings\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:25:\"kk-star-ratings/index.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1583304162;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"4.1.3\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1583304162;s:7:\"version\";s:5:\"4.1.3\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1583313788;s:7:\"version\";s:5:\"4.1.3\";}}}s:13:\"file_slug_map\";a:1:{s:25:\"kk-star-ratings/index.php\";s:15:\"kk-star-ratings\";}s:7:\"plugins\";a:1:{s:15:\"kk-star-ratings\";O:9:\"FS_Plugin\":22:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:15:\"kk Star Ratings\";s:4:\"slug\";s:15:\"kk-star-ratings\";s:12:\"premium_slug\";s:23:\"kk-star-ratings-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:25:\"kk-star-ratings/index.php\";s:7:\"version\";s:5:\"4.1.3\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:10:\"public_key\";s:32:\"pk_e6d3c068ac8b44274990af9fc9eeb\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"3890\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"bdd243663f876e89dcbe54158e9e9b05\";s:13:\"admin_notices\";a:1:{s:15:\"kk-star-ratings\";a:0:{}}}', 'yes'),
(573, 'fs_api_cache', 'a:0:{}', 'yes'),
(574, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(577, 'kksr_enable', '1', 'yes'),
(578, 'kksr_strategies', 'a:3:{i:0;s:8:\"archives\";i:1;s:6:\"guests\";i:2;s:6:\"unique\";}', 'yes'),
(579, 'kksr_manual_control', 'a:0:{}', 'yes'),
(580, 'kksr_exclude_locations', 'a:4:{i:0;s:4:\"home\";i:1;s:8:\"archives\";i:2;s:4:\"post\";i:3;s:4:\"page\";}', 'yes'),
(581, 'kksr_exclude_categories', 'a:0:{}', 'yes'),
(582, 'kksr_position', 'bottom-left', 'yes'),
(583, 'kksr_gap', '4', 'yes'),
(584, 'kksr_stars', '5', 'yes'),
(585, 'kksr_size', '24', 'yes'),
(586, 'kksr_greet', 'Rate this [type]', 'yes'),
(587, 'kksr_grs', '1', 'yes'),
(588, 'kksr_sd', '{\n    \"@context\": \"https://schema.org/\",\n    \"@type\": \"CreativeWorkSeries\",\n    \"name\": \"[title]\",\n    \"aggregateRating\": {\n        \"@type\": \"AggregateRating\",\n        \"ratingValue\": \"[score]\",\n        \"bestRating\": \"[best]\",\n        \"ratingCount\": \"[count]\"\n    }\n}', 'yes'),
(589, 'kksr_ver', '4.1.3', 'yes'),
(651, 'enabled_post_types', 'a:1:{i:0;s:5:\"forex\";}', 'yes'),
(652, 'require_rating', 'yes', 'yes'),
(653, 'avg_rating_display', 'show', 'yes'),
(654, 'stars_style', 'regular', 'yes'),
(655, 'google_search_stars', 'show', 'yes'),
(656, 'google_search_stars_type', '', 'yes'),
(701, 'mr_general_settings', 'a:6:{s:32:\"mr_save_rating_restriction_types\";a:1:{i:0;s:6:\"cookie\";}s:32:\"mr_save_rating_restriction_hours\";s:2:\"24\";s:13:\"mr_post_types\";a:1:{i:0;s:5:\"forex\";}s:23:\"mr_rating_results_cache\";b:1;s:19:\"mr_hide_rating_form\";b:1;s:26:\"mr_template_strip_newlines\";b:1;}', 'yes'),
(702, 'mr_custom_text_settings', 'a:10:{s:25:\"mr_rating_form_title_text\";s:16:\"Please rate this\";s:33:\"mr_rating_results_list_title_text\";s:14:\"Rating Results\";s:26:\"mr_rating_form_button_text\";s:13:\"Submit Rating\";s:21:\"mr_filter_button_text\";s:6:\"Filter\";s:20:\"mr_filter_label_text\";s:8:\"Category\";s:37:\"mr_rating_form_submit_success_message\";s:41:\"Your rating was %adjusted_star_result%/5.\";s:40:\"mr_save_rating_restriction_error_message\";s:60:\"You cannot submit a rating for the same post multiple times.\";s:25:\"mr_no_rating_results_text\";s:15:\"No ratings yet.\";s:24:\"mrp_field_required_error\";s:18:\"Field is required.\";i:0;b:0;}', 'yes'),
(703, 'mr_custom_images_settings', 'a:8:{s:25:\"mr_use_custom_star_images\";b:0;s:23:\"mr_custom_full_star_img\";s:0:\"\";s:23:\"mr_custom_half_star_img\";s:0:\"\";s:24:\"mr_custom_empty_star_img\";s:0:\"\";s:24:\"mr_custom_hover_star_img\";s:0:\"\";s:24:\"mr_custom_star_img_width\";i:32;s:25:\"mr_custom_star_img_height\";i:32;i:0;b:0;}', 'yes'),
(704, 'mr_style_settings', 'a:8:{s:13:\"mr_custom_css\";s:0:\"\";s:21:\"mr_star_rating_colour\";s:7:\"#ffd700\";s:27:\"mr_star_rating_hover_colour\";s:7:\"#ffba00\";s:23:\"mr_include_font_awesome\";b:1;s:23:\"mr_font_awesome_version\";s:18:\"font-awesome-4.7.0\";s:23:\"mr_error_message_colour\";s:7:\"#EC6464\";s:17:\"mr_disable_styles\";b:0;i:0;b:0;}', 'yes'),
(705, 'mr_version_option', '4.3', 'yes'),
(707, 'mr_position_settings', 'a:3:{s:26:\"mr_rating_results_position\";s:11:\"after_title\";s:14:\"mr_rating_form\";s:13:\"after_content\";i:0;b:0;}', 'yes'),
(708, 'widget_mr_rating_results_list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(709, 'widget_rating_form', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(710, 'widget_rating_result', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(723, 'rmp_options', 'a:32:{s:5:\"posts\";i:1;s:5:\"pages\";i:1;s:10:\"rate_email\";i:1;s:14:\"feedback_email\";i:1;s:8:\"feedback\";i:1;s:6:\"social\";i:1;s:2:\"fb\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:7:\"exclude\";a:0:{}s:13:\"cookieDisable\";i:1;s:10:\"resultPost\";i:1;s:11:\"resultPages\";i:1;s:9:\"icon_type\";i:1;s:13:\"notShowRating\";i:1;s:16:\"positiveNegative\";i:2;s:10:\"hoverTexts\";i:1;s:12:\"multiLingual\";i:1;s:9:\"cptRating\";a:0:{}s:9:\"cptResult\";a:0:{}s:17:\"preventAccidental\";i:1;s:15:\"wipeOnUninstall\";i:1;s:16:\"ampCompatibility\";i:1;s:12:\"archivePages\";i:1;s:11:\"socialShare\";i:1;s:11:\"widgetAlign\";i:1;s:18:\"structuredDataType\";s:4:\"none\";s:8:\"ajaxLoad\";i:1;}', 'yes'),
(724, 'rmp_customize_strings', 'a:38:{s:9:\"rateTitle\";s:25:\"How useful was this post?\";s:12:\"rateSubtitle\";s:27:\"Click on a star to rate it!\";s:10:\"rateResult\";s:14:\"Average rating\";s:11:\"rateResult2\";s:11:\"Vote count:\";s:12:\"cookieNotice\";s:49:\"You already voted! This vote will not be counted!\";s:8:\"noRating\";s:48:\"No votes so far! Be the first to rate this post.\";s:9:\"afterVote\";s:31:\"Thank you for rating this post!\";s:5:\"star1\";s:17:\"Not at all useful\";s:5:\"star2\";s:15:\"Somewhat useful\";s:5:\"star3\";s:6:\"Useful\";s:5:\"star4\";s:13:\"Fairly useful\";s:5:\"star5\";s:11:\"Very useful\";s:11:\"socialTitle\";s:32:\"As you found this post useful...\";s:14:\"socialSubtitle\";s:26:\"Follow us on social media!\";s:13:\"feedbackTitle\";s:51:\"We are sorry that this post was not useful for you!\";s:16:\"feedbackSubtitle\";s:25:\"Let us improve this post!\";s:12:\"feedbackText\";s:37:\"Tell us how we can improve this post?\";s:14:\"feedbackNotice\";s:25:\"Thanks for your feedback!\";s:14:\"feedbackButton\";s:15:\"Submit Feedback\";s:13:\"titleFontSize\";s:0:\"\";s:16:\"subtitleFontSize\";s:0:\"\";s:12:\"textFontSize\";s:0:\"\";s:17:\"titleMarginBottom\";s:0:\"\";s:20:\"subtitleMarginBottom\";s:0:\"\";s:14:\"socialFontSize\";s:0:\"\";s:13:\"feedbackAlert\";s:45:\"Please insert your feedback in the box above!\";s:8:\"iconSize\";s:0:\"\";s:16:\"iconColorResults\";s:0:\"\";s:14:\"iconColorHover\";s:0:\"\";s:14:\"iconColorRated\";s:0:\"\";s:12:\"iconColorAvg\";s:0:\"\";s:11:\"borderWidth\";s:0:\"\";s:12:\"borderRadius\";s:0:\"\";s:11:\"borderColor\";s:0:\"\";s:15:\"backgroundColor\";s:0:\"\";s:10:\"iconMargin\";s:0:\"\";s:17:\"customResultsText\";s:0:\"\";s:16:\"submitButtonText\";s:13:\"Submit Rating\";}', 'yes'),
(725, 'rmp_security', 'a:8:{s:10:\"privileges\";i:1;s:9:\"recaptcha\";i:1;s:7:\"siteKey\";s:0:\"\";s:9:\"secretKey\";s:0:\"\";s:10:\"votingPriv\";i:1;s:10:\"ipTracking\";i:1;s:12:\"userTracking\";i:1;s:12:\"ipDoubleVote\";i:1;}', 'yes'),
(726, 'rmp_version', '3.1.0', 'yes'),
(727, 'widget_rate-my-post-top-rated-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(736, '_transient_timeout_acf_plugin_updates', '1583544543', 'no'),
(737, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.8\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.3\";}}', 'no'),
(744, '_site_transient_timeout_browser_97fc230848bc304ccee289a55f3e5339', '1583976790', 'no'),
(745, '_site_transient_browser_97fc230848bc304ccee289a55f3e5339', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(765, 'forex_tag_children', 'a:0:{}', 'yes'),
(774, 'types_children', 'a:0:{}', 'yes'),
(868, 'options_number_show_home', '5', 'no'),
(869, '_options_number_show_home', 'field_5e60756a89387', 'no'),
(870, 'options_number_show_top', '10', 'no'),
(871, '_options_number_show_top', 'field_5e6075bf89388', 'no'),
(891, 'options_top_post', '', 'no'),
(892, '_options_top_post', 'field_5e609f279d8ff', 'no'),
(893, 'options_top_forex_0_forex', '123', 'no'),
(894, '_options_top_forex_0_forex', 'field_5e60a0a724eac', 'no'),
(895, 'options_top_forex_1_forex', '132', 'no'),
(896, '_options_top_forex_1_forex', 'field_5e60a0a724eac', 'no'),
(897, 'options_top_forex', '', 'no'),
(898, '_options_top_forex', 'field_5e61e968dd981', 'no'),
(899, 'options_top_forex_0_forex_top', '', 'no'),
(900, '_options_top_forex_0_forex_top', 'field_5e60a0a724eac', 'no'),
(901, 'options_top_forex_1_forex_top', '', 'no'),
(902, '_options_top_forex_1_forex_top', 'field_5e60a0a724eac', 'no'),
(968, 'forex_category_children', 'a:0:{}', 'yes'),
(1021, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.3.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1583457446;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1022, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583483243;s:7:\"checked\";a:1:{s:5:\"ecats\";s:4:\"0.01\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1023, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1583457448;s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.3\";s:25:\"kk-star-ratings/index.php\";s:5:\"4.1.3\";s:33:\"lingotek-translation/lingotek.php\";s:5:\"1.4.6\";s:21:\"polylang/polylang.php\";s:6:\"2.6.10\";s:37:\"wordpress-database-reset/wp-reset.php\";s:4:\"3.15\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.8\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:15:\"kk-star-ratings\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.1.3\";s:7:\"updated\";s:19:\"2019-11-05 22:20:40\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/translation/plugin/kk-star-ratings/4.1.3/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:20:\"lingotek-translation\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"1.4.6\";s:7:\"updated\";s:19:\"2019-09-30 06:30:08\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/translation/plugin/lingotek-translation/1.4.6/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:8:\"polylang\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:6:\"2.6.10\";s:7:\"updated\";s:19:\"2019-06-27 14:21:12\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/polylang/2.6.10/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:8:\"polylang\";s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:6:\"2.6.10\";s:7:\"updated\";s:19:\"2019-12-12 21:05:00\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/polylang/2.6.10/pt_PT.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:8:\"polylang\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:6:\"2.6.10\";s:7:\"updated\";s:19:\"2020-02-22 10:42:16\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/polylang/2.6.10/es_ES.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:25:\"kk-star-ratings/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/kk-star-ratings\";s:4:\"slug\";s:15:\"kk-star-ratings\";s:6:\"plugin\";s:25:\"kk-star-ratings/index.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/kk-star-ratings/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/kk-star-ratings.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/kk-star-ratings/assets/icon-256x256.jpg?rev=2140680\";s:2:\"1x\";s:68:\"https://ps.w.org/kk-star-ratings/assets/icon-128x128.jpg?rev=2140680\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/kk-star-ratings/assets/banner-1544x500.jpg?rev=2140680\";s:2:\"1x\";s:70:\"https://ps.w.org/kk-star-ratings/assets/banner-772x250.jpg?rev=2140680\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"lingotek-translation/lingotek.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/lingotek-translation\";s:4:\"slug\";s:20:\"lingotek-translation\";s:6:\"plugin\";s:33:\"lingotek-translation/lingotek.php\";s:11:\"new_version\";s:5:\"1.4.6\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/lingotek-translation/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/lingotek-translation.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/lingotek-translation/assets/icon-256x256.png?rev=1694577\";s:2:\"1x\";s:73:\"https://ps.w.org/lingotek-translation/assets/icon-128x128.png?rev=1694577\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/lingotek-translation/assets/banner-1544x500.png?rev=1694577\";s:2:\"1x\";s:75:\"https://ps.w.org/lingotek-translation/assets/banner-772x250.png?rev=1694577\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:6:\"2.6.10\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/polylang.2.6.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"wordpress-database-reset/wp-reset.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/wordpress-database-reset\";s:4:\"slug\";s:24:\"wordpress-database-reset\";s:6:\"plugin\";s:37:\"wordpress-database-reset/wp-reset.php\";s:11:\"new_version\";s:4:\"3.15\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/wordpress-database-reset/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/wordpress-database-reset.3.15.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/wordpress-database-reset/assets/icon-256x256.png?rev=2137639\";s:2:\"1x\";s:77:\"https://ps.w.org/wordpress-database-reset/assets/icon-128x128.png?rev=2137639\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/wordpress-database-reset/assets/banner-772x250.jpg?rev=1253825\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1040, 'rewrite_rules', 'a:264:{s:34:\"(vi|pt|es|th|id|ms|ko)/gt_intro/?$\";s:45:\"index.php?lang=$matches[1]&post_type=gt_intro\";s:11:\"gt_intro/?$\";s:36:\"index.php?lang=en&post_type=gt_intro\";s:64:\"(vi|pt|es|th|id|ms|ko)/gt_intro/feed/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?lang=$matches[1]&post_type=gt_intro&feed=$matches[2]\";s:41:\"gt_intro/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?lang=en&post_type=gt_intro&feed=$matches[1]\";s:59:\"(vi|pt|es|th|id|ms|ko)/gt_intro/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?lang=$matches[1]&post_type=gt_intro&feed=$matches[2]\";s:36:\"gt_intro/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?lang=en&post_type=gt_intro&feed=$matches[1]\";s:51:\"(vi|pt|es|th|id|ms|ko)/gt_intro/page/([0-9]{1,})/?$\";s:63:\"index.php?lang=$matches[1]&post_type=gt_intro&paged=$matches[2]\";s:28:\"gt_intro/page/([0-9]{1,})/?$\";s:54:\"index.php?lang=en&post_type=gt_intro&paged=$matches[1]\";s:31:\"(vi|pt|es|th|id|ms|ko)/forex/?$\";s:42:\"index.php?lang=$matches[1]&post_type=forex\";s:8:\"forex/?$\";s:33:\"index.php?lang=en&post_type=forex\";s:61:\"(vi|pt|es|th|id|ms|ko)/forex/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&post_type=forex&feed=$matches[2]\";s:38:\"forex/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&post_type=forex&feed=$matches[1]\";s:56:\"(vi|pt|es|th|id|ms|ko)/forex/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&post_type=forex&feed=$matches[2]\";s:33:\"forex/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&post_type=forex&feed=$matches[1]\";s:48:\"(vi|pt|es|th|id|ms|ko)/forex/page/([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&post_type=forex&paged=$matches[2]\";s:25:\"forex/page/([0-9]{1,})/?$\";s:51:\"index.php?lang=en&post_type=forex&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"lingotek/?$\";s:32:\"index.php?lingotek=1&$matches[1]\";s:70:\"(vi|pt|es|th|id|ms|ko)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:65:\"(vi|pt|es|th|id|ms|ko)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:46:\"(vi|pt|es|th|id|ms|ko)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:58:\"(vi|pt|es|th|id|ms|ko)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:40:\"(vi|pt|es|th|id|ms|ko)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:67:\"(vi|pt|es|th|id|ms|ko)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:62:\"(vi|pt|es|th|id|ms|ko)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:43:\"(vi|pt|es|th|id|ms|ko)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:55:\"(vi|pt|es|th|id|ms|ko)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:37:\"(vi|pt|es|th|id|ms|ko)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:68:\"(vi|pt|es|th|id|ms|ko)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]\";s:63:\"(vi|pt|es|th|id|ms|ko)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]\";s:44:\"(vi|pt|es|th|id|ms|ko)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=en&post_format=$matches[1]&embed=true\";s:56:\"(vi|pt|es|th|id|ms|ko)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=en&post_format=$matches[1]&paged=$matches[2]\";s:38:\"(vi|pt|es|th|id|ms|ko)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=en&post_format=$matches[1]\";s:59:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:36:\"gt_intro/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:69:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:46:\"gt_intro/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:89:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:66:\"gt_intro/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:84:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:61:\"gt_intro/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:84:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:61:\"gt_intro/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:65:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:42:\"gt_intro/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"(vi|pt|es|th|id|ms|ko)/gt_intro/([^/]+)/embed/?$\";s:58:\"index.php?lang=$matches[1]&gt_intro=$matches[2]&embed=true\";s:25:\"gt_intro/([^/]+)/embed/?$\";s:41:\"index.php?gt_intro=$matches[1]&embed=true\";s:52:\"(vi|pt|es|th|id|ms|ko)/gt_intro/([^/]+)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&gt_intro=$matches[2]&tb=1\";s:29:\"gt_intro/([^/]+)/trackback/?$\";s:35:\"index.php?gt_intro=$matches[1]&tb=1\";s:72:\"(vi|pt|es|th|id|ms|ko)/gt_intro/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&gt_intro=$matches[2]&feed=$matches[3]\";s:49:\"gt_intro/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?gt_intro=$matches[1]&feed=$matches[2]\";s:67:\"(vi|pt|es|th|id|ms|ko)/gt_intro/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&gt_intro=$matches[2]&feed=$matches[3]\";s:44:\"gt_intro/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?gt_intro=$matches[1]&feed=$matches[2]\";s:60:\"(vi|pt|es|th|id|ms|ko)/gt_intro/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&gt_intro=$matches[2]&paged=$matches[3]\";s:37:\"gt_intro/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?gt_intro=$matches[1]&paged=$matches[2]\";s:67:\"(vi|pt|es|th|id|ms|ko)/gt_intro/([^/]+)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&gt_intro=$matches[2]&cpage=$matches[3]\";s:44:\"gt_intro/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?gt_intro=$matches[1]&cpage=$matches[2]\";s:56:\"(vi|pt|es|th|id|ms|ko)/gt_intro/([^/]+)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&gt_intro=$matches[2]&page=$matches[3]\";s:33:\"gt_intro/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?gt_intro=$matches[1]&page=$matches[2]\";s:48:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:25:\"gt_intro/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:35:\"gt_intro/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:55:\"gt_intro/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:50:\"gt_intro/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:50:\"gt_intro/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:54:\"(vi|pt|es|th|id|ms|ko)/gt_intro/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:31:\"gt_intro/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"forex_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?forex_category=$matches[1]&feed=$matches[2]\";s:50:\"forex_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?forex_category=$matches[1]&feed=$matches[2]\";s:31:\"forex_category/([^/]+)/embed/?$\";s:47:\"index.php?forex_category=$matches[1]&embed=true\";s:43:\"forex_category/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?forex_category=$matches[1]&paged=$matches[2]\";s:25:\"forex_category/([^/]+)/?$\";s:36:\"index.php?forex_category=$matches[1]\";s:56:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:33:\"forex/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:66:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:43:\"forex/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:86:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:63:\"forex/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:81:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:58:\"forex/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:81:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:58:\"forex/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:62:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:39:\"forex/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/embed/?$\";s:55:\"index.php?lang=$matches[1]&forex=$matches[2]&embed=true\";s:22:\"forex/([^/]+)/embed/?$\";s:38:\"index.php?forex=$matches[1]&embed=true\";s:49:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/trackback/?$\";s:49:\"index.php?lang=$matches[1]&forex=$matches[2]&tb=1\";s:26:\"forex/([^/]+)/trackback/?$\";s:32:\"index.php?forex=$matches[1]&tb=1\";s:69:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?lang=$matches[1]&forex=$matches[2]&feed=$matches[3]\";s:46:\"forex/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?forex=$matches[1]&feed=$matches[2]\";s:64:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?lang=$matches[1]&forex=$matches[2]&feed=$matches[3]\";s:41:\"forex/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?forex=$matches[1]&feed=$matches[2]\";s:57:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?lang=$matches[1]&forex=$matches[2]&paged=$matches[3]\";s:34:\"forex/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?forex=$matches[1]&paged=$matches[2]\";s:64:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)/comment-page-([0-9]{1,})/?$\";s:62:\"index.php?lang=$matches[1]&forex=$matches[2]&cpage=$matches[3]\";s:41:\"forex/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?forex=$matches[1]&cpage=$matches[2]\";s:53:\"(vi|pt|es|th|id|ms|ko)/forex/([^/]+)(?:/([0-9]+))?/?$\";s:61:\"index.php?lang=$matches[1]&forex=$matches[2]&page=$matches[3]\";s:30:\"forex/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?forex=$matches[1]&page=$matches[2]\";s:45:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:22:\"forex/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:32:\"forex/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\"forex/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:47:\"forex/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:47:\"forex/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"(vi|pt|es|th|id|ms|ko)/forex/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:28:\"forex/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:55:\"(vi|pt|es|th|id|ms|ko)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=en&&feed=$matches[1]\";s:50:\"(vi|pt|es|th|id|ms|ko)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=en&&feed=$matches[1]\";s:31:\"(vi|pt|es|th|id|ms|ko)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=en&&embed=true\";s:43:\"(vi|pt|es|th|id|ms|ko)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=en&&paged=$matches[1]\";s:25:\"(vi|pt|es|th|id|ms|ko)/?$\";s:26:\"index.php?lang=$matches[1]\";s:64:\"(vi|pt|es|th|id|ms|ko)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&&feed=$matches[1]&withcomments=1\";s:59:\"(vi|pt|es|th|id|ms|ko)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&&feed=$matches[1]&withcomments=1\";s:40:\"(vi|pt|es|th|id|ms|ko)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=en&&embed=true\";s:67:\"(vi|pt|es|th|id|ms|ko)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=en&s=$matches[1]&feed=$matches[2]\";s:62:\"(vi|pt|es|th|id|ms|ko)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=en&s=$matches[1]&feed=$matches[2]\";s:43:\"(vi|pt|es|th|id|ms|ko)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=en&s=$matches[1]&embed=true\";s:55:\"(vi|pt|es|th|id|ms|ko)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=en&s=$matches[1]&paged=$matches[2]\";s:37:\"(vi|pt|es|th|id|ms|ko)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=en&s=$matches[1]\";s:70:\"(vi|pt|es|th|id|ms|ko)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]\";s:65:\"(vi|pt|es|th|id|ms|ko)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]\";s:46:\"(vi|pt|es|th|id|ms|ko)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=en&author_name=$matches[1]&embed=true\";s:58:\"(vi|pt|es|th|id|ms|ko)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=en&author_name=$matches[1]&paged=$matches[2]\";s:40:\"(vi|pt|es|th|id|ms|ko)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=en&author_name=$matches[1]\";s:92:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:87:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:68:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:82:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:80:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:89:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:62:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:71:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:79:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:74:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:55:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:66:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&embed=true\";s:67:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:73:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:49:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:55:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]\";s:66:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=en&year=$matches[1]&feed=$matches[2]\";s:61:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=en&year=$matches[1]&feed=$matches[2]\";s:42:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:45:\"index.php?lang=en&year=$matches[1]&embed=true\";s:54:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:52:\"index.php?lang=en&year=$matches[1]&paged=$matches[2]\";s:36:\"(vi|pt|es|th|id|ms|ko)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:34:\"index.php?lang=en&year=$matches[1]\";s:50:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:60:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:56:\"(vi|pt|es|th|id|ms|ko)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:43:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:63:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:58:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:51:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:58:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:47:\"(vi|pt|es|th|id|ms|ko)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:50:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:60:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:56:\"(vi|pt|es|th|id|ms|ko)/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/embed/?$\";s:54:\"index.php?lang=$matches[1]&name=$matches[2]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:43:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/trackback/?$\";s:48:\"index.php?lang=$matches[1]&name=$matches[2]&tb=1\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:63:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:58:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:51:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:58:\"(vi|pt|es|th|id|ms|ko)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:47:\"(vi|pt|es|th|id|ms|ko)/([^/]+)(?:/([0-9]+))?/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&page=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:39:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"(vi|pt|es|th|id|ms|ko)/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(1043, 'options_top_post_ports_en_0_view_post_en', '145', 'no'),
(1044, '_options_top_post_ports_en_0_view_post_en', 'field_5e61b35049331', 'no'),
(1045, 'options_top_post_ports_en_1_view_post_en', '140', 'no'),
(1046, '_options_top_post_ports_en_1_view_post_en', 'field_5e61b35049331', 'no'),
(1047, 'options_top_post_ports_en', '2', 'no'),
(1048, '_options_top_post_ports_en', 'field_5e61b2ed49330', 'no'),
(1049, 'options_top_post_ports_vi', '', 'no'),
(1050, '_options_top_post_ports_vi', 'field_5e61b3c19cc0d', 'no'),
(1051, 'options_top_post_ports_pt', '', 'no'),
(1052, '_options_top_post_ports_pt', 'field_5e61b4349cc0f', 'no'),
(1053, 'options_top_post_ports_es', '', 'no'),
(1054, '_options_top_post_ports_es', 'field_5e61b4bbec1dc', 'no'),
(1055, 'options_top_post_ports_th', '', 'no'),
(1056, '_options_top_post_ports_th', 'field_5e61b5464c355', 'no'),
(1057, 'options_top_post_ports_id', '', 'no'),
(1058, '_options_top_post_ports_id', 'field_5e61b4f3ec1de', 'no'),
(1059, 'options_top_post_ports_ko', '', 'no'),
(1060, '_options_top_post_ports_ko', 'field_5e61b579b00ee', 'no'),
(1062, 'options_ports_en_0_view_post_en', '145', 'no'),
(1063, '_options_ports_en_0_view_post_en', 'field_5e61b35049331', 'no'),
(1064, 'options_ports_en_1_view_post_en', '140', 'no'),
(1065, '_options_ports_en_1_view_post_en', 'field_5e61b35049331', 'no'),
(1066, 'options_ports_en', '2', 'no'),
(1067, '_options_ports_en', 'field_5e61b2ed49330', 'no'),
(1074, 'options_top_forex_forexs_en', '', 'no'),
(1075, '_options_top_forex_forexs_en', 'field_5e61e968dd982', 'no'),
(1076, 'options_top_forex_forexs_vi', '', 'no'),
(1077, '_options_top_forex_forexs_vi', 'field_5e61e968dd984', 'no'),
(1078, 'options_top_forex_forexs_pt', '', 'no'),
(1079, '_options_top_forex_forexs_pt', 'field_5e61e968dd986', 'no'),
(1080, 'options_top_forex_forexs_es', '', 'no'),
(1081, '_options_top_forex_forexs_es', 'field_5e61e968dd988', 'no'),
(1082, 'options_top_forex_forexs_th', '', 'no'),
(1083, '_options_top_forex_forexs_th', 'field_5e61e968dd98a', 'no'),
(1084, 'options_top_forex_forexs_id', '', 'no'),
(1085, '_options_top_forex_forexs_id', 'field_5e61e968dd98c', 'no'),
(1086, 'options_top_forex_forexs_ko', '', 'no'),
(1087, '_options_top_forex_forexs_ko', 'field_5e61e968dd98e', 'no'),
(1089, 'options_top_forex_binary_forexs_en_binary', '1', 'no'),
(1090, '_options_top_forex_binary_forexs_en_binary', 'field_5e61f0aa70948', 'no'),
(1091, 'options_top_forex_binary_forexs_vi_binary', '', 'no'),
(1092, '_options_top_forex_binary_forexs_vi_binary', 'field_5e61f0aa7094a', 'no'),
(1093, 'options_top_forex_binary_forexs_pt_binary', '', 'no'),
(1094, '_options_top_forex_binary_forexs_pt_binary', 'field_5e61f0aa7094c', 'no'),
(1095, 'options_top_forex_binary_forexs_es_binary', '', 'no'),
(1096, '_options_top_forex_binary_forexs_es_binary', 'field_5e61f0aa7094e', 'no'),
(1097, 'options_top_forex_binary_forexs_th_binary', '', 'no'),
(1098, '_options_top_forex_binary_forexs_th_binary', 'field_5e61f0aa70950', 'no'),
(1099, 'options_top_forex_binary_forexs_id_binary', '', 'no'),
(1100, '_options_top_forex_binary_forexs_id_binary', 'field_5e61f0aa70952', 'no'),
(1101, 'options_top_forex_binary_forexs_ko_binary', '', 'no'),
(1102, '_options_top_forex_binary_forexs_ko_binary', 'field_5e61f0aa70954', 'no'),
(1103, 'options_top_forex_binary', '', 'no'),
(1104, '_options_top_forex_binary', 'field_5e61f0aa70947', 'no'),
(1107, 'options_top_forex_binary_forexs_en_binary_0_view_forexs_en_binary', '143', 'no'),
(1108, '_options_top_forex_binary_forexs_en_binary_0_view_forexs_en_binary', 'field_5e61f0aa70949', 'no'),
(1114, '_site_transient_timeout_available_translations', '1583493300', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1115, '_site_transient_available_translations', 'a:121:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-05 08:33:42\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-04 12:21:30\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.13/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.12\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.12/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-20 05:00:26\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-18 19:20:00\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 19:05:13\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-27 14:39:02\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-13 11:39:25\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 20:45:17\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-24 17:26:42\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-24 17:29:56\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-16 07:58:55\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-12 08:02:56\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.3.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-12 08:02:09\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-10 10:14:21\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-14 09:40:29\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-14 09:42:12\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 17:04:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-23 21:50:21\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.4/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-14 12:06:57\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-23 23:02:03\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-04 17:46:33\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-01 12:12:36\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-26 23:39:21\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-12-07 04:01:34\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-06 05:52:53\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-10 15:47:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-08 17:55:03\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-03 22:42:09\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 09:08:55\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-07 15:53:24\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 12:30:18\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-01 17:58:42\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-20 16:09:08\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-24 15:34:57\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 17:22:10\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-04 22:54:51\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-20 17:02:39\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-02 04:22:13\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-11-04 08:57:25\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-28 21:59:12\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.13/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-05 01:54:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.11\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.11/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-10 15:54:44\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-12 09:57:15\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 20:22:22\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-17 19:42:41\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-18 18:30:50\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-08 13:01:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-14 08:20:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-05 16:02:29\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-04 11:20:43\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-05 15:07:54\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-17 16:11:46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:2:\"sd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 07:46:23\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-14 22:44:44\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 22:50:02\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-05 10:15:34\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 08:19:37\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-21 13:52:32\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-03 23:36:03\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-16 03:03:10\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-08 21:26:25\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-29 17:33:44\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(1126, '_site_transient_timeout_theme_roots', '1583485042', 'no'),
(1127, '_site_transient_theme_roots', 'a:1:{s:5:\"ecats\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1176, '_transient_pll_languages_list', 'a:8:{i:0;a:27:{s:7:\"term_id\";i:4;s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:4;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"en_GB\";s:6:\"parent\";i:0;s:5:\"count\";i:12;s:10:\"tl_term_id\";i:5;s:19:\"tl_term_taxonomy_id\";i:5;s:8:\"tl_count\";i:1;s:6:\"locale\";R:9;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-GB\";s:8:\"facebook\";s:5:\"en_GB\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/gb.png\";s:4:\"flag\";s:897:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAflJREFUeNpinDRzn5qN3uFDt16+YWBg+Pv339+KGN0rbVP+//2rW5tf0Hfy/2+mr99+yKpyOl3Ydt8njEWIn8f9zj639NC7j78eP//8739GVUUhNUNuhl8//ysKeZrJ/v7z10Zb2PTQTIY1XZO2Xmfad+f7XgkXxuUrVB6cjPVXef78JyMjA8PFuwyX7gAZj97+T2e9o3d4BWNp84K1NzubTjAB3fH0+fv6N3qP/ir9bW6ozNQCijB8/8zw/TuQ7r4/ndvN5mZgkpPXiis3Pv34+ZPh5t23//79Rwehof/9/NDEgMrOXHvJcrllgpoRN8PFOwy/fzP8+gUlgZI/f/5xcPj/69e/37//AUX+/mXRkN555gsOG2xt/5hZQMwF4r9///75++f3nz8nr75gSms82jfvQnT6zqvXPjC8e/srJQHo9P9fvwNtAHmG4f8zZ6dDc3bIyM2LTNlsbtfM9OPHH3FhtqUz3eXX9H+cOy9ZMB2o6t/Pn0DHMPz/b+2wXGTvPlPGFxdcD+mZyjP8+8MUE6sa7a/xo6Pykn1s4zdzIZ6///8zMGpKM2pKAB0jqy4UE7/msKat6Jw5mafrsxNtWZ6/fjvNLW29qv25pQd///n+5+/fxDDVbcc//P/zx/36m5Ub9zL8+7t66yEROcHK7q5bldMBAgwADcRBCuVLfoEAAAAASUVORK5CYII=\" title=\"English (en_GB)\" alt=\"English\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:31:\"http://localhost/project/ecats/\";s:10:\"search_url\";s:31:\"http://localhost/project/ecats/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"55\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"gb\";s:15:\"lingotek_locale\";s:5:\"en-GB\";}i:1;a:27:{s:7:\"term_id\";i:7;s:4:\"name\";s:14:\"Tiếng Việt\";s:4:\"slug\";s:2:\"vi\";s:10:\"term_group\";i:1;s:16:\"term_taxonomy_id\";i:7;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:2:\"vi\";s:6:\"parent\";i:0;s:5:\"count\";i:3;s:10:\"tl_term_id\";i:8;s:19:\"tl_term_taxonomy_id\";i:8;s:8:\"tl_count\";i:1;s:6:\"locale\";R:36;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:2:\"vi\";s:8:\"facebook\";s:5:\"vi_VN\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/vn.png\";s:4:\"flag\";s:740:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFsSURBVHjaYvzPgAD/UNlYEUAAmuTYAAAQhAEYqF/zFbe50RZ1cMmS9TLi0pJLRjZohAMTGFUN9HdnHgEE1sDw//+Tp0ClINW/f4NI9d////3+f+b3/1+////+9f/XL6A4o6ws0AaAAGIBm/0fRTVQ2v3Pf97f/4/9Aqv+DdHA8Ps3UANAALEAMSNQNdDGP3+ALvnf8vv/t9//9X/////7f+uv/4K//iciNABNBwggsJP+/IW4kuH3n//1v/8v+wVSDURmv/57//7/CeokoKFA0wECiAnkpL9/wH4CO+DNr/+VQA1A9PN/w6//j36CVIMRxEkAAQR20m+QpSBXgU0CuSTj9/93v/8v//V/xW+48UBD/zAwAAQQSAMzOMiABoBUswCd8ev/M7A669//OX7///Lr/x+gBlCoAJ0DEEAgDUy//zBISoKNAfoepJNRFmQkyJecfxj4/kDCEIiAigECiPErakTiiWMIAAgwAB4ZUlqMMhQQAAAAAElFTkSuQmCC\" title=\"Tiếng Việt (vi)\" alt=\"Tiếng Việt\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/vi/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/vi/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"56\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"vn\";s:15:\"lingotek_locale\";s:5:\"vi-VN\";}i:2;a:27:{s:7:\"term_id\";i:11;s:4:\"name\";s:10:\"Português\";s:4:\"slug\";s:2:\"pt\";s:10:\"term_group\";i:2;s:16:\"term_taxonomy_id\";i:11;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"pt_PT\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:12;s:19:\"tl_term_taxonomy_id\";i:12;s:8:\"tl_count\";i:1;s:6:\"locale\";R:63;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"pt-PT\";s:8:\"facebook\";s:5:\"pt_PT\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/pt.png\";s:4:\"flag\";s:843:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAG8SURBVHjaYmSIZGD4wgAF/xgYWBj+boQysSKAAGJh+MRQnVoNUgEE///9ZfzLoPiX4e8fxj9/mP/8Yfr9+/+fP/9h5JdNmwACiIWBCaj4/5P3T7mY/xoJ/9UR/v0n8O+f17/Zlv/+//73/1+////+9f/XL6BqRllZoA0AAcQCNvv/339/C03+8v/8w7bk7+/vv/+7/P4S95ur+xdY9W+IBobfv4EaAAKICeiuv////vnz58PX3xxb/7BlN3/K7Ph1WoSR/fcfhl//f4KN/wW1BGg6QAAxMfxi+PP37++/v1kYfn//+usnE+cHCbWfTKz/mH7+ZgUpQmj48wdoA0AAsQA1/P0HZP458/qXqvNfjdnVItxy3wNvApUIvwPb8BvqJEawkwACiIXhDwPQ+F9/f+2890dY6/cnrycCb++z3frNfOwX01eEagZgKAHdzcAAEEAgG4DGA/W8+fO79+Rvdt5f2+b++sP+m+kdWDVEwx+gBmBY/wX6ASCAWBi+Mfz+80eSX/L3n99AzwBDm0H2NwtQHS/QapDBIPT3LwQBnQQQQIwMxgwM7xgYfjAArQKRTAyvP2OPYwgACDAAjtdGduN8tIgAAAAASUVORK5CYII=\" title=\"Português (pt_PT)\" alt=\"Português\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/pt/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/pt/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"57\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"pt\";s:15:\"lingotek_locale\";s:5:\"pt-PT\";}i:3;a:27:{s:7:\"term_id\";i:15;s:4:\"name\";s:8:\"Español\";s:4:\"slug\";s:2:\"es\";s:10:\"term_group\";i:3;s:16:\"term_taxonomy_id\";i:15;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"es_ES\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:16;s:19:\"tl_term_taxonomy_id\";i:16;s:8:\"tl_count\";i:1;s:6:\"locale\";R:90;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"es-ES\";s:8:\"facebook\";s:5:\"es_ES\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/es.png\";s:4:\"flag\";s:727:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFnSURBVHjaYvzPgAD/UNlYEUAAmuTYAAAQhAEYqF/zFbe50RZ1cMmS9TLi0pJLRjZohAMTGFUN9HdnHgEE1sDw//+Tp0ClINW/f0NIKPoFJH/9//ULyGaUlQXaABBALAx/Gf4zAt31F4i+ffj3/cN/XrFfzOx//v///f//LzACM/79ZmD8/e8TA0AAMYHdDVT958vXP38nMDB0s3x94/Tj5y+YahhiAKLfQKUAAcQEdtJfoDHMF2L+vPzDmFXLelf551tGFOOhev4A/QgQQExgHwAd8IdFT/Wz6j+GhlpmXSOW/2z///8Eq/sJ18Dw/zdQA0AAMQExxJjjdy9x2/76EfLz4MXdP/i+wsyGkkA3Aw3984cBIIAYfzIwMKel/bt3jwEaLNAwgZIQxp/fDH/+MqqovL14ESCAWICeZvr9h0FSEhSgwBgAygFDEMT+wwAhgQgc4kAEVAwQQIxfUSMSTxxDAECAAQAJWke8v4u1tAAAAABJRU5ErkJggg==\" title=\"Español (es_ES)\" alt=\"Español\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/es/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/es/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"58\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"es\";s:15:\"lingotek_locale\";s:5:\"es-ES\";}i:4;a:27:{s:7:\"term_id\";i:19;s:4:\"name\";s:9:\"ไทย\";s:4:\"slug\";s:2:\"th\";s:10:\"term_group\";i:4;s:16:\"term_taxonomy_id\";i:19;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:2:\"th\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:20;s:19:\"tl_term_taxonomy_id\";i:20;s:8:\"tl_count\";i:1;s:6:\"locale\";R:117;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:2:\"th\";s:8:\"facebook\";s:5:\"th_TH\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/th.png\";s:4:\"flag\";s:702:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFWSURBVHjaYvzPgAD/UNlYEUAAisQgBwAQhGGi/pzP8EBvG+BImqbL7pzuUlda9SJ7DMs85NYEBgX5Ir4AYvz/H2QHhIQz/mMDjIyMnz59AgggRkfXjTmZOu/e/fz7D2jH/7///v398+8PkPEHCEHsv3///fn978+/f8JCnGWlWwACiGX/7jOmhiKPHn3+8wck8fvPv9+//wLRr1//wORfOCkvz8fAsAUggIB++AdxJ8iRQNf++f/rF8TZ/4B6fgEZQPIXRAEoLAACCKjhx9+/f/78+f0LaC/YbIjxyGaDSaCFvxgYvgAEEAs3r5qKqhAPLzs4GP4CnQR2G9CMf2A2iPEH7BNJSe5Tp8wAAojx58+fzMzM//79wxU4EACUBYbS27dvAQKI5R87O1NJCQPEjX//MvwGkn8Yf/8GRggCAY0DSgFt2bsXIIAYv6JGJJ44hgCAAAMA8pZimQIezaoAAAAASUVORK5CYII=\" title=\"ไทย (th)\" alt=\"ไทย\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/th/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/th/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"59\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"th\";s:15:\"lingotek_locale\";s:5:\"th-TH\";}i:5;a:27:{s:7:\"term_id\";i:27;s:4:\"name\";s:16:\"Bahasa Indonesia\";s:4:\"slug\";s:2:\"id\";s:10:\"term_group\";i:5;s:16:\"term_taxonomy_id\";i:27;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"id_ID\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:28;s:19:\"tl_term_taxonomy_id\";i:28;s:8:\"tl_count\";i:1;s:6:\"locale\";R:144;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"id-ID\";s:8:\"facebook\";s:5:\"id_ID\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/id.png\";s:4:\"flag\";s:691:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFASURBVHjaYrwvyMzw6S8DGPwD0//ACAj+wNj/kNgAAcTC8P6vUF87UPr/v38M//79//v3/18g+Yfh35//v//++/vn/x8g+v3/N4hxe9YigABiYWAGG/biOQNI6V+wNBj9/f0PqOj3738g1b////rFLCUNtAEggFgY/jIAjYSo/gdWygBU8ec3iP37z7/fv0DsXyARxj9AOQaAAGIBOe7b179fPv3/85cBah5Q6a9/v8HafoOM//frF1CckYf3FwMDQACxCOSmctjY//34EeSef2AEchiY8QfsB4jlf/8yCwiKnT8LEECMf/+CguY/EDCAIW7AxMT0/v17gABi+ffvHyMjI0g9Az7VEFmgLwACiAmoAb9SNG0AAQSyAWgXRA8DDADtZEABQC5IFqgYIIBAGn78+PEPAhjAEAeAaAUIMAD/YnbumkL3sQAAAABJRU5ErkJggg==\" title=\"Bahasa Indonesia (id_ID)\" alt=\"Bahasa Indonesia\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/id/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/id/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"64\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"id\";s:15:\"lingotek_locale\";s:5:\"id-ID\";}i:6;a:27:{s:7:\"term_id\";i:31;s:4:\"name\";s:13:\"Bahasa Melayu\";s:4:\"slug\";s:2:\"ms\";s:10:\"term_group\";i:6;s:16:\"term_taxonomy_id\";i:31;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"ms_MY\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:32;s:19:\"tl_term_taxonomy_id\";i:32;s:8:\"tl_count\";i:1;s:6:\"locale\";R:171;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"ms-MY\";s:8:\"facebook\";s:5:\"ms_MY\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/my.png\";s:4:\"flag\";s:873:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHNSURBVHjaYmRgOCnIeWHTkh4GBgavqKLPP/UYGP4B0UkGewEIi4HhDxIJEECMgpwzH95nBqref1RdR/0RG9vP9VsNb98T6mgSYWf++5+B4f+/f/9h4MuzZwABADEAzv8Edm6yAABQxskPNS7GDAr2AP79SkHncL1W7GJjCAD5//v8//v6/vv7//r6Axwb3KipAoiFAQT+vXjJo6bExMPx59t35v////7+zSAwexoH85///8HGgwlGZmaV/AKAAGLkZp7+6vm//3+fd0z2Sgjbz/D/z7QFNucvSc1lK+dk+Pnvzx+w8b////nNLCNzfcMGgABiZGA4OmUit6fDdqDB+VWRQCf8Ajth8ypRTuZfYOPB5jMwAG34eO8eQAAxnmRgkMsv//ngEcPv3//+gEwCmvfv12+O358YOdj/AwWBusEkq7z81T17AAKI8ffzp4y8fP///mX4zwB1LMTRQIMhZoNJoBwjC8ubu3cBAojlnqS0aH7+nwcPQCb9+QMyDOImcMiAuBDBv3/ZFBUvHT0KEECM3+/fZxEUhBoDC3UGIAmPATCDASz7+uZNgABi+fXi2Y8nT/4BATBAgAjG+ANmM0D4fyCMf0wMDAABBgDcZ1sWFOFmVAAAAABJRU5ErkJggg==\" title=\"Bahasa Melayu (ms_MY)\" alt=\"Bahasa Melayu\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/ms/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/ms/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"65\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"my\";s:15:\"lingotek_locale\";s:5:\"ms-MY\";}i:7;a:27:{s:7:\"term_id\";i:35;s:4:\"name\";s:9:\"한국어\";s:4:\"slug\";s:2:\"ko\";s:10:\"term_group\";i:7;s:16:\"term_taxonomy_id\";i:35;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"ko_KR\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:36;s:19:\"tl_term_taxonomy_id\";i:36;s:8:\"tl_count\";i:1;s:6:\"locale\";R:198;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"ko-KR\";s:8:\"facebook\";s:5:\"ko_KR\";s:8:\"flag_url\";s:71:\"http://localhost/project/ecats/wp-content/plugins/polylang/flags/kr.png\";s:4:\"flag\";s:893:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHiSURBVHjaYvz4/SsDEvj37x+YhLCgGAb+ADFAADEBpfk4uIDo2YNHV89fZP3PyMfBLcDFxc/NLcjNy8nMfPnM2cd374ry84sJCAE1AAQQC8Tg169fb9269cP7DyJiYsqKiv/v3v3/589/FZVnL16uXbtGQFBQWEhIRlYWaAVAAIFs+P///4cPH37//m1oYqwsJfm/t/d/QcH/vJz/ddUKYqJuXl5v3rx5/uIFUBnQBoAAYgT6gZedE6jt1atXXLy8jHsOcEyd+P/37y9/mH7+/CWQEPEpIvLj6zdS0lKMjIwPnj0BCCAWiC+BukVERICMnW/4jP8w/2bibDLMf/aTvfrxOX12dm5pKaACBkZGoJMAAgioAaQaCN6+fcvDzfVVXTdXvZKZjfURu9iHHz/vGrupf//85u1HSUlJRqCef/8AAogJiIGqb968OW3aNKC/PQw4VS1UnjALMXz/4azD5uokvW/f/vr6+pMnT0L8ABBALP/AocTFxQXkHzx0WFNLszZM7ZIJ+5+//3UV2O/du7l6zXphYWEBAQGgAqCTAAII5AcgS1pa2t3d/eXLl2JikkD9ekpcEHeKi0t5eHgANairq4PjlQEggBifv32LHJFwiuEPmMEAYf/5A1YNxAABBgCFMRk3L8TWJAAAAABJRU5ErkJggg==\" title=\"한국어 (ko_KR)\" alt=\"한국어\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:34:\"http://localhost/project/ecats/ko/\";s:10:\"search_url\";s:34:\"http://localhost/project/ecats/ko/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"66\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"kr\";s:15:\"lingotek_locale\";s:5:\"ko-KR\";}}', 'yes'),
(1232, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
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
(22, 7, '_edit_lock', '1583397179:1'),
(23, 8, '_edit_last', '1'),
(24, 8, '_edit_lock', '1583154156:1'),
(25, 25, '_edit_last', '1'),
(26, 25, '_edit_lock', '1583376514:1'),
(27, 36, '_edit_last', '1'),
(28, 36, '_edit_lock', '1583294060:1'),
(29, 55, '_pll_strings_translations', 'a:0:{}'),
(30, 56, '_pll_strings_translations', 'a:0:{}'),
(31, 57, '_pll_strings_translations', 'a:0:{}'),
(32, 58, '_pll_strings_translations', 'a:0:{}'),
(33, 59, '_pll_strings_translations', 'a:0:{}'),
(35, 62, '_wp_attached_file', '2020/03/logo.gif'),
(36, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:40;s:4:\"file\";s:16:\"2020/03/logo.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
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
(85, 88, '_wp_attached_file', '2020/03/iqoption_small.jpg'),
(86, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:235;s:4:\"file\";s:26:\"2020/03/iqoption_small.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 89, '_wp_attached_file', '2020/03/iqoption_logo.jpg'),
(88, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:40;s:4:\"file\";s:25:\"2020/03/iqoption_logo.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:3:{i:0;s:7:\"370x300\";i:1;s:6:\"125x40\";i:2;s:7:\"300x200\";}}}'),
(106, 68, 'views', '1'),
(107, 1, 'views', '1'),
(113, 93, '_wp_attached_file', '2020/03/olymptrade_vn_small.jpg'),
(114, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:235;s:4:\"file\";s:31:\"2020/03/olymptrade_vn_small.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 94, '_wp_attached_file', '2020/03/olymp_trade_logo.jpg'),
(134, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:40;s:4:\"file\";s:28:\"2020/03/olymp_trade_logo.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:2:{i:0;s:6:\"125x40\";i:1;s:7:\"300x200\";}}}'),
(159, 96, '_wp_attached_file', '2020/03/index.gif'),
(160, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:546;s:4:\"file\";s:17:\"2020/03/index.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:2:{i:0;s:6:\"125x40\";i:1;s:7:\"410x535\";}}}'),
(257, 67, 'views', '37'),
(258, 103, '_wp_attached_file', '2020/03/forexfanclub-logo.png'),
(259, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:55;s:4:\"file\";s:29:\"2020/03/forexfanclub-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 84, 'views', '2'),
(335, 2, '_edit_lock', '1583377051:1'),
(336, 2, '_edit_last', '1'),
(337, 2, '_kksr_status', ''),
(338, 2, 'views', '18'),
(400, 126, '_edit_last', '1'),
(401, 126, '_edit_lock', '1583389571:1'),
(402, 127, '_edit_last', '1'),
(403, 127, '_edit_lock', '1583394542:1'),
(404, 127, '_kksr_status', ''),
(405, 126, '_kksr_status', ''),
(406, 126, '_thumbnail_id', '96'),
(407, 129, '_wp_attached_file', '2020/03/index-1.gif'),
(408, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:546;s:4:\"file\";s:19:\"2020/03/index-1.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(409, 127, '_thumbnail_id', '129'),
(431, 133, '_edit_last', '1'),
(432, 133, '_edit_lock', '1583478845:1'),
(433, 138, 'views', '1'),
(434, 1, '_edit_lock', '1583393273:1'),
(435, 1, '_edit_last', '1'),
(438, 1, '_kksr_status', ''),
(439, 140, '_edit_last', '1'),
(440, 140, '_edit_lock', '1583399480:1'),
(443, 140, '_kksr_status', ''),
(450, 142, '_edit_last', '1'),
(451, 142, '_edit_lock', '1583457550:1'),
(452, 142, '_thumbnail_id', '89'),
(453, 142, '_kksr_status', ''),
(454, 142, 'money_minimum', '10'),
(455, 142, '_money_minimum', 'field_5e5d2175c5336'),
(456, 142, 'tk_demo', '1'),
(457, 142, '_tk_demo', 'field_5e5d2825c5338'),
(458, 142, 'image_demo', '93'),
(459, 142, '_image_demo', 'field_5e5d29bb20487'),
(460, 142, 'nen_rivew', '0'),
(461, 142, '_nen_rivew', 'field_5e5d2e86f98f2'),
(462, 142, 'intro_content', ''),
(463, 142, '_intro_content', 'field_5e5d2a27c8af6'),
(464, 142, 'end_page', ''),
(465, 142, '_end_page', 'field_5e5de050a8451'),
(466, 142, 'views', '4'),
(467, 143, '_edit_last', '1'),
(468, 143, '_thumbnail_id', '94'),
(469, 143, '_kksr_status', ''),
(470, 143, 'money_minimum', '10'),
(471, 143, '_money_minimum', 'field_5e5d2175c5336'),
(472, 143, 'tk_demo', '1'),
(473, 143, '_tk_demo', 'field_5e5d2825c5338'),
(474, 143, 'image_demo', '88'),
(475, 143, '_image_demo', 'field_5e5d29bb20487'),
(476, 143, 'nen_rivew', '0'),
(477, 143, '_nen_rivew', 'field_5e5d2e86f98f2'),
(478, 143, 'intro_content', ''),
(479, 143, '_intro_content', 'field_5e5d2a27c8af6'),
(480, 143, 'end_page', ''),
(481, 143, '_end_page', 'field_5e5de050a8451'),
(482, 143, '_edit_lock', '1583397725:1'),
(483, 143, 'views', '7'),
(484, 140, 'views', '1'),
(485, 84, '_wp_trash_meta_status', 'publish'),
(486, 84, '_wp_trash_meta_time', '1583399060'),
(487, 84, '_wp_desired_post_slug', 'hello-8'),
(488, 80, '_wp_trash_meta_status', 'publish'),
(489, 80, '_wp_trash_meta_time', '1583399060'),
(490, 80, '_wp_desired_post_slug', 'hello-7'),
(491, 78, '_wp_trash_meta_status', 'publish'),
(492, 78, '_wp_trash_meta_time', '1583399061'),
(493, 78, '_wp_desired_post_slug', 'hello-6'),
(494, 76, '_wp_trash_meta_status', 'publish'),
(495, 76, '_wp_trash_meta_time', '1583399062'),
(496, 76, '_wp_desired_post_slug', 'hello-5'),
(497, 74, '_wp_trash_meta_status', 'publish'),
(498, 74, '_wp_trash_meta_time', '1583399062'),
(499, 74, '_wp_desired_post_slug', 'hello-4'),
(500, 72, '_wp_trash_meta_status', 'publish'),
(501, 72, '_wp_trash_meta_time', '1583399063'),
(502, 72, '_wp_desired_post_slug', 'hello-3'),
(503, 67, '_wp_trash_meta_status', 'publish'),
(504, 67, '_wp_trash_meta_time', '1583399064'),
(505, 67, '_wp_desired_post_slug', 'hello-2'),
(506, 68, '_wp_trash_meta_status', 'publish'),
(507, 68, '_wp_trash_meta_time', '1583399065'),
(508, 68, '_wp_desired_post_slug', 'hello'),
(509, 1, '_wp_trash_meta_status', 'publish'),
(510, 1, '_wp_trash_meta_time', '1583399065'),
(511, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(512, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(515, 145, '_edit_last', '1'),
(516, 145, '_thumbnail_id', '93'),
(519, 145, '_kksr_status', ''),
(520, 145, '_edit_lock', '1583400302:1'),
(521, 147, 'money_minimum', '10'),
(522, 147, 'tk_demo', '1'),
(523, 147, 'image_demo', '88'),
(524, 147, 'nen_rivew', '0'),
(525, 147, 'intro_content', ''),
(526, 147, 'end_page', ''),
(527, 147, 'views', '4'),
(528, 147, '_thumbnail_id', '94'),
(529, 147, '_edit_last', '1'),
(530, 147, '_kksr_status', ''),
(531, 147, '_money_minimum', 'field_5e5d2175c5336'),
(532, 147, '_tk_demo', 'field_5e5d2825c5338'),
(533, 147, '_image_demo', 'field_5e5d29bb20487'),
(534, 147, '_nen_rivew', 'field_5e5d2e86f98f2'),
(535, 147, '_intro_content', 'field_5e5d2a27c8af6'),
(536, 147, '_end_page', 'field_5e5de050a8451'),
(537, 147, '_edit_lock', '1583457436:1'),
(538, 148, '_edit_last', '1'),
(539, 148, '_edit_lock', '1583458093:1'),
(540, 148, '_kksr_status', ''),
(541, 148, 'money_minimum', '2312323'),
(542, 148, '_money_minimum', 'field_5e5d2175c5336'),
(543, 148, 'tk_demo', '1'),
(544, 148, '_tk_demo', 'field_5e5d2825c5338'),
(545, 148, 'image_demo', '94'),
(546, 148, '_image_demo', 'field_5e5d29bb20487'),
(547, 148, 'nen_rivew', '0'),
(548, 148, '_nen_rivew', 'field_5e5d2e86f98f2'),
(549, 148, 'intro_content', ''),
(550, 148, '_intro_content', 'field_5e5d2a27c8af6'),
(551, 148, 'end_page', ''),
(552, 148, '_end_page', 'field_5e5de050a8451'),
(553, 148, '_thumbnail_id', '94'),
(554, 148, 'views', '14'),
(555, 148, '_kksr_casts', '1'),
(556, 148, '_kksr_ratings', '4'),
(557, 148, '_kksr_avg', '4'),
(558, 148, '_kksr_ref', '837ec5754f503cfaaee0929fd48974e7'),
(559, 145, 'views', '2'),
(560, 199, '_wp_attached_file', '2020/03/About-Forexfanclub.png'),
(561, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:30:\"2020/03/About-Forexfanclub.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(562, 200, '_wp_attached_file', '2020/03/Banner-forexfanclub.jpg'),
(563, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:281;s:4:\"file\";s:31:\"2020/03/Banner-forexfanclub.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(564, 2, '_wp_trash_meta_status', 'publish'),
(565, 2, '_wp_trash_meta_time', '1583482676'),
(566, 2, '_wp_desired_post_slug', 'trang-mau'),
(567, 201, '_edit_last', '1'),
(568, 201, '_wp_page_template', 'default'),
(569, 201, '_kksr_status', ''),
(570, 201, '_edit_lock', '1583482542:1'),
(571, 203, '_menu_item_type', 'post_type'),
(572, 203, '_menu_item_menu_item_parent', '0'),
(573, 203, '_menu_item_object_id', '201'),
(574, 203, '_menu_item_object', 'page'),
(575, 203, '_menu_item_target', ''),
(576, 203, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(577, 203, '_menu_item_xfn', ''),
(578, 203, '_menu_item_url', ''),
(580, 204, '_edit_last', '1'),
(581, 204, '_wp_page_template', 'default'),
(582, 204, '_kksr_status', ''),
(583, 204, '_edit_lock', '1583482589:1'),
(584, 206, '_edit_last', '1'),
(585, 206, '_wp_page_template', 'default'),
(586, 206, '_kksr_status', ''),
(587, 206, '_edit_lock', '1583483080:1'),
(588, 208, '_edit_last', '1'),
(589, 208, '_edit_lock', '1583483098:1'),
(590, 208, '_wp_page_template', 'default'),
(591, 208, '_kksr_status', ''),
(592, 210, '_menu_item_type', 'post_type'),
(593, 210, '_menu_item_menu_item_parent', '0'),
(594, 210, '_menu_item_object_id', '208'),
(595, 210, '_menu_item_object', 'page'),
(596, 210, '_menu_item_target', ''),
(597, 210, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(598, 210, '_menu_item_xfn', ''),
(599, 210, '_menu_item_url', ''),
(601, 211, '_menu_item_type', 'post_type'),
(602, 211, '_menu_item_menu_item_parent', '0'),
(603, 211, '_menu_item_object_id', '206'),
(604, 211, '_menu_item_object', 'page'),
(605, 211, '_menu_item_target', ''),
(606, 211, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(607, 211, '_menu_item_xfn', ''),
(608, 211, '_menu_item_url', ''),
(610, 212, '_menu_item_type', 'post_type'),
(611, 212, '_menu_item_menu_item_parent', '0'),
(612, 212, '_menu_item_object_id', '204'),
(613, 212, '_menu_item_object', 'page'),
(614, 212, '_menu_item_target', ''),
(615, 212, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(616, 212, '_menu_item_xfn', ''),
(617, 212, '_menu_item_url', ''),
(619, 206, 'views', '1'),
(620, 204, 'views', '1'),
(621, 213, '_edit_last', '1'),
(622, 213, '_wp_page_template', 'blog.php'),
(623, 213, '_kksr_status', ''),
(624, 213, '_edit_lock', '1583484841:1'),
(634, 216, 'money_minimum', '10'),
(635, 216, 'tk_demo', '1'),
(636, 216, 'image_demo', '88'),
(637, 216, 'nen_rivew', '0'),
(638, 216, 'intro_content', ''),
(639, 216, 'end_page', ''),
(640, 216, 'views', '4'),
(641, 216, '_thumbnail_id', '94'),
(642, 216, '_edit_last', '1'),
(643, 216, '_edit_lock', '1583483635:1'),
(644, 216, '_kksr_status', ''),
(645, 216, '_money_minimum', 'field_5e5d2175c5336'),
(646, 216, '_tk_demo', 'field_5e5d2825c5338'),
(647, 216, '_image_demo', 'field_5e5d29bb20487'),
(648, 216, '_nen_rivew', 'field_5e5d2e86f98f2'),
(649, 216, '_intro_content', 'field_5e5d2a27c8af6'),
(650, 216, '_end_page', 'field_5e5de050a8451'),
(651, 217, 'money_minimum', '10'),
(652, 217, 'tk_demo', '1'),
(653, 217, 'image_demo', '88'),
(654, 217, 'nen_rivew', '0'),
(655, 217, 'intro_content', ''),
(656, 217, 'end_page', ''),
(657, 217, 'views', '4'),
(658, 217, '_thumbnail_id', '94'),
(659, 217, '_edit_last', '1'),
(660, 217, '_edit_lock', '1583483646:1'),
(661, 217, '_kksr_status', ''),
(662, 217, '_money_minimum', 'field_5e5d2175c5336'),
(663, 217, '_tk_demo', 'field_5e5d2825c5338'),
(664, 217, '_image_demo', 'field_5e5d29bb20487'),
(665, 217, '_nen_rivew', 'field_5e5d2e86f98f2'),
(666, 217, '_intro_content', 'field_5e5d2a27c8af6'),
(667, 217, '_end_page', 'field_5e5de050a8451'),
(668, 218, 'money_minimum', '10'),
(669, 218, 'tk_demo', '1'),
(670, 218, 'image_demo', '88'),
(671, 218, 'nen_rivew', '0'),
(672, 218, 'intro_content', ''),
(673, 218, 'end_page', ''),
(674, 218, 'views', '4'),
(675, 218, '_thumbnail_id', '94'),
(676, 218, '_edit_last', '1'),
(677, 218, '_edit_lock', '1583483673:1'),
(678, 218, '_kksr_status', ''),
(679, 218, '_money_minimum', 'field_5e5d2175c5336'),
(680, 218, '_tk_demo', 'field_5e5d2825c5338'),
(681, 218, '_image_demo', 'field_5e5d29bb20487'),
(682, 218, '_nen_rivew', 'field_5e5d2e86f98f2'),
(683, 218, '_intro_content', 'field_5e5d2a27c8af6'),
(684, 218, '_end_page', 'field_5e5de050a8451'),
(685, 219, 'money_minimum', '10'),
(686, 219, 'tk_demo', '1'),
(687, 219, 'image_demo', '88'),
(688, 219, 'nen_rivew', '0'),
(689, 219, 'intro_content', ''),
(690, 219, 'end_page', ''),
(691, 219, 'views', '4'),
(692, 219, '_thumbnail_id', '94'),
(693, 219, '_edit_last', '1'),
(694, 219, '_edit_lock', '1583483701:1'),
(695, 219, '_kksr_status', ''),
(696, 219, '_money_minimum', 'field_5e5d2175c5336'),
(697, 219, '_tk_demo', 'field_5e5d2825c5338'),
(698, 219, '_image_demo', 'field_5e5d29bb20487'),
(699, 219, '_nen_rivew', 'field_5e5d2e86f98f2'),
(700, 219, '_intro_content', 'field_5e5d2a27c8af6'),
(701, 219, '_end_page', 'field_5e5de050a8451'),
(702, 220, 'money_minimum', '10'),
(703, 220, 'tk_demo', '1'),
(704, 220, 'image_demo', '88'),
(705, 220, 'nen_rivew', '0'),
(706, 220, 'intro_content', ''),
(707, 220, 'end_page', ''),
(708, 220, 'views', '4'),
(709, 220, '_thumbnail_id', '94'),
(710, 220, '_edit_last', '1'),
(711, 220, '_edit_lock', '1583483721:1'),
(712, 220, '_kksr_status', ''),
(713, 220, '_money_minimum', 'field_5e5d2175c5336'),
(714, 220, '_tk_demo', 'field_5e5d2825c5338'),
(715, 220, '_image_demo', 'field_5e5d29bb20487'),
(716, 220, '_nen_rivew', 'field_5e5d2e86f98f2'),
(717, 220, '_intro_content', 'field_5e5d2a27c8af6'),
(718, 220, '_end_page', 'field_5e5de050a8451'),
(719, 221, 'money_minimum', '10'),
(720, 221, 'tk_demo', '1'),
(721, 221, 'image_demo', '88'),
(722, 221, 'nen_rivew', '0'),
(723, 221, 'intro_content', ''),
(724, 221, 'end_page', ''),
(725, 221, 'views', '4'),
(726, 221, '_thumbnail_id', '94'),
(727, 221, '_edit_last', '1'),
(728, 221, '_edit_lock', '1583484556:1'),
(729, 221, '_kksr_status', ''),
(730, 221, '_money_minimum', 'field_5e5d2175c5336'),
(731, 221, '_tk_demo', 'field_5e5d2825c5338'),
(732, 221, '_image_demo', 'field_5e5d29bb20487'),
(733, 221, '_nen_rivew', 'field_5e5d2e86f98f2'),
(734, 221, '_intro_content', 'field_5e5d2a27c8af6'),
(735, 221, '_end_page', 'field_5e5de050a8451'),
(736, 222, '_menu_item_type', 'custom'),
(737, 222, '_menu_item_menu_item_parent', '0'),
(738, 222, '_menu_item_object_id', '222'),
(739, 222, '_menu_item_object', 'custom'),
(740, 222, '_menu_item_target', ''),
(741, 222, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(742, 222, '_menu_item_xfn', ''),
(743, 222, '_menu_item_url', '#pll_switcher'),
(745, 222, '_pll_menu_item', 'a:6:{s:22:\"hide_if_no_translation\";i:0;s:12:\"hide_current\";i:0;s:10:\"force_home\";i:0;s:10:\"show_flags\";i:1;s:10:\"show_names\";i:1;s:8:\"dropdown\";i:0;}'),
(746, 208, 'views', '0'),
(747, 213, 'views', '0'),
(748, 213, '_wp_trash_meta_status', 'publish'),
(749, 213, '_wp_trash_meta_time', '1583484924'),
(750, 213, '_wp_desired_post_slug', 'blog'),
(751, 223, '_menu_item_type', 'taxonomy'),
(752, 223, '_menu_item_menu_item_parent', '0'),
(753, 223, '_menu_item_object_id', '1'),
(754, 223, '_menu_item_object', 'category'),
(755, 223, '_menu_item_target', ''),
(756, 223, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(757, 223, '_menu_item_xfn', ''),
(758, 223, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
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
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-03-02 12:44:53', '2020-03-02 12:44:53', '<!-- wp:paragraph -->\r\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\r\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2020-03-05 09:04:25', '2020-03-05 09:04:25', '', 0, 'http://localhost/project/ecats/?p=1', 0, 'post', '', 1),
(2, 1, '2020-03-02 12:44:53', '2020-03-02 12:44:53', '<!-- wp:paragraph -->\r\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>... hoặc cái gì đó như thế này:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/project/ecats/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\r\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'trang-mau__trashed', '', '', '2020-03-06 08:17:56', '2020-03-06 08:17:56', '', 0, 'http://localhost/project/ecats/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-03-02 12:44:53', '2020-03-02 12:44:53', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost/project/ecats.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2020-03-02 12:44:53', '2020-03-02 12:44:53', '', 0, 'http://localhost/project/ecats/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-03-02 12:45:07', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-02 12:45:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=4', 0, 'post', '', 0),
(6, 1, '2020-03-02 12:56:28', '0000-00-00 00:00:00', '', 'Forex', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-02 12:56:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2020-03-02 13:01:07', '2020-03-02 13:01:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"theme-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Theme Custom', 'theme-custom', 'publish', 'closed', 'closed', '', 'group_5e5d0383eab56', '', '', '2020-03-05 06:40:35', '2020-03-05 06:40:35', '', 0, 'http://localhost/project/ecats/?post_type=acf-field-group&#038;p=7', 0, 'acf-field-group', '', 0),
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
(19, 1, '2020-03-02 14:57:26', '2020-03-02 14:57:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Địa chỉ', 'dia_chi', 'publish', 'closed', 'closed', '', 'field_5e5d1e4e54415', '', '', '2020-03-05 06:40:02', '2020-03-05 06:40:02', '', 7, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=19', 5, 'acf-field', '', 0),
(20, 1, '2020-03-02 14:57:26', '2020-03-02 14:57:26', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Số điện thoại', 'phone_number', 'publish', 'closed', 'closed', '', 'field_5e5d1e7a54416', '', '', '2020-03-02 14:59:29', '2020-03-02 14:59:29', '', 7, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=20', 2, 'acf-field', '', 0),
(25, 1, '2020-03-02 15:08:29', '2020-03-02 15:08:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"forex\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Giá trị', 'gia-tri', 'publish', 'closed', 'closed', '', 'group_5e5d214900b27', '', '', '2020-03-04 06:41:37', '2020-03-04 06:41:37', '', 0, 'http://localhost/project/ecats/?post_type=acf-field-group&#038;p=25', 0, 'acf-field-group', '', 0),
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
(64, 1, '2020-03-03 02:56:51', '2020-03-03 02:56:51', '', 'polylang_mo_27', '', 'private', 'closed', 'closed', '', 'polylang_mo_27', '', '', '2020-03-03 02:56:51', '2020-03-03 02:56:51', '', 0, 'http://localhost/project/ecats/?post_type=polylang_mo&p=64', 0, 'polylang_mo', '', 0),
(65, 1, '2020-03-03 02:59:34', '2020-03-03 02:59:34', '', 'polylang_mo_31', '', 'private', 'closed', 'closed', '', 'polylang_mo_31', '', '', '2020-03-03 02:59:34', '2020-03-03 02:59:34', '', 0, 'http://localhost/project/ecats/?post_type=polylang_mo&p=65', 0, 'polylang_mo', '', 0),
(66, 1, '2020-03-03 03:03:29', '2020-03-03 03:03:29', '', 'polylang_mo_35', '', 'private', 'closed', 'closed', '', 'polylang_mo_35', '', '', '2020-03-03 03:03:29', '2020-03-03 03:03:29', '', 0, 'http://localhost/project/ecats/?post_type=polylang_mo&p=66', 0, 'polylang_mo', '', 0),
(67, 1, '2020-03-03 03:08:08', '2020-03-03 03:08:08', '', 'Hello', '', 'trash', 'open', 'open', '', 'hello-2__trashed', '', '', '2020-03-05 09:04:24', '2020-03-05 09:04:24', '', 0, 'http://localhost/project/ecats/?p=67', 0, 'post', '', 0),
(68, 1, '2020-03-03 03:06:33', '2020-03-03 03:06:33', '', 'Hello', '', 'trash', 'open', 'open', '', 'hello__trashed', '', '', '2020-03-05 09:04:25', '2020-03-05 09:04:25', '', 0, 'http://localhost/project/ecats/?p=68', 0, 'post', '', 0),
(69, 1, '2020-03-03 03:06:33', '2020-03-03 03:06:33', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-03-03 03:06:33', '2020-03-03 03:06:33', '', 68, 'http://localhost/project/ecats/index.php/2020/03/03/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-03-03 03:07:37', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-03 03:07:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=70', 0, 'post', '', 0),
(71, 1, '2020-03-03 03:08:08', '2020-03-03 03:08:08', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-03-03 03:08:08', '2020-03-03 03:08:08', '', 67, 'http://localhost/project/ecats/67-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-03-03 03:08:14', '2020-03-03 03:08:14', '', 'Hello', '', 'trash', 'open', 'open', '', 'hello-3__trashed', '', '', '2020-03-05 09:04:23', '2020-03-05 09:04:23', '', 0, 'http://localhost/project/ecats/?p=72', 0, 'post', '', 0),
(73, 1, '2020-03-03 03:08:14', '2020-03-03 03:08:14', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2020-03-03 03:08:14', '2020-03-03 03:08:14', '', 72, 'http://localhost/project/ecats/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-03-03 03:08:19', '2020-03-03 03:08:19', '', 'Hello', '', 'trash', 'open', 'open', '', 'hello-4__trashed', '', '', '2020-03-05 09:04:22', '2020-03-05 09:04:22', '', 0, 'http://localhost/project/ecats/?p=74', 0, 'post', '', 0),
(75, 1, '2020-03-03 03:08:19', '2020-03-03 03:08:19', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-03-03 03:08:19', '2020-03-03 03:08:19', '', 74, 'http://localhost/project/ecats/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-03-03 03:08:25', '2020-03-03 03:08:25', '', 'Hello', '', 'trash', 'open', 'open', '', 'hello-5__trashed', '', '', '2020-03-05 09:04:22', '2020-03-05 09:04:22', '', 0, 'http://localhost/project/ecats/?p=76', 0, 'post', '', 0),
(77, 1, '2020-03-03 03:08:25', '2020-03-03 03:08:25', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-03-03 03:08:25', '2020-03-03 03:08:25', '', 76, 'http://localhost/project/ecats/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-03-03 03:08:31', '2020-03-03 03:08:31', '', 'Hello', '', 'trash', 'open', 'open', '', 'hello-6__trashed', '', '', '2020-03-05 09:04:21', '2020-03-05 09:04:21', '', 0, 'http://localhost/project/ecats/?p=78', 0, 'post', '', 0),
(79, 1, '2020-03-03 03:08:31', '2020-03-03 03:08:31', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-03-03 03:08:31', '2020-03-03 03:08:31', '', 78, 'http://localhost/project/ecats/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-03-03 03:08:37', '2020-03-03 03:08:37', '', 'Hello', '', 'trash', 'open', 'open', '', 'hello-7__trashed', '', '', '2020-03-05 09:04:20', '2020-03-05 09:04:20', '', 0, 'http://localhost/project/ecats/?p=80', 0, 'post', '', 0),
(81, 1, '2020-03-03 03:08:37', '2020-03-03 03:08:37', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-03-03 03:08:37', '2020-03-03 03:08:37', '', 80, 'http://localhost/project/ecats/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-03-03 03:08:42', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-03 03:08:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=82', 0, 'post', '', 0),
(83, 1, '2020-03-03 03:08:45', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-03 03:08:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=83', 0, 'post', '', 0),
(84, 1, '2020-03-03 03:09:02', '2020-03-03 03:09:02', '', 'Hello', '', 'trash', 'open', 'open', '', 'hello-8__trashed', '', '', '2020-03-05 09:04:20', '2020-03-05 09:04:20', '', 0, 'http://localhost/project/ecats/?p=84', 0, 'post', '', 0),
(85, 1, '2020-03-03 03:09:02', '2020-03-03 03:09:02', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2020-03-03 03:09:02', '2020-03-03 03:09:02', '', 84, 'http://localhost/project/ecats/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-03-03 03:22:01', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-03 03:22:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=86', 0, 'forex', '', 0),
(88, 1, '2020-03-03 03:41:02', '2020-03-03 03:41:02', '', 'iqoption_small', '', 'inherit', 'open', 'closed', '', 'iqoption_small', '', '', '2020-03-06 08:36:16', '2020-03-06 08:36:16', '', 216, 'http://localhost/project/ecats/wp-content/uploads/2020/03/iqoption_small.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2020-03-03 03:41:30', '2020-03-03 03:41:30', '', 'iqoption_logo', '', 'inherit', 'open', 'closed', '', 'iqoption_logo', '', '', '2020-03-03 03:41:30', '2020-03-03 03:41:30', '', 0, 'http://localhost/project/ecats/wp-content/uploads/2020/03/iqoption_logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2020-03-03 04:15:38', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-03 04:15:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=90', 0, 'forex', '', 0),
(91, 1, '2020-03-03 04:43:39', '2020-03-03 04:43:39', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Trang đích', 'end_page', 'publish', 'closed', 'closed', '', 'field_5e5de050a8451', '', '', '2020-03-03 04:43:39', '2020-03-03 04:43:39', '', 36, 'http://localhost/project/ecats/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(93, 1, '2020-03-03 06:23:40', '2020-03-03 06:23:40', '', 'olymptrade_vn_small', '', 'inherit', 'open', 'closed', '', 'olymptrade_vn_small', '', '', '2020-03-03 06:23:40', '2020-03-03 06:23:40', '', 0, 'http://localhost/project/ecats/wp-content/uploads/2020/03/olymptrade_vn_small.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2020-03-03 06:24:32', '2020-03-03 06:24:32', '', 'olymp_trade_logo', '', 'inherit', 'open', 'closed', '', 'olymp_trade_logo', '', '', '2020-03-06 01:28:09', '2020-03-06 01:28:09', '', 148, 'http://localhost/project/ecats/wp-content/uploads/2020/03/olymp_trade_logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2020-03-03 07:37:56', '2020-03-03 07:37:56', '', 'index', '', 'inherit', 'open', 'closed', '', 'index', '', '', '2020-03-03 07:37:56', '2020-03-03 07:37:56', '', 0, 'http://localhost/project/ecats/wp-content/uploads/2020/03/index.gif', 0, 'attachment', 'image/gif', 0),
(97, 1, '2020-03-03 08:06:29', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-03 08:06:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=97', 0, 'forex', '', 0),
(99, 1, '2020-03-03 08:34:13', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-03 08:34:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=99', 0, 'forex', '', 0),
(103, 1, '2020-03-04 01:15:32', '2020-03-04 01:15:32', '', 'forexfanclub logo', '', 'inherit', 'open', 'closed', '', 'forexfanclub-logo', '', '', '2020-03-04 01:15:32', '2020-03-04 01:15:32', '', 0, 'http://localhost/project/ecats/wp-content/uploads/2020/03/forexfanclub-logo.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2020-03-05 02:16:04', '2020-03-05 02:16:04', '<!-- wp:paragraph -->\r\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>... hoặc cái gì đó như thế này:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/project/ecats/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\r\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-03-05 02:16:04', '2020-03-05 02:16:04', '', 2, 'http://localhost/project/ecats/2-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2020-03-05 02:39:15', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-03-05 02:39:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=118', 0, 'forex', '', 0),
(119, 1, '2020-03-05 02:47:04', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-03-05 02:47:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=119', 0, 'forex', '', 0),
(120, 1, '2020-03-05 02:50:39', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-03-05 02:50:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=120', 0, 'forex', '', 0),
(121, 1, '2020-03-05 03:23:51', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-03-05 03:23:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=121', 0, 'forex', '', 0),
(122, 1, '2020-03-05 03:36:33', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-03-05 03:36:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=122', 0, 'forex', '', 0),
(124, 1, '2020-03-05 03:46:05', '2020-03-05 03:46:05', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:5;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:20;s:4:\"step\";s:0:\"\";}', 'Số bài hiển thị home', 'number_show_home', 'publish', 'closed', 'closed', '', 'field_5e60756a89387', '', '', '2020-03-05 06:40:34', '2020-03-05 06:40:34', '', 7, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=124', 3, 'acf-field', '', 0),
(125, 1, '2020-03-05 03:46:05', '2020-03-05 03:46:05', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:5;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:35;s:4:\"step\";s:0:\"\";}', 'Số bài hiển thị Top', 'number_show_top', 'publish', 'closed', 'closed', '', 'field_5e6075bf89388', '', '', '2020-03-05 06:40:34', '2020-03-05 06:40:34', '', 7, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=125', 4, 'acf-field', '', 0),
(126, 1, '2020-03-05 03:52:16', '2020-03-05 03:52:16', '<div class=\"jhH5U\">\r\n<div id=\"tw-ob\" class=\"tw-src-ltr\">\r\n<div class=\"oSioSc\">\r\n<div id=\"tw-target\">\r\n<div id=\"kAz1tf\" class=\"g9WsWb\">\r\n<div id=\"tw-target-text-container\" class=\"tw-ta-container tw-nfl\" tabindex=\"0\">\r\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span lang=\"en\">Hello! You can use Ecattrade.com, a site for information and trust.\r\n\r\nEcattrade.com you have talent, news and finance, finance, finance, finance, talent\r\n\r\nOur love, your love and your attention. The rest of us, part of them.\r\n\r\nOne of the important issues, important in health care. The whole software and synthesized out.</span></pre>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'eCatTrade - Intro website', '', 'publish', 'closed', 'closed', '', 'ecattrade-gioi-thieu-website-2', '', '', '2020-03-05 06:08:30', '2020-03-05 06:08:30', '', 0, 'http://localhost/project/ecats/?post_type=gt_intro&#038;p=126', 0, 'gt_intro', '', 0),
(127, 1, '2020-03-05 03:51:58', '2020-03-05 03:51:58', 'Xin chào! Chào mừng bạn đến với Ecattrade.com, trang thông tin đáng tin cậy dành cho các nhà giao dịch đến từ Việt Nam về giao dịch Forex, CFD, Tiền Điện Tử và Quyền Chọn Nhị Phân.\r\n\r\nTại Ecattrade.com bạn sẽ tìm thấy các thông tin về các chiến lược giao dịch cơ bản, các tín hiệu, chỉ số, đánh giá về các nền tảng quyền chọn nhị phân và nhà môi giới Forex…\r\n\r\nChúng tôi lý giải vì sao quyền chọn nhị phân lại rất phổ biến hiện nay, làm thế nào để tham gia thị trường này và những điều bạn có thể kỳ vọng. Chúng tôi tổng hợp một cách chi tiết cách nhà đầu tư giao dịch trên nền tảng (công ty môi giới) như thế nào và làm thế nào có thể chọn được công ty giao dịch tốt, giúp bạn có thể tạo ra lợi nhuận.\r\n\r\nMột trong những quyết định quan trọng nhất trong sự nghiệp của một nhà đầu tư là chọn được đúng công ty môi giới đáng tin cậy. Chúng tôi đánh giá và tổng hợp ra các công ty tốt nhất, cung cấp thông tin quan tọng về từng công ty để bạn lựa chọn.', 'eCatTrade - Giới thiệu website', '', 'publish', 'closed', 'closed', '', 'ecattrade-gioi-thieu-website', '', '', '2020-03-05 04:24:31', '2020-03-05 04:24:31', '', 0, 'http://localhost/project/ecats/?post_type=gt_intro&#038;p=127', 0, 'gt_intro', '', 0),
(128, 1, '2020-03-05 03:52:04', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-05 03:52:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=gt_intro&p=128', 0, 'gt_intro', '', 0),
(129, 1, '2020-03-05 04:24:27', '2020-03-05 04:24:27', '', 'index', '', 'inherit', 'open', 'closed', '', 'index-2', '', '', '2020-03-05 04:24:27', '2020-03-05 04:24:27', '', 127, 'http://localhost/project/ecats/wp-content/uploads/2020/03/index-1.gif', 0, 'attachment', 'image/gif', 0),
(130, 1, '2020-03-05 04:35:06', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-03-05 04:35:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=rivew&p=130', 0, 'rivew', '', 0),
(131, 1, '2020-03-05 04:35:15', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-05 04:35:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=131', 0, 'post', '', 0),
(133, 1, '2020-03-05 06:44:47', '2020-03-05 06:44:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"theme-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Top', 'top', 'publish', 'closed', 'closed', '', 'group_5e609f2385f06', '', '', '2020-03-06 06:45:50', '2020-03-06 06:45:50', '', 0, 'http://localhost/project/ecats/?post_type=acf-field-group&#038;p=133', 0, 'acf-field-group', '', 0),
(134, 1, '2020-03-05 06:44:47', '2020-03-05 06:44:47', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Top Post', 'top_post', 'publish', 'closed', 'closed', '', 'field_5e609f279d8ff', '', '', '2020-03-06 06:38:02', '2020-03-06 06:38:02', '', 133, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=134', 0, 'acf-field', '', 0),
(138, 1, '2020-03-05 07:29:36', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-05 07:29:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=138', 0, 'post', '', 0),
(139, 1, '2020-03-05 07:29:47', '2020-03-05 07:29:47', '<!-- wp:paragraph -->\r\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\r\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-03-05 07:29:47', '2020-03-05 07:29:47', '', 1, 'http://localhost/project/ecats/1-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2020-03-05 07:52:11', '2020-03-05 07:52:11', 'dấdasd asdsad aasd asd ád', 'sadsa', '', 'publish', 'open', 'open', '', 'sadsa', '', '', '2020-03-05 09:04:35', '2020-03-05 09:04:35', '', 0, 'http://localhost/project/ecats/?p=140', 0, 'post', '', 0),
(141, 1, '2020-03-05 07:52:11', '2020-03-05 07:52:11', 'dấdasd', 'sadsa', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2020-03-05 07:52:11', '2020-03-05 07:52:11', '', 140, 'http://localhost/project/ecats/140-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(142, 1, '2020-03-05 08:40:46', '2020-03-05 08:40:46', 'Olymp Trade hiện tại cũng đang là một trong những sàn giao dịch quyền chọn  được yêu thích nhất tại Việt Nam. Website hỗ trợ nhiều ngôn ngữ khác nhau trong đó có tiếng Việt. Hãy cùng các chuyên gia giao dịch hàng đầu của chúng tôi đánh giá chi tiết Olymptrade để xác định xem sàn giao dịch này đáng tin cậy hay lừa đảo và bạn có nên tham gia chơi tại đây hay không\r\n<h2><img class=\"alignnone size-full wp-image-1324 lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn-300x159.jpg 300w\" alt=\"Olymp Trade\" width=\"600\" height=\"318\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn-300x159.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn.jpg\" data-was-processed=\"true\" /></h2>\r\n<div id=\"toc_container\" class=\"toc_white no_bullets\">\r\n<ul class=\"toc_list\">\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Oymp_Trade_co_dang_tin_cay_hay_lua_dao\">Oymp Trade có đáng tin cậy hay lừa đảo?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Thanh_tich_cua_Olymp_Trade_trong_nam_2019\">Thành tích của Olymp Trade trong năm 2019</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_tai_khoan_Demo_khong\">Olymp Trade có tài khoản Demo không?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Cac_loai_tai_khoan\">Các loại tài khoản</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_chuong_trinh_dao_tao_mien_phi_cho_cac_nha_giao_dich_hay_khong\">Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Nap_tien_vao_tai_khoan_Olymp_Trade_bang_cach_nao\">Nạp tiền vào tài khoản Olymp Trade bằng cách nào?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Rut_tien_tu_tai_khoan_Olymptrade_nhu_the_nao\">Rút tiền từ tài khoản Olymptrade như thế nào?</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Olymp_Trade_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong\">Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?</a>\r\n<ul>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Ung_dung_tren_Android\">Ứng dụng trên Android</a></li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Ung_dung_tren_iOS\">Ứng dụng trên iOS</a></li>\r\n</ul>\r\n</li>\r\n 	<li><a href=\"https://ecattrade.com/vi/review/olymptrade#Vay_Olymp_Trade_co_phai_la_mot_su_lua_chon_tot_danh_cho_cac_nha_giao_dich_Viet_nam_hay_khong\">Vậy Olymp Trade có phải là một sự lựa chọn tốt dành cho các nhà giao dịch Việt nam hay không?</a></li>\r\n</ul>\r\n</div>\r\n<h2><span id=\"Oymp_Trade_co_dang_tin_cay_hay_lua_dao\">Oymp Trade có đáng tin cậy hay lừa đảo?</span></h2>\r\n<img class=\"alignnone wp-image-1289 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao-300x175.jpg 300w\" alt=\"Oymp Trade có đáng tin cậy hay lừa đảo?\" width=\"600\" height=\"350\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao-300x175.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_dang_tin_cay_hay_lua_dao.jpg\" data-was-processed=\"true\" />\r\n\r\nVào năm 2016, Olymp Trade đã được công nhận là thành viên chính thức của tổ chức Fina Com (Ủy Ban Tài Chính). Tương tự như FMRRC, vai trò của FinaCom là hỗ trợ các khách hàng với tư cách là trung gian thứ ba nhằm giải quyết các khiếu nại hoặc tranh chấp phát sinh nếu như các khách hàng không tìm được tiếng nói chung với nhà môi giới của họ.\r\n\r\nTuy nhiên vẫn nhiều người e ngại rằng liệu Finacom có thể đảm bảo tiền của nhà đầu tư tại Olymp Trade an toàn như CySEC có thể làm hay không? Theo như trên website của Olymp Trade có đề cập, họ đang trong quá trình đăng ký thành viên của CySEC và chúng tôi sẽ tiếp tục cập nhật trong thời gian gian tới.\r\n\r\nHiện tại với sự bảo trợ của FMRRC và FinaCom cùng với hơn 4 năm hoạt động trên thị trường giao dịch quyền chọn  không để lại tiếng xấu gì, tốc độ phát triển nhanh và ổn định, có thể khẳng định rằng Olymp Trade là một sàn giao dịch hoàn toàn đáng tin cậy.\r\n<div><iframe class=\"lazyloaded\" src=\"https://player.vimeo.com/video/294569770?color=ff0179&amp;title=0&amp;byline=0&amp;portrait=0\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-rocket-lazyload=\"fitvidscompatible\" data-lazy-src=\"https://player.vimeo.com/video/294569770?color=ff0179&amp;title=0&amp;byline=0&amp;portrait=0\" data-was-processed=\"true\" data-mce-fragment=\"1\"></iframe></div>\r\n<h2><span id=\"Thanh_tich_cua_Olymp_Trade_trong_nam_2019\">Thành tích của Olymp Trade trong năm 2019</span></h2>\r\n<ul>\r\n 	<li>Có 37,990,740 giao dịch đã được thực hiện trong tháng trước.</li>\r\n 	<li>Mức giao dịch trung bình là $4.7 trong tháng trước.</li>\r\n 	<li>Oymp Trade hiện có hơn 25,000 nhà giao dịch hoạt động.</li>\r\n 	<li>Tháng trước, các nhà giao dịch nhận được mức lợi nhuận lên tới $13,681,062 từ sàn giao dịch.</li>\r\n 	<li>Hàng tháng, tỷ lệ thanh toán của sàn giao dịch tăng trung bình 7%.</li>\r\n</ul>\r\n<h2><span id=\"Olymp_Trade_co_tai_khoan_Demo_khong\">Olymp Trade có tài khoản Demo không?</span></h2>\r\n<img class=\"alignnone wp-image-1296 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong-300x250.jpg 300w\" alt=\"Olymp Trade có tài khoản Demo không?\" width=\"600\" height=\"500\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong-300x250.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_tai_khoan_demo_khong.jpg\" data-was-processed=\"true\" />\r\n\r\nCâu trả lời là CÓ. Olymp có hai loại tài khoản khác nhau là Tài khoản Demo và Tài Khoản Thực.\r\n<h2><span id=\"Cac_loai_tai_khoan\">Các loại tài khoản</span></h2>\r\n<strong><em>Tài khoản Demo: </em></strong>Là loại tài khoản lý tưởng dành cho những người chơi mới tham gia giao dịch tại Olymp Trade. Việc đăng ký tài khoản rất đơn giản, bạn chỉ cần điền đầy đủ các thông tin đăng ký bao gồm Tên, email, số điện thoại đăng ký và tiền tệ. Sau khi xác nhận qua email, bạn sẽ có ngay tài khoản với $10000 tiền ảo trong tài khoản để bạn giao dịch. Về cơ bản, tài khoản demo hoàn toàn giống với tài khoản thực, chỉ có điều là thay vì giao dịch bằng tiền thật thì bạn giao dịch bằng tiền ảo và sẽ không bị mất tiền khi bạn giao dịch thua. Đây là điều lý tưởng để giúp bạn làm quen dần với nền tảng và khi bạn đã có thể nắm rõ được cách chơi cũng như tỷ lệ thắng cao thì bạn có thể đăng ký tài khoản thực và tham gia bằng tiền thật.\r\n\r\n<strong><em>Tài khoản thực</em></strong>: Để đăng ký tài khoản thực bạn chỉ cần thực hiện nạp tiền vào tài khoản demo của bạn với số tiền từ $10 trở lên. Bạn có thể thực hiện giao dịch bằng số tiền bạn nạp và khi bạn giành chiến thắng, bạn có thể rút tiền.\r\n\r\nTài khoản thực được chia làm 2 loại là <strong>tài khoản thường</strong> và <strong>tài khoản VIP</strong> trong đó tài khoản thường là tài khoản có số tiền nạp từ $10-$2000. Tài khoản VIP là tài khoản có số tiền lớn hơn $2000. Khi trở thành thành viên VIP, bạn sẽ được hưởng thêm 1 số quyền lợi bao gồm sẽ có một người quản lý hỗ trợ và có thể truy cập vào nhiều thông tin hơn trên website, tăng tiền giao dịch và lợi nhuận.\r\n<h2><span id=\"Olymp_Trade_co_chuong_trinh_dao_tao_mien_phi_cho_cac_nha_giao_dich_hay_khong\">Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?</span></h2>\r\n<img class=\"alignnone wp-image-1303 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien-300x139.jpg 300w\" alt=\"Olymp Trade có chương trình đào tạo miễn phí cho các nhà giao dịch hay không?\" width=\"600\" height=\"277\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien-300x139.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_chuong_trinh_dao_tao_mien.jpg\" data-was-processed=\"true\" />\r\n\r\nMột trong những ưu điểm của Olymp Trade đồng thời cũng là lợi thế của các nhà giao dịch tham gia đầu tư tại đây, đó là khi bạn trở thành thành viên của Olymp, bạn có quyền tham gia tất cả các chương trình đào tạo giao dịch của công ty này hoàn toàn miễn phí. Các chương trình này sẽ giúp bạn bổ sung các kiến thức cần thiết cũng như các chia sẻ từ những nhà giao dịch thành công sẽ giúp người chơi, đặc biệt là người chơi mới có thể hỏi hỏi và gia tăng tỷ lệ thắng.\r\n<h2><span id=\"Nap_tien_vao_tai_khoan_Olymp_Trade_bang_cach_nao\">Nạp tiền vào tài khoản Olymp Trade bằng cách nào?</span></h2>\r\n<img class=\"alignnone wp-image-1310 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan-300x199.jpg 300w\" alt=\"Nạp tiền vào tài khoản Olymp Trade bằng cách nào?\" width=\"600\" height=\"398\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan-300x199.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_nap_tien_vao_tai_khoan.jpg\" data-was-processed=\"true\" />\r\n\r\nOlymptrade hỗ trợ rất nhiều hình thức nạp tiền khác nhau, hoàn toàn dễ dàng cho những người chơi Việt Nam bằng các hình thức sau :\r\n<ul>\r\n 	<li>Các hình thức nạp tiền qua thẻ tín dụng và ví điện tử như Epayments, Skrill, Neteller.</li>\r\n 	<li>Các ngân hàng trực tuyến bao gồm Vietcombank, Vietinbank, Techcombank, Sacombank, ACB, Đông Á, BIDV, Eximbank…</li>\r\n 	<li>Bitcoin</li>\r\n</ul>\r\nBạn cần lưu ý rằng, Olymp Trade chỉ chấp thuận tiền gửi từ $10 trở lên, nếu như bạn gửi ít hơn thì số tiền sẽ không được ghi có vào tài khoản.\r\n<h2><span id=\"Rut_tien_tu_tai_khoan_Olymptrade_nhu_the_nao\">Rút tiền từ tài khoản Olymptrade như thế nào?</span></h2>\r\nViệc rút tiền từ tài khoản Olymptrade sẽ thực hiện bằng phương thức mà bạn sử dụng để nạp tiền. Ví dụ như bạn nạp tiền bằng hình thức chuyển khoản ngân hàng thì khi rút tiền, thì tiền sẽ chuyển về tài khoản ngân hàng mà bạn dùng để nạp trừ trường hợp bạn gặp rắc rối với ngân hàng hoặc có yêu cầu khác thì bạn cần phải trao đổi lại với đội ngũ hỗ trợ của Olymp Trade.\r\n\r\nĐối với lần rút tiền đầu tiên, Olymp Trade sẽ yêu cầu bạn xác thực thông tin bằng cách cung cấp ảnh chụp chứng minh nhân dân hoặc ảnh chụp thẻ ngân hàng hoặc cả hai. Thời gian rút tiền thường là 5 ngày và Olymp Trade không tính phí rút tiền. Tuy nhiên, các bên trung gian thanh toán như ngân hàng có thể khiến việc nhận tiền của bạn lâu hơn và thông thường họ có tính phí nên số tiền bạn nhận được sẽ ít hơn số tiền mà bạn rút.\r\n<h2><span id=\"Olymp_Trade_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong\">Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?</span></h2>\r\n<img class=\"alignnone wp-image-1317 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757-300x169.jpg 300w\" alt=\"Olymp Trade có cung cấp ứng dụng trên thiết bị di động không?\" width=\"600\" height=\"337\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757-300x169.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_co_cung_cap_ung_dung_tren_thiet_bi_di_dong_khong-e1541507017757.jpg\" data-was-processed=\"true\" />\r\n\r\nCũng giống như các nền tảng giao dịch khác như <a href=\"https://ecattrade.com/vi/review/iqoption\">IQ Option,</a> Olymp Trade cung cấp ứng dụng trên thiết bị di động để giúp các nhà đầu tư có thể giao dịch mọi lúc mọi nơi. Bằng việc cài đặt và sử dụng ứng dụng này, các nhà giao dịch có thể sử dụng đầy đủ các tính năng giao dịch bao gồm biểu đồ, các nguồn lực kỹ thuật và công cụ. Ứng dụng này tương thích với cả thiết bị hoạt động trên nền tảng iOS và Android.\r\n<h3><span id=\"Ung_dung_tren_Android\">Ứng dụng trên Android</span></h3>\r\nỨng dụng có thể hoạt động trên các thiết bị Android chạy hệ điều hành mới nhất. Bạn không cần phải sử dụng một chiếc điện thoại cao cấp mới có thể sử dụng ứng dụng mà chỉ cần đảm bảo thiết bị của bạn có thể xem được các công cụ kỹ thuật khác nhau và các chỉ số cũng như biểu đồ giá.\r\n\r\nĐể sử dụng ứng dụng, các nhà giao dịch cần tải xuống từ Google Play Store. Sau khi app được tải và cài đặt thành công, nhà giao dịch có thể bắt đầu sử dụng để tham gia giao dịch.\r\n<h3><span id=\"Ung_dung_tren_iOS\">Ứng dụng trên iOS</span></h3>\r\nĐể sử dụng ứng dụn trên thiết bị iOS, các nhà giao dịch cần phải tải ứng dụng từ App store. Khi ứng dụng được tải và cài đặt thành công, các nhà đầu tư có thể dễ dàng sử dụng và giao dịch bất cứ lúc nào, bất cứ ở đâu.\r\n\r\nCả ứng dụng trên iOS và Android đều cung cấp cho các nhà giao dịch toàn bộ quyền truy cập các nguồn lực quan trọng và các công cụ giao dịch, giúp người chơi có thể tiết kiệm thời gian và tranh thủ giao dịch được bất cứ lúc nào chỉ cần thiết bị có kết nối internet.\r\n<h2><span id=\"Vay_Olymp_Trade_co_phai_la_mot_su_lua_chon_tot_danh_cho_cac_nha_giao_dich_Viet_nam_hay_khong\">Vậy Olymp Trade có phải là một sự lựa chọn tốt dành cho các nhà giao dịch Việt nam hay không?</span></h2>\r\n<img class=\"alignnone wp-image-1282 size-full lazyloaded\" src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi-300x140.jpg 300w\" alt=\"Olymp Trade là gì?\" width=\"600\" height=\"279\" data-lazy-srcset=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg 600w, https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi-300x140.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://ecattrade.com/wp-content/uploads/olymptrade_vn_la_gi.jpg\" data-was-processed=\"true\" />\r\n\r\nQua các phân tích ở trên, chúng tôi có thể khẳng định lại một lần nữa Olymptrade là một trong những sàn giao dịch quyền chọn  mà bạn nên tham gia nếu như bạn muốn bước chân vào lĩnh vực này. Vừa được hỗ trợ kiến thức thông qua các chương trình đào tạo, vừa được sử dụng tài khoản demo hoàn toàn miễn phí và thỏa thích đến bất cứ khi nào chán thì thôi, ngoài ra thương hiệu và độ uy tín của Olymp Trade đã được khẳng định.\r\n\r\nChúng tôi khuyên bạn nên tham gia tại đây…\r\n\r\nChúc bạn thành công!', 'Forex', '', 'publish', 'open', 'closed', '', 'forex', '', '', '2020-03-05 08:40:46', '2020-03-05 08:40:46', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=142', 0, 'forex', '', 0),
(143, 1, '2020-03-05 08:42:24', '2020-03-05 08:42:24', '', 'BINARY', '', 'publish', 'open', 'closed', '', 'binary', '', '', '2020-03-05 08:42:24', '2020-03-05 08:42:24', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=143', 0, 'forex', '', 0),
(144, 1, '2020-03-05 09:04:35', '2020-03-05 09:04:35', 'dấdasd asdsad aasd asd ád', 'sadsa', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2020-03-05 09:04:35', '2020-03-05 09:04:35', '', 140, 'http://localhost/project/ecats/140-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2020-03-05 09:27:08', '2020-03-05 09:27:08', 'sadsadsadasdad sdsad', 'ádadsad', '', 'publish', 'open', 'open', '', 'adadsad', '', '', '2020-03-05 09:27:08', '2020-03-05 09:27:08', '', 0, 'http://localhost/project/ecats/?p=145', 0, 'post', '', 0),
(146, 1, '2020-03-05 09:27:08', '2020-03-05 09:27:08', 'sadsadsadasdad sdsad', 'ádadsad', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2020-03-05 09:27:08', '2020-03-05 09:27:08', '', 145, 'http://localhost/project/ecats/145-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2020-03-05 09:28:58', '2020-03-05 09:28:58', '', 'San', '', 'publish', 'open', 'closed', '', 'san', '', '', '2020-03-05 09:29:15', '2020-03-05 09:29:15', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=147', 0, 'forex', '', 0),
(148, 1, '2020-03-05 09:31:15', '2020-03-05 09:31:15', '', 'sadsadsad', '', 'publish', 'open', 'closed', '', 'sadsadsad', '', '', '2020-03-06 01:28:09', '2020-03-06 01:28:09', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=148', 0, 'forex', '', 0),
(149, 1, '2020-03-05 09:48:37', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-03-05 09:48:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=149', 0, 'forex', '', 0),
(150, 1, '2020-03-06 01:39:47', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-03-06 01:39:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=150', 0, 'forex', '', 0),
(151, 1, '2020-03-06 01:44:00', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-03-06 01:44:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=151', 0, 'forex', '', 0),
(152, 1, '2020-03-06 01:44:03', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-03-06 01:44:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=forex&p=152', 0, 'forex', '', 0),
(153, 1, '2020-03-06 01:55:37', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-06 01:55:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?post_type=acf-field-group&p=153', 0, 'acf-field-group', '', 0),
(154, 1, '2020-03-06 02:06:45', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-06 02:06:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/project/ecats/?p=154', 0, 'post', '', 0),
(155, 1, '2020-03-06 02:21:03', '2020-03-06 02:21:03', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Post English', 'ports_en', 'publish', 'closed', 'closed', '', 'field_5e61b2ed49330', '', '', '2020-03-06 04:54:55', '2020-03-06 04:54:55', '', 134, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=155', 0, 'acf-field', '', 0),
(156, 1, '2020-03-06 02:21:04', '2020-03-06 02:21:04', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";a:1:{i:0;s:11:\"language:en\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:2:\"ui\";i:1;}', 'View post en', 'view_post_en', 'publish', 'closed', 'closed', '', 'field_5e61b35049331', '', '', '2020-03-06 03:34:44', '2020-03-06 03:34:44', '', 155, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=156', 0, 'acf-field', '', 0),
(157, 1, '2020-03-06 02:24:51', '2020-03-06 02:24:51', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Post Tiếng Việt', 'ports_vi', 'publish', 'closed', 'closed', '', 'field_5e61b3c19cc0d', '', '', '2020-03-06 04:54:55', '2020-03-06 04:54:55', '', 134, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=157', 1, 'acf-field', '', 0),
(158, 1, '2020-03-06 02:24:51', '2020-03-06 02:24:51', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";a:1:{i:0;s:11:\"language:vi\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View post vi', 'view_post_vi', 'publish', 'closed', 'closed', '', 'field_5e61b3c19cc0e', '', '', '2020-03-06 02:33:00', '2020-03-06 02:33:00', '', 157, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=158', 0, 'acf-field', '', 0),
(159, 1, '2020-03-06 02:24:51', '2020-03-06 02:24:51', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Post Português', 'ports_pt', 'publish', 'closed', 'closed', '', 'field_5e61b4349cc0f', '', '', '2020-03-06 04:54:55', '2020-03-06 04:54:55', '', 134, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=159', 2, 'acf-field', '', 0),
(160, 1, '2020-03-06 02:24:51', '2020-03-06 02:24:51', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";a:1:{i:0;s:11:\"language:pt\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View post pt', 'view_post_pt', 'publish', 'closed', 'closed', '', 'field_5e61b4349cc10', '', '', '2020-03-06 02:33:00', '2020-03-06 02:33:00', '', 159, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=160', 0, 'acf-field', '', 0),
(161, 1, '2020-03-06 02:28:04', '2020-03-06 02:28:04', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Post Español', 'ports_es', 'publish', 'closed', 'closed', '', 'field_5e61b4bbec1dc', '', '', '2020-03-06 04:54:55', '2020-03-06 04:54:55', '', 134, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=161', 3, 'acf-field', '', 0),
(162, 1, '2020-03-06 02:28:04', '2020-03-06 02:28:04', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";a:1:{i:0;s:20:\"term_language:pll_es\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View post es', 'view_post_es', 'publish', 'closed', 'closed', '', 'field_5e61b4bbec1dd', '', '', '2020-03-06 02:33:00', '2020-03-06 02:33:00', '', 161, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=162', 0, 'acf-field', '', 0),
(163, 1, '2020-03-06 02:28:04', '2020-03-06 02:28:04', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Post Bahasa Indonesia', 'ports_id', 'publish', 'closed', 'closed', '', 'field_5e61b4f3ec1de', '', '', '2020-03-06 04:54:55', '2020-03-06 04:54:55', '', 134, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=163', 5, 'acf-field', '', 0),
(164, 1, '2020-03-06 02:28:04', '2020-03-06 02:28:04', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";a:1:{i:0;s:11:\"language:id\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View post id', 'view_post_id', 'publish', 'closed', 'closed', '', 'field_5e61b4f3ec1df', '', '', '2020-03-06 02:33:00', '2020-03-06 02:33:00', '', 163, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=164', 0, 'acf-field', '', 0),
(165, 1, '2020-03-06 02:28:57', '2020-03-06 02:28:57', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Post ไทย', 'ports_th', 'publish', 'closed', 'closed', '', 'field_5e61b5464c355', '', '', '2020-03-06 04:54:55', '2020-03-06 04:54:55', '', 134, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=165', 4, 'acf-field', '', 0),
(166, 1, '2020-03-06 02:28:57', '2020-03-06 02:28:57', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";a:1:{i:0;s:11:\"language:th\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View post th', 'view_post_th', 'publish', 'closed', 'closed', '', 'field_5e61b5464c356', '', '', '2020-03-06 02:33:00', '2020-03-06 02:33:00', '', 165, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=166', 0, 'acf-field', '', 0),
(167, 1, '2020-03-06 02:30:28', '2020-03-06 02:30:28', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Post 한국어', 'ports_ko', 'publish', 'closed', 'closed', '', 'field_5e61b579b00ee', '', '', '2020-03-06 04:54:55', '2020-03-06 04:54:55', '', 134, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=167', 6, 'acf-field', '', 0),
(168, 1, '2020-03-06 02:30:28', '2020-03-06 02:30:28', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";a:1:{i:0;s:11:\"language:ko\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View post ko', 'view_post_ko', 'publish', 'closed', 'closed', '', 'field_5e61b579b00ef', '', '', '2020-03-06 06:35:48', '2020-03-06 06:35:48', '', 167, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=168', 0, 'acf-field', '', 0),
(169, 1, '2020-03-06 06:35:30', '2020-03-06 06:35:30', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Top Forex', 'top_forex', 'publish', 'closed', 'closed', '', 'field_5e61e968dd981', '', '', '2020-03-06 06:38:02', '2020-03-06 06:38:02', '', 133, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=169', 1, 'acf-field', '', 0),
(170, 1, '2020-03-06 06:35:30', '2020-03-06 06:35:30', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex English', 'forexs_en', 'publish', 'closed', 'closed', '', 'field_5e61e968dd982', '', '', '2020-03-06 06:35:30', '2020-03-06 06:35:30', '', 169, 'http://localhost/project/ecats/?post_type=acf-field&p=170', 0, 'acf-field', '', 0),
(171, 1, '2020-03-06 06:35:30', '2020-03-06 06:35:30', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:en\";i:1;s:24:\"forex_category:san-forex\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex en', 'view_forexs_en', 'publish', 'closed', 'closed', '', 'field_5e61e968dd983', '', '', '2020-03-06 06:40:36', '2020-03-06 06:40:36', '', 170, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=171', 0, 'acf-field', '', 0),
(172, 1, '2020-03-06 06:35:30', '2020-03-06 06:35:30', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex Tiếng Việt', 'forexs_vi', 'publish', 'closed', 'closed', '', 'field_5e61e968dd984', '', '', '2020-03-06 06:35:30', '2020-03-06 06:35:30', '', 169, 'http://localhost/project/ecats/?post_type=acf-field&p=172', 1, 'acf-field', '', 0),
(173, 1, '2020-03-06 06:35:30', '2020-03-06 06:35:30', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:vi\";i:1;s:24:\"forex_category:san-forex\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex vi', 'view_forexs_vi', 'publish', 'closed', 'closed', '', 'field_5e61e968dd985', '', '', '2020-03-06 06:40:36', '2020-03-06 06:40:36', '', 172, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=173', 0, 'acf-field', '', 0),
(174, 1, '2020-03-06 06:35:30', '2020-03-06 06:35:30', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex Português', 'forexs_pt', 'publish', 'closed', 'closed', '', 'field_5e61e968dd986', '', '', '2020-03-06 06:35:30', '2020-03-06 06:35:30', '', 169, 'http://localhost/project/ecats/?post_type=acf-field&p=174', 2, 'acf-field', '', 0),
(175, 1, '2020-03-06 06:35:31', '2020-03-06 06:35:31', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:pt\";i:1;s:24:\"forex_category:san-forex\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex pt', 'view_forexs_pt', 'publish', 'closed', 'closed', '', 'field_5e61e968dd987', '', '', '2020-03-06 06:40:36', '2020-03-06 06:40:36', '', 174, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=175', 0, 'acf-field', '', 0),
(176, 1, '2020-03-06 06:35:31', '2020-03-06 06:35:31', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex Español', 'forexs_es', 'publish', 'closed', 'closed', '', 'field_5e61e968dd988', '', '', '2020-03-06 06:35:31', '2020-03-06 06:35:31', '', 169, 'http://localhost/project/ecats/?post_type=acf-field&p=176', 3, 'acf-field', '', 0),
(177, 1, '2020-03-06 06:35:31', '2020-03-06 06:35:31', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:20:\"term_language:pll_es\";i:1;s:24:\"forex_category:san-forex\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex es', 'view_forexs_es', 'publish', 'closed', 'closed', '', 'field_5e61e968dd989', '', '', '2020-03-06 06:40:36', '2020-03-06 06:40:36', '', 176, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=177', 0, 'acf-field', '', 0),
(178, 1, '2020-03-06 06:35:31', '2020-03-06 06:35:31', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex ไทย', 'forexs_th', 'publish', 'closed', 'closed', '', 'field_5e61e968dd98a', '', '', '2020-03-06 06:35:31', '2020-03-06 06:35:31', '', 169, 'http://localhost/project/ecats/?post_type=acf-field&p=178', 4, 'acf-field', '', 0),
(179, 1, '2020-03-06 06:35:31', '2020-03-06 06:35:31', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:th\";i:1;s:24:\"forex_category:san-forex\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View Forex th', 'view_forexs_th', 'publish', 'closed', 'closed', '', 'field_5e61e968dd98b', '', '', '2020-03-06 06:40:36', '2020-03-06 06:40:36', '', 178, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=179', 0, 'acf-field', '', 0),
(180, 1, '2020-03-06 06:35:31', '2020-03-06 06:35:31', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex Bahasa Indonesia', 'forexs_id', 'publish', 'closed', 'closed', '', 'field_5e61e968dd98c', '', '', '2020-03-06 06:35:31', '2020-03-06 06:35:31', '', 169, 'http://localhost/project/ecats/?post_type=acf-field&p=180', 5, 'acf-field', '', 0),
(181, 1, '2020-03-06 06:35:31', '2020-03-06 06:35:31', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:id\";i:1;s:24:\"forex_category:san-forex\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex id', 'view_forexs_id', 'publish', 'closed', 'closed', '', 'field_5e61e968dd98d', '', '', '2020-03-06 06:40:36', '2020-03-06 06:40:36', '', 180, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=181', 0, 'acf-field', '', 0),
(182, 1, '2020-03-06 06:35:31', '2020-03-06 06:35:31', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex 한국어', 'forexs_ko', 'publish', 'closed', 'closed', '', 'field_5e61e968dd98e', '', '', '2020-03-06 06:35:31', '2020-03-06 06:35:31', '', 169, 'http://localhost/project/ecats/?post_type=acf-field&p=182', 6, 'acf-field', '', 0),
(183, 1, '2020-03-06 06:35:31', '2020-03-06 06:35:31', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:ko\";i:1;s:24:\"forex_category:san-forex\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex ko', 'view_forexs_ko', 'publish', 'closed', 'closed', '', 'field_5e61e968dd98f', '', '', '2020-03-06 06:40:36', '2020-03-06 06:40:36', '', 182, 'http://localhost/project/ecats/?post_type=acf-field&#038;p=183', 0, 'acf-field', '', 0),
(184, 1, '2020-03-06 06:45:49', '2020-03-06 06:45:49', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Top Forex (Binary)', 'top_forex_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa70947', '', '', '2020-03-06 06:45:49', '2020-03-06 06:45:49', '', 133, 'http://localhost/project/ecats/?post_type=acf-field&p=184', 2, 'acf-field', '', 0),
(185, 1, '2020-03-06 06:45:49', '2020-03-06 06:45:49', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex English (Binary)', 'forexs_en_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa70948', '', '', '2020-03-06 06:45:49', '2020-03-06 06:45:49', '', 184, 'http://localhost/project/ecats/?post_type=acf-field&p=185', 0, 'acf-field', '', 0),
(186, 1, '2020-03-06 06:45:49', '2020-03-06 06:45:49', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:en\";i:1;s:21:\"forex_category:binary\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex en binary', 'view_forexs_en_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa70949', '', '', '2020-03-06 06:45:49', '2020-03-06 06:45:49', '', 185, 'http://localhost/project/ecats/?post_type=acf-field&p=186', 0, 'acf-field', '', 0),
(187, 1, '2020-03-06 06:45:49', '2020-03-06 06:45:49', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex Tiếng Việt Binary', 'forexs_vi_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa7094a', '', '', '2020-03-06 06:45:49', '2020-03-06 06:45:49', '', 184, 'http://localhost/project/ecats/?post_type=acf-field&p=187', 1, 'acf-field', '', 0),
(188, 1, '2020-03-06 06:45:49', '2020-03-06 06:45:49', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:vi\";i:1;s:21:\"forex_category:binary\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex vi binary', 'view_forexs_vi_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa7094b', '', '', '2020-03-06 06:45:49', '2020-03-06 06:45:49', '', 187, 'http://localhost/project/ecats/?post_type=acf-field&p=188', 0, 'acf-field', '', 0),
(189, 1, '2020-03-06 06:45:49', '2020-03-06 06:45:49', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex Português Binary', 'forexs_pt_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa7094c', '', '', '2020-03-06 06:45:49', '2020-03-06 06:45:49', '', 184, 'http://localhost/project/ecats/?post_type=acf-field&p=189', 2, 'acf-field', '', 0),
(190, 1, '2020-03-06 06:45:49', '2020-03-06 06:45:49', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:pt\";i:1;s:21:\"forex_category:binary\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex pt binary', 'view_forexs_pt_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa7094d', '', '', '2020-03-06 06:45:49', '2020-03-06 06:45:49', '', 189, 'http://localhost/project/ecats/?post_type=acf-field&p=190', 0, 'acf-field', '', 0),
(191, 1, '2020-03-06 06:45:49', '2020-03-06 06:45:49', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex Español Binary', 'forexs_es_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa7094e', '', '', '2020-03-06 06:45:49', '2020-03-06 06:45:49', '', 184, 'http://localhost/project/ecats/?post_type=acf-field&p=191', 3, 'acf-field', '', 0),
(192, 1, '2020-03-06 06:45:49', '2020-03-06 06:45:49', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:20:\"term_language:pll_es\";i:1;s:21:\"forex_category:binary\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex es binary', 'view_forexs_es_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa7094f', '', '', '2020-03-06 06:45:49', '2020-03-06 06:45:49', '', 191, 'http://localhost/project/ecats/?post_type=acf-field&p=192', 0, 'acf-field', '', 0),
(193, 1, '2020-03-06 06:45:49', '2020-03-06 06:45:49', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex ไทย Binary', 'forexs_th_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa70950', '', '', '2020-03-06 06:45:49', '2020-03-06 06:45:49', '', 184, 'http://localhost/project/ecats/?post_type=acf-field&p=193', 4, 'acf-field', '', 0),
(194, 1, '2020-03-06 06:45:49', '2020-03-06 06:45:49', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:th\";i:1;s:21:\"forex_category:binary\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View Forex th Binary', 'view_forexs_th_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa70951', '', '', '2020-03-06 06:45:49', '2020-03-06 06:45:49', '', 193, 'http://localhost/project/ecats/?post_type=acf-field&p=194', 0, 'acf-field', '', 0),
(195, 1, '2020-03-06 06:45:50', '2020-03-06 06:45:50', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex Bahasa Indonesia Binary', 'forexs_id_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa70952', '', '', '2020-03-06 06:45:50', '2020-03-06 06:45:50', '', 184, 'http://localhost/project/ecats/?post_type=acf-field&p=195', 5, 'acf-field', '', 0),
(196, 1, '2020-03-06 06:45:50', '2020-03-06 06:45:50', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:id\";i:1;s:21:\"forex_category:binary\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex id Binary', 'view_forexs_id_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa70953', '', '', '2020-03-06 06:45:50', '2020-03-06 06:45:50', '', 195, 'http://localhost/project/ecats/?post_type=acf-field&p=196', 0, 'acf-field', '', 0),
(197, 1, '2020-03-06 06:45:50', '2020-03-06 06:45:50', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Forex 한국어 Binary', 'forexs_ko_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa70954', '', '', '2020-03-06 06:45:50', '2020-03-06 06:45:50', '', 184, 'http://localhost/project/ecats/?post_type=acf-field&p=197', 6, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(198, 1, '2020-03-06 06:45:50', '2020-03-06 06:45:50', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"forex\";}s:8:\"taxonomy\";a:2:{i:0;s:11:\"language:ko\";i:1;s:21:\"forex_category:binary\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'View forex ko binary', 'view_forexs_ko_binary', 'publish', 'closed', 'closed', '', 'field_5e61f0aa70955', '', '', '2020-03-06 06:45:50', '2020-03-06 06:45:50', '', 197, 'http://localhost/project/ecats/?post_type=acf-field&p=198', 0, 'acf-field', '', 0),
(199, 1, '2020-03-06 07:06:28', '2020-03-06 07:06:28', '', 'About Forexfanclub', '', 'inherit', 'open', 'closed', '', 'about-forexfanclub', '', '', '2020-03-06 07:06:28', '2020-03-06 07:06:28', '', 0, 'http://localhost/project/ecats/wp-content/uploads/2020/03/About-Forexfanclub.png', 0, 'attachment', 'image/png', 0),
(200, 1, '2020-03-06 07:06:29', '2020-03-06 07:06:29', '', 'Banner forexfanclub', '', 'inherit', 'open', 'closed', '', 'banner-forexfanclub', '', '', '2020-03-06 07:06:29', '2020-03-06 07:06:29', '', 0, 'http://localhost/project/ecats/wp-content/uploads/2020/03/Banner-forexfanclub.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2020-03-06 08:18:03', '2020-03-06 08:18:03', '', 'Forex', '', 'publish', 'closed', 'closed', '', 'forex', '', '', '2020-03-06 08:18:03', '2020-03-06 08:18:03', '', 0, 'http://localhost/project/ecats/?page_id=201', 0, 'page', '', 0),
(202, 1, '2020-03-06 08:18:03', '2020-03-06 08:18:03', '', 'Forex', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2020-03-06 08:18:03', '2020-03-06 08:18:03', '', 201, 'http://localhost/project/ecats/201-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2020-03-06 08:18:24', '2020-03-06 08:18:24', ' ', '', '', 'publish', 'closed', 'closed', '', '203', '', '', '2020-03-06 08:56:18', '2020-03-06 08:56:18', '', 0, 'http://localhost/project/ecats/?p=203', 1, 'nav_menu_item', '', 0),
(204, 1, '2020-03-06 08:18:43', '2020-03-06 08:18:43', '', 'Binary Options', '', 'publish', 'closed', 'closed', '', 'binary-options', '', '', '2020-03-06 08:18:43', '2020-03-06 08:18:43', '', 0, 'http://localhost/project/ecats/?page_id=204', 0, 'page', '', 0),
(205, 1, '2020-03-06 08:18:43', '2020-03-06 08:18:43', '', 'Binary Options', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2020-03-06 08:18:43', '2020-03-06 08:18:43', '', 204, 'http://localhost/project/ecats/204-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2020-03-06 08:18:56', '2020-03-06 08:18:56', '', 'Copy Trading', '', 'publish', 'closed', 'closed', '', 'copy-trading', '', '', '2020-03-06 08:18:56', '2020-03-06 08:18:56', '', 0, 'http://localhost/project/ecats/?page_id=206', 0, 'page', '', 0),
(207, 1, '2020-03-06 08:18:56', '2020-03-06 08:18:56', '', 'Copy Trading', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2020-03-06 08:18:56', '2020-03-06 08:18:56', '', 206, 'http://localhost/project/ecats/206-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2020-03-06 08:27:17', '2020-03-06 08:27:17', '', 'Bonus', '', 'publish', 'closed', 'closed', '', 'bonus', '', '', '2020-03-06 08:27:17', '2020-03-06 08:27:17', '', 0, 'http://localhost/project/ecats/?page_id=208', 0, 'page', '', 0),
(209, 1, '2020-03-06 08:27:17', '2020-03-06 08:27:17', '', 'Bonus', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2020-03-06 08:27:17', '2020-03-06 08:27:17', '', 208, 'http://localhost/project/ecats/208-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2020-03-06 08:27:45', '2020-03-06 08:27:45', ' ', '', '', 'publish', 'closed', 'closed', '', '210', '', '', '2020-03-06 08:56:18', '2020-03-06 08:56:18', '', 0, 'http://localhost/project/ecats/?p=210', 4, 'nav_menu_item', '', 0),
(211, 1, '2020-03-06 08:27:44', '2020-03-06 08:27:44', ' ', '', '', 'publish', 'closed', 'closed', '', '211', '', '', '2020-03-06 08:56:18', '2020-03-06 08:56:18', '', 0, 'http://localhost/project/ecats/?p=211', 3, 'nav_menu_item', '', 0),
(212, 1, '2020-03-06 08:27:44', '2020-03-06 08:27:44', ' ', '', '', 'publish', 'closed', 'closed', '', '212', '', '', '2020-03-06 08:56:18', '2020-03-06 08:56:18', '', 0, 'http://localhost/project/ecats/?p=212', 2, 'nav_menu_item', '', 0),
(213, 1, '2020-03-06 08:33:04', '2020-03-06 08:33:04', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2020-03-06 08:55:24', '2020-03-06 08:55:24', '', 0, 'http://localhost/project/ecats/?page_id=213', 0, 'page', '', 0),
(214, 1, '2020-03-06 08:33:04', '2020-03-06 08:33:04', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2020-03-06 08:33:04', '2020-03-06 08:33:04', '', 213, 'http://localhost/project/ecats/213-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2020-03-06 08:36:15', '2020-03-06 08:36:15', 'たけしあどなます', 'たけし', '', 'publish', 'open', 'closed', '', '%e3%81%9f%e3%81%91%e3%81%97', '', '', '2020-03-06 08:36:15', '2020-03-06 08:36:15', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=216', 0, 'forex', '', 0),
(217, 1, '2020-03-06 08:36:26', '2020-03-06 08:36:26', 'たけしあどなます', 'たけしあどなます', '', 'publish', 'open', 'closed', '', '%e3%81%9f%e3%81%91%e3%81%97%e3%81%82%e3%81%a9%e3%81%aa%e3%81%be%e3%81%99', '', '', '2020-03-06 08:36:26', '2020-03-06 08:36:26', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=217', 0, 'forex', '', 0),
(218, 1, '2020-03-06 08:36:49', '2020-03-06 08:36:49', 'たけしあどなますさだ', 'たけしあさっさわ', '', 'publish', 'open', 'closed', '', '%e3%81%9f%e3%81%91%e3%81%97%e3%81%82%e3%81%95%e3%81%a3%e3%81%95%e3%82%8f', '', '', '2020-03-06 08:36:49', '2020-03-06 08:36:49', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=218', 0, 'forex', '', 0),
(219, 1, '2020-03-06 08:37:22', '2020-03-06 08:37:22', 'ｄｆｓｄｆ', 'さださだだださあｓ', '', 'publish', 'open', 'closed', '', '%e3%81%95%e3%81%a0%e3%81%95%e3%81%a0%e3%81%a0%e3%81%a0%e3%81%95%e3%81%82%ef%bd%93', '', '', '2020-03-06 08:37:22', '2020-03-06 08:37:22', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=219', 0, 'forex', '', 0),
(220, 1, '2020-03-06 08:37:40', '2020-03-06 08:37:40', 'あっささださｓ', 'さっさあささあさ', '', 'publish', 'open', 'closed', '', '%e3%81%95%e3%81%a3%e3%81%95%e3%81%82%e3%81%95%e3%81%95%e3%81%82%e3%81%95', '', '', '2020-03-06 08:37:40', '2020-03-06 08:37:40', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=220', 0, 'forex', '', 0),
(221, 1, '2020-03-06 08:37:53', '2020-03-06 08:37:53', 'あさささささささｓ', 'あさささｓ', '', 'publish', 'open', 'closed', '', '%e3%81%82%e3%81%95%e3%81%95%e3%81%95%ef%bd%93', '', '', '2020-03-06 08:37:53', '2020-03-06 08:37:53', '', 0, 'http://localhost/project/ecats/?post_type=forex&#038;p=221', 0, 'forex', '', 0),
(222, 1, '2020-03-06 08:41:43', '2020-03-06 08:41:43', '', 'Languages', '', 'publish', 'closed', 'closed', '', 'languages-2', '', '', '2020-03-06 09:16:35', '2020-03-06 09:16:35', '', 0, 'http://localhost/project/ecats/?p=222', 1, 'nav_menu_item', '', 0),
(223, 1, '2020-03-06 08:56:18', '2020-03-06 08:56:18', ' ', '', '', 'publish', 'closed', 'closed', '', '223', '', '', '2020-03-06 08:56:18', '2020-03-06 08:56:18', '', 0, 'http://localhost/project/ecats/?p=223', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_rmp_analytics`
--

CREATE TABLE `wp_rmp_analytics` (
  `id` mediumint(9) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` smallint(5) NOT NULL,
  `post` mediumint(9) NOT NULL,
  `action` smallint(5) NOT NULL,
  `duration` smallint(5) NOT NULL,
  `average` decimal(2,1) NOT NULL,
  `votes` smallint(5) NOT NULL,
  `value` smallint(5) NOT NULL,
  `token` tinytext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Blog', 'blog', 0),
(2, 'Menu', 'menu', 0),
(4, 'English', 'en', 0),
(5, 'English', 'pll_en', 0),
(6, 'pll_5e5d303da0f79', 'pll_5e5d303da0f79', 0),
(7, 'Tiếng Việt', 'vi', 1),
(8, 'Tiếng Việt', 'pll_vi', 0),
(9, 'Blog', 'blog-vi', 0),
(11, 'Português', 'pt', 2),
(12, 'Português', 'pll_pt', 0),
(13, 'Blog', 'blog-pt', 0),
(15, 'Español', 'es', 3),
(16, 'Español', 'pll_es', 0),
(17, 'Blog', 'blog-es', 0),
(19, 'ไทย', 'th', 4),
(20, 'ไทย', 'pll_th', 0),
(21, 'Blog', 'blog-th', 0),
(27, 'Bahasa Indonesia', 'id', 5),
(28, 'Bahasa Indonesia', 'pll_id', 0),
(29, 'Blog', 'blog-id', 0),
(31, 'Bahasa Melayu', 'ms', 6),
(32, 'Bahasa Melayu', 'pll_ms', 0),
(33, 'Blog', 'blog-ms', 0),
(35, '한국어', 'ko', 7),
(36, '한국어', 'pll_ko', 0),
(37, 'Blog', 'blog-ko', 0),
(39, 'pll_5e5dc9b8a6927', 'pll_5e5dc9b8a6927', 0),
(77, 'A', 'a', 0),
(80, 'ad', 'ad', 0),
(103, 'Sàn FOREX', 'san-forex', 0),
(104, 'BINARY', 'binary', 0),
(105, 'pll_5e60c65a1cb10', 'pll_5e60c65a1cb10', 0),
(106, 'Langueges', 'langueges', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(2, 4, 0),
(3, 4, 0),
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
(62, 4, 0),
(67, 1, 0),
(67, 4, 0),
(68, 1, 0),
(68, 4, 0),
(68, 39, 0),
(70, 1, 0),
(72, 7, 0),
(72, 9, 0),
(72, 39, 0),
(74, 11, 0),
(74, 13, 0),
(74, 39, 0),
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
(87, 1, 0),
(88, 4, 0),
(89, 4, 0),
(90, 4, 0),
(92, 1, 0),
(93, 4, 0),
(94, 4, 0),
(95, 9, 0),
(96, 4, 0),
(97, 4, 0),
(99, 4, 0),
(100, 37, 0),
(101, 13, 0),
(102, 37, 0),
(103, 4, 0),
(118, 4, 0),
(119, 4, 0),
(120, 4, 0),
(121, 4, 0),
(122, 4, 0),
(126, 4, 0),
(127, 7, 0),
(128, 4, 0),
(129, 7, 0),
(131, 4, 0),
(138, 11, 0),
(138, 13, 0),
(140, 1, 0),
(140, 4, 0),
(142, 4, 0),
(142, 103, 0),
(143, 4, 0),
(143, 104, 0),
(143, 105, 0),
(145, 1, 0),
(145, 4, 0),
(147, 7, 0),
(147, 104, 0),
(147, 105, 0),
(148, 4, 0),
(148, 103, 0),
(149, 4, 0),
(150, 4, 0),
(151, 4, 0),
(152, 4, 0),
(154, 4, 0),
(199, 4, 0),
(200, 4, 0),
(201, 4, 0),
(203, 2, 0),
(204, 4, 0),
(206, 4, 0),
(208, 4, 0),
(210, 2, 0),
(211, 2, 0),
(212, 2, 0),
(213, 4, 0),
(216, 11, 0),
(216, 104, 0),
(216, 105, 0),
(217, 15, 0),
(217, 105, 0),
(218, 19, 0),
(218, 105, 0),
(219, 27, 0),
(219, 104, 0),
(219, 105, 0),
(220, 31, 0),
(220, 104, 0),
(220, 105, 0),
(221, 35, 0),
(221, 104, 0),
(221, 105, 0),
(222, 106, 0),
(223, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
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
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5),
(4, 4, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_GB\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"gb\";}', 0, 12),
(5, 5, 'term_language', '', 0, 1),
(6, 6, 'term_translations', 'a:8:{s:2:\"en\";i:1;s:2:\"vi\";i:9;s:2:\"pt\";i:13;s:2:\"es\";i:17;s:2:\"th\";i:21;s:2:\"id\";i:29;s:2:\"ms\";i:33;s:2:\"ko\";i:37;}', 0, 9),
(7, 7, 'language', 'a:3:{s:6:\"locale\";s:2:\"vi\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"vn\";}', 0, 3),
(8, 8, 'term_language', '', 0, 1),
(9, 9, 'category', '', 0, 0),
(11, 11, 'language', 'a:3:{s:6:\"locale\";s:5:\"pt_PT\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"pt\";}', 0, 1),
(12, 12, 'term_language', '', 0, 1),
(13, 13, 'category', '', 0, 0),
(15, 15, 'language', 'a:3:{s:6:\"locale\";s:5:\"es_ES\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"es\";}', 0, 1),
(16, 16, 'term_language', '', 0, 1),
(17, 17, 'category', '', 0, 0),
(19, 19, 'language', 'a:3:{s:6:\"locale\";s:2:\"th\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"th\";}', 0, 1),
(20, 20, 'term_language', '', 0, 1),
(21, 21, 'category', '', 0, 0),
(27, 27, 'language', 'a:3:{s:6:\"locale\";s:5:\"id_ID\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"id\";}', 0, 1),
(28, 28, 'term_language', '', 0, 1),
(29, 29, 'category', '', 0, 0),
(31, 31, 'language', 'a:3:{s:6:\"locale\";s:5:\"ms_MY\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"my\";}', 0, 1),
(32, 32, 'term_language', '', 0, 1),
(33, 33, 'category', '', 0, 0),
(35, 35, 'language', 'a:3:{s:6:\"locale\";s:5:\"ko_KR\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"kr\";}', 0, 1),
(36, 36, 'term_language', '', 0, 1),
(37, 37, 'category', '', 0, 0),
(39, 39, 'post_translations', 'a:7:{s:2:\"en\";i:68;s:2:\"vi\";i:72;s:2:\"pt\";i:74;s:2:\"es\";i:76;s:2:\"th\";i:78;s:2:\"ms\";i:80;s:2:\"ko\";i:84;}', 0, 7),
(77, 77, 'forex_tag', '', 0, 0),
(80, 80, 'types', '', 0, 0),
(103, 103, 'forex_category', '', 0, 2),
(104, 104, 'forex_category', '', 0, 6),
(105, 105, 'post_translations', 'a:8:{s:2:\"vi\";i:147;s:2:\"en\";i:143;s:2:\"pt\";i:216;s:2:\"es\";i:217;s:2:\"th\";i:218;s:2:\"id\";i:219;s:2:\"ms\";i:220;s:2:\"ko\";i:221;}', 0, 8),
(106, 106, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
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
(16, 1, 'session_tokens', 'a:3:{s:64:\"8bc6467517c8ed11ac2d50fd768957ef2883e9aa6eb8ea79832fd6c5de008837\";a:4:{s:10:\"expiration\";i:1583468111;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1583295311;}s:64:\"45a1028511d78cf1e64d211f1f65d8c2ce21c3f3d4de603ab133abb85ca5af39\";a:4:{s:10:\"expiration\";i:1583544789;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1583371989;}s:64:\"569cac62bc9e5af3bddd2ae9812a85933e135b36d44cc0b3db26ae56e5e2f758\";a:4:{s:10:\"expiration\";i:1583630264;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1583457464;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:20:\"add-post-type-slider\";i:1;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '106'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(22, 1, 'wp_user-settings-time', '1583284334'),
(23, 1, 'pll_filter_content', ''),
(24, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:57:\"custom_help_widget,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:0:\"\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(25, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(27, 1, 'pll_dismissed_notices', 'a:1:{i:0;s:8:\"lingotek\";}'),
(28, 1, 'pll_lang_per_page', '15'),
(29, 1, 'meta-box-order_forex', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:76:\"ml_box,acf-group_5e5d214900b27,submitdiv,postimagediv,lingotek_post_meta_box\";s:6:\"normal\";s:31:\"acf-group_5e5d2a18c6dd0,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(30, 1, 'screen_layout_forex', '2'),
(31, 1, 'closedpostboxes_forex', 'a:2:{i:0;s:22:\"lingotek_post_meta_box\";i:1;s:15:\"kk-star-ratings\";}'),
(32, 1, 'metaboxhidden_forex', 'a:4:{i:0;s:22:\"lingotek_post_meta_box\";i:1;s:15:\"kk-star-ratings\";i:2;s:7:\"slugdiv\";i:3;s:11:\"commentsdiv\";}'),
(33, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:82:\"ml_box,submitdiv,postimagediv,pageparentdiv,kk-star-ratings,lingotek_page_meta_box\";s:6:\"normal\";s:46:\"commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(34, 1, 'screen_layout_page', '2'),
(35, 1, 'meta-box-order_gt_intro', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:68:\"ml_box,submitdiv,postimagediv,kk-star-ratings,lingotek_post_meta_box\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(36, 1, 'screen_layout_gt_intro', '2'),
(37, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:97:\"ml_box,submitdiv,categorydiv,tagsdiv-post_tag,kk-star-ratings,lingotek_post_meta_box,postimagediv\";s:6:\"normal\";s:60:\"postexcerpt,trackbacksdiv,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(38, 1, 'screen_layout_post', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
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
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bvu19NWPia7KxrKdMWwqgp33triSn.0', 'admin', 'hovietbinh.johnny@gmail.com', '', '2020-03-02 12:44:53', '', 0, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_rmp_analytics`
--
ALTER TABLE `wp_rmp_analytics`
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1233;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=760;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT cho bảng `wp_rmp_analytics`
--
ALTER TABLE `wp_rmp_analytics`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
