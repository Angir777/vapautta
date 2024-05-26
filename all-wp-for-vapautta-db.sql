-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 26, 2024 at 09:06 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vapautta`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Komentator WordPressa', 'wapuu@wordpress.example', 'https://pl.wordpress.org/', '', '2023-01-19 20:30:45', '2023-01-19 19:30:45', 'Cześć, to jest komentarz.\nAby zapoznać się z moderowaniem, edycją i usuwaniem komentarzy, należy odwiedzić ekran komentarzy w kokpicie.\nAwatary komentujących pochodzą z <a href=\"https://pl.gravatar.com/\">Gravatara</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'WordPress', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@example.com', 'yes'),
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
(23, 'date_format', 'Y-m-d', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:21:\"polylang/polylang.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentythree', 'yes'),
(41, 'stylesheet', 'twentytwentythree', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:33:\"instagram-feed/instagram-feed.php\";s:22:\"sb_instagram_uninstall\";}', 'no'),
(80, 'timezone_string', 'Europe/Warsaw', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '32', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1731182626', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:29:\"manage_instagram_feed_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pl_PL', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Ostatnie wpisy</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:232:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Najnowsze komentarze</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archiwa</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:149:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Kategorie</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:9:{i:1716751845;a:5:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716751856;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716751857;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716758694;a:1:{s:15:\"sbi_feed_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716815141;a:1:{s:23:\"sbi_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1716840589;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1717183845;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1717354824;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'theme_mods_twentytwentythree', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1674156794;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(128, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:36:\"Weryfikacja SSLa nie powiodła się.\";}}', 'yes'),
(161, 'finished_updating_comment_type', '1', 'yes'),
(162, 'recently_activated', 'a:0:{}', 'yes'),
(170, 'current_theme', 'Twenty Twenty-Three', 'yes'),
(171, 'theme_mods_szablon', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:11:\"header-menu\";i:14;s:12:\"footer1-menu\";i:17;s:12:\"footer2-menu\";i:19;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:103;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1716750225;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(172, 'theme_switched', '', 'yes'),
(179, 'acf_version', '6.3.0', 'yes'),
(184, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.9.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1715631146;s:7:\"version\";s:5:\"5.9.4\";s:11:\"count_valid\";i:2;s:13:\"count_invalid\";i:0;}}', 'yes'),
(195, 'polylang', 'a:16:{s:7:\"browser\";i:0;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";b:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"3.6.1\";s:16:\"first_activation\";i:1674157109;s:12:\"default_lang\";s:2:\"pl\";s:9:\"nav_menus\";a:1:{s:7:\"szablon\";a:3:{s:11:\"header-menu\";a:2:{s:2:\"pl\";i:14;s:2:\"en\";i:15;}s:12:\"footer1-menu\";a:2:{s:2:\"pl\";i:17;s:2:\"en\";i:18;}s:12:\"footer2-menu\";a:2:{s:2:\"pl\";i:19;s:2:\"en\";i:20;}}}s:16:\"previous_version\";s:5:\"3.3.1\";}', 'yes'),
(196, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(197, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'category_children', 'a:0:{}', 'yes'),
(205, 'pll_dismissed_notices', 'a:1:{i:0;s:6:\"wizard\";}', 'yes'),
(213, 'opcje_szablonu_option_name', 'a:14:{s:11:\"telefon_1_0\";s:15:\"+48 000 000 000\";s:11:\"telefon_2_1\";s:15:\"+48 000 000 000\";s:7:\"email_2\";s:15:\"hi@vapautta.com\";s:15:\"instagram_url_3\";s:25:\"https://www.instagram.com\";s:11:\"instagram_4\";s:8:\"vapautta\";s:14:\"facebook_url_5\";s:24:\"https://www.facebook.com\";s:10:\"mapa_url_6\";s:0:\"\";s:13:\"nazwa_firmy_7\";s:14:\"Vapautta Theme\";s:15:\"opis_firmy_pl_8\";s:586:\"Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker\";s:15:\"opis_firmy_de_9\";s:579:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:17:\"imi_i_nazwisko_10\";s:8:\"John Doe\";s:8:\"adres_11\";s:32:\"Lorem Ipsum is simply dummy text\";s:15:\"kod_pocztowy_12\";s:6:\"00-000\";s:6:\"nip_13\";s:10:\"1234567890\";}', 'yes'),
(268, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(281, 'secret_key', '26W5tZm]}:D!tOR|(iR=Q9eaj{NMaOlb3+dpcg=R3^s$(&j(!amq5RACK`evI2}7', 'no'),
(293, 'sbi_statuses', 'a:5:{s:8:\"database\";a:1:{s:14:\"hashtag_column\";b:1;}s:13:\"first_install\";i:1674163434;s:4:\"gdpr\";a:1:{s:19:\"from_update_success\";b:1;}s:12:\"data_manager\";a:2:{s:9:\"last_used\";i:1674077034;s:14:\"num_db_updates\";i:31;}s:24:\"support_legacy_shortcode\";b:0;}', 'yes'),
(294, 'sbi_usage_tracking', 'a:2:{s:7:\"enabled\";b:0;s:9:\"last_send\";i:0;}', 'yes'),
(295, 'widget_instagram-feed-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'sbi_usage_tracking_config', 'a:6:{s:3:\"day\";i:1;s:4:\"hour\";i:13;s:6:\"minute\";i:5;s:6:\"second\";i:41;s:6:\"offset\";i:133541;s:8:\"initsend\";i:1674479141;}', 'yes'),
(299, 'sbi_rating_notice', 'pending', 'no'),
(300, 'sbi_db_version', '2.1', 'yes'),
(301, 'sb_instagram_errors', 'a:9:{s:10:\"connection\";a:0:{}s:7:\"hashtag\";a:0:{}s:8:\"resizing\";a:0:{}s:15:\"database_create\";a:0:{}s:10:\"upload_dir\";a:0:{}s:8:\"accounts\";a:0:{}s:9:\"error_log\";a:0:{}s:10:\"action_log\";a:1:{i:0;s:41:\"01-19 21:23:54 - Retesting GDPR features.\";}s:7:\"revoked\";a:0:{}}', 'no'),
(302, 'sb_instagram_settings', 'a:44:{s:15:\"sb_instagram_at\";s:0:\"\";s:20:\"sb_instagram_user_id\";s:0:\"\";s:30:\"sb_instagram_preserve_settings\";s:0:\"\";s:23:\"sb_instagram_ajax_theme\";b:0;s:27:\"sb_instagram_disable_resize\";b:0;s:23:\"sb_instagram_cache_time\";i:1;s:28:\"sb_instagram_cache_time_unit\";s:5:\"hours\";s:16:\"sbi_caching_type\";s:10:\"background\";s:23:\"sbi_cache_cron_interval\";s:7:\"12hours\";s:19:\"sbi_cache_cron_time\";s:1:\"1\";s:20:\"sbi_cache_cron_am_pm\";s:2:\"am\";s:18:\"sb_instagram_width\";s:3:\"100\";s:23:\"sb_instagram_width_unit\";s:1:\"%\";s:28:\"sb_instagram_feed_width_resp\";b:0;s:19:\"sb_instagram_height\";s:0:\"\";s:16:\"sb_instagram_num\";s:2:\"20\";s:24:\"sb_instagram_height_unit\";s:0:\"\";s:17:\"sb_instagram_cols\";s:1:\"4\";s:27:\"sb_instagram_disable_mobile\";b:0;s:26:\"sb_instagram_image_padding\";s:1:\"5\";s:31:\"sb_instagram_image_padding_unit\";s:2:\"px\";s:17:\"sb_instagram_sort\";s:4:\"none\";s:23:\"sb_instagram_background\";s:0:\"\";s:21:\"sb_instagram_show_btn\";b:1;s:27:\"sb_instagram_btn_background\";s:0:\"\";s:27:\"sb_instagram_btn_text_color\";s:0:\"\";s:21:\"sb_instagram_btn_text\";s:12:\"Load More...\";s:22:\"sb_instagram_image_res\";s:4:\"auto\";s:24:\"sb_instagram_show_header\";b:1;s:24:\"sb_instagram_header_size\";s:5:\"small\";s:25:\"sb_instagram_header_color\";s:0:\"\";s:28:\"sb_instagram_show_follow_btn\";b:1;s:33:\"sb_instagram_folow_btn_background\";s:0:\"\";s:34:\"sb_instagram_follow_btn_text_color\";s:0:\"\";s:28:\"sb_instagram_follow_btn_text\";s:19:\"Follow on Instagram\";s:23:\"sb_instagram_custom_css\";s:0:\"\";s:22:\"sb_instagram_custom_js\";s:0:\"\";s:17:\"sb_instagram_cron\";s:2:\"no\";s:19:\"sb_instagram_backup\";b:1;s:15:\"sb_ajax_initial\";b:0;s:24:\"enqueue_css_in_shortcode\";b:0;s:30:\"sb_instagram_disable_mob_swipe\";b:0;s:28:\"sb_instagram_disable_awesome\";b:0;s:18:\"connected_accounts\";a:0:{}}', 'yes'),
(303, 'sbi_single_cache', 'BcROCyq6pnE2SRuarqynkGpKdERwb1lhelhkTlcvLzNPbEY3citPMlZxUGRETE15WFNkem9kelJDb0VqZitvOG5NSXBSQjF1QlRMOG1DZ2phUlN3NjJlOXloUnpMZEJWWFRmZ0NWODI=', 'no'),
(305, 'sbi_notifications', 'a:4:{s:6:\"update\";i:1674163435;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(306, 'sbi_newuser_notifications', 'a:4:{s:6:\"update\";i:1674163436;s:4:\"feed\";a:2:{s:6:\"review\";a:6:{s:5:\"title\";s:22:\"Could you help us out?\";s:7:\"content\";s:273:\"It\'s great to see that you\'ve been using the <strong><span>{plugin}</span></strong> plugin for a while now. Hopefully you\'re happy with it!&nbsp; If so, would you consider leaving a positive review? It really helps to support the plugin and helps others to discover it too!\";s:2:\"id\";s:6:\"review\";s:5:\"image\";s:12:\"sbi-icon.png\";s:4:\"btns\";a:4:{s:7:\"primary\";a:4:{s:3:\"url\";s:12:\"{review-url}\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}s:5:\"class\";s:31:\"sbi_notice_dismiss sbi_main_cta\";s:4:\"text\";s:18:\"Sure, I\'d love to!\";}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:9:\"No thanks\";}s:8:\"complete\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:27:\"I\'ve already given a review\";}s:5:\"later\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:5:\"later\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:12:\"Ask Me Later\";}}s:4:\"wait\";s:2:\"14\";}s:8:\"discount\";a:8:{s:5:\"title\";s:28:\"Attention {platform} Lovers!\";s:7:\"content\";s:221:\"<strong><span>Exclusive offer!</span></strong> We don\'t run promotions very often, but for a limited time we\'re offering <strong><span>{amount} off</span></strong> our Pro version to all users of our free {plugin} plugin.\";s:2:\"id\";s:8:\"discount\";s:6:\"amount\";s:3:\"60%\";s:5:\"image\";s:12:\"sbi-icon.png\";s:13:\"image_overlay\";s:7:\"60% off\";s:4:\"btns\";a:2:{s:7:\"primary\";a:4:{s:3:\"url\";s:127:\"https://smashballoon.com/{slug}/?utm_campaign={campaign}&utm_source=notices&utm_medium=newuser&discount={lowerplatform}thankyou\";s:5:\"class\";s:32:\"sbi_notice_dismiss sbi_offer_btn\";s:4:\"text\";s:14:\"Get this offer\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:31:\"sbi_ignore_new_user_sale_notice\";s:6:\"always\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:18:\"I\'m not interested\";}}s:4:\"wait\";s:2:\"30\";}}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(310, 'cptui_new_install', 'false', 'yes'),
(311, 'cptui_post_types', 'a:2:{s:6:\"oferta\";a:34:{s:4:\"name\";s:6:\"oferta\";s:5:\"label\";s:9:\"Oferty PL\";s:14:\"singular_label\";s:6:\"Oferta\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:16:\"dashicons-marker\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:5:\"offer\";a:34:{s:4:\"name\";s:5:\"offer\";s:5:\"label\";s:9:\"Oferty EN\";s:14:\"singular_label\";s:5:\"Offer\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:16:\"dashicons-marker\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}', 'yes'),
(367, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":6,\"critical\":1}', 'yes'),
(507, 'site_logo', '103', 'yes'),
(573, 'wp_attachment_pages_enabled', '1', 'yes'),
(574, 'db_upgraded', '', 'yes'),
(577, 'can_compress_scripts', '1', 'yes'),
(585, 'dismissed_update_core', 'a:1:{s:11:\"6.5.3|pl_PL\";b:1;}', 'no'),
(593, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(597, 'rewrite_rules', 'a:215:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:53:\"^(en)/wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:92:\"index.php?lang=$matches[1]&sitemap=$matches[2]&sitemap-subtype=$matches[3]&paged=$matches[4]\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:39:\"^(en)/wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:64:\"index.php?lang=$matches[1]&sitemap=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:52:\"(en)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"(en)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(en)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"(en)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"(en)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"(en)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"(en)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(en)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=pl&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(en)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=pl&post_format=$matches[1]&feed=$matches[2]\";s:26:\"(en)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=pl&post_format=$matches[1]&embed=true\";s:38:\"(en)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=pl&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(en)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=pl&post_format=$matches[1]\";s:34:\"oferta/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"oferta/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"oferta/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"oferta/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"oferta/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"oferta/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"oferta/([^/]+)/embed/?$\";s:39:\"index.php?oferta=$matches[1]&embed=true\";s:27:\"oferta/([^/]+)/trackback/?$\";s:33:\"index.php?oferta=$matches[1]&tb=1\";s:35:\"oferta/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?oferta=$matches[1]&paged=$matches[2]\";s:42:\"oferta/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?oferta=$matches[1]&cpage=$matches[2]\";s:31:\"oferta/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?oferta=$matches[1]&page=$matches[2]\";s:23:\"oferta/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"oferta/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"oferta/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"oferta/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"oferta/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"oferta/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"offer/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"offer/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"offer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"offer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"offer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"offer/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"offer/([^/]+)/embed/?$\";s:38:\"index.php?offer=$matches[1]&embed=true\";s:26:\"offer/([^/]+)/trackback/?$\";s:32:\"index.php?offer=$matches[1]&tb=1\";s:34:\"offer/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?offer=$matches[1]&paged=$matches[2]\";s:41:\"offer/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?offer=$matches[1]&cpage=$matches[2]\";s:30:\"offer/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?offer=$matches[1]&page=$matches[2]\";s:22:\"offer/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"offer/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"offer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"offer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"offer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"offer/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(en)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=pl&&feed=$matches[1]\";s:32:\"(en)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=pl&&feed=$matches[1]\";s:13:\"(en)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=pl&&embed=true\";s:25:\"(en)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=pl&&paged=$matches[1]\";s:32:\"(en)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?lang=$matches[1]&&page_id=32&cpage=$matches[2]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:47:\"index.php?lang=pl&&page_id=32&cpage=$matches[1]\";s:7:\"(en)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(en)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=pl&&feed=$matches[1]&withcomments=1\";s:41:\"(en)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=pl&&feed=$matches[1]&withcomments=1\";s:22:\"(en)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=pl&&embed=true\";s:49:\"(en)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=pl&s=$matches[1]&feed=$matches[2]\";s:44:\"(en)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=pl&s=$matches[1]&feed=$matches[2]\";s:25:\"(en)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=pl&s=$matches[1]&embed=true\";s:37:\"(en)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=pl&s=$matches[1]&paged=$matches[2]\";s:19:\"(en)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=pl&s=$matches[1]\";s:52:\"(en)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=pl&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=pl&author_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=pl&author_name=$matches[1]&embed=true\";s:40:\"(en)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=pl&author_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=pl&author_name=$matches[1]\";s:74:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(en)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"(en)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"(en)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"(en)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"(en)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"(en)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"(en)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"(en)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"(en)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:63:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:73:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:93:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:69:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:108:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:102:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&tb=1\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:82:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:70:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&paged=$matches[6]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&cpage=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:66:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&page=$matches[6]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:52:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:58:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&cpage=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:43:\"(en)/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:32:\"(en)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(en)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(en)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(en)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(en)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:25:\"(en)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:45:\"(en)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:40:\"(en)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:33:\"(en)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:40:\"(en)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:29:\"(en)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(633, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1716919817', 'no'),
(634, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(646, '_site_transient_timeout_browser_c92baae71318dc81de51a663df2f8b4f', '1717006840', 'no'),
(647, '_site_transient_browser_c92baae71318dc81de51a663df2f8b4f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"125.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(648, '_transient_pll_languages_list', 'a:2:{i:0;a:22:{s:4:\"name\";s:6:\"Polski\";s:4:\"slug\";s:2:\"pl\";s:10:\"term_group\";i:0;s:7:\"term_id\";i:3;s:6:\"locale\";s:5:\"pl_PL\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"pl-PL\";s:8:\"facebook\";s:5:\"pl_PL\";s:8:\"home_url\";s:26:\"http://localhost/vapautta/\";s:10:\"search_url\";s:26:\"http://localhost/vapautta/\";s:4:\"host\";N;s:13:\"page_on_front\";i:32;s:14:\"page_for_posts\";i:0;s:9:\"flag_code\";s:2:\"pl\";s:8:\"flag_url\";s:66:\"http://localhost/vapautta/wp-content/plugins/polylang/flags/pl.png\";s:4:\"flag\";s:367:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAPFBMVEX/8fH67Ozz5ubt4OD+/v77+/v39/fo2Nj5AAD+jo79bW36X1/4T0/5QUHhAAD3MzP0Kir2ICDzERHtAACO5h0ZAAAAQUlEQVR4AQXBsRHDMAwAMTzNwvuvm5MVIECIZIEQZ4EQ7AAIGBABegsR+Z7VxChx7hCjhIwYJcTydcgQ1gv8Lhd/58kJTU6WtnIAAAAASUVORK5CYII=\" alt=\"Polski\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";s:0:\"\";s:11:\"custom_flag\";s:0:\"\";s:6:\"active\";b:1;s:9:\"fallbacks\";a:0:{}s:10:\"is_default\";b:1;s:10:\"term_props\";a:2:{s:8:\"language\";a:3:{s:7:\"term_id\";i:3;s:16:\"term_taxonomy_id\";i:3;s:5:\"count\";i:6;}s:13:\"term_language\";a:3:{s:7:\"term_id\";i:4;s:16:\"term_taxonomy_id\";i:4;s:5:\"count\";i:1;}}}i:1;a:22:{s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:7:\"term_id\";i:6;s:6:\"locale\";s:5:\"en_US\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-US\";s:8:\"facebook\";s:5:\"en_US\";s:8:\"home_url\";s:34:\"http://localhost/vapautta/en/home/\";s:10:\"search_url\";s:29:\"http://localhost/vapautta/en/\";s:4:\"host\";N;s:13:\"page_on_front\";i:34;s:14:\"page_for_posts\";i:0;s:9:\"flag_code\";s:2:\"us\";s:8:\"flag_url\";s:66:\"http://localhost/vapautta/wp-content/plugins/polylang/flags/us.png\";s:4:\"flag\";s:576:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAmVBMVEViZsViZMJiYrf9gnL8eWrlYkjgYkjZYkj8/PujwPybvPz4+PetraBEgfo+fvo3efkydfkqcvj8Y2T8UlL8Q0P8MzP9k4Hz8/Lu7u4DdPj9/VrKysI9fPoDc/EAZ7z7IiLHYkjp6ekCcOTk5OIASbfY/v21takAJrT5Dg6sYkjc3Nn94t2RkYD+y8KeYkjs/v7l5fz0dF22YkjWvcOLAAAAgElEQVR4AR2KNULFQBgGZ5J13KGGKvc/Cw1uPe62eb9+Jr1EUBFHSgxxjP2Eca6AfUSfVlUfBvm1Ui1bqafctqMndNkXpb01h5TLx4b6TIXgwOCHfjv+/Pz+5vPRw7txGWT2h6yO0/GaYltIp5PT1dEpLNPL/SdWjYjAAZtvRPgHJX4Xio+DSrkAAAAASUVORK5CYII=\" alt=\"English\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";s:0:\"\";s:11:\"custom_flag\";s:0:\"\";s:6:\"active\";b:1;s:9:\"fallbacks\";a:0:{}s:10:\"is_default\";b:0;s:10:\"term_props\";a:2:{s:8:\"language\";a:3:{s:7:\"term_id\";i:6;s:16:\"term_taxonomy_id\";i:6;s:5:\"count\";i:5;}s:13:\"term_language\";a:3:{s:7:\"term_id\";i:7;s:16:\"term_taxonomy_id\";i:7;s:5:\"count\";i:1;}}}}', 'yes'),
(694, '_site_transient_timeout_theme_roots', '1716752034', 'no'),
(695, '_site_transient_theme_roots', 'a:2:{s:17:\"twentytwentythree\";s:7:\"/themes\";s:8:\"vapautta\";s:7:\"/themes\";}', 'no'),
(696, '_site_transient_timeout_available_translations', '1716760805', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(697, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.8\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.8/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-17 04:58:23\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.4/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.25/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 09:17:56\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-20 07:52:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-03 06:53:44\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 08:56:53\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 11:05:05\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-07 05:56:51\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-26 13:44:37\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.5.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-26 13:47:17\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-03 13:12:29\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 14:48:34\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-13 14:21:47\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.5.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-15 20:08:02\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-24 17:26:23\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-10 06:30:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 03:31:51\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 03:31:15\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 19:22:48\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-23 14:33:39\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-08 07:13:13\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-30 13:49:56\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 15:08:30\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 17:55:40\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-11-08 20:42:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.15/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.20/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-08 03:22:25\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-10-05 10:16:58\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-01-12 17:31:37\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 18:38:28\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-16 17:07:01\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-03 13:45:51\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 13:13:32\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 08:21:26\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.5/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-19 23:22:01\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-03-01 06:52:39\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.32\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.32/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-25 08:05:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-16 07:24:01\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 11:52:45\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-22 14:20:40\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-12 09:04:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-04 16:29:29\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 07:16:04\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.25/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.20/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.6\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.6/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-13 16:06:43\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-20 01:03:51\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.5.3/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-26 16:49:07\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.5.3/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-09 18:37:05\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-17 13:37:48\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.8\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.8/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-23 19:36:11\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-16 08:56:54\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-24 10:30:01\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.14\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.14/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 17:40:16\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-14 08:49:16\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 21:12:05\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-05 08:03:59\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-15 09:47:39\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 13:57:21\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.33\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.33/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 10:39:37\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-29 14:17:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-16 23:10:57\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 19:04:40\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 19:26:39\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.15/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 11:21:59\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-12 10:29:16\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-02-14 12:47:33\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-25 15:04:50\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-03 15:29:12\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-18 11:29:39\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-14 05:23:13\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.9/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.24/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-18 15:04:07\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-20 12:38:20\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-03-06 18:52:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.15/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-21 03:44:55\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-12 07:23:41\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-19 09:07:33\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(699, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-6.5.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1716750217;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 13:57:21\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pl_PL.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(704, 'acf_site_health', '{\"version\":\"6.3.0\",\"plugin_type\":\"Free\",\"wp_version\":\"6.5.3\",\"mysql_version\":\"10.4.32-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"MyWordPressTheme\",\"version\":\"1.1\",\"theme_uri\":\"https:\\/\\/skrzypniak.pl\\/\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.0\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"contact-form-7\\/wp-contact-form-7.php\":{\"name\":\"Contact Form 7\",\"version\":\"5.9.4\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/\"},\"custom-post-type-ui\\/custom-post-type-ui.php\":{\"name\":\"Custom Post Type UI\",\"version\":\"1.16.0\",\"plugin_uri\":\"https:\\/\\/github.com\\/WebDevStudios\\/custom-post-type-ui\\/\"},\"polylang\\/polylang.php\":{\"name\":\"Polylang\",\"version\":\"3.6.1\",\"plugin_uri\":\"https:\\/\\/polylang.pro\"}},\"ui_field_groups\":\"2\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"group\":4,\"text\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"6\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"7\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":true,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"last_updated\":1716750025}', 'no'),
(707, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1716750217;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.3.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=3079482\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.16.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.16.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:49:\"gallery-lightbox-slider/gallery-lightbox-lite.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/gallery-lightbox-slider\";s:4:\"slug\";s:23:\"gallery-lightbox-slider\";s:6:\"plugin\";s:49:\"gallery-lightbox-slider/gallery-lightbox-lite.php\";s:11:\"new_version\";s:8:\"1.0.0.39\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/gallery-lightbox-slider/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/gallery-lightbox-slider.1.0.0.39.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/gallery-lightbox-slider/assets/icon-256x256.png?rev=1225809\";s:2:\"1x\";s:76:\"https://ps.w.org/gallery-lightbox-slider/assets/icon-128x128.png?rev=1225809\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/gallery-lightbox-slider/assets/banner-772x250.png?rev=1380648\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:36:\"contact-form-7-honeypot/honeypot.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/contact-form-7-honeypot\";s:4:\"slug\";s:23:\"contact-form-7-honeypot\";s:6:\"plugin\";s:36:\"contact-form-7-honeypot/honeypot.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/contact-form-7-honeypot/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/contact-form-7-honeypot.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/contact-form-7-honeypot/assets/icon-256x256.png?rev=2487322\";s:2:\"1x\";s:76:\"https://ps.w.org/contact-form-7-honeypot/assets/icon-128x128.png?rev=2487322\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/contact-form-7-honeypot/assets/banner-1544x500.jpg?rev=2487322\";s:2:\"1x\";s:78:\"https://ps.w.org/contact-form-7-honeypot/assets/banner-772x250.jpg?rev=2487322\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:33:\"kadence-blocks/kadence-blocks.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/kadence-blocks\";s:4:\"slug\";s:14:\"kadence-blocks\";s:6:\"plugin\";s:33:\"kadence-blocks/kadence-blocks.php\";s:11:\"new_version\";s:6:\"3.2.39\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/kadence-blocks/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/kadence-blocks.3.2.39.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/kadence-blocks/assets/icon-256x256.png?rev=2502131\";s:2:\"1x\";s:67:\"https://ps.w.org/kadence-blocks/assets/icon-128x128.png?rev=2502131\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/kadence-blocks/assets/banner-1544x500.jpg?rev=1954109\";s:2:\"1x\";s:69:\"https://ps.w.org/kadence-blocks/assets/banner-772x250.jpg?rev=1954109\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"3.6.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.3.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:33:\"instagram-feed/instagram-feed.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/instagram-feed\";s:4:\"slug\";s:14:\"instagram-feed\";s:6:\"plugin\";s:33:\"instagram-feed/instagram-feed.php\";s:11:\"new_version\";s:5:\"6.3.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/instagram-feed/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/instagram-feed.6.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/instagram-feed/assets/icon-256x256.png?rev=2700807\";s:2:\"1x\";s:67:\"https://ps.w.org/instagram-feed/assets/icon-128x128.png?rev=2700807\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/instagram-feed/assets/banner-1544x500.png?rev=2679382\";s:2:\"1x\";s:69:\"https://ps.w.org/instagram-feed/assets/banner-772x250.png?rev=2679382\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"22.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.22.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.4\";}}}', 'no'),
(709, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716750234;s:7:\"checked\";a:2:{s:17:\"twentytwentythree\";s:3:\"1.4\";s:8:\"vapautta\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.4.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_form', '<div id=\"contact-form\" class=\"row\">\n<div class=\"col-12\">\n<p>Zapraszamy do kontaktu, chętnie odpowiemy na wszelkie Twoje pytania.</p>\n</div>\n<div class=\"col-xl-6\">\n<div class=\"mb-3\">\n[text* k-name class:form-control placeholder \"Imię i nazwisko*\"]\n</div>\n<div class=\"mb-3\">\n[email* k-email class:form-control placeholder \"Email*\"]\n</div>\n<div class=\"mb-3\">\n[tel k-phone class:form-control placeholder \"Nr telefonu\"]\n</div>\n<div class=\"mb-3\">\n[text* k-city class:form-control placeholder \"Miejscowość*\"]\n</div>\n</div>\n<div class=\"col-xl-6\">\n<div class=\"mb-3\">\n[textarea* k-textarea minlength:5 maxlength:500 class:form-control placeholder \"Wiadomość*\"]\n</div>               \n</div>\n<div class=\"col-xl-6\">[quiz quiz-72 \"Która liczba jest większa? 5 czy 2?*|5\"]</div>\n</div>\n<div class=\"row\">\n<div class=\"col-xl-6 mt-3\"><div><small>*pola wymagane do uzupełnienia</small></div></div>\n<div class=\"col-xl-6\">\n<div class=\"mt-3\">\n<div class=\"text-end\">\n[submit class:btn class:btn class:btn-primary class:w-button \"Wyślij wiadomość\"]\n</div>\n</div>\n</div>\n</div>'),
(6, 7, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"[_site_title] - \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <admin@example.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:239:\"Nadawca: <[k-email]>\n\nImię i nazwisko:  [k-name]\nNumer telefonu: [k-phone]\nMiejscowość: [k-city]\n\nTreść wiadomości:\n[k-textarea]\n\n-- \nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\";s:18:\"additional_headers\";s:19:\"Reply-To: [k-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(7, 7, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"[_site_title] - \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <admin@example.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Treść wiadomości:\n[your-message]\n\n-- \nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(8, 7, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:49:\"Twoja wiadomość została wysłana. Dziękujemy!\";s:12:\"mail_sent_ng\";s:80:\"Wystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\";s:16:\"validation_error\";s:99:\"Przynajmniej jedno pole zawiera błąd. Proszę sprawdzić wpisaną treść i spróbować ponownie.\";s:4:\"spam\";s:80:\"Wystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\";s:12:\"accept_terms\";s:72:\"Musisz wyrazić zgodę na powyższe zapisy, aby móc wysłać formularz.\";s:16:\"invalid_required\";s:27:\"Proszę wypełnić to pole.\";s:16:\"invalid_too_long\";s:38:\"W polu wprowadzono zbyt dużo znaków.\";s:17:\"invalid_too_short\";s:38:\"W polu wprowadzono zbyt mało znaków.\";s:13:\"upload_failed\";s:51:\"Podczas wgrywania pliku wystąpił nieznany błąd.\";s:24:\"upload_file_type_invalid\";s:39:\"Nie możesz wgrywać plików tego typu.\";s:21:\"upload_file_too_large\";s:30:\"Przesłany plik jest za duży.\";s:23:\"upload_failed_php_error\";s:42:\"Wystąpił błąd podczas wgrywania pliku.\";s:12:\"invalid_date\";s:38:\"Wprowadź datę w formacie RRRR-MM-DD.\";s:14:\"date_too_early\";s:42:\"Data wybrana w tym polu jest zbyt wczesna.\";s:13:\"date_too_late\";s:42:\"Data wybrana w tym polu jest zbyt późna.\";s:14:\"invalid_number\";s:18:\"Wprowadź liczbę.\";s:16:\"number_too_small\";s:16:\"Za mała liczba.\";s:16:\"number_too_large\";s:16:\"Za duża liczba.\";s:23:\"quiz_answer_not_correct\";s:40:\"Odpowiedź w quizie jest nieprawidłowa.\";s:13:\"invalid_email\";s:29:\"Proszę wpisać adres e-mail.\";s:11:\"invalid_url\";s:30:\"Proszę wprowadzić adres URL.\";s:11:\"invalid_tel\";s:30:\"Proszę podać numer telefonu.\";}'),
(9, 7, '_additional_settings', ''),
(10, 7, '_locale', 'pl_PL'),
(11, 8, '_pll_strings_translations', 'a:0:{}'),
(12, 9, '_pll_strings_translations', 'a:0:{}'),
(13, 10, '_edit_last', '1'),
(14, 10, '_edit_lock', '1716315243:1'),
(15, 32, '_edit_lock', '1716314929:1'),
(16, 32, '_edit_last', '1'),
(17, 34, '_edit_lock', '1715803294:1'),
(18, 34, '_edit_last', '1'),
(19, 32, 'banner_heading', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz'),
(20, 32, '_banner_heading', 'field_63c99ef4fabe9'),
(21, 32, 'banner_subheading', ' Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki'),
(22, 32, '_banner_subheading', 'field_63c99f17fabea'),
(23, 32, 'banner_button_text', 'Skontaktuj się z nami'),
(24, 32, '_banner_button_text', 'field_63c9a15ffabec'),
(25, 32, 'banner_button_url', ''),
(26, 32, '_banner_button_url', 'field_63c9a16bfabed'),
(27, 32, 'banner_button', ''),
(28, 32, '_banner_button', 'field_63c9a120fabeb'),
(29, 32, 'banner', ''),
(30, 32, '_banner', 'field_63c99e1420bf4'),
(31, 32, 'section_1_heading', 'Do czego tego użyć?'),
(32, 32, '_section_1_heading', 'field_63c9a1a6b0f6b'),
(33, 32, 'section_1_column_1_text', 'Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku. '),
(34, 32, '_section_1_column_1_text', 'field_63c9a1c4b0f6d'),
(35, 32, 'section_1_column_1', ''),
(36, 32, '_section_1_column_1', 'field_63c9a1b6b0f6c'),
(37, 32, 'section_1_column_2_text', 'Wielu webmasterów i designerów używa Lorem Ipsum jako domyślnego modelu tekstu i wpisanie w internetowej wyszukiwarce ‘lorem ipsum’ spowoduje znalezienie bardzo wielu stron, które wciąż są w budowie. Wiele wersji tekstu ewoluowało i zmieniało się przez lata, czasem przez przypadek, czasem specjalnie (humorystyczne wstawki itd).'),
(38, 32, '_section_1_column_2_text', 'field_63c9a1ebb0f6f'),
(39, 32, 'section_1_column_2_button_text', 'Czytaj więcej'),
(40, 32, '_section_1_column_2_button_text', 'field_63c9a20cb0f71'),
(41, 32, 'section_1_column_2_button_url', 'a:3:{s:5:\"title\";s:8:\"O firmie\";s:3:\"url\";s:35:\"http://localhost/vapautta/o-firmie/\";s:6:\"target\";s:0:\"\";}'),
(42, 32, '_section_1_column_2_button_url', 'field_63c9a219b0f72'),
(43, 32, 'section_1_column_2_button', ''),
(44, 32, '_section_1_column_2_button', 'field_63c9a1f7b0f70'),
(45, 32, 'section_1_column_2', ''),
(46, 32, '_section_1_column_2', 'field_63c9a1e0b0f6e'),
(47, 32, 'section_1', ''),
(48, 32, '_section_1', 'field_63c9a191b0f6a'),
(49, 32, 'section_2_heading', 'Skąd to wziąć?'),
(50, 32, '_section_2_heading', 'field_63c9a273b0f74'),
(51, 32, 'section_2_text', 'Jest dostępnych wiele różnych wersji Lorem Ipsum, ale większość zmieniła się pod wpływem dodanego humoru czy przypadkowych słów, które nawet w najmniejszym stopniu nie przypominają istniejących. Jeśli masz zamiar użyć fragmentu Lorem Ipsum, lepiej mieć pewność, że nie ma niczego „dziwnego” w środku tekstu. Wszystkie Internetowe generatory Lorem Ipsum mają tendencje do kopiowania już istniejących bloków, co czyni nasz pierwszym prawdziwym generatorem w Internecie. Używamy zawierającego ponad 200 łacińskich słów słownika, w kontekście wielu znanych sentencji, by wygenerować tekst wyglądający odpowiednio. To wszystko czyni „nasz” Lorem Ipsum wolnym od powtórzeń, humorystycznych wstawek czy niecharakterystycznych słów.'),
(52, 32, '_section_2_text', 'field_63c9a281b0f75'),
(53, 32, 'section_2', ''),
(54, 32, '_section_2', 'field_63c9a25db0f73'),
(55, 32, 'offer_banner', 'oferta'),
(56, 32, '_offer_banner', 'field_63c9a2cbb0f76'),
(57, 36, 'banner_heading', 'Największy i najlepszy wybór.'),
(58, 36, '_banner_heading', 'field_63c99ef4fabe9'),
(59, 36, 'banner_subheading', 'Kompleksowa oferta i wsparcie w Polsce i Niemczech.'),
(60, 36, '_banner_subheading', 'field_63c99f17fabea'),
(61, 36, 'banner_button_text', 'Umów się na spotkanie'),
(62, 36, '_banner_button_text', 'field_63c9a15ffabec'),
(63, 36, 'banner_button_url', ''),
(64, 36, '_banner_button_url', 'field_63c9a16bfabed'),
(65, 36, 'banner_button', ''),
(66, 36, '_banner_button', 'field_63c9a120fabeb'),
(67, 36, 'banner', ''),
(68, 36, '_banner', 'field_63c99e1420bf4'),
(69, 36, 'section_1_heading', 'Pomagamy, doradzamy i projektujemy'),
(70, 36, '_section_1_heading', 'field_63c9a1a6b0f6b'),
(71, 36, 'section_1_column_1_text', 'Bogate doświadczenie to rezultat unikalnego podejścia do realizowanych zadań. Zajmujemy się bowiem pracami kompleksowo począwszy od analizy przypadku w jego założeniach i wariantach, po propozycje rozwiązań w postaci projektu po wykonawstwo na wcześniej określonym odcinku prac. Działamy w sposób planowy i porozumieniu ze zleceniodawcą, co powoduję, że mają Państwo kontrolę nad każdym etapem prac.'),
(72, 36, '_section_1_column_1_text', 'field_63c9a1c4b0f6d'),
(73, 36, 'section_1_column_1', ''),
(74, 36, '_section_1_column_1', 'field_63c9a1b6b0f6c'),
(75, 36, 'section_1_column_2_text', 'Nasze realizacje cechuje dbałość o szczegóły. Funkcjonalność oczywiście jest najważniejsza, ale tuż za nią dokładamy wszelkich starań by estetyka z równie dużą pieczołowitością odpowiadała na Państwa potrzebom i sprawiała, że zaproponowane rozwiązanie będzie latami cieszyło nie tylko oko. Schody mają swój ponadczasowy wymiar i ten aspekt jest podstawą naszych działań, dzięki któremu nasze prace mają swój indywidualny charakter.'),
(76, 36, '_section_1_column_2_text', 'field_63c9a1ebb0f6f'),
(77, 36, 'section_1_column_2_button_text', 'Więcej informacji'),
(78, 36, '_section_1_column_2_button_text', 'field_63c9a20cb0f71'),
(79, 36, 'section_1_column_2_button_url', ''),
(80, 36, '_section_1_column_2_button_url', 'field_63c9a219b0f72'),
(81, 36, 'section_1_column_2_button', ''),
(82, 36, '_section_1_column_2_button', 'field_63c9a1f7b0f70'),
(83, 36, 'section_1_column_2', ''),
(84, 36, '_section_1_column_2', 'field_63c9a1e0b0f6e'),
(85, 36, 'section_1', ''),
(86, 36, '_section_1', 'field_63c9a191b0f6a'),
(87, 36, 'section_2_heading', ' Do wyboru'),
(88, 36, '_section_2_heading', 'field_63c9a273b0f74'),
(89, 36, 'section_2_text', 'Trzy główne elementy składają się na ostateczny produkt naszego autorstwa. Zapraszamy do zapoznania się z jego składowymi, ułatwi takie przygotowanie Was drodzy Klienci, podejmowanie dalszych decyzji, pozwoli też rozpoznać gust i oczekiwania, jak również oferowane przez nas komponenty. Nie jest to jednak lista zamknięta, ale jedynie zestaw propozycji wyjściowych do dalszego współtworzenia.'),
(90, 36, '_section_2_text', 'field_63c9a281b0f75'),
(91, 36, 'section_2', ''),
(92, 36, '_section_2', 'field_63c9a25db0f73'),
(93, 36, 'offer_banner', 'oferta'),
(94, 36, '_offer_banner', 'field_63c9a2cbb0f76'),
(95, 37, 'banner_heading', 'Największy i najlepszy wybór. Kompleksowa oferta i wsparcie w Polsce i Niemczech.'),
(96, 37, '_banner_heading', 'field_63c99ef4fabe9'),
(97, 37, 'banner_subheading', 'Jesteśmy w branży od 1998 roku. Aktywnie realizując stolarskie zlecenia na terenie Polski i Niemiec. Dzięki temu doświadczeniu zbudowaliśmy trwałą i godną zaufania markę po obu stronach Odry.'),
(98, 37, '_banner_subheading', 'field_63c99f17fabea'),
(99, 37, 'banner_button_text', 'Umów się na spotkanie'),
(100, 37, '_banner_button_text', 'field_63c9a15ffabec'),
(101, 37, 'banner_button_url', ''),
(102, 37, '_banner_button_url', 'field_63c9a16bfabed'),
(103, 37, 'banner_button', ''),
(104, 37, '_banner_button', 'field_63c9a120fabeb'),
(105, 37, 'banner', ''),
(106, 37, '_banner', 'field_63c99e1420bf4'),
(107, 37, 'section_1_heading', 'Pomagamy, doradzamy i projektujemy'),
(108, 37, '_section_1_heading', 'field_63c9a1a6b0f6b'),
(109, 37, 'section_1_column_1_text', 'Bogate doświadczenie to rezultat unikalnego podejścia do realizowanych zadań. Zajmujemy się bowiem pracami kompleksowo począwszy od analizy przypadku w jego założeniach i wariantach, po propozycje rozwiązań w postaci projektu po wykonawstwo na wcześniej określonym odcinku prac. Działamy w sposób planowy i porozumieniu ze zleceniodawcą, co powoduję, że mają Państwo kontrolę nad każdym etapem prac.'),
(110, 37, '_section_1_column_1_text', 'field_63c9a1c4b0f6d'),
(111, 37, 'section_1_column_1', ''),
(112, 37, '_section_1_column_1', 'field_63c9a1b6b0f6c'),
(113, 37, 'section_1_column_2_text', 'Nasze realizacje cechuje dbałość o szczegóły. Funkcjonalność oczywiście jest najważniejsza, ale tuż za nią dokładamy wszelkich starań by estetyka z równie dużą pieczołowitością odpowiadała na Państwa potrzebom i sprawiała, że zaproponowane rozwiązanie będzie latami cieszyło nie tylko oko. Schody mają swój ponadczasowy wymiar i ten aspekt jest podstawą naszych działań, dzięki któremu nasze prace mają swój indywidualny charakter.'),
(114, 37, '_section_1_column_2_text', 'field_63c9a1ebb0f6f'),
(115, 37, 'section_1_column_2_button_text', 'Więcej informacji'),
(116, 37, '_section_1_column_2_button_text', 'field_63c9a20cb0f71'),
(117, 37, 'section_1_column_2_button_url', ''),
(118, 37, '_section_1_column_2_button_url', 'field_63c9a219b0f72'),
(119, 37, 'section_1_column_2_button', ''),
(120, 37, '_section_1_column_2_button', 'field_63c9a1f7b0f70'),
(121, 37, 'section_1_column_2', ''),
(122, 37, '_section_1_column_2', 'field_63c9a1e0b0f6e'),
(123, 37, 'section_1', ''),
(124, 37, '_section_1', 'field_63c9a191b0f6a'),
(125, 37, 'section_2_heading', ' Do wyboru'),
(126, 37, '_section_2_heading', 'field_63c9a273b0f74'),
(127, 37, 'section_2_text', 'Trzy główne elementy składają się na ostateczny produkt naszego autorstwa. Zapraszamy do zapoznania się z jego składowymi, ułatwi takie przygotowanie Was drodzy Klienci, podejmowanie dalszych decyzji, pozwoli też rozpoznać gust i oczekiwania, jak również oferowane przez nas komponenty. Nie jest to jednak lista zamknięta, ale jedynie zestaw propozycji wyjściowych do dalszego współtworzenia.'),
(128, 37, '_section_2_text', 'field_63c9a281b0f75'),
(129, 37, 'section_2', ''),
(130, 37, '_section_2', 'field_63c9a25db0f73'),
(131, 37, 'offer_banner', 'oferta'),
(132, 37, '_offer_banner', 'field_63c9a2cbb0f76'),
(133, 38, '_edit_lock', '1715631449:1'),
(134, 38, '_edit_last', '1'),
(135, 40, '_edit_lock', '1674322168:1'),
(136, 40, '_edit_last', '1'),
(137, 42, '_edit_lock', '1674163327:1'),
(138, 42, '_edit_last', '1'),
(139, 44, '_edit_lock', '1674163343:1'),
(140, 44, '_edit_last', '1'),
(141, 46, '_edit_lock', '1716491138:1'),
(142, 46, '_edit_last', '1'),
(143, 48, '_edit_lock', '1674322361:1'),
(144, 48, '_edit_last', '1'),
(145, 50, '_menu_item_type', 'post_type'),
(146, 50, '_menu_item_menu_item_parent', '0'),
(147, 50, '_menu_item_object_id', '46'),
(148, 50, '_menu_item_object', 'page'),
(149, 50, '_menu_item_target', ''),
(150, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 50, '_menu_item_xfn', ''),
(152, 50, '_menu_item_url', ''),
(154, 51, '_menu_item_type', 'post_type'),
(155, 51, '_menu_item_menu_item_parent', '0'),
(156, 51, '_menu_item_object_id', '42'),
(157, 51, '_menu_item_object', 'page'),
(158, 51, '_menu_item_target', ''),
(159, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 51, '_menu_item_xfn', ''),
(161, 51, '_menu_item_url', ''),
(172, 53, '_menu_item_type', 'post_type'),
(173, 53, '_menu_item_menu_item_parent', '0'),
(174, 53, '_menu_item_object_id', '32'),
(175, 53, '_menu_item_object', 'page'),
(176, 53, '_menu_item_target', ''),
(177, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(178, 53, '_menu_item_xfn', ''),
(179, 53, '_menu_item_url', ''),
(181, 54, '_menu_item_type', 'post_type'),
(182, 54, '_menu_item_menu_item_parent', '0'),
(183, 54, '_menu_item_object_id', '40'),
(184, 54, '_menu_item_object', 'page'),
(185, 54, '_menu_item_target', ''),
(186, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(187, 54, '_menu_item_xfn', ''),
(188, 54, '_menu_item_url', ''),
(190, 55, '_menu_item_type', 'post_type'),
(191, 55, '_menu_item_menu_item_parent', '0'),
(192, 55, '_menu_item_object_id', '44'),
(193, 55, '_menu_item_object', 'page'),
(194, 55, '_menu_item_target', ''),
(195, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(196, 55, '_menu_item_xfn', ''),
(197, 55, '_menu_item_url', ''),
(199, 56, '_menu_item_type', 'post_type'),
(200, 56, '_menu_item_menu_item_parent', '0'),
(201, 56, '_menu_item_object_id', '34'),
(202, 56, '_menu_item_object', 'page'),
(203, 56, '_menu_item_target', ''),
(204, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(205, 56, '_menu_item_xfn', ''),
(206, 56, '_menu_item_url', ''),
(208, 57, '_menu_item_type', 'post_type'),
(209, 57, '_menu_item_menu_item_parent', '0'),
(210, 57, '_menu_item_object_id', '48'),
(211, 57, '_menu_item_object', 'page'),
(212, 57, '_menu_item_target', ''),
(213, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(214, 57, '_menu_item_xfn', ''),
(215, 57, '_menu_item_url', ''),
(217, 58, '_wp_page_template', 'default'),
(218, 58, '_edit_lock', '1674161608:1'),
(219, 58, '_edit_last', '1'),
(220, 60, '_menu_item_type', 'post_type'),
(221, 60, '_menu_item_menu_item_parent', '0'),
(222, 60, '_menu_item_object_id', '46'),
(223, 60, '_menu_item_object', 'page'),
(224, 60, '_menu_item_target', ''),
(225, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 60, '_menu_item_xfn', ''),
(227, 60, '_menu_item_url', ''),
(229, 61, '_menu_item_type', 'post_type'),
(230, 61, '_menu_item_menu_item_parent', '0'),
(231, 61, '_menu_item_object_id', '42'),
(232, 61, '_menu_item_object', 'page'),
(233, 61, '_menu_item_target', ''),
(234, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(235, 61, '_menu_item_xfn', ''),
(236, 61, '_menu_item_url', ''),
(238, 62, '_menu_item_type', 'post_type'),
(239, 62, '_menu_item_menu_item_parent', '0'),
(240, 62, '_menu_item_object_id', '38'),
(241, 62, '_menu_item_object', 'page'),
(242, 62, '_menu_item_target', ''),
(243, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(244, 62, '_menu_item_xfn', ''),
(245, 62, '_menu_item_url', ''),
(247, 63, '_menu_item_type', 'post_type'),
(248, 63, '_menu_item_menu_item_parent', '0'),
(249, 63, '_menu_item_object_id', '48'),
(250, 63, '_menu_item_object', 'page'),
(251, 63, '_menu_item_target', ''),
(252, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(253, 63, '_menu_item_xfn', ''),
(254, 63, '_menu_item_url', ''),
(256, 64, '_menu_item_type', 'post_type'),
(257, 64, '_menu_item_menu_item_parent', '0'),
(258, 64, '_menu_item_object_id', '44'),
(259, 64, '_menu_item_object', 'page'),
(260, 64, '_menu_item_target', ''),
(261, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(262, 64, '_menu_item_xfn', ''),
(263, 64, '_menu_item_url', ''),
(265, 65, '_menu_item_type', 'post_type'),
(266, 65, '_menu_item_menu_item_parent', '0'),
(267, 65, '_menu_item_object_id', '40'),
(268, 65, '_menu_item_object', 'page'),
(269, 65, '_menu_item_target', ''),
(270, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(271, 65, '_menu_item_xfn', ''),
(272, 65, '_menu_item_url', ''),
(274, 66, '_menu_item_type', 'post_type'),
(275, 66, '_menu_item_menu_item_parent', '0'),
(276, 66, '_menu_item_object_id', '2'),
(277, 66, '_menu_item_object', 'page'),
(278, 66, '_menu_item_target', ''),
(279, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(280, 66, '_menu_item_xfn', ''),
(281, 66, '_menu_item_url', ''),
(283, 67, '_menu_item_type', 'post_type'),
(284, 67, '_menu_item_menu_item_parent', '0'),
(285, 67, '_menu_item_object_id', '58'),
(286, 67, '_menu_item_object', 'page'),
(287, 67, '_menu_item_target', ''),
(288, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(289, 67, '_menu_item_xfn', ''),
(290, 67, '_menu_item_url', ''),
(292, 69, '_form', '<div id=\"contact-form\" class=\"row\">\n<div class=\"col-12\">\n<p>Sprechen Sie uns gerne an, wir beantworten gerne alle Ihre Fragen.</p>\n</div>\n<div class=\"col-xl-6\">\n<div class=\"mb-3\">\n[text* k-name class:form-control placeholder \"Vorname und Nachname*\"]\n</div>\n<div class=\"mb-3\">\n[email* k-email class:form-control placeholder \"Email*\"]\n</div>\n<div class=\"mb-3\">\n[tel k-phone class:form-control placeholder \"Telefonnummer\"]\n</div>\n<div class=\"mb-3\">\n[text* k-city class:form-control placeholder \"Stadt*\"]\n</div>\n</div>\n<div class=\"col-xl-6\">\n<div class=\"mb-3\">\n[textarea* k-textarea minlength:5 maxlength:500 class:form-control placeholder \"Nachricht*\"]\n</div>               \n</div>\n<div class=\"col-xl-6\">[quiz quiz-72 \"Welche Zahl ist größer? 4 oder 6?*|6\"]</div>\n</div>\n<div class=\"row\">\n<div class=\"col-xl-6 mt-3\"><div><small>*pflichtfelder auszufüllen</small></div></div>\n<div class=\"col-xl-6\">\n<div class=\"mt-3\">\n<div class=\"text-end\">\n[submit class:btn class:btn class:btn-primary class:w-button \"Senden\"]\n</div>\n</div>\n</div>\n</div>'),
(293, 69, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"[_site_title] - \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <admin@example.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:239:\"Nadawca: <[k-email]>\n\nImię i nazwisko:  [k-name]\nNumer telefonu: [k-phone]\nMiejscowość: [k-city]\n\nTreść wiadomości:\n[k-textarea]\n\n-- \nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\";s:18:\"additional_headers\";s:19:\"Reply-To: [k-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(294, 69, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"[_site_title] - \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <admin@example.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Treść wiadomości:\n[your-message]\n\n-- \nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(295, 69, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:49:\"Twoja wiadomość została wysłana. Dziękujemy!\";s:12:\"mail_sent_ng\";s:80:\"Wystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\";s:16:\"validation_error\";s:99:\"Przynajmniej jedno pole zawiera błąd. Proszę sprawdzić wpisaną treść i spróbować ponownie.\";s:4:\"spam\";s:80:\"Wystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\";s:12:\"accept_terms\";s:72:\"Musisz wyrazić zgodę na powyższe zapisy, aby móc wysłać formularz.\";s:16:\"invalid_required\";s:27:\"Proszę wypełnić to pole.\";s:16:\"invalid_too_long\";s:38:\"W polu wprowadzono zbyt dużo znaków.\";s:17:\"invalid_too_short\";s:38:\"W polu wprowadzono zbyt mało znaków.\";s:13:\"upload_failed\";s:51:\"Podczas wgrywania pliku wystąpił nieznany błąd.\";s:24:\"upload_file_type_invalid\";s:39:\"Nie możesz wgrywać plików tego typu.\";s:21:\"upload_file_too_large\";s:30:\"Przesłany plik jest za duży.\";s:23:\"upload_failed_php_error\";s:42:\"Wystąpił błąd podczas wgrywania pliku.\";s:12:\"invalid_date\";s:38:\"Wprowadź datę w formacie RRRR-MM-DD.\";s:14:\"date_too_early\";s:42:\"Data wybrana w tym polu jest zbyt wczesna.\";s:13:\"date_too_late\";s:42:\"Data wybrana w tym polu jest zbyt późna.\";s:14:\"invalid_number\";s:18:\"Wprowadź liczbę.\";s:16:\"number_too_small\";s:16:\"Za mała liczba.\";s:16:\"number_too_large\";s:16:\"Za duża liczba.\";s:23:\"quiz_answer_not_correct\";s:40:\"Odpowiedź w quizie jest nieprawidłowa.\";s:13:\"invalid_email\";s:29:\"Proszę wpisać adres e-mail.\";s:11:\"invalid_url\";s:30:\"Proszę wprowadzić adres URL.\";s:11:\"invalid_tel\";s:30:\"Proszę podać numer telefonu.\";}'),
(296, 69, '_additional_settings', ''),
(297, 69, '_locale', 'pl_PL'),
(298, 72, '_edit_last', '1'),
(299, 72, '_edit_lock', '1715632295:1'),
(300, 76, '_edit_lock', '1674164273:1'),
(301, 76, '_edit_last', '1'),
(302, 76, 'headings_heading_1', 'Oferta'),
(303, 76, '_headings_heading_1', 'field_63c9b6f76f70f'),
(304, 76, 'headings_heading_2', 'Oferta pierwsza'),
(305, 76, '_headings_heading_2', 'field_63c9b7096f710'),
(306, 76, 'headings', ''),
(307, 76, '_headings', 'field_63c9b6b46f70e'),
(317, 78, '_edit_lock', '1715630875:1'),
(336, 78, '_edit_last', '1'),
(337, 78, 'headings_heading_1', 'Oferta'),
(338, 78, '_headings_heading_1', 'field_63c9b6f76f70f'),
(339, 78, 'headings_heading_2', 'One'),
(340, 78, '_headings_heading_2', 'field_63c9b7096f710'),
(341, 78, 'headings', ''),
(342, 78, '_headings', 'field_63c9b6b46f70e'),
(349, 78, '_wp_old_slug', 'offera'),
(350, 83, '_wp_attached_file', '2023/01/joao-ferrao-pxnDAT77rVg-unsplash.jpg'),
(351, 83, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:44:\"2023/01/joao-ferrao-pxnDAT77rVg-unsplash.jpg\";s:8:\"filesize\";i:152922;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:44:\"joao-ferrao-pxnDAT77rVg-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10432;}s:5:\"large\";a:5:{s:4:\"file\";s:45:\"joao-ferrao-pxnDAT77rVg-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53257;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:44:\"joao-ferrao-pxnDAT77rVg-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5558;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:44:\"joao-ferrao-pxnDAT77rVg-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35154;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:46:\"joao-ferrao-pxnDAT77rVg-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:93506;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(352, 78, '_thumbnail_id', '83'),
(353, 86, 'banner_heading', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(354, 86, '_banner_heading', 'field_63c99ef4fabe9'),
(355, 86, 'banner_subheading', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(356, 86, '_banner_subheading', 'field_63c99f17fabea'),
(357, 86, 'banner_button_text', 'Contact Us'),
(358, 86, '_banner_button_text', 'field_63c9a15ffabec'),
(359, 86, 'banner_button_url', ''),
(360, 86, '_banner_button_url', 'field_63c9a16bfabed'),
(361, 86, 'banner_button', ''),
(362, 86, '_banner_button', 'field_63c9a120fabeb'),
(363, 86, 'banner', ''),
(364, 86, '_banner', 'field_63c99e1420bf4'),
(365, 86, 'section_1_heading', 'Lorem Ipsum is simply dummy text'),
(366, 86, '_section_1_heading', 'field_63c9a1a6b0f6b'),
(367, 86, 'section_1_column_1_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(368, 86, '_section_1_column_1_text', 'field_63c9a1c4b0f6d'),
(369, 86, 'section_1_column_1', ''),
(370, 86, '_section_1_column_1', 'field_63c9a1b6b0f6c'),
(371, 86, 'section_1_column_2_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(372, 86, '_section_1_column_2_text', 'field_63c9a1ebb0f6f'),
(373, 86, 'section_1_column_2_button_text', 'Read more'),
(374, 86, '_section_1_column_2_button_text', 'field_63c9a20cb0f71'),
(375, 86, 'section_1_column_2_button_url', ''),
(376, 86, '_section_1_column_2_button_url', 'field_63c9a219b0f72'),
(377, 86, 'section_1_column_2_button', ''),
(378, 86, '_section_1_column_2_button', 'field_63c9a1f7b0f70'),
(379, 86, 'section_1_column_2', ''),
(380, 86, '_section_1_column_2', 'field_63c9a1e0b0f6e'),
(381, 86, 'section_1', ''),
(382, 86, '_section_1', 'field_63c9a191b0f6a'),
(383, 86, 'section_2_heading', 'Lorem Ipsum is simply dummy text'),
(384, 86, '_section_2_heading', 'field_63c9a273b0f74'),
(385, 86, 'section_2_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(386, 86, '_section_2_text', 'field_63c9a281b0f75'),
(387, 86, 'section_2', ''),
(388, 86, '_section_2', 'field_63c9a25db0f73'),
(389, 86, 'offer_banner', 'oferta'),
(390, 86, '_offer_banner', 'field_63c9a2cbb0f76'),
(391, 87, 'banner_heading', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(392, 87, '_banner_heading', 'field_63c99ef4fabe9'),
(393, 87, 'banner_subheading', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(394, 87, '_banner_subheading', 'field_63c99f17fabea'),
(395, 87, 'banner_button_text', 'Contact Us'),
(396, 87, '_banner_button_text', 'field_63c9a15ffabec'),
(397, 87, 'banner_button_url', ''),
(398, 87, '_banner_button_url', 'field_63c9a16bfabed'),
(399, 87, 'banner_button', ''),
(400, 87, '_banner_button', 'field_63c9a120fabeb'),
(401, 87, 'banner', ''),
(402, 87, '_banner', 'field_63c99e1420bf4'),
(403, 87, 'section_1_heading', 'Lorem Ipsum is simply dummy text'),
(404, 87, '_section_1_heading', 'field_63c9a1a6b0f6b'),
(405, 87, 'section_1_column_1_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(406, 87, '_section_1_column_1_text', 'field_63c9a1c4b0f6d'),
(407, 87, 'section_1_column_1', ''),
(408, 87, '_section_1_column_1', 'field_63c9a1b6b0f6c'),
(409, 87, 'section_1_column_2_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(410, 87, '_section_1_column_2_text', 'field_63c9a1ebb0f6f'),
(411, 87, 'section_1_column_2_button_text', 'Read more'),
(412, 87, '_section_1_column_2_button_text', 'field_63c9a20cb0f71'),
(413, 87, 'section_1_column_2_button_url', 'a:3:{s:5:\"title\";s:8:\"O firmie\";s:3:\"url\";s:36:\"http://localhost/wordpress/o-firmie/\";s:6:\"target\";s:0:\"\";}'),
(414, 87, '_section_1_column_2_button_url', 'field_63c9a219b0f72'),
(415, 87, 'section_1_column_2_button', ''),
(416, 87, '_section_1_column_2_button', 'field_63c9a1f7b0f70'),
(417, 87, 'section_1_column_2', ''),
(418, 87, '_section_1_column_2', 'field_63c9a1e0b0f6e'),
(419, 87, 'section_1', ''),
(420, 87, '_section_1', 'field_63c9a191b0f6a'),
(421, 87, 'section_2_heading', 'Lorem Ipsum is simply dummy text'),
(422, 87, '_section_2_heading', 'field_63c9a273b0f74'),
(423, 87, 'section_2_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(424, 87, '_section_2_text', 'field_63c9a281b0f75'),
(425, 87, 'section_2', ''),
(426, 87, '_section_2', 'field_63c9a25db0f73'),
(427, 87, 'offer_banner', 'oferta'),
(428, 87, '_offer_banner', 'field_63c9a2cbb0f76'),
(429, 88, 'banner_heading', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz'),
(430, 88, '_banner_heading', 'field_63c99ef4fabe9'),
(431, 88, 'banner_subheading', ' Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki'),
(432, 88, '_banner_subheading', 'field_63c99f17fabea'),
(433, 88, 'banner_button_text', 'Skontaktuj się z nami'),
(434, 88, '_banner_button_text', 'field_63c9a15ffabec'),
(435, 88, 'banner_button_url', ''),
(436, 88, '_banner_button_url', 'field_63c9a16bfabed'),
(437, 88, 'banner_button', ''),
(438, 88, '_banner_button', 'field_63c9a120fabeb'),
(439, 88, 'banner', ''),
(440, 88, '_banner', 'field_63c99e1420bf4'),
(441, 88, 'section_1_heading', 'Do czego tego użyć?'),
(442, 88, '_section_1_heading', 'field_63c9a1a6b0f6b'),
(443, 88, 'section_1_column_1_text', 'Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku. '),
(444, 88, '_section_1_column_1_text', 'field_63c9a1c4b0f6d'),
(445, 88, 'section_1_column_1', ''),
(446, 88, '_section_1_column_1', 'field_63c9a1b6b0f6c'),
(447, 88, 'section_1_column_2_text', 'Wielu webmasterów i designerów używa Lorem Ipsum jako domyślnego modelu tekstu i wpisanie w internetowej wyszukiwarce ‘lorem ipsum’ spowoduje znalezienie bardzo wielu stron, które wciąż są w budowie. Wiele wersji tekstu ewoluowało i zmieniało się przez lata, czasem przez przypadek, czasem specjalnie (humorystyczne wstawki itd).'),
(448, 88, '_section_1_column_2_text', 'field_63c9a1ebb0f6f'),
(449, 88, 'section_1_column_2_button_text', 'Czytaj więcej'),
(450, 88, '_section_1_column_2_button_text', 'field_63c9a20cb0f71'),
(451, 88, 'section_1_column_2_button_url', 'a:3:{s:5:\"title\";s:8:\"O firmie\";s:3:\"url\";s:36:\"http://localhost/wordpress/o-firmie/\";s:6:\"target\";s:0:\"\";}'),
(452, 88, '_section_1_column_2_button_url', 'field_63c9a219b0f72'),
(453, 88, 'section_1_column_2_button', ''),
(454, 88, '_section_1_column_2_button', 'field_63c9a1f7b0f70'),
(455, 88, 'section_1_column_2', ''),
(456, 88, '_section_1_column_2', 'field_63c9a1e0b0f6e'),
(457, 88, 'section_1', ''),
(458, 88, '_section_1', 'field_63c9a191b0f6a'),
(459, 88, 'section_2_heading', 'Skąd to wziąć?'),
(460, 88, '_section_2_heading', 'field_63c9a273b0f74'),
(461, 88, 'section_2_text', 'Jest dostępnych wiele różnych wersji Lorem Ipsum, ale większość zmieniła się pod wpływem dodanego humoru czy przypadkowych słów, które nawet w najmniejszym stopniu nie przypominają istniejących. Jeśli masz zamiar użyć fragmentu Lorem Ipsum, lepiej mieć pewność, że nie ma niczego „dziwnego” w środku tekstu. Wszystkie Internetowe generatory Lorem Ipsum mają tendencje do kopiowania już istniejących bloków, co czyni nasz pierwszym prawdziwym generatorem w Internecie. Używamy zawierającego ponad 200 łacińskich słów słownika, w kontekście wielu znanych sentencji, by wygenerować tekst wyglądający odpowiednio. To wszystko czyni „nasz” Lorem Ipsum wolnym od powtórzeń, humorystycznych wstawek czy niecharakterystycznych słów.'),
(462, 88, '_section_2_text', 'field_63c9a281b0f75'),
(463, 88, 'section_2', ''),
(464, 88, '_section_2', 'field_63c9a25db0f73'),
(465, 88, 'offer_banner', 'oferta'),
(466, 88, '_offer_banner', 'field_63c9a2cbb0f76'),
(467, 34, 'banner_heading', 'Lorem Ipsum is simply dummy text.'),
(468, 34, '_banner_heading', 'field_63c99ef4fabe9'),
(469, 34, 'banner_subheading', ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
(470, 34, '_banner_subheading', 'field_63c99f17fabea'),
(471, 34, 'banner_button_text', 'Contact Us'),
(472, 34, '_banner_button_text', 'field_63c9a15ffabec'),
(473, 34, 'banner_button_url', ''),
(474, 34, '_banner_button_url', 'field_63c9a16bfabed'),
(475, 34, 'banner_button', ''),
(476, 34, '_banner_button', 'field_63c9a120fabeb'),
(477, 34, 'banner', ''),
(478, 34, '_banner', 'field_63c99e1420bf4'),
(479, 34, 'section_1_heading', 'Why do we use it?'),
(480, 34, '_section_1_heading', 'field_63c9a1a6b0f6b'),
(481, 34, 'section_1_column_1_text', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
(482, 34, '_section_1_column_1_text', 'field_63c9a1c4b0f6d'),
(483, 34, 'section_1_column_1', ''),
(484, 34, '_section_1_column_1', 'field_63c9a1b6b0f6c'),
(485, 34, 'section_1_column_2_text', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(486, 34, '_section_1_column_2_text', 'field_63c9a1ebb0f6f'),
(487, 34, 'section_1_column_2_button_text', 'Read more'),
(488, 34, '_section_1_column_2_button_text', 'field_63c9a20cb0f71'),
(489, 34, 'section_1_column_2_button_url', 'a:3:{s:5:\"title\";s:5:\"About\";s:3:\"url\";s:36:\"http://localhost/wordpress/en/about/\";s:6:\"target\";s:0:\"\";}'),
(490, 34, '_section_1_column_2_button_url', 'field_63c9a219b0f72'),
(491, 34, 'section_1_column_2_button', ''),
(492, 34, '_section_1_column_2_button', 'field_63c9a1f7b0f70'),
(493, 34, 'section_1_column_2', ''),
(494, 34, '_section_1_column_2', 'field_63c9a1e0b0f6e'),
(495, 34, 'section_1', ''),
(496, 34, '_section_1', 'field_63c9a191b0f6a'),
(497, 34, 'section_2_heading', 'Where can I get some?'),
(498, 34, '_section_2_heading', 'field_63c9a273b0f74'),
(499, 34, 'section_2_text', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(500, 34, '_section_2_text', 'field_63c9a281b0f75'),
(501, 34, 'section_2', ''),
(502, 34, '_section_2', 'field_63c9a25db0f73'),
(503, 34, 'offer_banner', 'offer'),
(504, 34, '_offer_banner', 'field_63c9a2cbb0f76'),
(505, 89, 'banner_heading', 'Lorem Ipsum is simply dummy text'),
(506, 89, '_banner_heading', 'field_63c99ef4fabe9'),
(507, 89, 'banner_subheading', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s'),
(508, 89, '_banner_subheading', 'field_63c99f17fabea'),
(509, 89, 'banner_button_text', 'Contact Us'),
(510, 89, '_banner_button_text', 'field_63c9a15ffabec'),
(511, 89, 'banner_button_url', ''),
(512, 89, '_banner_button_url', 'field_63c9a16bfabed'),
(513, 89, 'banner_button', ''),
(514, 89, '_banner_button', 'field_63c9a120fabeb'),
(515, 89, 'banner', ''),
(516, 89, '_banner', 'field_63c99e1420bf4'),
(517, 89, 'section_1_heading', 'Why do we use it?'),
(518, 89, '_section_1_heading', 'field_63c9a1a6b0f6b'),
(519, 89, 'section_1_column_1_text', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
(520, 89, '_section_1_column_1_text', 'field_63c9a1c4b0f6d'),
(521, 89, 'section_1_column_1', ''),
(522, 89, '_section_1_column_1', 'field_63c9a1b6b0f6c'),
(523, 89, 'section_1_column_2_text', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(524, 89, '_section_1_column_2_text', 'field_63c9a1ebb0f6f'),
(525, 89, 'section_1_column_2_button_text', 'Read more'),
(526, 89, '_section_1_column_2_button_text', 'field_63c9a20cb0f71'),
(527, 89, 'section_1_column_2_button_url', 'a:3:{s:5:\"title\";s:5:\"About\";s:3:\"url\";s:36:\"http://localhost/wordpress/en/about/\";s:6:\"target\";s:0:\"\";}'),
(528, 89, '_section_1_column_2_button_url', 'field_63c9a219b0f72'),
(529, 89, 'section_1_column_2_button', ''),
(530, 89, '_section_1_column_2_button', 'field_63c9a1f7b0f70'),
(531, 89, 'section_1_column_2', ''),
(532, 89, '_section_1_column_2', 'field_63c9a1e0b0f6e'),
(533, 89, 'section_1', ''),
(534, 89, '_section_1', 'field_63c9a191b0f6a'),
(535, 89, 'section_2_heading', 'Where can I get some?'),
(536, 89, '_section_2_heading', 'field_63c9a273b0f74'),
(537, 89, 'section_2_text', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(538, 89, '_section_2_text', 'field_63c9a281b0f75'),
(539, 89, 'section_2', ''),
(540, 89, '_section_2', 'field_63c9a25db0f73'),
(541, 89, 'offer_banner', 'offer'),
(542, 89, '_offer_banner', 'field_63c9a2cbb0f76'),
(543, 95, '_edit_lock', '1674322484:1'),
(544, 96, '_wp_attached_file', '2023/01/sam-pak-X6QffKLwyoQ-unsplash.jpg'),
(545, 96, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1282;s:4:\"file\";s:40:\"2023/01/sam-pak-X6QffKLwyoQ-unsplash.jpg\";s:8:\"filesize\";i:193677;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"sam-pak-X6QffKLwyoQ-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11186;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"sam-pak-X6QffKLwyoQ-unsplash-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61143;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"sam-pak-X6QffKLwyoQ-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6208;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"sam-pak-X6QffKLwyoQ-unsplash-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40675;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:42:\"sam-pak-X6QffKLwyoQ-unsplash-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112944;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(546, 95, '_thumbnail_id', '96'),
(547, 95, '_edit_last', '1'),
(548, 95, 'headings_heading_1', 'Oferta'),
(549, 95, '_headings_heading_1', 'field_63c9b6f76f70f'),
(550, 95, 'headings_heading_2', 'Two'),
(551, 95, '_headings_heading_2', 'field_63c9b7096f710'),
(552, 95, 'headings', ''),
(553, 95, '_headings', 'field_63c9b6b46f70e'),
(554, 97, '_edit_lock', '1674322570:1'),
(555, 98, '_wp_attached_file', '2023/01/alexander-jawfox-dhrVciddsqc-unsplash-scaled.jpg'),
(556, 98, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:56:\"2023/01/alexander-jawfox-dhrVciddsqc-unsplash-scaled.jpg\";s:8:\"filesize\";i:283724;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"alexander-jawfox-dhrVciddsqc-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10342;}s:5:\"large\";a:5:{s:4:\"file\";s:50:\"alexander-jawfox-dhrVciddsqc-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69924;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:49:\"alexander-jawfox-dhrVciddsqc-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5336;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"alexander-jawfox-dhrVciddsqc-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83641;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:51:\"alexander-jawfox-dhrVciddsqc-unsplash-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:130107;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:51:\"alexander-jawfox-dhrVciddsqc-unsplash-1366x2048.jpg\";s:5:\"width\";i:1366;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:202344;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:41:\"alexander-jawfox-dhrVciddsqc-unsplash.jpg\";}'),
(557, 97, '_thumbnail_id', '98'),
(558, 97, '_edit_last', '1'),
(559, 97, 'headings_heading_1', 'Oferta'),
(560, 97, '_headings_heading_1', 'field_63c9b6f76f70f'),
(561, 97, 'headings_heading_2', 'Three'),
(562, 97, '_headings_heading_2', 'field_63c9b7096f710'),
(563, 97, 'headings', ''),
(564, 97, '_headings', 'field_63c9b6b46f70e'),
(592, 53, '_wp_old_date', '2023-01-19'),
(594, 50, '_wp_old_date', '2023-01-19'),
(596, 51, '_wp_old_date', '2023-01-19'),
(597, 102, '_wp_attached_file', '2023/01/w-logo.png'),
(598, 102, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:112;s:6:\"height\";i:53;s:4:\"file\";s:18:\"2023/01/w-logo.png\";s:8:\"filesize\";i:4069;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(599, 103, '_wp_attached_file', '2023/01/cropped-w-logo.png'),
(600, 103, '_wp_attachment_context', 'custom-logo'),
(601, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:112;s:6:\"height\";i:53;s:4:\"file\";s:26:\"2023/01/cropped-w-logo.png\";s:8:\"filesize\";i:1472;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(604, 105, '_edit_lock', '1674326242:1'),
(605, 105, '_edit_last', '1'),
(606, 105, 'headings_heading_1', 'Offer'),
(607, 105, '_headings_heading_1', 'field_63c9b6f76f70f'),
(608, 105, 'headings_heading_2', 'One'),
(609, 105, '_headings_heading_2', 'field_63c9b7096f710'),
(610, 105, 'headings', ''),
(611, 105, '_headings', 'field_63c9b6b46f70e'),
(612, 105, '_thumbnail_id', '83'),
(613, 106, '_edit_lock', '1674326267:1'),
(614, 106, '_thumbnail_id', '96'),
(615, 106, '_edit_last', '1'),
(616, 106, 'headings_heading_1', 'Offer'),
(617, 106, '_headings_heading_1', 'field_63c9b6f76f70f'),
(618, 106, 'headings_heading_2', 'Two'),
(619, 106, '_headings_heading_2', 'field_63c9b7096f710'),
(620, 106, 'headings', ''),
(621, 106, '_headings', 'field_63c9b6b46f70e');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(622, 107, '_edit_lock', '1674326294:1'),
(623, 107, '_thumbnail_id', '98'),
(624, 107, '_edit_last', '1'),
(625, 107, 'headings_heading_1', 'Offer'),
(626, 107, '_headings_heading_1', 'field_63c9b6f76f70f'),
(627, 107, 'headings_heading_2', 'Three'),
(628, 107, '_headings_heading_2', 'field_63c9b7096f710'),
(629, 107, 'headings', ''),
(630, 107, '_headings', 'field_63c9b6b46f70e'),
(631, 108, '_menu_item_type', 'post_type'),
(632, 108, '_menu_item_menu_item_parent', '60'),
(633, 108, '_menu_item_object_id', '107'),
(634, 108, '_menu_item_object', 'offer'),
(635, 108, '_menu_item_target', ''),
(636, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(637, 108, '_menu_item_xfn', ''),
(638, 108, '_menu_item_url', ''),
(640, 109, '_menu_item_type', 'post_type'),
(641, 109, '_menu_item_menu_item_parent', '60'),
(642, 109, '_menu_item_object_id', '106'),
(643, 109, '_menu_item_object', 'offer'),
(644, 109, '_menu_item_target', ''),
(645, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(646, 109, '_menu_item_xfn', ''),
(647, 109, '_menu_item_url', ''),
(649, 110, '_menu_item_type', 'post_type'),
(650, 110, '_menu_item_menu_item_parent', '60'),
(651, 110, '_menu_item_object_id', '105'),
(652, 110, '_menu_item_object', 'offer'),
(653, 110, '_menu_item_target', ''),
(654, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(655, 110, '_menu_item_xfn', ''),
(656, 110, '_menu_item_url', ''),
(658, 62, '_wp_old_date', '2023-01-19'),
(659, 60, '_wp_old_date', '2023-01-19'),
(660, 61, '_wp_old_date', '2023-01-19'),
(661, 111, 'banner_heading', 'Lorem Ipsum is simply dummy text.'),
(662, 111, '_banner_heading', 'field_63c99ef4fabe9'),
(663, 111, 'banner_subheading', ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
(664, 111, '_banner_subheading', 'field_63c99f17fabea'),
(665, 111, 'banner_button_text', 'Contact Us'),
(666, 111, '_banner_button_text', 'field_63c9a15ffabec'),
(667, 111, 'banner_button_url', ''),
(668, 111, '_banner_button_url', 'field_63c9a16bfabed'),
(669, 111, 'banner_button', ''),
(670, 111, '_banner_button', 'field_63c9a120fabeb'),
(671, 111, 'banner', ''),
(672, 111, '_banner', 'field_63c99e1420bf4'),
(673, 111, 'section_1_heading', 'Why do we use it?'),
(674, 111, '_section_1_heading', 'field_63c9a1a6b0f6b'),
(675, 111, 'section_1_column_1_text', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
(676, 111, '_section_1_column_1_text', 'field_63c9a1c4b0f6d'),
(677, 111, 'section_1_column_1', ''),
(678, 111, '_section_1_column_1', 'field_63c9a1b6b0f6c'),
(679, 111, 'section_1_column_2_text', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(680, 111, '_section_1_column_2_text', 'field_63c9a1ebb0f6f'),
(681, 111, 'section_1_column_2_button_text', 'Read more'),
(682, 111, '_section_1_column_2_button_text', 'field_63c9a20cb0f71'),
(683, 111, 'section_1_column_2_button_url', 'a:3:{s:5:\"title\";s:5:\"About\";s:3:\"url\";s:36:\"http://localhost/wordpress/en/about/\";s:6:\"target\";s:0:\"\";}'),
(684, 111, '_section_1_column_2_button_url', 'field_63c9a219b0f72'),
(685, 111, 'section_1_column_2_button', ''),
(686, 111, '_section_1_column_2_button', 'field_63c9a1f7b0f70'),
(687, 111, 'section_1_column_2', ''),
(688, 111, '_section_1_column_2', 'field_63c9a1e0b0f6e'),
(689, 111, 'section_1', ''),
(690, 111, '_section_1', 'field_63c9a191b0f6a'),
(691, 111, 'section_2_heading', 'Where can I get some?'),
(692, 111, '_section_2_heading', 'field_63c9a273b0f74'),
(693, 111, 'section_2_text', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(694, 111, '_section_2_text', 'field_63c9a281b0f75'),
(695, 111, 'section_2', ''),
(696, 111, '_section_2', 'field_63c9a25db0f73'),
(697, 111, 'offer_banner', 'offer'),
(698, 111, '_offer_banner', 'field_63c9a2cbb0f76'),
(699, 97, '_wp_trash_meta_status', 'publish'),
(700, 97, '_wp_trash_meta_time', '1715630888'),
(701, 97, '_wp_desired_post_slug', 'three'),
(702, 95, '_wp_trash_meta_status', 'publish'),
(703, 95, '_wp_trash_meta_time', '1715630888'),
(704, 95, '_wp_desired_post_slug', 'two'),
(705, 78, '_wp_trash_meta_status', 'publish'),
(706, 78, '_wp_trash_meta_time', '1715630888'),
(707, 78, '_wp_desired_post_slug', 'one'),
(708, 7, '_hash', '4361817ec0f4f4aff219fb9a751eccec99cf021a'),
(709, 69, '_hash', 'd8602621d18216b14ffbb17dfc2be7f19d02275e'),
(711, 114, '_menu_item_type', 'post_type'),
(712, 114, '_menu_item_menu_item_parent', '0'),
(713, 114, '_menu_item_object_id', '38'),
(714, 114, '_menu_item_object', 'page'),
(715, 114, '_menu_item_target', ''),
(716, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(717, 114, '_menu_item_xfn', ''),
(718, 114, '_menu_item_url', ''),
(720, 53, '_wp_old_date', '2023-01-21'),
(721, 50, '_wp_old_date', '2023-01-21'),
(722, 51, '_wp_old_date', '2023-01-21'),
(723, 116, '_edit_lock', '1715632109:1'),
(724, 116, '_edit_last', '1'),
(725, 116, 'headings_heading_1', 'Oferta'),
(726, 116, '_headings_heading_1', 'field_63c9b6f76f70f'),
(727, 116, 'headings_heading_2', 'Pierwsza'),
(728, 116, '_headings_heading_2', 'field_63c9b7096f710'),
(729, 116, 'headings', ''),
(730, 116, '_headings', 'field_63c9b6b46f70e'),
(731, 116, '_thumbnail_id', '98'),
(732, 117, '_edit_lock', '1716492893:1'),
(733, 117, '_thumbnail_id', '96'),
(734, 117, '_edit_last', '1'),
(735, 117, 'headings_heading_1', 'Oferta'),
(736, 117, '_headings_heading_1', 'field_63c9b6f76f70f'),
(737, 117, 'headings_heading_2', 'Druga'),
(738, 117, '_headings_heading_2', 'field_63c9b7096f710'),
(739, 117, 'headings', ''),
(740, 117, '_headings', 'field_63c9b6b46f70e'),
(741, 118, '_menu_item_type', 'post_type'),
(742, 118, '_menu_item_menu_item_parent', '50'),
(743, 118, '_menu_item_object_id', '117'),
(744, 118, '_menu_item_object', 'oferta'),
(745, 118, '_menu_item_target', ''),
(746, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(747, 118, '_menu_item_xfn', ''),
(748, 118, '_menu_item_url', ''),
(750, 119, '_menu_item_type', 'post_type'),
(751, 119, '_menu_item_menu_item_parent', '50'),
(752, 119, '_menu_item_object_id', '116'),
(753, 119, '_menu_item_object', 'oferta'),
(754, 119, '_menu_item_target', ''),
(755, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(756, 119, '_menu_item_xfn', ''),
(757, 119, '_menu_item_url', ''),
(760, 32, 'footnotes', ''),
(762, 120, 'footnotes', ''),
(764, 120, 'banner_heading', 'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz'),
(765, 120, '_banner_heading', 'field_63c99ef4fabe9'),
(766, 120, 'banner_subheading', ' Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki'),
(767, 120, '_banner_subheading', 'field_63c99f17fabea'),
(768, 120, 'banner_button_text', 'Skontaktuj się z nami'),
(769, 120, '_banner_button_text', 'field_63c9a15ffabec'),
(770, 120, 'banner_button_url', ''),
(771, 120, '_banner_button_url', 'field_63c9a16bfabed'),
(772, 120, 'banner_button', ''),
(773, 120, '_banner_button', 'field_63c9a120fabeb'),
(774, 120, 'banner', ''),
(775, 120, '_banner', 'field_63c99e1420bf4'),
(776, 120, 'section_1_heading', 'Do czego tego użyć?'),
(777, 120, '_section_1_heading', 'field_63c9a1a6b0f6b'),
(778, 120, 'section_1_column_1_text', 'Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku. '),
(779, 120, '_section_1_column_1_text', 'field_63c9a1c4b0f6d'),
(780, 120, 'section_1_column_1', ''),
(781, 120, '_section_1_column_1', 'field_63c9a1b6b0f6c'),
(782, 120, 'section_1_column_2_text', 'Wielu webmasterów i designerów używa Lorem Ipsum jako domyślnego modelu tekstu i wpisanie w internetowej wyszukiwarce ‘lorem ipsum’ spowoduje znalezienie bardzo wielu stron, które wciąż są w budowie. Wiele wersji tekstu ewoluowało i zmieniało się przez lata, czasem przez przypadek, czasem specjalnie (humorystyczne wstawki itd).'),
(783, 120, '_section_1_column_2_text', 'field_63c9a1ebb0f6f'),
(784, 120, 'section_1_column_2_button_text', 'Czytaj więcej'),
(785, 120, '_section_1_column_2_button_text', 'field_63c9a20cb0f71'),
(786, 120, 'section_1_column_2_button_url', 'a:3:{s:5:\"title\";s:8:\"O firmie\";s:3:\"url\";s:35:\"http://localhost/vapautta/o-firmie/\";s:6:\"target\";s:0:\"\";}'),
(787, 120, '_section_1_column_2_button_url', 'field_63c9a219b0f72'),
(788, 120, 'section_1_column_2_button', ''),
(789, 120, '_section_1_column_2_button', 'field_63c9a1f7b0f70'),
(790, 120, 'section_1_column_2', ''),
(791, 120, '_section_1_column_2', 'field_63c9a1e0b0f6e'),
(792, 120, 'section_1', ''),
(793, 120, '_section_1', 'field_63c9a191b0f6a'),
(794, 120, 'section_2_heading', 'Skąd to wziąć?'),
(795, 120, '_section_2_heading', 'field_63c9a273b0f74'),
(796, 120, 'section_2_text', 'Jest dostępnych wiele różnych wersji Lorem Ipsum, ale większość zmieniła się pod wpływem dodanego humoru czy przypadkowych słów, które nawet w najmniejszym stopniu nie przypominają istniejących. Jeśli masz zamiar użyć fragmentu Lorem Ipsum, lepiej mieć pewność, że nie ma niczego „dziwnego” w środku tekstu. Wszystkie Internetowe generatory Lorem Ipsum mają tendencje do kopiowania już istniejących bloków, co czyni nasz pierwszym prawdziwym generatorem w Internecie. Używamy zawierającego ponad 200 łacińskich słów słownika, w kontekście wielu znanych sentencji, by wygenerować tekst wyglądający odpowiednio. To wszystko czyni „nasz” Lorem Ipsum wolnym od powtórzeń, humorystycznych wstawek czy niecharakterystycznych słów.'),
(797, 120, '_section_2_text', 'field_63c9a281b0f75'),
(798, 120, 'section_2', ''),
(799, 120, '_section_2', 'field_63c9a25db0f73'),
(800, 120, 'offer_banner', 'oferta'),
(801, 120, '_offer_banner', 'field_63c9a2cbb0f76'),
(802, 1, '_edit_lock', '1716494515:1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-01-19 20:30:45', '2023-01-19 19:30:45', '<!-- wp:paragraph -->\n<p>Witamy w WordPressie. To jest twój pierwszy wpis. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'publish', 'open', 'open', '', 'witaj-swiecie', '', '', '2023-01-19 20:30:45', '2023-01-19 19:30:45', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2023-01-19 20:30:45', '2023-01-19 19:30:45', '<!-- wp:paragraph -->\n<p>Przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników zaczyna od strony z informacjami o sobie, która zapozna ich przed odwiedzającymi witrynę. Taka strona może zawierać na przykład taką treść:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Cześć! Za dnia jestem kurierem rowerowym, nocą próbuję swoich sił w aktorstwie, a to jest moja witryna. Mieszkam w Krakowie, mam wspaniałego psa który wabi się Reks i lubię piña coladę (oraz spacery, gdy pada deszcz).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...albo coś takiego:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Firma XYZ Doohickey została założona w 1971 roku i od tamtej pory dostarcza społeczeństwu dobrej jakości gadżety. Znajdująca się w Gotham City XYZ zatrudnia ponad 2000 osób i robi niesamowite rzeczy dla społeczności Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Jako nowy użytkownik WordPressa, powinieneś przejść do <a href=\"http://localhost/wordpress/wp-admin/\">swojego kokpitu</a> aby usunąć tę stronę i stworzyć nowe z własną treścią. Dobrej zabawy!</p>\n<!-- /wp:paragraph -->', 'Przykładowa strona', '', 'publish', 'closed', 'open', '', 'przykladowa-strona', '', '', '2023-01-19 20:30:45', '2023-01-19 19:30:45', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-01-19 20:30:45', '2023-01-19 19:30:45', '<!-- wp:heading --><h2>Kim jesteśmy</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Adres naszej strony internetowej to: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentarze</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Anonimizowany ciąg znaków utworzony z twojego adresu e-mail (zwany też hashem) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jest używany. Polityka prywatności usługi Gravatar jest dostępna pod adresem: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ciasteczka</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli skomentujesz coś w witrynie, będzie można wybrać opcję zapisu nazwy, adresu e-mail i witryny internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Ciasteczka wygasają po roku.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli odwiedzisz stronę logowania, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. Nie zawiera ono żadnych danych osobistych i zostanie usunięte, kiedy przeglądarka zostanie zamknięta.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Osadzone treści z innych witryn</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Z kim dzielimy się danymi</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zażądasz zresetowania hasła, twój adres IP zostanie dołączony do wysyłanej wiadomości.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jak długo przechowujemy twoje dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jakie masz prawa do swoich danych</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Gdzie wysłamy twoje dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><!-- /wp:paragraph -->', 'Polityka prywatności', '', 'draft', 'closed', 'open', '', 'polityka-prywatnosci', '', '', '2023-01-19 20:30:45', '2023-01-19 19:30:45', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-01-19 20:32:37', '2023-01-19 19:32:37', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-01-19 20:32:37', '2023-01-19 19:32:37', '', 0, 'http://localhost/wordpress/2023/01/19/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(7, 1, '2023-01-19 20:35:02', '2023-01-19 19:35:02', '<div id=\"contact-form\" class=\"row\">\r\n<div class=\"col-12\">\r\n<p>Zapraszamy do kontaktu, chętnie odpowiemy na wszelkie Twoje pytania.</p>\r\n</div>\r\n<div class=\"col-xl-6\">\r\n<div class=\"mb-3\">\r\n[text* k-name class:form-control placeholder \"Imię i nazwisko*\"]\r\n</div>\r\n<div class=\"mb-3\">\r\n[email* k-email class:form-control placeholder \"Email*\"]\r\n</div>\r\n<div class=\"mb-3\">\r\n[tel k-phone class:form-control placeholder \"Nr telefonu\"]\r\n</div>\r\n<div class=\"mb-3\">\r\n[text* k-city class:form-control placeholder \"Miejscowość*\"]\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6\">\r\n<div class=\"mb-3\">\r\n[textarea* k-textarea minlength:5 maxlength:500 class:form-control placeholder \"Wiadomość*\"]\r\n</div>               \r\n</div>\r\n<div class=\"col-xl-6\">[quiz quiz-72 \"Która liczba jest większa? 5 czy 2?*|5\"]</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xl-6 mt-3\"><div><small>*pola wymagane do uzupełnienia</small></div></div>\r\n<div class=\"col-xl-6\">\r\n<div class=\"mt-3\">\r\n<div class=\"text-end\">\r\n[submit class:btn class:btn class:btn-primary class:w-button \"Wyślij wiadomość\"]\r\n</div>\r\n</div>\r\n</div>\r\n</div>\n1\n[_site_title] - \"[your-subject]\"\n[_site_title] <admin@example.com>\n[_site_admin_email]\nNadawca: <[k-email]>\r\n\r\nImię i nazwisko:  [k-name]\r\nNumer telefonu: [k-phone]\r\nMiejscowość: [k-city]\r\n\r\nTreść wiadomości:\r\n[k-textarea]\r\n\r\n-- \r\nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\nReply-To: [k-email]\n\n\n\n\n[_site_title] - \"[your-subject]\"\n[_site_title] <admin@example.com>\n[your-email]\nTreść wiadomości:\r\n[your-message]\r\n\r\n-- \r\nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\nReply-To: [_site_admin_email]\n\n\n\nTwoja wiadomość została wysłana. Dziękujemy!\nWystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\nPrzynajmniej jedno pole zawiera błąd. Proszę sprawdzić wpisaną treść i spróbować ponownie.\nWystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\nMusisz wyrazić zgodę na powyższe zapisy, aby móc wysłać formularz.\nProszę wypełnić to pole.\nW polu wprowadzono zbyt dużo znaków.\nW polu wprowadzono zbyt mało znaków.\nPodczas wgrywania pliku wystąpił nieznany błąd.\nNie możesz wgrywać plików tego typu.\nPrzesłany plik jest za duży.\nWystąpił błąd podczas wgrywania pliku.\nWprowadź datę w formacie RRRR-MM-DD.\nData wybrana w tym polu jest zbyt wczesna.\nData wybrana w tym polu jest zbyt późna.\nWprowadź liczbę.\nZa mała liczba.\nZa duża liczba.\nOdpowiedź w quizie jest nieprawidłowa.\nProszę wpisać adres e-mail.\nProszę wprowadzić adres URL.\nProszę podać numer telefonu.', 'Formularz PL', '', 'publish', 'closed', 'closed', '', 'formularz-1', '', '', '2023-01-19 22:21:55', '2023-01-19 21:21:55', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=7', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2023-01-19 20:39:01', '2023-01-19 19:39:01', '', 'polylang_mo_3', '', 'private', 'closed', 'closed', '', 'polylang_mo_3', '', '', '2023-01-19 20:39:01', '2023-01-19 19:39:01', '', 0, 'http://localhost/wordpress/?post_type=polylang_mo&p=8', 0, 'polylang_mo', '', 0),
(9, 1, '2023-01-19 20:39:01', '2023-01-19 19:39:01', '', 'polylang_mo_6', '', 'private', 'closed', 'closed', '', 'polylang_mo_6', '', '', '2023-01-19 20:39:01', '2023-01-19 19:39:01', '', 0, 'http://localhost/wordpress/?post_type=polylang_mo&p=9', 0, 'polylang_mo', '', 0),
(10, 1, '2023-01-19 20:46:55', '2023-01-19 19:46:55', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home page', 'home-page', 'publish', 'closed', 'closed', '', 'group_63c99e144f606', '', '', '2023-01-19 21:11:35', '2023-01-19 20:11:35', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2023-01-19 20:46:55', '2023-01-19 19:46:55', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_63c99e1420bf4', '', '', '2023-01-19 21:01:06', '2023-01-19 20:01:06', '', 10, 'http://localhost/wordpress/?post_type=acf-field&#038;p=11', 0, 'acf-field', '', 0),
(14, 1, '2023-01-19 21:01:06', '2023-01-19 20:01:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_63c99ef4fabe9', '', '', '2023-01-19 21:01:06', '2023-01-19 20:01:06', '', 11, 'http://localhost/wordpress/?post_type=acf-field&p=14', 0, 'acf-field', '', 0),
(15, 1, '2023-01-19 21:01:06', '2023-01-19 20:01:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Subheading', 'subheading', 'publish', 'closed', 'closed', '', 'field_63c99f17fabea', '', '', '2023-01-19 21:01:06', '2023-01-19 20:01:06', '', 11, 'http://localhost/wordpress/?post_type=acf-field&p=15', 1, 'acf-field', '', 0),
(16, 1, '2023-01-19 21:01:06', '2023-01-19 20:01:06', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_63c9a120fabeb', '', '', '2023-01-19 21:01:06', '2023-01-19 20:01:06', '', 11, 'http://localhost/wordpress/?post_type=acf-field&p=16', 2, 'acf-field', '', 0),
(17, 1, '2023-01-19 21:01:06', '2023-01-19 20:01:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63c9a15ffabec', '', '', '2023-01-19 21:01:06', '2023-01-19 20:01:06', '', 16, 'http://localhost/wordpress/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2023-01-19 21:01:06', '2023-01-19 20:01:06', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Url', 'url', 'publish', 'closed', 'closed', '', 'field_63c9a16bfabed', '', '', '2023-01-19 21:11:35', '2023-01-19 20:11:35', '', 16, 'http://localhost/wordpress/?post_type=acf-field&#038;p=18', 1, 'acf-field', '', 0),
(19, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Section_1', 'section_1', 'publish', 'closed', 'closed', '', 'field_63c9a191b0f6a', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 10, 'http://localhost/wordpress/?post_type=acf-field&p=19', 1, 'acf-field', '', 0),
(20, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_63c9a1a6b0f6b', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 19, 'http://localhost/wordpress/?post_type=acf-field&p=20', 0, 'acf-field', '', 0),
(21, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Column_1', 'column_1', 'publish', 'closed', 'closed', '', 'field_63c9a1b6b0f6c', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 19, 'http://localhost/wordpress/?post_type=acf-field&p=21', 1, 'acf-field', '', 0),
(22, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63c9a1c4b0f6d', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 21, 'http://localhost/wordpress/?post_type=acf-field&p=22', 0, 'acf-field', '', 0),
(23, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Column_2', 'column_2', 'publish', 'closed', 'closed', '', 'field_63c9a1e0b0f6e', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 19, 'http://localhost/wordpress/?post_type=acf-field&p=23', 2, 'acf-field', '', 0),
(24, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63c9a1ebb0f6f', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 23, 'http://localhost/wordpress/?post_type=acf-field&p=24', 0, 'acf-field', '', 0),
(25, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_63c9a1f7b0f70', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 23, 'http://localhost/wordpress/?post_type=acf-field&p=25', 1, 'acf-field', '', 0),
(26, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63c9a20cb0f71', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 25, 'http://localhost/wordpress/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Url', 'url', 'publish', 'closed', 'closed', '', 'field_63c9a219b0f72', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 25, 'http://localhost/wordpress/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Section_2', 'section_2', 'publish', 'closed', 'closed', '', 'field_63c9a25db0f73', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 10, 'http://localhost/wordpress/?post_type=acf-field&p=28', 2, 'acf-field', '', 0),
(29, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_63c9a273b0f74', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 28, 'http://localhost/wordpress/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63c9a281b0f75', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 28, 'http://localhost/wordpress/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2023-01-19 21:07:21', '2023-01-19 20:07:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Offer_banner', 'offer_banner', 'publish', 'closed', 'closed', '', 'field_63c9a2cbb0f76', '', '', '2023-01-19 21:07:21', '2023-01-19 20:07:21', '', 10, 'http://localhost/wordpress/?post_type=acf-field&p=31', 3, 'acf-field', '', 0),
(32, 1, '2023-01-19 21:07:51', '2023-01-19 20:07:51', '', 'Strona główna', '', 'publish', 'closed', 'closed', '', 'strona-glowna', '', '', '2024-05-13 22:32:22', '2024-05-13 20:32:22', '', 0, 'http://localhost/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2023-01-19 21:07:51', '2023-01-19 20:07:51', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-01-19 21:07:51', '2023-01-19 20:07:51', '', 32, 'http://localhost/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-01-19 21:08:11', '2023-01-19 20:08:11', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-01-21 19:40:33', '2023-01-21 18:40:33', '', 0, 'http://localhost/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2023-01-19 21:08:11', '2023-01-19 20:08:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-01-19 21:08:11', '2023-01-19 20:08:11', '', 34, 'http://localhost/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-01-19 21:45:12', '2023-01-19 20:45:12', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-01-19 21:45:12', '2023-01-19 20:45:12', '', 32, 'http://localhost/wordpress/?p=36', 0, 'revision', '', 0),
(37, 1, '2023-01-19 21:45:39', '2023-01-19 20:45:39', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-01-19 21:45:39', '2023-01-19 20:45:39', '', 32, 'http://localhost/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-01-19 21:49:28', '2023-01-19 20:49:28', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Skąd się to wzięło??</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>W przeciwieństwie do rozpowszechnionych opinii, Lorem Ipsum nie jest tylko przypadkowym tekstem. Ma ono korzenie w klasycznej łacińskiej literaturze z 45 roku przed Chrystusem, czyli ponad 2000 lat temu! Richard McClintock, wykładowca łaciny na uniwersytecie Hampden-Sydney w Virginii, przyjrzał się uważniej jednemu z najbardziej niejasnych słów w Lorem Ipsum – consectetur – i po wielu poszukiwaniach odnalazł niezaprzeczalne źródło: Lorem Ipsum pochodzi z fragmentów (1.10.32 i 1.10.33) „de Finibus Bonorum et Malorum”, czyli „O granicy dobra i zła”, napisanej właśnie w 45 p.n.e. przez Cycerona.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Jest to bardzo popularna w czasach renesansu rozprawa na temat etyki. Pierwszy wiersz Lorem Ipsum, „Lorem ipsum dolor sit amet...” pochodzi właśnie z sekcji 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Standardowy blok Lorem Ipsum, używany od XV wieku, jest odtworzony niżej dla zainteresowanych. Fragmenty 1.10.32 i 1.10.33 z „de Finibus Bonorum et Malorum” Cycerona, są odtworzone w dokładnej, oryginalnej formie, wraz z angielskimi tłumaczeniami H. Rackhama z 1914 roku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'O firmie', '', 'publish', 'closed', 'closed', '', 'o-firmie', '', '', '2024-05-13 22:19:31', '2024-05-13 20:19:31', '', 0, 'http://localhost/wordpress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2023-01-19 21:49:28', '2023-01-19 20:49:28', '', 'O firmie', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-01-19 21:49:28', '2023-01-19 20:49:28', '', 38, 'http://localhost/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2023-01-19 21:49:43', '2023-01-19 20:49:43', '<!-- wp:heading -->\n<h2>What is Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-01-21 18:29:28', '2023-01-21 17:29:28', '', 0, 'http://localhost/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2023-01-19 21:49:43', '2023-01-19 20:49:43', '', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2023-01-19 21:49:43', '2023-01-19 20:49:43', '', 40, 'http://localhost/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-01-19 21:50:02', '2023-01-19 20:50:02', '<!-- wp:shortcode -->\n[contact-form-7 id=\"7\" title=\"Formularz PL\"]\n<!-- /wp:shortcode -->', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2023-01-19 22:22:06', '2023-01-19 21:22:06', '', 0, 'http://localhost/wordpress/?page_id=42', 0, 'page', '', 0),
(43, 1, '2023-01-19 21:50:02', '2023-01-19 20:50:02', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-01-19 21:50:02', '2023-01-19 20:50:02', '', 42, 'http://localhost/wordpress/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-01-19 21:50:18', '2023-01-19 20:50:18', '<!-- wp:shortcode -->\n[contact-form-7 id=\"69\" title=\"Formularz EN\"]\n<!-- /wp:shortcode -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-01-19 22:22:22', '2023-01-19 21:22:22', '', 0, 'http://localhost/wordpress/?page_id=44', 0, 'page', '', 0),
(45, 1, '2023-01-19 21:50:18', '2023-01-19 20:50:18', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-01-19 21:50:18', '2023-01-19 20:50:18', '', 44, 'http://localhost/wordpress/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-01-19 21:50:37', '2023-01-19 20:50:37', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker</p>\n<!-- /wp:paragraph -->', 'Oferta', '', 'publish', 'closed', 'closed', '', 'oferta', '', '', '2023-01-21 18:31:33', '2023-01-21 17:31:33', '', 0, 'http://localhost/wordpress/?page_id=46', 0, 'page', '', 0),
(47, 1, '2023-01-19 21:50:37', '2023-01-19 20:50:37', '', 'Oferta', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-01-19 21:50:37', '2023-01-19 20:50:37', '', 46, 'http://localhost/wordpress/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-01-19 21:50:50', '2023-01-19 20:50:50', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Offer', '', 'publish', 'closed', 'closed', '', 'offer', '', '', '2023-01-21 18:31:45', '2023-01-21 17:31:45', '', 0, 'http://localhost/wordpress/?page_id=48', 0, 'page', '', 0),
(49, 1, '2023-01-19 21:50:50', '2023-01-19 20:50:50', '', 'Offer', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2023-01-19 21:50:50', '2023-01-19 20:50:50', '', 48, 'http://localhost/wordpress/?p=49', 0, 'revision', '', 0),
(50, 1, '2024-05-13 22:31:17', '2023-01-19 20:51:56', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2024-05-13 22:31:17', '2024-05-13 20:31:17', '', 0, 'http://localhost/wordpress/?p=50', 3, 'nav_menu_item', '', 0),
(51, 1, '2024-05-13 22:31:17', '2023-01-19 20:51:56', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2024-05-13 22:31:17', '2024-05-13 20:31:17', '', 0, 'http://localhost/wordpress/?p=51', 6, 'nav_menu_item', '', 0),
(53, 1, '2024-05-13 22:31:17', '2023-01-19 20:51:56', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2024-05-13 22:31:17', '2024-05-13 20:31:17', '', 0, 'http://localhost/wordpress/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2023-01-19 21:52:28', '2023-01-19 20:52:28', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2023-01-19 21:52:28', '2023-01-19 20:52:28', '', 0, 'http://localhost/wordpress/?p=54', 2, 'nav_menu_item', '', 0),
(55, 1, '2023-01-19 21:52:28', '2023-01-19 20:52:28', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2023-01-19 21:52:28', '2023-01-19 20:52:28', '', 0, 'http://localhost/wordpress/?p=55', 4, 'nav_menu_item', '', 0),
(56, 1, '2023-01-19 21:52:28', '2023-01-19 20:52:28', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2023-01-19 21:52:28', '2023-01-19 20:52:28', '', 0, 'http://localhost/wordpress/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2023-01-19 21:52:28', '2023-01-19 20:52:28', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2023-01-19 21:52:28', '2023-01-19 20:52:28', '', 0, 'http://localhost/wordpress/?p=57', 3, 'nav_menu_item', '', 0),
(58, 1, '2023-01-19 21:53:27', '2023-01-19 20:53:27', '', 'Privacy policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2023-01-19 21:53:27', '2023-01-19 20:53:27', '', 0, 'http://localhost/wordpress/?page_id=58', 0, 'page', '', 0),
(59, 1, '2023-01-19 21:53:27', '2023-01-19 20:53:27', '', 'Privacy policy', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2023-01-19 21:53:27', '2023-01-19 20:53:27', '', 58, 'http://localhost/wordpress/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-01-21 19:38:40', '2023-01-19 20:54:34', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2023-01-21 19:38:40', '2023-01-21 18:38:40', '', 0, 'http://localhost/wordpress/?p=60', 2, 'nav_menu_item', '', 0),
(61, 1, '2023-01-21 19:38:40', '2023-01-19 20:54:34', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2023-01-21 19:38:40', '2023-01-21 18:38:40', '', 0, 'http://localhost/wordpress/?p=61', 6, 'nav_menu_item', '', 0),
(62, 1, '2023-01-21 19:38:40', '2023-01-19 20:54:34', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2023-01-21 19:38:40', '2023-01-21 18:38:40', '', 0, 'http://localhost/wordpress/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2023-01-19 21:55:03', '2023-01-19 20:55:03', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2023-01-19 21:55:03', '2023-01-19 20:55:03', '', 0, 'http://localhost/wordpress/?p=63', 2, 'nav_menu_item', '', 0),
(64, 1, '2023-01-19 21:55:03', '2023-01-19 20:55:03', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2023-01-19 21:55:03', '2023-01-19 20:55:03', '', 0, 'http://localhost/wordpress/?p=64', 3, 'nav_menu_item', '', 0),
(65, 1, '2023-01-19 21:55:03', '2023-01-19 20:55:03', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2023-01-19 21:55:03', '2023-01-19 20:55:03', '', 0, 'http://localhost/wordpress/?p=65', 1, 'nav_menu_item', '', 0),
(66, 1, '2023-01-19 21:55:27', '2023-01-19 20:55:27', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2023-01-19 21:55:27', '2023-01-19 20:55:27', '', 0, 'http://localhost/wordpress/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2023-01-19 21:56:01', '2023-01-19 20:56:01', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2023-01-19 21:56:01', '2023-01-19 20:56:01', '', 0, 'http://localhost/wordpress/?p=67', 1, 'nav_menu_item', '', 0),
(68, 1, '2023-01-19 22:20:12', '2023-01-19 21:20:12', '<!-- wp:shortcode -->\n[contact-form-7 id=\"7\" title=\"Formularz 1\"]\n<!-- /wp:shortcode -->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-01-19 22:20:12', '2023-01-19 21:20:12', '', 42, 'http://localhost/wordpress/?p=68', 0, 'revision', '', 0),
(69, 1, '2023-01-19 22:21:15', '2023-01-19 21:21:15', '<div id=\"contact-form\" class=\"row\">\r\n<div class=\"col-12\">\r\n<p>Sprechen Sie uns gerne an, wir beantworten gerne alle Ihre Fragen.</p>\r\n</div>\r\n<div class=\"col-xl-6\">\r\n<div class=\"mb-3\">\r\n[text* k-name class:form-control placeholder \"Vorname und Nachname*\"]\r\n</div>\r\n<div class=\"mb-3\">\r\n[email* k-email class:form-control placeholder \"Email*\"]\r\n</div>\r\n<div class=\"mb-3\">\r\n[tel k-phone class:form-control placeholder \"Telefonnummer\"]\r\n</div>\r\n<div class=\"mb-3\">\r\n[text* k-city class:form-control placeholder \"Stadt*\"]\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6\">\r\n<div class=\"mb-3\">\r\n[textarea* k-textarea minlength:5 maxlength:500 class:form-control placeholder \"Nachricht*\"]\r\n</div>               \r\n</div>\r\n<div class=\"col-xl-6\">[quiz quiz-72 \"Welche Zahl ist größer? 4 oder 6?*|6\"]</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xl-6 mt-3\"><div><small>*pflichtfelder auszufüllen</small></div></div>\r\n<div class=\"col-xl-6\">\r\n<div class=\"mt-3\">\r\n<div class=\"text-end\">\r\n[submit class:btn class:btn class:btn-primary class:w-button \"Senden\"]\r\n</div>\r\n</div>\r\n</div>\r\n</div>\n1\n[_site_title] - \"[your-subject]\"\n[_site_title] <admin@example.com>\n[_site_admin_email]\nNadawca: <[k-email]>\r\n\r\nImię i nazwisko:  [k-name]\r\nNumer telefonu: [k-phone]\r\nMiejscowość: [k-city]\r\n\r\nTreść wiadomości:\r\n[k-textarea]\r\n\r\n-- \r\nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\nReply-To: [k-email]\n\n\n\n\n[_site_title] - \"[your-subject]\"\n[_site_title] <admin@example.com>\n[your-email]\nTreść wiadomości:\r\n[your-message]\r\n\r\n-- \r\nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\nReply-To: [_site_admin_email]\n\n\n\nTwoja wiadomość została wysłana. Dziękujemy!\nWystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\nPrzynajmniej jedno pole zawiera błąd. Proszę sprawdzić wpisaną treść i spróbować ponownie.\nWystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\nMusisz wyrazić zgodę na powyższe zapisy, aby móc wysłać formularz.\nProszę wypełnić to pole.\nW polu wprowadzono zbyt dużo znaków.\nW polu wprowadzono zbyt mało znaków.\nPodczas wgrywania pliku wystąpił nieznany błąd.\nNie możesz wgrywać plików tego typu.\nPrzesłany plik jest za duży.\nWystąpił błąd podczas wgrywania pliku.\nWprowadź datę w formacie RRRR-MM-DD.\nData wybrana w tym polu jest zbyt wczesna.\nData wybrana w tym polu jest zbyt późna.\nWprowadź liczbę.\nZa mała liczba.\nZa duża liczba.\nOdpowiedź w quizie jest nieprawidłowa.\nProszę wpisać adres e-mail.\nProszę wprowadzić adres URL.\nProszę podać numer telefonu.', 'Formularz EN', '', 'publish', 'closed', 'closed', '', 'formularz-1_copy', '', '', '2023-01-19 22:21:40', '2023-01-19 21:21:40', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=69', 0, 'wpcf7_contact_form', '', 0),
(70, 1, '2023-01-19 22:22:06', '2023-01-19 21:22:06', '<!-- wp:shortcode -->\n[contact-form-7 id=\"7\" title=\"Formularz PL\"]\n<!-- /wp:shortcode -->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-01-19 22:22:06', '2023-01-19 21:22:06', '', 42, 'http://localhost/wordpress/?p=70', 0, 'revision', '', 0),
(71, 1, '2023-01-19 22:22:17', '2023-01-19 21:22:17', '<!-- wp:shortcode -->\n[contact-form-7 id=\"69\" title=\"Formularz EN\"]\n<!-- /wp:shortcode -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-01-19 22:22:17', '2023-01-19 21:22:17', '', 44, 'http://localhost/wordpress/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-01-19 22:33:36', '2023-01-19 21:33:36', 'a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"oferta\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"offer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Settings offers', 'settings-offers', 'publish', 'closed', 'closed', '', 'group_63c9b6b40b924', '', '', '2023-01-19 22:40:29', '2023-01-19 21:40:29', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=72', 0, 'acf-field-group', '', 0),
(73, 1, '2023-01-19 22:33:36', '2023-01-19 21:33:36', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Headings', 'headings', 'publish', 'closed', 'closed', '', 'field_63c9b6b46f70e', '', '', '2023-01-19 22:33:36', '2023-01-19 21:33:36', '', 72, 'http://localhost/wordpress/?post_type=acf-field&p=73', 0, 'acf-field', '', 0),
(74, 1, '2023-01-19 22:33:36', '2023-01-19 21:33:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Heading_1', 'heading_1', 'publish', 'closed', 'closed', '', 'field_63c9b6f76f70f', '', '', '2023-01-19 22:33:36', '2023-01-19 21:33:36', '', 73, 'http://localhost/wordpress/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2023-01-19 22:33:36', '2023-01-19 21:33:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Heading_2', 'heading_2', 'publish', 'closed', 'closed', '', 'field_63c9b7096f710', '', '', '2023-01-19 22:33:36', '2023-01-19 21:33:36', '', 73, 'http://localhost/wordpress/?post_type=acf-field&p=75', 1, 'acf-field', '', 0),
(76, 1, '2023-01-19 22:34:39', '2023-01-19 21:34:39', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Oferta pierwsza', '', 'publish', 'closed', 'closed', '', 'oferta-pierwsza', '', '', '2023-01-19 22:37:32', '2023-01-19 21:37:32', '', 0, 'http://localhost/wordpress/?post_type=oferta-pl&#038;p=76', 0, 'oferta-pl', '', 0),
(78, 1, '2023-01-19 22:39:09', '2023-01-19 21:39:09', '<!-- wp:paragraph -->\n<p>Jest dostępnych wiele różnych wersji Lorem Ipsum, ale większość zmieniła się pod wpływem dodanego humoru czy przypadkowych słów, które nawet w najmniejszym stopniu nie przypominają istniejących. Jeśli masz zamiar użyć fragmentu Lorem Ipsum, lepiej mieć pewność, że nie ma niczego „dziwnego” w środku tekstu. Wszystkie Internetowe generatory Lorem Ipsum mają tendencje do kopiowania już istniejących bloków, co czyni nasz pierwszym prawdziwym generatorem w Internecie. Używamy zawierającego ponad 200 łacińskich słów słownika, w kontekście wielu znanych sentencji, by wygenerować tekst wyglądający odpowiednio. To wszystko czyni „nasz” Lorem Ipsum wolnym od powtórzeń, humorystycznych wstawek czy niecharakterystycznych słów.</p>\n<!-- /wp:paragraph -->', 'One', '', 'trash', 'closed', 'closed', '', 'one__trashed', '', '', '2024-05-13 22:08:08', '2024-05-13 20:08:08', '', 0, 'http://localhost/wordpress/?post_type=oferta&#038;p=78', 0, 'oferta', '', 0),
(83, 1, '2023-01-21 18:19:51', '2023-01-21 17:19:51', '', 'joao-ferrao-pxnDAT77rVg-unsplash', '', 'inherit', 'open', 'closed', '', 'joao-ferrao-pxndat77rvg-unsplash', '', '', '2023-01-21 18:19:51', '2023-01-21 17:19:51', '', 78, 'http://localhost/wordpress/wp-content/uploads/2023/01/joao-ferrao-pxnDAT77rVg-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2023-01-21 18:20:22', '2023-01-21 17:20:22', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'O firmie', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-01-21 18:20:22', '2023-01-21 17:20:22', '', 38, 'http://localhost/wordpress/?p=84', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(85, 1, '2023-01-21 18:20:55', '2023-01-21 17:20:55', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'O firmie', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-01-21 18:20:55', '2023-01-21 17:20:55', '', 38, 'http://localhost/wordpress/?p=85', 0, 'revision', '', 0),
(86, 1, '2023-01-21 18:23:37', '2023-01-21 17:23:37', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-01-21 18:23:37', '2023-01-21 17:23:37', '', 32, 'http://localhost/wordpress/?p=86', 0, 'revision', '', 0),
(87, 1, '2023-01-21 18:23:56', '2023-01-21 17:23:56', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-01-21 18:23:56', '2023-01-21 17:23:56', '', 32, 'http://localhost/wordpress/?p=87', 0, 'revision', '', 0),
(88, 1, '2023-01-21 18:26:24', '2023-01-21 17:26:24', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-01-21 18:26:24', '2023-01-21 17:26:24', '', 32, 'http://localhost/wordpress/?p=88', 0, 'revision', '', 0),
(89, 1, '2023-01-21 18:28:20', '2023-01-21 17:28:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-01-21 18:28:20', '2023-01-21 17:28:20', '', 34, 'http://localhost/wordpress/?p=89', 0, 'revision', '', 0),
(90, 1, '2023-01-21 18:29:27', '2023-01-21 17:29:27', '<!-- wp:heading -->\n<h2>What is Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2023-01-21 18:29:27', '2023-01-21 17:29:27', '', 40, 'http://localhost/wordpress/?p=90', 0, 'revision', '', 0),
(92, 1, '2023-01-21 18:31:15', '2023-01-21 17:31:15', '<!-- wp:heading -->\n<h2>Skąd się to wzięło?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>W przeciwieństwie do rozpowszechnionych opinii, Lorem Ipsum nie jest tylko przypadkowym tekstem. Ma ono korzenie w klasycznej łacińskiej literaturze z 45 roku przed Chrystusem, czyli ponad 2000 lat temu! Richard McClintock, wykładowca łaciny na uniwersytecie Hampden-Sydney w Virginii, przyjrzał się uważniej jednemu z najbardziej niejasnych słów w Lorem Ipsum – consectetur – i po wielu poszukiwaniach odnalazł niezaprzeczalne źródło: Lorem Ipsum pochodzi z fragmentów (1.10.32 i 1.10.33) „de Finibus Bonorum et Malorum”, czyli „O granicy dobra i zła”, napisanej właśnie w 45 p.n.e. przez Cycerona.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Jest to bardzo popularna w czasach renesansu rozprawa na temat etyki. Pierwszy wiersz Lorem Ipsum, „Lorem ipsum dolor sit amet...” pochodzi właśnie z sekcji 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Standardowy blok Lorem Ipsum, używany od XV wieku, jest odtworzony niżej dla zainteresowanych. Fragmenty 1.10.32 i 1.10.33 z „de Finibus Bonorum et Malorum” Cycerona, są odtworzone w dokładnej, oryginalnej formie, wraz z angielskimi tłumaczeniami H. Rackhama z 1914 roku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'O firmie', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-01-21 18:31:15', '2023-01-21 17:31:15', '', 38, 'http://localhost/wordpress/?p=92', 0, 'revision', '', 0),
(93, 1, '2023-01-21 18:31:32', '2023-01-21 17:31:32', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker</p>\n<!-- /wp:paragraph -->', 'Oferta', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-01-21 18:31:32', '2023-01-21 17:31:32', '', 46, 'http://localhost/wordpress/?p=93', 0, 'revision', '', 0),
(94, 1, '2023-01-21 18:31:44', '2023-01-21 17:31:44', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Offer', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2023-01-21 18:31:44', '2023-01-21 17:31:44', '', 48, 'http://localhost/wordpress/?p=94', 0, 'revision', '', 0),
(95, 1, '2023-01-21 18:34:42', '2023-01-21 17:34:42', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'Two', '', 'trash', 'closed', 'closed', '', 'two__trashed', '', '', '2024-05-13 22:08:08', '2024-05-13 20:08:08', '', 0, 'http://localhost/wordpress/?post_type=oferta&#038;p=95', 0, 'oferta', '', 0),
(96, 1, '2023-01-21 18:34:36', '2023-01-21 17:34:36', '', 'sam-pak-X6QffKLwyoQ-unsplash', '', 'inherit', 'open', 'closed', '', 'sam-pak-x6qffklwyoq-unsplash', '', '', '2023-01-21 18:34:36', '2023-01-21 17:34:36', '', 95, 'http://localhost/wordpress/wp-content/uploads/2023/01/sam-pak-X6QffKLwyoQ-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2023-01-21 18:35:52', '2023-01-21 17:35:52', '<!-- wp:paragraph -->\n<p>W przeciwieństwie do rozpowszechnionych opinii, Lorem Ipsum nie jest tylko przypadkowym tekstem. Ma ono korzenie w klasycznej łacińskiej literaturze z 45 roku przed Chrystusem, czyli ponad 2000 lat temu! Richard McClintock, wykładowca łaciny na uniwersytecie Hampden-Sydney w Virginii, przyjrzał się uważniej jednemu z najbardziej niejasnych słów w Lorem Ipsum – consectetur – i po wielu poszukiwaniach odnalazł niezaprzeczalne źródło: Lorem Ipsum pochodzi z fragmentów (1.10.32 i 1.10.33) „de Finibus Bonorum et Malorum”, czyli „O granicy dobra i zła”, napisanej właśnie w 45 p.n.e. przez Cycerona. Jest to bardzo popularna w czasach renesansu rozprawa na temat etyki. Pierwszy wiersz Lorem Ipsum, „Lorem ipsum dolor sit amet...” pochodzi właśnie z sekcji 1.10.32.</p>\n<!-- /wp:paragraph -->', 'Three', '', 'trash', 'closed', 'closed', '', 'three__trashed', '', '', '2024-05-13 22:08:08', '2024-05-13 20:08:08', '', 0, 'http://localhost/wordpress/?post_type=oferta&#038;p=97', 0, 'oferta', '', 0),
(98, 1, '2023-01-21 18:35:44', '2023-01-21 17:35:44', '', 'alexander-jawfox-dhrVciddsqc-unsplash', '', 'inherit', 'open', 'closed', '', 'alexander-jawfox-dhrvciddsqc-unsplash', '', '', '2023-01-21 18:35:44', '2023-01-21 17:35:44', '', 97, 'http://localhost/wordpress/wp-content/uploads/2023/01/alexander-jawfox-dhrVciddsqc-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2023-01-21 19:31:31', '2023-01-21 18:31:31', '', 'w-logo', '', 'inherit', 'open', 'closed', '', 'w-logo', '', '', '2023-01-21 19:31:31', '2023-01-21 18:31:31', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/01/w-logo.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2023-01-21 19:31:37', '2023-01-21 18:31:37', 'http://localhost/wordpress/wp-content/uploads/2023/01/cropped-w-logo.png', 'cropped-w-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-w-logo-png', '', '', '2023-01-21 19:31:37', '2023-01-21 18:31:37', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/01/cropped-w-logo.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2023-01-21 19:36:56', '2023-01-21 18:36:56', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'One', '', 'publish', 'closed', 'closed', '', 'one', '', '', '2023-01-21 19:37:22', '2023-01-21 18:37:22', '', 0, 'http://localhost/wordpress/?post_type=offer&#038;p=105', 0, 'offer', '', 0),
(106, 1, '2023-01-21 19:37:46', '2023-01-21 18:37:46', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Two', '', 'publish', 'closed', 'closed', '', 'two', '', '', '2023-01-21 19:37:47', '2023-01-21 18:37:47', '', 0, 'http://localhost/wordpress/?post_type=offer&#038;p=106', 0, 'offer', '', 0),
(107, 1, '2023-01-21 19:38:13', '2023-01-21 18:38:13', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Three', '', 'publish', 'closed', 'closed', '', 'three', '', '', '2023-01-21 19:38:14', '2023-01-21 18:38:14', '', 0, 'http://localhost/wordpress/?post_type=offer&#038;p=107', 0, 'offer', '', 0),
(108, 1, '2023-01-21 19:38:40', '2023-01-21 18:38:40', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2023-01-21 19:38:40', '2023-01-21 18:38:40', '', 0, 'http://localhost/wordpress/?p=108', 5, 'nav_menu_item', '', 0),
(109, 1, '2023-01-21 19:38:40', '2023-01-21 18:38:40', ' ', '', '', 'publish', 'closed', 'closed', '', '109', '', '', '2023-01-21 19:38:40', '2023-01-21 18:38:40', '', 0, 'http://localhost/wordpress/?p=109', 4, 'nav_menu_item', '', 0),
(110, 1, '2023-01-21 19:38:40', '2023-01-21 18:38:40', ' ', '', '', 'publish', 'closed', 'closed', '', '110', '', '', '2023-01-21 19:38:40', '2023-01-21 18:38:40', '', 0, 'http://localhost/wordpress/?p=110', 3, 'nav_menu_item', '', 0),
(111, 1, '2023-01-21 19:40:33', '2023-01-21 18:40:33', '', 'Home', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-01-21 19:40:33', '2023-01-21 18:40:33', '', 34, 'http://localhost/wordpress/?p=111', 0, 'revision', '', 0),
(114, 1, '2024-05-13 22:31:17', '2024-05-13 20:17:06', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2024-05-13 22:31:17', '2024-05-13 20:31:17', '', 0, 'http://localhost/vapautta/?p=114', 2, 'nav_menu_item', '', 0),
(115, 1, '2024-05-13 22:19:31', '2024-05-13 20:19:31', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Skąd się to wzięło??</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>W przeciwieństwie do rozpowszechnionych opinii, Lorem Ipsum nie jest tylko przypadkowym tekstem. Ma ono korzenie w klasycznej łacińskiej literaturze z 45 roku przed Chrystusem, czyli ponad 2000 lat temu! Richard McClintock, wykładowca łaciny na uniwersytecie Hampden-Sydney w Virginii, przyjrzał się uważniej jednemu z najbardziej niejasnych słów w Lorem Ipsum – consectetur – i po wielu poszukiwaniach odnalazł niezaprzeczalne źródło: Lorem Ipsum pochodzi z fragmentów (1.10.32 i 1.10.33) „de Finibus Bonorum et Malorum”, czyli „O granicy dobra i zła”, napisanej właśnie w 45 p.n.e. przez Cycerona.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Jest to bardzo popularna w czasach renesansu rozprawa na temat etyki. Pierwszy wiersz Lorem Ipsum, „Lorem ipsum dolor sit amet...” pochodzi właśnie z sekcji 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Standardowy blok Lorem Ipsum, używany od XV wieku, jest odtworzony niżej dla zainteresowanych. Fragmenty 1.10.32 i 1.10.33 z „de Finibus Bonorum et Malorum” Cycerona, są odtworzone w dokładnej, oryginalnej formie, wraz z angielskimi tłumaczeniami H. Rackhama z 1914 roku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'O firmie', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2024-05-13 22:19:31', '2024-05-13 20:19:31', '', 38, 'http://localhost/vapautta/?p=115', 0, 'revision', '', 0),
(116, 1, '2024-05-13 22:22:13', '2024-05-13 20:22:13', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker</p>\n<!-- /wp:paragraph -->', 'Oferta 1', '', 'publish', 'closed', 'closed', '', 'oferta-1', '', '', '2024-05-13 22:28:29', '2024-05-13 20:28:29', '', 0, 'http://localhost/vapautta/?post_type=oferta&#038;p=116', 0, 'oferta', '', 0),
(117, 1, '2024-05-13 22:28:54', '2024-05-13 20:28:54', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker</p>\n<!-- /wp:paragraph -->', 'Oferta 2', '', 'publish', 'closed', 'closed', '', 'oferta-2', '', '', '2024-05-13 22:28:55', '2024-05-13 20:28:55', '', 0, 'http://localhost/vapautta/?post_type=oferta&#038;p=117', 0, 'oferta', '', 0),
(118, 1, '2024-05-13 22:31:17', '2024-05-13 20:31:17', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2024-05-13 22:31:17', '2024-05-13 20:31:17', '', 0, 'http://localhost/vapautta/?p=118', 5, 'nav_menu_item', '', 0),
(119, 1, '2024-05-13 22:31:17', '2024-05-13 20:31:17', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2024-05-13 22:31:17', '2024-05-13 20:31:17', '', 0, 'http://localhost/vapautta/?p=119', 4, 'nav_menu_item', '', 0),
(120, 1, '2024-05-13 22:32:21', '2024-05-13 20:32:21', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2024-05-13 22:32:21', '2024-05-13 20:32:21', '', 32, 'http://localhost/vapautta/?p=120', 0, 'revision', '', 0),
(121, 1, '2024-05-22 20:20:40', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-22 20:20:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/vapautta/?p=121', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_sbi_feeds`
--

CREATE TABLE `wp_sbi_feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_name` text NOT NULL DEFAULT '',
  `feed_title` text NOT NULL DEFAULT '',
  `settings` longtext NOT NULL DEFAULT '',
  `author` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `status` varchar(255) NOT NULL DEFAULT '',
  `last_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_sbi_feed_caches`
--

CREATE TABLE `wp_sbi_feed_caches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` varchar(255) NOT NULL DEFAULT '',
  `cache_key` varchar(255) NOT NULL DEFAULT '',
  `cache_value` longtext NOT NULL DEFAULT '',
  `cron_update` varchar(20) NOT NULL DEFAULT 'yes',
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_sbi_instagram_feeds_posts`
--

CREATE TABLE `wp_sbi_instagram_feeds_posts` (
  `record_id` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `instagram_id` varchar(1000) NOT NULL DEFAULT '',
  `feed_id` varchar(1000) NOT NULL DEFAULT '',
  `hashtag` varchar(1000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_sbi_instagram_feed_locator`
--

CREATE TABLE `wp_sbi_instagram_feed_locator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` varchar(50) NOT NULL DEFAULT '',
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `html_location` varchar(50) NOT NULL DEFAULT 'unknown',
  `shortcode_atts` longtext NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_sbi_instagram_posts`
--

CREATE TABLE `wp_sbi_instagram_posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `instagram_id` varchar(1000) NOT NULL DEFAULT '',
  `time_stamp` datetime DEFAULT NULL,
  `top_time_stamp` datetime DEFAULT NULL,
  `json_data` longtext NOT NULL DEFAULT '',
  `media_id` varchar(1000) NOT NULL DEFAULT '',
  `sizes` varchar(1000) NOT NULL DEFAULT '',
  `aspect_ratio` decimal(4,2) NOT NULL DEFAULT 0.00,
  `images_done` tinyint(1) NOT NULL DEFAULT 0,
  `last_requested` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_sbi_sources`
--

CREATE TABLE `wp_sbi_sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` varchar(255) NOT NULL DEFAULT '',
  `account_type` varchar(255) NOT NULL DEFAULT '',
  `privilege` varchar(255) NOT NULL DEFAULT '',
  `access_token` varchar(1000) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `info` text NOT NULL DEFAULT '',
  `error` text NOT NULL DEFAULT '',
  `expires` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `author` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0),
(3, 'Polski', 'pl', 0),
(4, 'Polski', 'pll_pl', 0),
(5, 'pll_63c99c552644e', 'pll_63c99c552644e', 0),
(6, 'English', 'en', 0),
(7, 'English', 'pll_en', 0),
(8, 'Bez kategorii', 'bez-kategorii-en', 0),
(10, 'pll_63c9a32bbfd28', 'pll_63c9a32bbfd28', 0),
(11, 'pll_63c9ace89b575', 'pll_63c9ace89b575', 0),
(12, 'pll_63c9ad0b0ca3d', 'pll_63c9ad0b0ca3d', 0),
(13, 'pll_63c9ad2ab6a26', 'pll_63c9ad2ab6a26', 0),
(14, 'Menu 1 - PL', 'menu-1-pl', 0),
(15, 'Menu 1 - EN', 'menu-1-en', 0),
(16, 'pll_63c9adc7db1d2', 'pll_63c9adc7db1d2', 0),
(17, 'Menu 2 - PL', 'menu-2-pl', 0),
(18, 'Menu 2 - EN', 'menu-2-en', 0),
(19, 'Menu 3 - PL', 'menu-3-pl', 0),
(20, 'Menu 3 - EN', 'menu-3-en', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(2, 3, 0),
(3, 3, 0),
(3, 16, 0),
(5, 2, 0),
(8, 5, 0),
(8, 7, 0),
(32, 3, 0),
(32, 10, 0),
(34, 6, 0),
(34, 10, 0),
(38, 3, 0),
(38, 11, 0),
(40, 6, 0),
(40, 11, 0),
(42, 3, 0),
(42, 12, 0),
(44, 6, 0),
(44, 12, 0),
(46, 3, 0),
(46, 13, 0),
(48, 6, 0),
(48, 13, 0),
(50, 14, 0),
(51, 14, 0),
(53, 14, 0),
(54, 15, 0),
(55, 15, 0),
(56, 15, 0),
(57, 15, 0),
(58, 6, 0),
(58, 16, 0),
(60, 17, 0),
(61, 17, 0),
(62, 17, 0),
(63, 18, 0),
(64, 18, 0),
(65, 18, 0),
(66, 19, 0),
(67, 20, 0),
(83, 3, 0),
(96, 3, 0),
(98, 3, 0),
(102, 3, 0),
(103, 3, 0),
(108, 17, 0),
(109, 17, 0),
(110, 17, 0),
(114, 14, 0),
(118, 14, 0),
(119, 14, 0),
(121, 3, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'language', 'a:3:{s:6:\"locale\";s:5:\"pl_PL\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"pl\";}', 0, 6),
(4, 4, 'term_language', '', 0, 1),
(5, 5, 'term_translations', 'a:2:{s:2:\"pl\";i:1;s:2:\"en\";i:8;}', 0, 2),
(6, 6, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_US\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"us\";}', 0, 5),
(7, 7, 'term_language', '', 0, 1),
(8, 8, 'category', '', 0, 0),
(10, 10, 'post_translations', 'a:2:{s:2:\"en\";i:34;s:2:\"pl\";i:32;}', 0, 2),
(11, 11, 'post_translations', 'a:2:{s:2:\"en\";i:40;s:2:\"pl\";i:38;}', 0, 2),
(12, 12, 'post_translations', 'a:2:{s:2:\"en\";i:44;s:2:\"pl\";i:42;}', 0, 2),
(13, 13, 'post_translations', 'a:2:{s:2:\"en\";i:48;s:2:\"pl\";i:46;}', 0, 2),
(14, 14, 'nav_menu', '', 0, 6),
(15, 15, 'nav_menu', '', 0, 4),
(16, 16, 'post_translations', 'a:2:{s:2:\"en\";i:58;s:2:\"pl\";i:3;}', 0, 2),
(17, 17, 'nav_menu', '', 0, 6),
(18, 18, 'nav_menu', '', 0, 3),
(19, 19, 'nav_menu', '', 0, 1),
(20, 20, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"03abe04cd9de3869228f6652287f718ad610908c67ee41a99b88073a2d491746\";a:4:{s:10:\"expiration\";i:1716922807;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1716750007;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '121'),
(18, 1, 'wp_persisted_preferences', 'a:4:{s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-05-13T20:24:28.622Z\";s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:23:\"isPublishSidebarEnabled\";b:1;}s:4:\"core\";a:2:{s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";}s:10:\"editorMode\";s:6:\"visual\";}}'),
(19, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(20, 1, 'metaboxhidden_acf-field-group', 'a:0:{}'),
(21, 1, 'acf_user_settings', 'a:1:{s:15:\"show_field_keys\";s:1:\"1\";}'),
(22, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:0:\"\";s:6:\"normal\";s:83:\"acf-field-group-fields,acf-field-group-pro-features,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'screen_layout_acf-field-group', '2'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:19:\"pll_lang_switch_box\";i:1;s:12:\"add-post_tag\";}'),
(26, 1, 'nav_menu_recently_edited', '15'),
(27, 1, 'wp_user-settings', 'libraryContent=browse'),
(28, 1, 'wp_user-settings-time', '1674164614');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B0Ak9i.2bk4dPm57tscBHvsMf5xEHE/', 'admin', 'admin@example.com', 'http://localhost/wordpress', '2023-01-19 19:30:45', '', 0, 'admin');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indeksy dla tabeli `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indeksy dla tabeli `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indeksy dla tabeli `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indeksy dla tabeli `wp_sbi_feeds`
--
ALTER TABLE `wp_sbi_feeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`);

--
-- Indeksy dla tabeli `wp_sbi_feed_caches`
--
ALTER TABLE `wp_sbi_feed_caches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_id` (`feed_id`(191));

--
-- Indeksy dla tabeli `wp_sbi_instagram_feeds_posts`
--
ALTER TABLE `wp_sbi_instagram_feeds_posts`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `hashtag` (`hashtag`(191)),
  ADD KEY `feed_id` (`feed_id`(191));

--
-- Indeksy dla tabeli `wp_sbi_instagram_feed_locator`
--
ALTER TABLE `wp_sbi_instagram_feed_locator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_id` (`feed_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indeksy dla tabeli `wp_sbi_instagram_posts`
--
ALTER TABLE `wp_sbi_instagram_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wp_sbi_sources`
--
ALTER TABLE `wp_sbi_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_type` (`account_type`(191)),
  ADD KEY `author` (`author`);

--
-- Indeksy dla tabeli `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indeksy dla tabeli `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indeksy dla tabeli `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indeksy dla tabeli `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_users`
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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=711;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=803;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `wp_sbi_feeds`
--
ALTER TABLE `wp_sbi_feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_sbi_feed_caches`
--
ALTER TABLE `wp_sbi_feed_caches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_sbi_instagram_feeds_posts`
--
ALTER TABLE `wp_sbi_instagram_feeds_posts`
  MODIFY `record_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_sbi_instagram_feed_locator`
--
ALTER TABLE `wp_sbi_instagram_feed_locator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_sbi_instagram_posts`
--
ALTER TABLE `wp_sbi_instagram_posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_sbi_sources`
--
ALTER TABLE `wp_sbi_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
