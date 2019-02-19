-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Fev-2019 às 16:04
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thm_miraira`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_commentmeta`
--

CREATE TABLE `wp_miratheme_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_comments`
--

CREATE TABLE `wp_miratheme_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_miratheme_comments`
--

INSERT INTO `wp_miratheme_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-31 11:57:17', '2019-01-31 11:57:17', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_links`
--

CREATE TABLE `wp_miratheme_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_options`
--

CREATE TABLE `wp_miratheme_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_miratheme_options`
--

INSERT INTO `wp_miratheme_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/miraira_theme', 'yes'),
(2, 'home', 'http://localhost/miraira_theme', 'yes'),
(3, 'blogname', 'Desenvolvimento Tema', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'zneto@live.com', 'yes'),
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
(23, 'date_format', 'jS F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'jS F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'miraira', 'yes'),
(41, 'stylesheet', 'miraira', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
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
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/London', 'yes'),
(83, 'page_for_posts', '45', 'yes'),
(84, 'page_on_front', '42', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_miratheme_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'en_GB', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:7:{i:1550589457;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1550591839;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1550620639;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1550620640;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1550663865;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1550672237;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1549641451;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:6:\"footer\";i:3;}}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(144, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"zneto@live.com\";s:7:\"version\";s:5:\"5.0.3\";s:9:\"timestamp\";i:1548935924;}', 'no'),
(149, 'current_theme', 'Miraira', 'yes'),
(150, 'theme_mods_miraira', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:14:\"mira_main_menu\";i:2;s:16:\"mira_footer_menu\";i:3;s:12:\"mira_top_bar\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:76:\"http://localhost/miraira_theme/wp-content/uploads/2019/02/cropped-Desert.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:52;s:3:\"url\";s:76:\"http://localhost/miraira_theme/wp-content/uploads/2019/02/cropped-Desert.jpg\";s:13:\"thumbnail_url\";s:76:\"http://localhost/miraira_theme/wp-content/uploads/2019/02/cropped-Desert.jpg\";s:6:\"height\";i:225;s:5:\"width\";i:1920;}s:16:\"header_textcolor\";s:5:\"blank\";}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(155, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(160, 'category_children', 'a:0:{}', 'yes'),
(210, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.0.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1550588621;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(212, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1550588624;s:7:\"checked\";a:5:{s:7:\"miraira\";s:3:\"0.5\";s:13:\"twentyfifteen\";s:3:\"2.3\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(213, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"9.5\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1549639056;s:18:\"recalibration_beta\";b:0;}', 'yes'),
(214, 'wpseo_titles', 'a:67:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(215, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(216, 'wpseo_flush_rewrite', '1', 'yes'),
(217, 'recently_activated', 'a:0:{}', 'yes'),
(218, '_transient_timeout_wpseo_link_table_inaccessible', '1581175057', 'no'),
(219, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(220, '_transient_timeout_wpseo_meta_table_inaccessible', '1581175057', 'no'),
(221, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(230, 'rewrite_rules', 'a:93:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=42&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(236, '_site_transient_timeout_theme_roots', '1550590423', 'no'),
(237, '_site_transient_theme_roots', 'a:5:{s:7:\"miraira\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(238, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1550588625;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.1\";s:9:\"hello.php\";s:5:\"1.7.1\";s:24:\"wordpress-seo/wp-seo.php\";s:3:\"9.5\";}s:8:\"response\";a:1:{s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:3:\"9.6\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wordpress-seo.9.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_postmeta`
--

CREATE TABLE `wp_miratheme_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_miratheme_postmeta`
--

INSERT INTO `wp_miratheme_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'general-template.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/miraira_theme/'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', 'http://localhost/miraira_theme/'),
(48, 10, '_menu_item_type', 'post_type'),
(49, 10, '_menu_item_menu_item_parent', '0'),
(50, 10, '_menu_item_object_id', '2'),
(51, 10, '_menu_item_object', 'page'),
(52, 10, '_menu_item_target', ''),
(53, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 10, '_menu_item_xfn', ''),
(55, 10, '_menu_item_url', ''),
(57, 11, '_edit_lock', '1549630753:1'),
(58, 12, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-1.jpg'),
(59, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:33:\"2019/01/Guerreiros_TJA_2013-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359920782\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"200\";s:3:\"iso\";s:4:\"2500\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 13, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-2.jpg'),
(61, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:33:\"2019/01/Guerreiros_TJA_2013-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359920805\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"200\";s:3:\"iso\";s:4:\"6400\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 14, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-3.jpg'),
(63, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:33:\"2019/01/Guerreiros_TJA_2013-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359920915\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"122\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 15, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-4.jpg'),
(65, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:33:\"2019/01/Guerreiros_TJA_2013-4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-4-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359920917\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 16, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-5.jpg'),
(67, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:33:\"2019/01/Guerreiros_TJA_2013-5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-5-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359920956\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"200\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 17, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-6.jpg'),
(69, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:33:\"2019/01/Guerreiros_TJA_2013-6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-6-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359921040\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"73\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 18, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-7.jpg'),
(71, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:33:\"2019/01/Guerreiros_TJA_2013-7.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-7-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-7-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"9\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359921405\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"87\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 19, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-8.jpg'),
(73, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:33:\"2019/01/Guerreiros_TJA_2013-8.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-8-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-8-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359921469\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"200\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 20, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-9.jpg'),
(75, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:33:\"2019/01/Guerreiros_TJA_2013-9.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Guerreiros_TJA_2013-9-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-9-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359921806\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"163\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 21, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-10.jpg'),
(77, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-10.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-10-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-10-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-10-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359922063\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 22, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-11.jpg'),
(79, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-11.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-11-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-11-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-11-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359922364\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"73\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 23, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-12.jpg'),
(81, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-12.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-12-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-12-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-12-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359922416\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 24, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-13.jpg'),
(83, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-13.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-13-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-13-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-13-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359922724\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"140\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 25, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-14.jpg'),
(85, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-14.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-14-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-14-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-14-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359922802\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 26, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-15.jpg'),
(87, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-15.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-15-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-15-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-15-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359922837\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 27, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-16.jpg'),
(89, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-16.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-16-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-16-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-16-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359923176\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"109\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 28, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-17.jpg'),
(91, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-17.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-17-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-17-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-17-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-17-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359923181\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"84\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 29, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-18.jpg'),
(93, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-18.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-18-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-18-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-18-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-18-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359923253\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 30, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-19.jpg'),
(95, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-19.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-19-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-19-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-19-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-19-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359923660\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"149\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 31, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-20.jpg'),
(97, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-20.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-20-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-20-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-20-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-20-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359923664\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"126\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 32, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-21.jpg'),
(99, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-21.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-21-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-21-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-21-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359923804\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"104\";s:3:\"iso\";s:4:\"6400\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 33, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-22.jpg'),
(101, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-22.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-22-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-22-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-22-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-22-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359923812\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"200\";s:3:\"iso\";s:4:\"6400\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 34, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-24.jpg'),
(103, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-24.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-24-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-24-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-24-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-24-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359924258\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"91\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 35, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-25.jpg'),
(105, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-25.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-25-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-25-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-25-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-25-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359924516\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"200\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 36, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-26.jpg'),
(107, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-26.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-26-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-26-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-26-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-26-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359924557\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"135\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 37, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-27.jpg'),
(109, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-27.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-27-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-27-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-27-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-27-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359925296\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"104\";s:3:\"iso\";s:4:\"3200\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 38, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-28.jpg'),
(111, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-28.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-28-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-28-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-28-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-28-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359925553\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:4:\"3200\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 39, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-29.jpg'),
(113, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-29.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-29-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-29-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-29-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-29-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359926513\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 40, '_wp_attached_file', '2019/01/Guerreiros_TJA_2013-30.jpg'),
(115, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:34:\"2019/01/Guerreiros_TJA_2013-30.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-30-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-30-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Guerreiros_TJA_2013-30-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Guerreiros_TJA_2013-30-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:18:\"Francisco da Costa\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359927531\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"200\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 42, '_edit_lock', '1548951417:1'),
(125, 45, '_edit_lock', '1548951570:1'),
(126, 46, '_menu_item_type', 'post_type'),
(127, 46, '_menu_item_menu_item_parent', '0'),
(128, 46, '_menu_item_object_id', '45'),
(129, 46, '_menu_item_object', 'page'),
(130, 46, '_menu_item_target', ''),
(131, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 46, '_menu_item_xfn', ''),
(133, 46, '_menu_item_url', ''),
(134, 48, '_menu_item_type', 'post_type'),
(135, 48, '_menu_item_menu_item_parent', '0'),
(136, 48, '_menu_item_object_id', '42'),
(137, 48, '_menu_item_object', 'page'),
(138, 48, '_menu_item_target', ''),
(139, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 48, '_menu_item_xfn', ''),
(141, 48, '_menu_item_url', ''),
(143, 2, '_edit_last', '1'),
(144, 2, '_edit_lock', '1549549065:1'),
(145, 50, '_wp_attached_file', '2019/02/Koala.jpg'),
(146, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:17:\"2019/02/Koala.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Koala-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Koala-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"Koala-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"Koala-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"Corbis\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1202729563\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 51, '_wp_attached_file', '2019/02/Desert.jpg'),
(148, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:18:\"2019/02/Desert.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Desert-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Desert-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"Desert-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"Desert-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:2:\"?*\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1205503166\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 52, '_wp_attached_file', '2019/02/cropped-Desert.jpg'),
(150, 52, '_wp_attachment_context', 'custom-header'),
(151, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:225;s:4:\"file\";s:26:\"2019/02/cropped-Desert.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-Desert-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-Desert-300x35.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"cropped-Desert-768x90.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"cropped-Desert-1024x120.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:51;}'),
(152, 52, '_wp_attachment_custom_header_last_used_miraira', '1549550477'),
(153, 52, '_wp_attachment_is_custom_header', 'miraira'),
(154, 53, '_edit_lock', '1549550435:1'),
(155, 53, '_wp_trash_meta_status', 'publish'),
(156, 53, '_wp_trash_meta_time', '1549550477'),
(158, 11, '_thumbnail_id', '35'),
(160, 55, '_edit_lock', '1549634889:1'),
(161, 55, '_wp_trash_meta_status', 'publish'),
(162, 55, '_wp_trash_meta_time', '1549634941');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_posts`
--

CREATE TABLE `wp_miratheme_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_miratheme_posts`
--

INSERT INTO `wp_miratheme_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-31 11:57:17', '2019-01-31 11:57:17', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-01-31 11:57:17', '2019-01-31 11:57:17', '', 0, 'http://localhost/miraira_theme/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-31 11:57:17', '2019-01-31 11:57:17', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/miraira_theme/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'closed', '', 'sample-page', '', '', '2019-02-07 14:17:45', '2019-02-07 14:17:45', '', 0, 'http://localhost/miraira_theme/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-31 11:57:17', '2019-01-31 11:57:17', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/miraira_theme.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-01-31 11:57:17', '2019-01-31 11:57:17', '', 0, 'http://localhost/miraira_theme/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-01-31 13:42:37', '2019-01-31 13:42:37', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-31 13:42:37', '2019-01-31 13:42:37', '', 0, 'http://localhost/miraira_theme/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2019-01-31 13:42:37', '2019-01-31 13:42:37', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2019-01-31 13:42:37', '2019-01-31 13:42:37', '', 0, 'http://localhost/miraira_theme/?p=6', 2, 'nav_menu_item', '', 0),
(7, 1, '2019-01-31 13:53:06', '2019-01-31 13:53:06', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2019-02-07 14:05:55', '2019-02-07 14:05:55', '', 0, 'http://localhost/miraira_theme/?p=7', 1, 'nav_menu_item', '', 0),
(10, 1, '2019-01-31 14:13:34', '2019-01-31 14:13:34', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2019-02-07 14:05:31', '2019-02-07 14:05:31', '', 0, 'http://localhost/miraira_theme/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2019-01-31 14:30:18', '2019-01-31 14:30:18', '<!-- wp:gallery {\"ids\":[12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40]} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-1-1024x683.jpg\" alt=\"\" data-id=\"12\" data-link=\"http://localhost/miraira_theme/?attachment_id=12\" class=\"wp-image-12\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-2-1024x683.jpg\" alt=\"\" data-id=\"13\" data-link=\"http://localhost/miraira_theme/?attachment_id=13\" class=\"wp-image-13\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-3-1024x683.jpg\" alt=\"\" data-id=\"14\" data-link=\"http://localhost/miraira_theme/?attachment_id=14\" class=\"wp-image-14\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-4-1024x683.jpg\" alt=\"\" data-id=\"15\" data-link=\"http://localhost/miraira_theme/?attachment_id=15\" class=\"wp-image-15\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-5-1024x683.jpg\" alt=\"\" data-id=\"16\" data-link=\"http://localhost/miraira_theme/?attachment_id=16\" class=\"wp-image-16\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-6-1024x683.jpg\" alt=\"\" data-id=\"17\" data-link=\"http://localhost/miraira_theme/?attachment_id=17\" class=\"wp-image-17\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-7-1024x683.jpg\" alt=\"\" data-id=\"18\" data-link=\"http://localhost/miraira_theme/?attachment_id=18\" class=\"wp-image-18\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-8-1024x683.jpg\" alt=\"\" data-id=\"19\" data-link=\"http://localhost/miraira_theme/?attachment_id=19\" class=\"wp-image-19\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-9-1024x683.jpg\" alt=\"\" data-id=\"20\" data-link=\"http://localhost/miraira_theme/?attachment_id=20\" class=\"wp-image-20\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-10-1024x683.jpg\" alt=\"\" data-id=\"21\" data-link=\"http://localhost/miraira_theme/?attachment_id=21\" class=\"wp-image-21\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-11-1024x683.jpg\" alt=\"\" data-id=\"22\" data-link=\"http://localhost/miraira_theme/?attachment_id=22\" class=\"wp-image-22\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-12-1024x683.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://localhost/miraira_theme/?attachment_id=23\" class=\"wp-image-23\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-13-1024x683.jpg\" alt=\"\" data-id=\"24\" data-link=\"http://localhost/miraira_theme/?attachment_id=24\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-14-1024x683.jpg\" alt=\"\" data-id=\"25\" data-link=\"http://localhost/miraira_theme/?attachment_id=25\" class=\"wp-image-25\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-15-1024x683.jpg\" alt=\"\" data-id=\"26\" data-link=\"http://localhost/miraira_theme/?attachment_id=26\" class=\"wp-image-26\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-16-1024x683.jpg\" alt=\"\" data-id=\"27\" data-link=\"http://localhost/miraira_theme/?attachment_id=27\" class=\"wp-image-27\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-17-1024x683.jpg\" alt=\"\" data-id=\"28\" data-link=\"http://localhost/miraira_theme/?attachment_id=28\" class=\"wp-image-28\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-18-1024x683.jpg\" alt=\"\" data-id=\"29\" data-link=\"http://localhost/miraira_theme/?attachment_id=29\" class=\"wp-image-29\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-19-1024x683.jpg\" alt=\"\" data-id=\"30\" data-link=\"http://localhost/miraira_theme/?attachment_id=30\" class=\"wp-image-30\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-20-1024x683.jpg\" alt=\"\" data-id=\"31\" data-link=\"http://localhost/miraira_theme/?attachment_id=31\" class=\"wp-image-31\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-21-1024x683.jpg\" alt=\"\" data-id=\"32\" data-link=\"http://localhost/miraira_theme/?attachment_id=32\" class=\"wp-image-32\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-22-1024x683.jpg\" alt=\"\" data-id=\"33\" data-link=\"http://localhost/miraira_theme/?attachment_id=33\" class=\"wp-image-33\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-24-1024x683.jpg\" alt=\"\" data-id=\"34\" data-link=\"http://localhost/miraira_theme/?attachment_id=34\" class=\"wp-image-34\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-25-1024x683.jpg\" alt=\"\" data-id=\"35\" data-link=\"http://localhost/miraira_theme/?attachment_id=35\" class=\"wp-image-35\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-26-1024x683.jpg\" alt=\"\" data-id=\"36\" data-link=\"http://localhost/miraira_theme/?attachment_id=36\" class=\"wp-image-36\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-27-1024x683.jpg\" alt=\"\" data-id=\"37\" data-link=\"http://localhost/miraira_theme/?attachment_id=37\" class=\"wp-image-37\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-28-1024x683.jpg\" alt=\"\" data-id=\"38\" data-link=\"http://localhost/miraira_theme/?attachment_id=38\" class=\"wp-image-38\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-29-1024x683.jpg\" alt=\"\" data-id=\"39\" data-link=\"http://localhost/miraira_theme/?attachment_id=39\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-30-1024x683.jpg\" alt=\"\" data-id=\"40\" data-link=\"http://localhost/miraira_theme/?attachment_id=40\" class=\"wp-image-40\"/></figure></li></ul>\n<!-- /wp:gallery -->', 'Miraira - TJA', '', 'publish', 'open', 'open', '', 'miraira-tja', '', '', '2019-02-08 12:59:03', '2019-02-08 12:59:03', '', 0, 'http://localhost/miraira_theme/?p=11', 0, 'post', '', 0),
(12, 1, '2019-01-31 14:19:23', '2019-01-31 14:19:23', '', 'Guerreiros_TJA_2013 (1)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-1', '', '', '2019-01-31 14:19:23', '2019-01-31 14:19:23', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2019-01-31 14:19:43', '2019-01-31 14:19:43', '', 'Guerreiros_TJA_2013 (2)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-2', '', '', '2019-01-31 14:19:43', '2019-01-31 14:19:43', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2019-01-31 14:19:49', '2019-01-31 14:19:49', '', 'Guerreiros_TJA_2013 (3)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-3', '', '', '2019-01-31 14:19:49', '2019-01-31 14:19:49', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2019-01-31 14:19:53', '2019-01-31 14:19:53', '', 'Guerreiros_TJA_2013 (4)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-4', '', '', '2019-01-31 14:19:53', '2019-01-31 14:19:53', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2019-01-31 14:19:57', '2019-01-31 14:19:57', '', 'Guerreiros_TJA_2013 (5)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-5', '', '', '2019-01-31 14:19:57', '2019-01-31 14:19:57', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2019-01-31 14:20:01', '2019-01-31 14:20:01', '', 'Guerreiros_TJA_2013 (6)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-6', '', '', '2019-01-31 14:20:01', '2019-01-31 14:20:01', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2019-01-31 14:20:06', '2019-01-31 14:20:06', '', 'Guerreiros_TJA_2013 (7)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-7', '', '', '2019-01-31 14:20:06', '2019-01-31 14:20:06', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-01-31 14:20:10', '2019-01-31 14:20:10', '', 'Guerreiros_TJA_2013 (8)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-8', '', '', '2019-01-31 14:20:10', '2019-01-31 14:20:10', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2019-01-31 14:20:15', '2019-01-31 14:20:15', '', 'Guerreiros_TJA_2013 (9)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-9', '', '', '2019-01-31 14:20:15', '2019-01-31 14:20:15', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2019-01-31 14:20:19', '2019-01-31 14:20:19', '', 'Guerreiros_TJA_2013 (10)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-10', '', '', '2019-01-31 14:20:19', '2019-01-31 14:20:19', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2019-01-31 14:20:22', '2019-01-31 14:20:22', '', 'Guerreiros_TJA_2013 (11)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-11', '', '', '2019-01-31 14:20:22', '2019-01-31 14:20:22', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-01-31 14:20:26', '2019-01-31 14:20:26', '', 'Guerreiros_TJA_2013 (12)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-12', '', '', '2019-01-31 14:20:26', '2019-01-31 14:20:26', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2019-01-31 14:20:30', '2019-01-31 14:20:30', '', 'Guerreiros_TJA_2013 (13)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-13', '', '', '2019-01-31 14:20:30', '2019-01-31 14:20:30', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-13.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2019-01-31 14:20:34', '2019-01-31 14:20:34', '', 'Guerreiros_TJA_2013 (14)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-14', '', '', '2019-01-31 14:20:34', '2019-01-31 14:20:34', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2019-01-31 14:20:38', '2019-01-31 14:20:38', '', 'Guerreiros_TJA_2013 (15)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-15', '', '', '2019-01-31 14:20:38', '2019-01-31 14:20:38', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-15.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-01-31 14:20:42', '2019-01-31 14:20:42', '', 'Guerreiros_TJA_2013 (16)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-16', '', '', '2019-01-31 14:20:42', '2019-01-31 14:20:42', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-16.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-01-31 14:20:46', '2019-01-31 14:20:46', '', 'Guerreiros_TJA_2013 (17)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-17', '', '', '2019-01-31 14:20:46', '2019-01-31 14:20:46', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-17.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-01-31 14:20:50', '2019-01-31 14:20:50', '', 'Guerreiros_TJA_2013 (18)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-18', '', '', '2019-01-31 14:20:50', '2019-01-31 14:20:50', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-18.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2019-01-31 14:20:55', '2019-01-31 14:20:55', '', 'Guerreiros_TJA_2013 (19)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-19', '', '', '2019-01-31 14:20:55', '2019-01-31 14:20:55', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-19.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-01-31 14:20:59', '2019-01-31 14:20:59', '', 'Guerreiros_TJA_2013 (20)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-20', '', '', '2019-01-31 14:20:59', '2019-01-31 14:20:59', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-20.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-01-31 14:21:02', '2019-01-31 14:21:02', '', 'Guerreiros_TJA_2013 (21)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-21', '', '', '2019-01-31 14:21:02', '2019-01-31 14:21:02', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-21.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-01-31 14:21:05', '2019-01-31 14:21:05', '', 'Guerreiros_TJA_2013 (22)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-22', '', '', '2019-01-31 14:21:05', '2019-01-31 14:21:05', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-22.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-01-31 14:21:09', '2019-01-31 14:21:09', '', 'Guerreiros_TJA_2013 (24)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-24', '', '', '2019-01-31 14:21:09', '2019-01-31 14:21:09', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-24.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-01-31 14:21:13', '2019-01-31 14:21:13', '', 'Guerreiros_TJA_2013 (25)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-25', '', '', '2019-01-31 14:21:13', '2019-01-31 14:21:13', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-25.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-01-31 14:21:19', '2019-01-31 14:21:19', '', 'Guerreiros_TJA_2013 (26)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-26', '', '', '2019-01-31 14:21:19', '2019-01-31 14:21:19', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-26.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-01-31 14:21:23', '2019-01-31 14:21:23', '', 'Guerreiros_TJA_2013 (27)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-27', '', '', '2019-01-31 14:21:23', '2019-01-31 14:21:23', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-27.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-01-31 14:21:26', '2019-01-31 14:21:26', '', 'Guerreiros_TJA_2013 (28)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-28', '', '', '2019-01-31 14:21:26', '2019-01-31 14:21:26', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-28.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-01-31 14:21:29', '2019-01-31 14:21:29', '', 'Guerreiros_TJA_2013 (29)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-29', '', '', '2019-01-31 14:21:29', '2019-01-31 14:21:29', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-29.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-01-31 14:21:33', '2019-01-31 14:21:33', '', 'Guerreiros_TJA_2013 (30)', '', 'inherit', 'open', 'closed', '', 'guerreiros_tja_2013-30', '', '', '2019-01-31 14:21:33', '2019-01-31 14:21:33', '', 11, 'http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-30.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-01-31 14:30:18', '2019-01-31 14:30:18', '<!-- wp:gallery {\"ids\":[12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40]} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-1-1024x683.jpg\" alt=\"\" data-id=\"12\" data-link=\"http://localhost/miraira_theme/?attachment_id=12\" class=\"wp-image-12\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-2-1024x683.jpg\" alt=\"\" data-id=\"13\" data-link=\"http://localhost/miraira_theme/?attachment_id=13\" class=\"wp-image-13\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-3-1024x683.jpg\" alt=\"\" data-id=\"14\" data-link=\"http://localhost/miraira_theme/?attachment_id=14\" class=\"wp-image-14\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-4-1024x683.jpg\" alt=\"\" data-id=\"15\" data-link=\"http://localhost/miraira_theme/?attachment_id=15\" class=\"wp-image-15\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-5-1024x683.jpg\" alt=\"\" data-id=\"16\" data-link=\"http://localhost/miraira_theme/?attachment_id=16\" class=\"wp-image-16\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-6-1024x683.jpg\" alt=\"\" data-id=\"17\" data-link=\"http://localhost/miraira_theme/?attachment_id=17\" class=\"wp-image-17\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-7-1024x683.jpg\" alt=\"\" data-id=\"18\" data-link=\"http://localhost/miraira_theme/?attachment_id=18\" class=\"wp-image-18\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-8-1024x683.jpg\" alt=\"\" data-id=\"19\" data-link=\"http://localhost/miraira_theme/?attachment_id=19\" class=\"wp-image-19\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-9-1024x683.jpg\" alt=\"\" data-id=\"20\" data-link=\"http://localhost/miraira_theme/?attachment_id=20\" class=\"wp-image-20\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-10-1024x683.jpg\" alt=\"\" data-id=\"21\" data-link=\"http://localhost/miraira_theme/?attachment_id=21\" class=\"wp-image-21\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-11-1024x683.jpg\" alt=\"\" data-id=\"22\" data-link=\"http://localhost/miraira_theme/?attachment_id=22\" class=\"wp-image-22\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-12-1024x683.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://localhost/miraira_theme/?attachment_id=23\" class=\"wp-image-23\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-13-1024x683.jpg\" alt=\"\" data-id=\"24\" data-link=\"http://localhost/miraira_theme/?attachment_id=24\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-14-1024x683.jpg\" alt=\"\" data-id=\"25\" data-link=\"http://localhost/miraira_theme/?attachment_id=25\" class=\"wp-image-25\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-15-1024x683.jpg\" alt=\"\" data-id=\"26\" data-link=\"http://localhost/miraira_theme/?attachment_id=26\" class=\"wp-image-26\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-16-1024x683.jpg\" alt=\"\" data-id=\"27\" data-link=\"http://localhost/miraira_theme/?attachment_id=27\" class=\"wp-image-27\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-17-1024x683.jpg\" alt=\"\" data-id=\"28\" data-link=\"http://localhost/miraira_theme/?attachment_id=28\" class=\"wp-image-28\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-18-1024x683.jpg\" alt=\"\" data-id=\"29\" data-link=\"http://localhost/miraira_theme/?attachment_id=29\" class=\"wp-image-29\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-19-1024x683.jpg\" alt=\"\" data-id=\"30\" data-link=\"http://localhost/miraira_theme/?attachment_id=30\" class=\"wp-image-30\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-20-1024x683.jpg\" alt=\"\" data-id=\"31\" data-link=\"http://localhost/miraira_theme/?attachment_id=31\" class=\"wp-image-31\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-21-1024x683.jpg\" alt=\"\" data-id=\"32\" data-link=\"http://localhost/miraira_theme/?attachment_id=32\" class=\"wp-image-32\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-22-1024x683.jpg\" alt=\"\" data-id=\"33\" data-link=\"http://localhost/miraira_theme/?attachment_id=33\" class=\"wp-image-33\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-24-1024x683.jpg\" alt=\"\" data-id=\"34\" data-link=\"http://localhost/miraira_theme/?attachment_id=34\" class=\"wp-image-34\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-25-1024x683.jpg\" alt=\"\" data-id=\"35\" data-link=\"http://localhost/miraira_theme/?attachment_id=35\" class=\"wp-image-35\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-26-1024x683.jpg\" alt=\"\" data-id=\"36\" data-link=\"http://localhost/miraira_theme/?attachment_id=36\" class=\"wp-image-36\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-27-1024x683.jpg\" alt=\"\" data-id=\"37\" data-link=\"http://localhost/miraira_theme/?attachment_id=37\" class=\"wp-image-37\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-28-1024x683.jpg\" alt=\"\" data-id=\"38\" data-link=\"http://localhost/miraira_theme/?attachment_id=38\" class=\"wp-image-38\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-29-1024x683.jpg\" alt=\"\" data-id=\"39\" data-link=\"http://localhost/miraira_theme/?attachment_id=39\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-30-1024x683.jpg\" alt=\"\" data-id=\"40\" data-link=\"http://localhost/miraira_theme/?attachment_id=40\" class=\"wp-image-40\"/></figure></li></ul>\n<!-- /wp:gallery -->', 'Miraira - TJA', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-01-31 14:30:18', '2019-01-31 14:30:18', '', 11, 'http://localhost/miraira_theme/2019/01/31/11-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-01-31 16:19:19', '2019-01-31 16:19:19', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-31 16:19:19', '2019-01-31 16:19:19', '', 0, 'http://localhost/miraira_theme/?page_id=42', 0, 'page', '', 0),
(44, 1, '2019-01-31 16:19:19', '2019-01-31 16:19:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-01-31 16:19:19', '2019-01-31 16:19:19', '', 42, 'http://localhost/miraira_theme/2019/01/31/42-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-01-31 16:20:37', '2019-01-31 16:20:37', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-01-31 16:20:37', '2019-01-31 16:20:37', '', 0, 'http://localhost/miraira_theme/?page_id=45', 0, 'page', '', 0),
(46, 1, '2019-01-31 16:20:37', '2019-01-31 16:20:37', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2019-02-07 14:05:56', '2019-02-07 14:05:56', '', 0, 'http://localhost/miraira_theme/2019/01/31/46/', 2, 'nav_menu_item', '', 0),
(47, 1, '2019-01-31 16:20:37', '2019-01-31 16:20:37', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-01-31 16:20:37', '2019-01-31 16:20:37', '', 45, 'http://localhost/miraira_theme/2019/01/31/45-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-02-07 14:05:31', '2019-02-07 14:05:31', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2019-02-07 14:05:31', '2019-02-07 14:05:31', '', 0, 'http://localhost/miraira_theme/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2019-02-07 14:17:45', '2019-02-07 14:17:45', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/miraira_theme/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-07 14:17:45', '2019-02-07 14:17:45', '', 2, 'http://localhost/miraira_theme/2019/02/07/2-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-02-07 14:37:48', '2019-02-07 14:37:48', '', 'Koala', '', 'inherit', 'open', 'closed', '', 'koala', '', '', '2019-02-07 14:37:48', '2019-02-07 14:37:48', '', 0, 'http://localhost/miraira_theme/wp-content/uploads/2019/02/Koala.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-02-07 14:38:50', '2019-02-07 14:38:50', '', 'Desert', '', 'inherit', 'open', 'closed', '', 'desert', '', '', '2019-02-07 14:38:50', '2019-02-07 14:38:50', '', 0, 'http://localhost/miraira_theme/wp-content/uploads/2019/02/Desert.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-02-07 14:38:55', '2019-02-07 14:38:55', '', 'cropped-Desert.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-desert-jpg', '', '', '2019-02-07 14:38:55', '2019-02-07 14:38:55', '', 0, 'http://localhost/miraira_theme/wp-content/uploads/2019/02/cropped-Desert.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-02-07 14:41:17', '2019-02-07 14:41:17', '{\n    \"miraira::header_image\": {\n        \"value\": \"http://localhost/miraira_theme/wp-content/uploads/2019/02/cropped-Desert.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-07 14:39:56\"\n    },\n    \"miraira::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/miraira_theme/wp-content/uploads/2019/02/cropped-Desert.jpg\",\n            \"thumbnail_url\": \"http://localhost/miraira_theme/wp-content/uploads/2019/02/cropped-Desert.jpg\",\n            \"timestamp\": 1549550335995,\n            \"attachment_id\": 52,\n            \"width\": 1920,\n            \"height\": 225\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-07 14:39:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1ab87b54-bdd1-4a87-986e-78994fab6199', '', '', '2019-02-07 14:41:17', '2019-02-07 14:41:17', '', 0, 'http://localhost/miraira_theme/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2019-02-08 12:58:33', '2019-02-08 12:58:33', '<!-- wp:gallery {\"ids\":[12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40]} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-1-1024x683.jpg\" alt=\"\" data-id=\"12\" data-link=\"http://localhost/miraira_theme/?attachment_id=12\" class=\"wp-image-12\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-2-1024x683.jpg\" alt=\"\" data-id=\"13\" data-link=\"http://localhost/miraira_theme/?attachment_id=13\" class=\"wp-image-13\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-3-1024x683.jpg\" alt=\"\" data-id=\"14\" data-link=\"http://localhost/miraira_theme/?attachment_id=14\" class=\"wp-image-14\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-4-1024x683.jpg\" alt=\"\" data-id=\"15\" data-link=\"http://localhost/miraira_theme/?attachment_id=15\" class=\"wp-image-15\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-5-1024x683.jpg\" alt=\"\" data-id=\"16\" data-link=\"http://localhost/miraira_theme/?attachment_id=16\" class=\"wp-image-16\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-6-1024x683.jpg\" alt=\"\" data-id=\"17\" data-link=\"http://localhost/miraira_theme/?attachment_id=17\" class=\"wp-image-17\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-7-1024x683.jpg\" alt=\"\" data-id=\"18\" data-link=\"http://localhost/miraira_theme/?attachment_id=18\" class=\"wp-image-18\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-8-1024x683.jpg\" alt=\"\" data-id=\"19\" data-link=\"http://localhost/miraira_theme/?attachment_id=19\" class=\"wp-image-19\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-9-1024x683.jpg\" alt=\"\" data-id=\"20\" data-link=\"http://localhost/miraira_theme/?attachment_id=20\" class=\"wp-image-20\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-10-1024x683.jpg\" alt=\"\" data-id=\"21\" data-link=\"http://localhost/miraira_theme/?attachment_id=21\" class=\"wp-image-21\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-11-1024x683.jpg\" alt=\"\" data-id=\"22\" data-link=\"http://localhost/miraira_theme/?attachment_id=22\" class=\"wp-image-22\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-12-1024x683.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://localhost/miraira_theme/?attachment_id=23\" class=\"wp-image-23\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-13-1024x683.jpg\" alt=\"\" data-id=\"24\" data-link=\"http://localhost/miraira_theme/?attachment_id=24\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-14-1024x683.jpg\" alt=\"\" data-id=\"25\" data-link=\"http://localhost/miraira_theme/?attachment_id=25\" class=\"wp-image-25\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-15-1024x683.jpg\" alt=\"\" data-id=\"26\" data-link=\"http://localhost/miraira_theme/?attachment_id=26\" class=\"wp-image-26\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-16-1024x683.jpg\" alt=\"\" data-id=\"27\" data-link=\"http://localhost/miraira_theme/?attachment_id=27\" class=\"wp-image-27\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-17-1024x683.jpg\" alt=\"\" data-id=\"28\" data-link=\"http://localhost/miraira_theme/?attachment_id=28\" class=\"wp-image-28\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-18-1024x683.jpg\" alt=\"\" data-id=\"29\" data-link=\"http://localhost/miraira_theme/?attachment_id=29\" class=\"wp-image-29\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-19-1024x683.jpg\" alt=\"\" data-id=\"30\" data-link=\"http://localhost/miraira_theme/?attachment_id=30\" class=\"wp-image-30\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-20-1024x683.jpg\" alt=\"\" data-id=\"31\" data-link=\"http://localhost/miraira_theme/?attachment_id=31\" class=\"wp-image-31\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-21-1024x683.jpg\" alt=\"\" data-id=\"32\" data-link=\"http://localhost/miraira_theme/?attachment_id=32\" class=\"wp-image-32\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-22-1024x683.jpg\" alt=\"\" data-id=\"33\" data-link=\"http://localhost/miraira_theme/?attachment_id=33\" class=\"wp-image-33\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-24-1024x683.jpg\" alt=\"\" data-id=\"34\" data-link=\"http://localhost/miraira_theme/?attachment_id=34\" class=\"wp-image-34\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-25-1024x683.jpg\" alt=\"\" data-id=\"35\" data-link=\"http://localhost/miraira_theme/?attachment_id=35\" class=\"wp-image-35\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-26-1024x683.jpg\" alt=\"\" data-id=\"36\" data-link=\"http://localhost/miraira_theme/?attachment_id=36\" class=\"wp-image-36\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-27-1024x683.jpg\" alt=\"\" data-id=\"37\" data-link=\"http://localhost/miraira_theme/?attachment_id=37\" class=\"wp-image-37\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-28-1024x683.jpg\" alt=\"\" data-id=\"38\" data-link=\"http://localhost/miraira_theme/?attachment_id=38\" class=\"wp-image-38\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-29-1024x683.jpg\" alt=\"\" data-id=\"39\" data-link=\"http://localhost/miraira_theme/?attachment_id=39\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/miraira_theme/wp-content/uploads/2019/01/Guerreiros_TJA_2013-30-1024x683.jpg\" alt=\"\" data-id=\"40\" data-link=\"http://localhost/miraira_theme/?attachment_id=40\" class=\"wp-image-40\"/></figure></li></ul>\n<!-- /wp:gallery -->', 'Miraira - TJA', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2019-02-08 12:58:33', '2019-02-08 12:58:33', '', 11, 'http://localhost/miraira_theme/2019/02/08/11-autosave-v1/', 0, 'revision', '', 0),
(55, 1, '2019-02-08 14:09:01', '2019-02-08 14:09:01', '{\n    \"miraira::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-08 14:09:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4f29655b-2b4c-4d8b-af49-de1be6d33882', '', '', '2019-02-08 14:09:01', '2019-02-08 14:09:01', '', 0, 'http://localhost/miraira_theme/?p=55', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_termmeta`
--

CREATE TABLE `wp_miratheme_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_terms`
--

CREATE TABLE `wp_miratheme_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_miratheme_terms`
--

INSERT INTO `wp_miratheme_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Menu Principal', 'menu-principal', 0),
(3, 'Menu de rodapé', 'menu-de-rodape', 0),
(4, 'Menu Superior', 'menu-superior', 0),
(5, 'Mira', 'mira', 0),
(6, 'Apresentações', 'apresentacoes', 0),
(7, 'Galerias', 'galerias', 0),
(8, 'galerias', 'galerias', 0),
(9, 'Guerreiros', 'guerreiros', 0),
(10, 'post-format-gallery', 'post-format-gallery', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_term_relationships`
--

CREATE TABLE `wp_miratheme_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_miratheme_term_relationships`
--

INSERT INTO `wp_miratheme_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 4, 0),
(6, 4, 0),
(7, 2, 0),
(10, 3, 0),
(11, 5, 0),
(11, 6, 0),
(11, 7, 0),
(11, 9, 0),
(11, 10, 0),
(46, 2, 0),
(48, 3, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_term_taxonomy`
--

CREATE TABLE `wp_miratheme_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_miratheme_term_taxonomy`
--

INSERT INTO `wp_miratheme_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'post_tag', '', 0, 0),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_format', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_usermeta`
--

CREATE TABLE `wp_miratheme_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_miratheme_usermeta`
--

INSERT INTO `wp_miratheme_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'zneto'),
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
(12, 1, 'wp_miratheme_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_miratheme_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"ae59d1c044ff92f52f498bd62779be5a7c27c976b2deb14a90712eb0ee095fd1\";a:4:{s:10:\"expiration\";i:1549720547;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549547747;}s:64:\"021084f4b81705c58ba49dfff090c4defa0ddb123750495f47e057cab13e4f84\";a:4:{s:10:\"expiration\";i:1549802774;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549629974;}}'),
(17, 1, 'wp_miratheme_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_miratheme_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_miratheme_user-settings-time', '1549551700'),
(24, 1, '_yoast_wpseo_profile_updated', '1549641452'),
(25, 1, 'wp_miratheme_yoast_notifications', 'a:4:{i:0;a:2:{s:7:\"message\";s:173:\"Don\'t miss your crawl errors: <a href=\"http://localhost/miraira_theme/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:436:\"We&#039;d love for you to try our new and improved Yoast SEO analysis! Use the toggle on the <a href=\"#top#features\" onclick=\"jQuery(\'#features-tab\').click()\">Features tab</a> in your Yoast SEO settings. <a href=\"https://yoa.st/recalibration-beta-notice?php_version=7.1.8&platform=wordpress&platform_version=5.0.3&software=free&software_version=9.5&role=administrator&days_active=0\" target=\"_blank\">Read more about the new analysis</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:37:\"wpseo-recalibration-meta-notification\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:222:\"You still have the default WordPress tagline, even an empty one is probably better. <a href=\"http://localhost/miraira_theme/wp-admin/customize.php?autofocus[control]=blogdescription\">You can fix this in the Customiser</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:28:\"wpseo-dismiss-tagline-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:3;a:2:{s:7:\"message\";s:227:\"<strong>Huge SEO Issue: You\'re blocking access to robots.</strong> You must <a href=\"http://localhost/miraira_theme/wp-admin/options-reading.php\">go to your Reading Settings</a> and uncheck the box for Search Engine Visibility.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_users`
--

CREATE TABLE `wp_miratheme_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_miratheme_users`
--

INSERT INTO `wp_miratheme_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'zneto', '$P$BmGC8KcqwTyGTxi27lCGEKCUQyWySt1', 'zneto', 'zneto@live.com', '', '2019-01-31 11:57:15', '', 0, 'zneto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_yoast_seo_links`
--

CREATE TABLE `wp_miratheme_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_miratheme_yoast_seo_meta`
--

CREATE TABLE `wp_miratheme_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_miratheme_commentmeta`
--
ALTER TABLE `wp_miratheme_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_miratheme_comments`
--
ALTER TABLE `wp_miratheme_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_miratheme_links`
--
ALTER TABLE `wp_miratheme_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_miratheme_options`
--
ALTER TABLE `wp_miratheme_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_miratheme_postmeta`
--
ALTER TABLE `wp_miratheme_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_miratheme_posts`
--
ALTER TABLE `wp_miratheme_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_miratheme_termmeta`
--
ALTER TABLE `wp_miratheme_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_miratheme_terms`
--
ALTER TABLE `wp_miratheme_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_miratheme_term_relationships`
--
ALTER TABLE `wp_miratheme_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_miratheme_term_taxonomy`
--
ALTER TABLE `wp_miratheme_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_miratheme_usermeta`
--
ALTER TABLE `wp_miratheme_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_miratheme_users`
--
ALTER TABLE `wp_miratheme_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_miratheme_yoast_seo_links`
--
ALTER TABLE `wp_miratheme_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_miratheme_yoast_seo_meta`
--
ALTER TABLE `wp_miratheme_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_miratheme_commentmeta`
--
ALTER TABLE `wp_miratheme_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_miratheme_comments`
--
ALTER TABLE `wp_miratheme_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_miratheme_links`
--
ALTER TABLE `wp_miratheme_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_miratheme_options`
--
ALTER TABLE `wp_miratheme_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
--
-- AUTO_INCREMENT for table `wp_miratheme_postmeta`
--
ALTER TABLE `wp_miratheme_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `wp_miratheme_posts`
--
ALTER TABLE `wp_miratheme_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `wp_miratheme_termmeta`
--
ALTER TABLE `wp_miratheme_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_miratheme_terms`
--
ALTER TABLE `wp_miratheme_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_miratheme_term_taxonomy`
--
ALTER TABLE `wp_miratheme_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_miratheme_usermeta`
--
ALTER TABLE `wp_miratheme_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_miratheme_users`
--
ALTER TABLE `wp_miratheme_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_miratheme_yoast_seo_links`
--
ALTER TABLE `wp_miratheme_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
