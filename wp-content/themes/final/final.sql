-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 16 2016 г., 18:22
-- Версия сервера: 5.5.45-MariaDB
-- Версия PHP: 5.4.44

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `final`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Мистер WordPress', '', 'https://wordpress.org/', '', '2016-04-15 15:08:17', '2016-04-15 12:08:17', 'Привет! Это комментарий.\nЧтобы удалить его, авторизуйтесь и просмотрите комментарии к записи. Там будут ссылки для их изменения или удаления.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=236 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://final', 'yes'),
(2, 'home', 'http://final', 'yes'),
(3, 'blogname', 'BusinessPlus', 'yes'),
(4, 'blogdescription', '2015 © lawyer.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'blackjoker993@gmail.com', 'yes'),
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
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'final', 'yes'),
(41, 'stylesheet', 'final', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
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
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'ru_RU', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1460851698;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1460874187;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1460894918;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(108, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.5.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.5";s:7:"version";s:3:"4.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1460808504;s:15:"version_checked";s:3:"4.5";s:12:"translations";a:0:{}}', 'yes'),
(113, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1460808506;s:7:"checked";a:4:{s:5:"final";s:5:"1.0.0";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(114, '_site_transient_timeout_browser_6c87615462301d709781c5732ebdb395', '1461326908', 'yes'),
(115, '_site_transient_browser_6c87615462301d709781c5732ebdb395', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.130";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(116, 'can_compress_scripts', '1', 'yes'),
(122, '_transient_twentysixteen_categories', '1', 'yes'),
(131, '_transient_timeout_plugin_slugs', '1460848831', 'no'),
(132, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:9:"hello.php";}', 'no'),
(136, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1460722139;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(137, 'current_theme', 'final', 'yes'),
(138, 'theme_mods_final', 'a:8:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:8:"logo-img";s:48:"http://final/wp-content/uploads/2016/04/logo.png";s:8:"about_us";s:245:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";s:17:"services_business";s:118:"Lorem Ipsum is simply dummy text of the printing and industry\nLorem Ipsum has been the industry''s standard dummy text.";s:15:"services_suport";s:118:"Lorem Ipsum is simply dummy text of the printing and industry\nLorem Ipsum has been the industry''s standard dummy text.";s:17:"services_strategy";s:118:"Lorem Ipsum is simply dummy text of the printing and industry\nLorem Ipsum has been the industry''s standard dummy text.";s:18:"services_managment";s:118:"Lorem Ipsum is simply dummy text of the printing and industry\nLorem Ipsum has been the industry''s standard dummy text.";}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(141, '_site_transient_timeout_browser_417e1e24fa1f00dc5b43465abbe2bbda', '1461366979', 'yes'),
(142, '_site_transient_browser_417e1e24fa1f00dc5b43465abbe2bbda', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"49.0.2623.112";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(144, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1460773017', 'yes'),
(145, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5800";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3598";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3560";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3071";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2756";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2287";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2191";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2062";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2009";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1981";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1967";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1922";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1843";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1654";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1572";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1549";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1523";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1351";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1292";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1276";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1194";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1091";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1056";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1002";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"965";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"949";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"909";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"901";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"900";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"887";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"882";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"828";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"806";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"786";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"758";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"753";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"748";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"741";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"741";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"740";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"733";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"731";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"693";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"686";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"678";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"675";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"670";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"666";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"649";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"640";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"638";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"632";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"610";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"602";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"594";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"589";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"588";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"585";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"585";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"574";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"566";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"558";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"553";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"544";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"540";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"528";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"524";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"513";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"510";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"509";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"496";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"496";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"494";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"486";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"469";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"457";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"453";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"439";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"439";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"437";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"437";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"436";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"423";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"418";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"415";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"414";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"410";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"407";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"405";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"405";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"399";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"396";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"392";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"388";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"388";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"388";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"388";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"388";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"386";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"384";}}', 'yes'),
(149, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.4.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1460773152;s:7:"version";s:5:"4.4.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(150, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1460808505;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.10";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.10.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.4.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.4.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(157, '_transient_timeout_dash_f69de0bbfe7eaa113146875f40c02000', '1460829751', 'no'),
(158, '_transient_dash_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><p><strong>Ошибка RSS</strong>: WP HTTP Error: Resolving timed out after 10562 milliseconds</p></div><div class="rss-widget"><p><strong>Ошибка RSS</strong>: WP HTTP Error: Resolving timed out after 10514 milliseconds</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(171, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(177, 'category_children', 'a:0:{}', 'yes'),
(225, '_transient_is_multi_author', '0', 'yes'),
(234, '_site_transient_timeout_theme_roots', '1460817670', 'yes'),
(235, '_site_transient_theme_roots', 'a:4:{s:5:"final";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=248 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1460762067:1'),
(3, 4, '_form', '<p>Name*<br />\n    [text* your-name] </p>\n\n<p>E-mail*<br />\n    [email* your-email] </p>\n\n<p>Comment<br />\n    [textarea your-message] </p>\n\n<p>[submit class="submit" "SUBMIT NOW"]</p>'),
(4, 4, '_mail', 'a:8:{s:7:"subject";s:22:"Final "[your-subject]"";s:6:"sender";s:29:"[your-name] <wordpress@final>";s:4:"body";s:179:"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n--\nЭто сообщение отправлено с сайта Final (http://final)";s:9:"recipient";s:23:"blackjoker993@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(5, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:22:"Final "[your-subject]"";s:6:"sender";s:23:"Final <wordpress@final>";s:4:"body";s:120:"Сообщение:\n[your-message]\n\n--\nЭто сообщение отправлено с сайта Final (http://final)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:33:"Reply-To: blackjoker993@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(6, 4, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:35:"Код введен неверно.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(7, 4, '_additional_settings', ''),
(8, 4, '_locale', 'ru_RU'),
(9, 5, '_menu_item_type', 'custom'),
(10, 5, '_menu_item_menu_item_parent', '0'),
(11, 5, '_menu_item_object_id', '5'),
(12, 5, '_menu_item_object', 'custom'),
(13, 5, '_menu_item_target', ''),
(14, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(15, 5, '_menu_item_xfn', ''),
(16, 5, '_menu_item_url', 'http://final/'),
(17, 5, '_menu_item_orphaned', '1460787746'),
(18, 6, '_menu_item_type', 'post_type'),
(19, 6, '_menu_item_menu_item_parent', '0'),
(20, 6, '_menu_item_object_id', '2'),
(21, 6, '_menu_item_object', 'page'),
(22, 6, '_menu_item_target', ''),
(23, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(24, 6, '_menu_item_xfn', ''),
(25, 6, '_menu_item_url', ''),
(26, 6, '_menu_item_orphaned', '1460787746'),
(27, 7, '_menu_item_type', 'custom'),
(28, 7, '_menu_item_menu_item_parent', '0'),
(29, 7, '_menu_item_object_id', '7'),
(30, 7, '_menu_item_object', 'custom'),
(31, 7, '_menu_item_target', ''),
(32, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 7, '_menu_item_xfn', ''),
(34, 7, '_menu_item_url', 'http://final/'),
(35, 7, '_menu_item_orphaned', '1460787773'),
(36, 8, '_menu_item_type', 'post_type'),
(37, 8, '_menu_item_menu_item_parent', '0'),
(38, 8, '_menu_item_object_id', '2'),
(39, 8, '_menu_item_object', 'page'),
(40, 8, '_menu_item_target', ''),
(41, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 8, '_menu_item_xfn', ''),
(43, 8, '_menu_item_url', ''),
(44, 8, '_menu_item_orphaned', '1460787774'),
(45, 2, '_wp_trash_meta_status', 'publish'),
(46, 2, '_wp_trash_meta_time', '1460787784'),
(47, 2, '_wp_desired_post_slug', 'sample-page'),
(48, 10, '_edit_last', '1'),
(49, 10, '_edit_lock', '1460787836:1'),
(50, 10, '_wp_trash_meta_status', 'draft'),
(51, 10, '_wp_trash_meta_time', '1460788541'),
(52, 10, '_wp_desired_post_slug', ''),
(53, 12, '_edit_last', '1'),
(54, 12, '_edit_lock', '1460788443:1'),
(55, 14, '_edit_last', '1'),
(56, 14, '_edit_lock', '1460788480:1'),
(57, 16, '_edit_last', '1'),
(58, 16, '_edit_lock', '1460788523:1'),
(59, 18, '_edit_last', '1'),
(60, 18, '_edit_lock', '1460788548:1'),
(61, 20, '_edit_last', '1'),
(62, 20, '_edit_lock', '1460807977:1'),
(63, 22, '_edit_last', '1'),
(64, 22, '_edit_lock', '1460788605:1'),
(65, 24, '_menu_item_type', 'post_type'),
(66, 24, '_menu_item_menu_item_parent', '0'),
(67, 24, '_menu_item_object_id', '22'),
(68, 24, '_menu_item_object', 'page'),
(69, 24, '_menu_item_target', ''),
(70, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 24, '_menu_item_xfn', ''),
(72, 24, '_menu_item_url', ''),
(74, 25, '_menu_item_type', 'post_type'),
(75, 25, '_menu_item_menu_item_parent', '0'),
(76, 25, '_menu_item_object_id', '20'),
(77, 25, '_menu_item_object', 'page'),
(78, 25, '_menu_item_target', ''),
(79, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 25, '_menu_item_xfn', ''),
(81, 25, '_menu_item_url', ''),
(83, 26, '_menu_item_type', 'post_type'),
(84, 26, '_menu_item_menu_item_parent', '0'),
(85, 26, '_menu_item_object_id', '18'),
(86, 26, '_menu_item_object', 'page'),
(87, 26, '_menu_item_target', ''),
(88, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(89, 26, '_menu_item_xfn', ''),
(90, 26, '_menu_item_url', ''),
(92, 27, '_menu_item_type', 'post_type'),
(93, 27, '_menu_item_menu_item_parent', '0'),
(94, 27, '_menu_item_object_id', '16'),
(95, 27, '_menu_item_object', 'page'),
(96, 27, '_menu_item_target', ''),
(97, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 27, '_menu_item_xfn', ''),
(99, 27, '_menu_item_url', ''),
(101, 28, '_menu_item_type', 'post_type'),
(102, 28, '_menu_item_menu_item_parent', '0'),
(103, 28, '_menu_item_object_id', '14'),
(104, 28, '_menu_item_object', 'page'),
(105, 28, '_menu_item_target', ''),
(106, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(107, 28, '_menu_item_xfn', ''),
(108, 28, '_menu_item_url', ''),
(110, 29, '_menu_item_type', 'post_type'),
(111, 29, '_menu_item_menu_item_parent', '0'),
(112, 29, '_menu_item_object_id', '12'),
(113, 29, '_menu_item_object', 'page'),
(114, 29, '_menu_item_target', ''),
(115, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(116, 29, '_menu_item_xfn', ''),
(117, 29, '_menu_item_url', ''),
(119, 30, '_edit_last', '1'),
(120, 30, '_edit_lock', '1460792585:1'),
(121, 32, '_menu_item_type', 'post_type'),
(122, 32, '_menu_item_menu_item_parent', '0'),
(123, 32, '_menu_item_object_id', '30'),
(124, 32, '_menu_item_object', 'page'),
(125, 32, '_menu_item_target', ''),
(126, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 32, '_menu_item_xfn', ''),
(128, 32, '_menu_item_url', ''),
(130, 33, '_menu_item_type', 'post_type'),
(131, 33, '_menu_item_menu_item_parent', '0'),
(132, 33, '_menu_item_object_id', '30'),
(133, 33, '_menu_item_object', 'page'),
(134, 33, '_menu_item_target', ''),
(135, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(136, 33, '_menu_item_xfn', ''),
(137, 33, '_menu_item_url', ''),
(139, 34, '_menu_item_type', 'post_type'),
(140, 34, '_menu_item_menu_item_parent', '0'),
(141, 34, '_menu_item_object_id', '20'),
(142, 34, '_menu_item_object', 'page'),
(143, 34, '_menu_item_target', ''),
(144, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(145, 34, '_menu_item_xfn', ''),
(146, 34, '_menu_item_url', ''),
(148, 35, '_menu_item_type', 'post_type'),
(149, 35, '_menu_item_menu_item_parent', '0'),
(150, 35, '_menu_item_object_id', '16'),
(151, 35, '_menu_item_object', 'page'),
(152, 35, '_menu_item_target', ''),
(153, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(154, 35, '_menu_item_xfn', ''),
(155, 35, '_menu_item_url', ''),
(157, 36, '_menu_item_type', 'post_type'),
(158, 36, '_menu_item_menu_item_parent', '0'),
(159, 36, '_menu_item_object_id', '14'),
(160, 36, '_menu_item_object', 'page'),
(161, 36, '_menu_item_target', ''),
(162, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(163, 36, '_menu_item_xfn', ''),
(164, 36, '_menu_item_url', ''),
(166, 37, '_menu_item_type', 'post_type'),
(167, 37, '_menu_item_menu_item_parent', '0'),
(168, 37, '_menu_item_object_id', '12'),
(169, 37, '_menu_item_object', 'page'),
(170, 37, '_menu_item_target', ''),
(171, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(172, 37, '_menu_item_xfn', ''),
(173, 37, '_menu_item_url', ''),
(175, 1, '_wp_trash_meta_status', 'publish'),
(176, 1, '_wp_trash_meta_time', '1460790496'),
(177, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(178, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(179, 39, '_edit_last', '1'),
(180, 39, '_edit_lock', '1460792085:1'),
(182, 42, '_wp_attached_file', '2016/04/1.jpg'),
(183, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1042;s:6:"height";i:334;s:4:"file";s:13:"2016/04/1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:12:"1-300x96.jpg";s:5:"width";i:300;s:6:"height";i:96;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"1-768x246.jpg";s:5:"width";i:768;s:6:"height";i:246;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:14:"1-1024x328.jpg";s:5:"width";i:1024;s:6:"height";i:328;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(184, 39, '_thumbnail_id', '42'),
(186, 43, '_edit_last', '1'),
(187, 43, '_edit_lock', '1460792138:1'),
(188, 44, '_wp_attached_file', '2016/04/2.png'),
(189, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1042;s:6:"height";i:334;s:4:"file";s:13:"2016/04/2.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:12:"2-300x96.png";s:5:"width";i:300;s:6:"height";i:96;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"2-768x246.png";s:5:"width";i:768;s:6:"height";i:246;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:14:"2-1024x328.png";s:5:"width";i:1024;s:6:"height";i:328;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(190, 43, '_thumbnail_id', '44'),
(192, 47, '_wp_attached_file', '2016/04/3.png'),
(193, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1042;s:6:"height";i:334;s:4:"file";s:13:"2016/04/3.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:12:"3-300x96.png";s:5:"width";i:300;s:6:"height";i:96;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"3-768x246.png";s:5:"width";i:768;s:6:"height";i:246;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:14:"3-1024x328.png";s:5:"width";i:1024;s:6:"height";i:328;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(194, 46, '_thumbnail_id', '47'),
(195, 46, '_edit_last', '1'),
(197, 46, '_edit_lock', '1460794341:1'),
(200, 4, '_config_errors', 'a:1:{s:11:"mail.sender";i:102;}'),
(201, 46, '_wp_trash_meta_status', 'publish'),
(202, 46, '_wp_trash_meta_time', '1460802993'),
(203, 46, '_wp_desired_post_slug', 'blog-heading-here-3'),
(204, 43, '_wp_trash_meta_status', 'publish'),
(205, 43, '_wp_trash_meta_time', '1460802993'),
(206, 43, '_wp_desired_post_slug', 'blog-heading-here-2'),
(207, 39, '_wp_trash_meta_status', 'publish'),
(208, 39, '_wp_trash_meta_time', '1460802993'),
(209, 39, '_wp_desired_post_slug', 'blog-heading-here'),
(210, 49, '_edit_last', '1'),
(211, 49, '_edit_lock', '1460802941:1'),
(212, 49, '_thumbnail_id', '42'),
(213, 50, '_thumbnail_id', '44'),
(214, 50, '_edit_last', '1'),
(215, 50, '_edit_lock', '1460808245:1'),
(216, 51, '_thumbnail_id', '47'),
(217, 51, '_edit_last', '1'),
(218, 51, '_edit_lock', '1460808623:1'),
(219, 53, '_edit_last', '1'),
(221, 53, '_edit_lock', '1460808119:1'),
(222, 53, '_thumbnail_id', '42'),
(224, 57, '_edit_last', '1'),
(225, 57, '_edit_lock', '1460808022:1'),
(227, 57, '_wp_trash_meta_status', 'publish'),
(228, 57, '_wp_trash_meta_time', '1460808204'),
(229, 57, '_wp_desired_post_slug', 'about-us-2'),
(231, 61, '_edit_last', '1'),
(232, 61, '_edit_lock', '1460809502:1'),
(233, 61, '_thumbnail_id', '44'),
(235, 63, '_thumbnail_id', '47'),
(236, 63, '_edit_last', '1'),
(237, 63, '_edit_lock', '1460809346:1'),
(239, 65, '_edit_last', '1'),
(240, 65, '_edit_lock', '1460809321:1'),
(241, 65, '_thumbnail_id', '44'),
(246, 70, '_wp_attached_file', '2016/04/logo.png'),
(247, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:164;s:6:"height";i:34;s:4:"file";s:16:"2016/04/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x34.png";s:5:"width";i:150;s:6:"height";i:34;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=71 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-04-15 15:08:17', '2016-04-15 12:08:17', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2016-04-16 10:08:16', '2016-04-16 07:08:16', '', 0, 'http://final/?p=1', 0, 'post', '', 1),
(2, 1, '2016-04-15 15:08:17', '2016-04-15 12:08:17', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://final/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2016-04-16 09:23:04', '2016-04-16 06:23:04', '', 0, 'http://final/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-04-15 15:08:29', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-15 15:08:29', '0000-00-00 00:00:00', '', 0, 'http://final/?p=3', 0, 'post', '', 0),
(4, 1, '2016-04-16 02:19:12', '2016-04-15 23:19:12', '<p>Name*<br />\r\n    [text* your-name] </p>\r\n\r\n<p>E-mail*<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Comment<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit class="submit" "SUBMIT NOW"]</p>\nFinal "[your-subject]"\n[your-name] <wordpress@final>\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n--\r\nЭто сообщение отправлено с сайта Final (http://final)\nblackjoker993@gmail.com\nReply-To: [your-email]\n\n\n\n\nFinal "[your-subject]"\nFinal <wordpress@final>\nСообщение:\r\n[your-message]\r\n\r\n--\r\nЭто сообщение отправлено с сайта Final (http://final)\n[your-email]\nReply-To: blackjoker993@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nКод введен неверно.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Контактная форма 1', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1', '', '', '2016-04-16 11:48:08', '2016-04-16 08:48:08', '', 0, 'http://final/?post_type=wpcf7_contact_form&#038;p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2016-04-16 09:22:26', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-16 09:22:26', '0000-00-00 00:00:00', '', 0, 'http://final/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2016-04-16 09:22:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-16 09:22:26', '0000-00-00 00:00:00', '', 0, 'http://final/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2016-04-16 09:22:53', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-16 09:22:53', '0000-00-00 00:00:00', '', 0, 'http://final/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2016-04-16 09:22:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-16 09:22:53', '0000-00-00 00:00:00', '', 0, 'http://final/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2016-04-16 09:23:04', '2016-04-16 06:23:04', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://final/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-04-16 09:23:04', '2016-04-16 06:23:04', '', 2, 'http://final/2016/04/16/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-04-16 09:23:56', '2016-04-16 06:23:56', '', 'Home', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2016-04-16 09:35:41', '2016-04-16 06:35:41', '', 0, 'http://final/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-04-16 09:35:41', '2016-04-16 06:35:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-04-16 09:35:41', '2016-04-16 06:35:41', '', 10, 'http://final/2016/04/16/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-04-16 09:36:16', '2016-04-16 06:36:16', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-04-16 09:36:16', '2016-04-16 06:36:16', '', 0, 'http://final/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-04-16 09:36:16', '2016-04-16 06:36:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-04-16 09:36:16', '2016-04-16 06:36:16', '', 12, 'http://final/2016/04/16/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-04-16 09:36:46', '2016-04-16 06:36:46', '', 'About US', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-04-16 09:36:46', '2016-04-16 06:36:46', '', 0, 'http://final/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-04-16 09:36:46', '2016-04-16 06:36:46', '', 'About US', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-04-16 09:36:46', '2016-04-16 06:36:46', '', 14, 'http://final/2016/04/16/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-04-16 09:37:35', '2016-04-16 06:37:35', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2016-04-16 09:37:35', '2016-04-16 06:37:35', '', 0, 'http://final/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-04-16 09:37:35', '2016-04-16 06:37:35', '', 'Services', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-04-16 09:37:35', '2016-04-16 06:37:35', '', 16, 'http://final/2016/04/16/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-04-16 09:37:56', '2016-04-16 06:37:56', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2016-04-16 09:37:56', '2016-04-16 06:37:56', '', 0, 'http://final/?page_id=18', 0, 'page', '', 0),
(19, 1, '2016-04-16 09:37:56', '2016-04-16 06:37:56', '', 'News', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2016-04-16 09:37:56', '2016-04-16 06:37:56', '', 18, 'http://final/2016/04/16/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-04-16 09:38:23', '2016-04-16 06:38:23', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-04-16 15:01:57', '2016-04-16 12:01:57', '', 0, 'http://final/?page_id=20', 0, 'page', '', 0),
(21, 1, '2016-04-16 09:38:23', '2016-04-16 06:38:23', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-04-16 09:38:23', '2016-04-16 06:38:23', '', 20, 'http://final/2016/04/16/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-04-16 09:38:44', '2016-04-16 06:38:44', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2016-04-16 09:38:44', '2016-04-16 06:38:44', '', 0, 'http://final/?page_id=22', 0, 'page', '', 0),
(23, 1, '2016-04-16 09:38:44', '2016-04-16 06:38:44', '', 'Pages', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-04-16 09:38:44', '2016-04-16 06:38:44', '', 22, 'http://final/2016/04/16/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-04-16 09:39:55', '2016-04-16 06:39:55', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-04-16 09:43:58', '2016-04-16 06:43:58', '', 0, 'http://final/?p=24', 6, 'nav_menu_item', '', 0),
(25, 1, '2016-04-16 09:39:55', '2016-04-16 06:39:55', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-04-16 09:43:58', '2016-04-16 06:43:58', '', 0, 'http://final/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2016-04-16 09:39:55', '2016-04-16 06:39:55', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-04-16 09:43:58', '2016-04-16 06:43:58', '', 0, 'http://final/?p=26', 4, 'nav_menu_item', '', 0),
(27, 1, '2016-04-16 09:39:55', '2016-04-16 06:39:55', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-04-16 09:43:58', '2016-04-16 06:43:58', '', 0, 'http://final/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2016-04-16 09:39:55', '2016-04-16 06:39:55', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2016-04-16 09:43:58', '2016-04-16 06:43:58', '', 0, 'http://final/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2016-04-16 09:39:55', '2016-04-16 06:39:55', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-04-16 09:43:58', '2016-04-16 06:43:58', '', 0, 'http://final/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2016-04-16 09:40:22', '2016-04-16 06:40:22', '', 'Contact US', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-04-16 09:40:22', '2016-04-16 06:40:22', '', 0, 'http://final/?page_id=30', 0, 'page', '', 0),
(31, 1, '2016-04-16 09:40:22', '2016-04-16 06:40:22', '', 'Contact US', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-04-16 09:40:22', '2016-04-16 06:40:22', '', 30, 'http://final/2016/04/16/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-04-16 09:40:46', '2016-04-16 06:40:46', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2016-04-16 09:43:58', '2016-04-16 06:43:58', '', 0, 'http://final/?p=32', 7, 'nav_menu_item', '', 0),
(33, 1, '2016-04-16 09:43:27', '2016-04-16 06:43:27', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2016-04-16 09:43:27', '2016-04-16 06:43:27', '', 0, 'http://final/?p=33', 5, 'nav_menu_item', '', 0),
(34, 1, '2016-04-16 09:43:27', '2016-04-16 06:43:27', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2016-04-16 09:43:27', '2016-04-16 06:43:27', '', 0, 'http://final/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2016-04-16 09:43:27', '2016-04-16 06:43:27', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2016-04-16 09:43:27', '2016-04-16 06:43:27', '', 0, 'http://final/?p=35', 3, 'nav_menu_item', '', 0),
(36, 1, '2016-04-16 09:43:27', '2016-04-16 06:43:27', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2016-04-16 09:43:27', '2016-04-16 06:43:27', '', 0, 'http://final/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2016-04-16 09:43:27', '2016-04-16 06:43:27', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2016-04-16 09:43:27', '2016-04-16 06:43:27', '', 0, 'http://final/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2016-04-16 10:08:16', '2016-04-16 07:08:16', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-04-16 10:08:16', '2016-04-16 07:08:16', '', 1, 'http://final/2016/04/16/1-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-04-16 10:36:07', '2016-04-16 07:36:07', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also\r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'trash', 'open', 'open', '', 'blog-heading-here__trashed', '', '', '2016-04-16 13:36:33', '2016-04-16 10:36:33', '', 0, 'http://final/?p=39', 0, 'post', '', 0),
(40, 1, '2016-04-16 10:36:07', '2016-04-16 07:36:07', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also\r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-04-16 10:36:07', '2016-04-16 07:36:07', '', 39, 'http://final/2016/04/16/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-04-16 10:36:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-16 10:36:17', '0000-00-00 00:00:00', '', 0, 'http://final/?p=41', 0, 'post', '', 0),
(42, 1, '2016-04-16 10:36:50', '2016-04-16 07:36:50', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2016-04-16 10:36:50', '2016-04-16 07:36:50', '', 39, 'http://final/wp-content/uploads/2016/04/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2016-04-16 10:37:50', '2016-04-16 07:37:50', '', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'trash', 'open', 'open', '', 'blog-heading-here-2__trashed', '', '', '2016-04-16 13:36:33', '2016-04-16 10:36:33', '', 0, 'http://final/?p=43', 0, 'post', '', 0),
(44, 1, '2016-04-16 10:37:39', '2016-04-16 07:37:39', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2016-04-16 10:37:39', '2016-04-16 07:37:39', '', 43, 'http://final/wp-content/uploads/2016/04/2.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2016-04-16 10:37:50', '2016-04-16 07:37:50', '', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2016-04-16 10:37:50', '2016-04-16 07:37:50', '', 43, 'http://final/2016/04/16/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-04-16 10:38:32', '2016-04-16 07:38:32', '', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'trash', 'open', 'open', '', 'blog-heading-here-3__trashed', '', '', '2016-04-16 13:36:33', '2016-04-16 10:36:33', '', 0, 'http://final/?p=46', 0, 'post', '', 0),
(47, 1, '2016-04-16 10:38:13', '2016-04-16 07:38:13', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2016-04-16 10:38:13', '2016-04-16 07:38:13', '', 46, 'http://final/wp-content/uploads/2016/04/3.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2016-04-16 10:38:32', '2016-04-16 07:38:32', '', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2016-04-16 10:38:32', '2016-04-16 07:38:32', '', 46, 'http://final/2016/04/16/46-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-04-16 13:38:01', '2016-04-16 10:38:01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', 'publish', 'open', 'closed', '', 'blog-heading-here', '', '', '2016-04-16 13:38:01', '2016-04-16 10:38:01', '', 0, 'http://final/?post_type=blog&#038;p=49', 0, 'blog', '', 0),
(50, 1, '2016-04-16 13:38:48', '2016-04-16 10:38:48', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', '', 'publish', 'open', 'closed', '', 'blog-heading-here-2', '', '', '2016-04-16 13:38:48', '2016-04-16 10:38:48', '', 0, 'http://final/?post_type=blog&#038;p=50', 0, 'blog', '', 0),
(51, 1, '2016-04-16 13:39:29', '2016-04-16 10:39:29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', 'Blog Heading Here', '', 'publish', 'open', 'closed', '', 'blog-heading-here-3', '', '', '2016-04-16 13:39:29', '2016-04-16 10:39:29', '', 0, 'http://final/?post_type=blog&#038;p=51', 0, 'blog', '', 0),
(53, 1, '2016-04-16 14:56:28', '2016-04-16 11:56:28', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'publish', 'open', 'open', '', 'hi', '', '', '2016-04-16 15:04:20', '2016-04-16 12:04:20', '', 0, 'http://final/?p=53', 0, 'post', '', 0),
(54, 1, '2016-04-16 14:56:28', '2016-04-16 11:56:28', '', 'hi', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2016-04-16 14:56:28', '2016-04-16 11:56:28', '', 53, 'http://final/?p=54', 0, 'revision', '', 0),
(55, 1, '2016-04-16 15:00:06', '2016-04-16 12:00:06', '', 'Blog Heading Here', '', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2016-04-16 15:00:06', '2016-04-16 12:00:06', '', 53, 'http://final/?p=55', 0, 'revision', '', 0),
(56, 1, '2016-04-16 15:01:00', '2016-04-16 12:01:00', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-04-16 15:01:00', '2016-04-16 12:01:00', '', 20, 'http://final/?p=56', 0, 'revision', '', 0),
(57, 1, '2016-04-16 15:02:43', '2016-04-16 12:02:43', '', 'About us', '', 'trash', 'closed', 'closed', '', 'about-us-2__trashed', '', '', '2016-04-16 15:03:24', '2016-04-16 12:03:24', '', 0, 'http://final/?page_id=57', 0, 'page', '', 0),
(58, 1, '2016-04-16 15:01:57', '2016-04-16 12:01:57', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-04-16 15:01:57', '2016-04-16 12:01:57', '', 20, 'http://final/?p=58', 0, 'revision', '', 0),
(59, 1, '2016-04-16 15:02:43', '2016-04-16 12:02:43', '', 'About us', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2016-04-16 15:02:43', '2016-04-16 12:02:43', '', 57, 'http://final/?p=59', 0, 'revision', '', 0),
(60, 1, '2016-04-16 15:04:20', '2016-04-16 12:04:20', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2016-04-16 15:04:20', '2016-04-16 12:04:20', '', 53, 'http://final/?p=60', 0, 'revision', '', 0),
(61, 1, '2016-04-16 15:04:53', '2016-04-16 12:04:53', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n&nbsp;\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'publish', 'open', 'open', '', 'blog-heading-here', '', '', '2016-04-16 15:25:01', '2016-04-16 12:25:01', '', 0, 'http://final/?p=61', 0, 'post', '', 0),
(62, 1, '2016-04-16 15:04:53', '2016-04-16 12:04:53', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2016-04-16 15:04:53', '2016-04-16 12:04:53', '', 61, 'http://final/?p=62', 0, 'revision', '', 0),
(63, 1, '2016-04-16 15:05:34', '2016-04-16 12:05:34', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n&nbsp;\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'publish', 'open', 'open', '', 'blog-heading-here-2', '', '', '2016-04-16 15:24:34', '2016-04-16 12:24:34', '', 0, 'http://final/?p=63', 0, 'post', '', 0),
(64, 1, '2016-04-16 15:05:31', '2016-04-16 12:05:31', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2016-04-16 15:05:31', '2016-04-16 12:05:31', '', 63, 'http://final/?p=64', 0, 'revision', '', 0),
(65, 1, '2016-04-16 15:06:21', '2016-04-16 12:06:21', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n&nbsp;\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'publish', 'open', 'open', '', 'blog-heading-here-3', '', '', '2016-04-16 15:24:19', '2016-04-16 12:24:19', '', 0, 'http://final/?p=65', 0, 'post', '', 0),
(66, 1, '2016-04-16 15:06:21', '2016-04-16 12:06:21', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2016-04-16 15:06:21', '2016-04-16 12:06:21', '', 65, 'http://final/?p=66', 0, 'revision', '', 0),
(67, 1, '2016-04-16 15:24:19', '2016-04-16 12:24:19', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n&nbsp;\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2016-04-16 15:24:19', '2016-04-16 12:24:19', '', 65, 'http://final/?p=67', 0, 'revision', '', 0),
(68, 1, '2016-04-16 15:24:34', '2016-04-16 12:24:34', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n&nbsp;\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2016-04-16 15:24:34', '2016-04-16 12:24:34', '', 63, 'http://final/?p=68', 0, 'revision', '', 0),
(69, 1, '2016-04-16 15:25:01', '2016-04-16 12:25:01', 'Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.\r\n\r\n&nbsp;\r\n\r\n<strong>Many publishing packages</strong>\r\n\r\nLorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.', 'Blog Heading Here', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. It was popularised..', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2016-04-16 15:25:01', '2016-04-16 12:25:01', '', 61, 'http://final/?p=69', 0, 'revision', '', 0),
(70, 1, '2016-04-16 15:34:02', '2016-04-16 12:34:02', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2016-04-16 15:34:02', '2016-04-16 12:34:02', '', 0, 'http://final/wp-content/uploads/2016/04/logo.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'menu 1', 'menu-1', 0),
(3, 'menu1', 'menu1', 0),
(4, 'menu 2', 'menu-2', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(32, 2, 0),
(33, 4, 0),
(34, 4, 0),
(35, 4, 0),
(36, 4, 0),
(37, 4, 0),
(39, 1, 0),
(43, 1, 0),
(46, 1, 0),
(53, 1, 0),
(61, 1, 0),
(63, 1, 0),
(65, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=25 ;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jokeral'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"b8c5d7f4243c75b70c1a388f8acdf6b4f60f56bb472495b82ce2c600a4768505";a:4:{s:10:"expiration";i:1460894905;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36";s:5:"login";i:1460722105;}s:64:"b89eab44c5fe58da8b6c3884ae42278100afd809a75616b1d06466e559339029";a:4:{s:10:"expiration";i:1460934977;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36";s:5:"login";i:1460762177;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:4:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:9:"authordiv";}'),
(23, 1, 'wp_user-settings', 'libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1460792218');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jokeral', '$P$BPHmSQ18XSWsJvByC8Zoxa6s23SbMe0', 'jokeral', 'blackjoker993@gmail.com', '', '2016-04-15 12:08:17', '', 0, 'jokeral');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
