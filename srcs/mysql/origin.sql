-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql
-- Généré le :  ven. 05 juin 2020 à 13:49
-- Version du serveur :  10.4.13-MariaDB-log
-- Version de PHP :  7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
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
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-06-05 15:23:04', '2020-06-05 13:23:04', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
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
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ip_minikube/wordpress', 'yes'),
(2, 'home', 'http://ip_minikube/wordpress', 'yes'),
(3, 'blogname', 'ft_services', 'yes'),
(4, 'blogdescription', 'jchotel', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test1@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(79, 'widget_text', 'a:9:{i:2;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:185:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00—17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:185:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00—17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:6;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:185:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00—17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:12:\"Réalisation\";s:4:\"text\";s:329:\"<p class=\"p1\"><span class=\"s1\"><strong>jchotel – jchotel8</strong>\r\n</span><span class=\"s1\">42 – GitHub</span></p>\r\n<strong>Thanks to</strong>\r\n<p class=\"p1\"><span class=\"s1\">cbertolla\r\n</span>llaurent\r\n<span class=\"s1\">llepage</span>\r\n<span class=\"s1\">thgermai</span><span class=\"s1\">\r\n</span><span class=\"s1\">…</span></p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:9;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:88:\"<p class=\"p1\"><span class=\"s1\">Je ne veux plus jamais refaire du Kubernetes !</span></p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '17', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1606915383', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:10:\"Rechercher\";}i:4;a:1:{s:5:\"title\";s:10:\"Rechercher\";}}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:1:{i:0;s:6:\"text-9\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1591366995;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591406595;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591449794;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591449808;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591449809;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'nonce_key', '%cSR]BXO6X5)6N<f]LojtNTL.T`ZI;Zv`(Oj:jrYwkVh8b6};7,{6x+jQ5uY?q}}', 'no'),
(112, 'nonce_salt', ')w%M1YzKz9:b,qdw7I<h@NP<5+yru`+bf52Q9t2_@-{&.!2|E)jh)w-t&Y{AUOXG', 'no'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'recovery_keys', 'a:0:{}', 'yes'),
(121, '_site_transient_timeout_theme_roots', '1591365196', 'no'),
(122, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(126, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1591363398;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-03 10:50:24\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(127, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591363399;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(128, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1591363399;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-04-27 10:03:32\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(129, 'logged_in_key', 'xo5* d!h`gCuUCc_%:rhvG;4MNa{1$Dg6usD=KQ>ycBS#<]rnqh(J~6z&QDDY2FQ', 'no'),
(130, 'logged_in_salt', 'J#{&469I^|*FN@78FSV|6I<vx0K[znR(TsG#Prpt$!l0dNx&Y,<JoFoNI~(%`N[t', 'no'),
(131, 'auth_key', '!{ACOU$l9X[I!*_!72|fA;TJ74xPcWc-Y9yZ/uT<$=j~$&F^(T;k@p{(O6d[=UPs', 'no'),
(132, 'auth_salt', '<^f0`;02o:TMN+~^5Po9<W+fr2uPPtU?T2u4RTZF)zWYSM[4AIg@Poi4[[?7ku3N', 'no'),
(133, '_site_transient_timeout_browser_c4b9e4a3b1540b52020de74204c6cf00', '1591968208', 'no'),
(134, '_site_transient_browser_c4b9e4a3b1540b52020de74204c6cf00', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"83.0.4103.61\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(135, '_site_transient_timeout_php_check_a272e9aeefb1e80afc3fe92a60810998', '1591968208', 'no'),
(136, '_site_transient_php_check_a272e9aeefb1e80afc3fe92a60810998', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(138, '_site_transient_timeout_community-events-a88992eafe48f70749e524e083590722', '1591406611', 'no'),
(139, '_site_transient_community-events-a88992eafe48f70749e524e083590722', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"192.168.99.0\";}s:6:\"events\";a:2:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:30:\"WordCamp Turin (Torino), Italy\";s:3:\"url\";s:33:\"https://2020.torino.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-09-11 00:00:00\";s:8:\"end_date\";s:19:\"2020-09-12 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Turin, Italy\";s:7:\"country\";s:2:\"IT\";s:8:\"latitude\";d:45.0501866;s:9:\"longitude\";d:7.6688509;}}i:1;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Genève\";s:3:\"url\";s:33:\"https://2020.geneve.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-10-10 08:15:00\";s:8:\"end_date\";s:19:\"2020-10-10 08:15:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Genève, Suisse\";s:7:\"country\";s:2:\"CH\";s:8:\"latitude\";d:46.2204608;s:9:\"longitude\";d:6.0986829;}}}}', 'no'),
(140, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1591406611', 'no'),
(141, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li>Une erreur est survenue, le flux est probablement indisponible. Veuillez réessayer plus tard.</li></ul></div><div class=\"rss-widget\"><ul><li>Une erreur est survenue, le flux est probablement indisponible. Veuillez réessayer plus tard.</li></ul></div>', 'no'),
(142, 'can_compress_scripts', '0', 'no'),
(143, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1591363423;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(144, 'current_theme', 'Twenty Seventeen', 'yes'),
(145, 'theme_mods_twentyseventeen', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:7:\"panel_1\";i:2;s:7:\"panel_2\";i:0;s:7:\"panel_3\";i:0;s:7:\"panel_4\";i:0;s:11:\"colorscheme\";s:4:\"dark\";}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(151, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(154, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/06/espresso.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2020/06/espresso.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"espresso-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentyseventeen'),
(6, 5, '_customize_draft_post_name', 'expresso'),
(7, 6, '_wp_attached_file', '2020/06/sandwich.jpg'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2020/06/sandwich.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"sandwich-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 6, '_starter_content_theme', 'twentyseventeen'),
(10, 6, '_customize_draft_post_name', 'sandwich'),
(11, 7, '_wp_attached_file', '2020/06/coffee.jpg'),
(12, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2020/06/coffee.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"coffee-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 7, '_starter_content_theme', 'twentyseventeen'),
(14, 7, '_customize_draft_post_name', 'cafe'),
(15, 8, '_customize_draft_post_name', 'accueil'),
(16, 8, '_customize_changeset_uuid', '6f83a8a5-d803-4164-be21-c2ba7d1bf39d'),
(17, 9, '_thumbnail_id', '6'),
(18, 9, '_customize_draft_post_name', 'a-propos-de'),
(19, 9, '_customize_changeset_uuid', '6f83a8a5-d803-4164-be21-c2ba7d1bf39d'),
(20, 10, '_thumbnail_id', '5'),
(21, 10, '_customize_draft_post_name', 'contact'),
(22, 10, '_customize_changeset_uuid', '6f83a8a5-d803-4164-be21-c2ba7d1bf39d'),
(23, 11, '_thumbnail_id', '7'),
(24, 11, '_customize_draft_post_name', 'blog'),
(25, 11, '_customize_changeset_uuid', '6f83a8a5-d803-4164-be21-c2ba7d1bf39d'),
(26, 12, '_thumbnail_id', '5'),
(27, 12, '_customize_draft_post_name', 'une-section-de-page-daccueil'),
(28, 12, '_customize_changeset_uuid', '6f83a8a5-d803-4164-be21-c2ba7d1bf39d'),
(29, 14, '_wp_attached_file', '2020/06/espresso-1.jpg'),
(30, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2020/06/espresso-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"espresso-1-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 14, '_starter_content_theme', 'twentyseventeen'),
(33, 15, '_wp_attached_file', '2020/06/sandwich-1.jpg'),
(34, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2020/06/sandwich-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"sandwich-1-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 15, '_starter_content_theme', 'twentyseventeen'),
(37, 16, '_wp_attached_file', '2020/06/coffee-1.jpg'),
(38, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2020/06/coffee-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"coffee-1-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 16, '_starter_content_theme', 'twentyseventeen'),
(42, 17, '_customize_changeset_uuid', 'eef4807b-7107-4542-9bef-88ed589762ac'),
(43, 18, '_thumbnail_id', '15'),
(45, 18, '_customize_changeset_uuid', 'eef4807b-7107-4542-9bef-88ed589762ac'),
(46, 19, '_thumbnail_id', '14'),
(48, 19, '_customize_changeset_uuid', 'eef4807b-7107-4542-9bef-88ed589762ac'),
(49, 20, '_thumbnail_id', '16'),
(51, 20, '_customize_changeset_uuid', 'eef4807b-7107-4542-9bef-88ed589762ac'),
(52, 21, '_thumbnail_id', '14'),
(54, 21, '_customize_changeset_uuid', 'eef4807b-7107-4542-9bef-88ed589762ac'),
(55, 22, '_edit_lock', '1591363617:1'),
(128, 22, '_wp_trash_meta_status', 'publish'),
(129, 22, '_wp_trash_meta_time', '1591363644'),
(130, 2, '_edit_lock', '1591363791:1'),
(131, 2, '_edit_last', '1'),
(132, 21, '_wp_trash_meta_status', 'publish'),
(133, 21, '_wp_trash_meta_time', '1591363803'),
(134, 21, '_wp_desired_post_slug', 'une-section-de-page-daccueil'),
(135, 3, '_wp_trash_meta_status', 'draft'),
(136, 3, '_wp_trash_meta_time', '1591363806'),
(137, 3, '_wp_desired_post_slug', 'politique-de-confidentialite'),
(138, 19, '_wp_trash_meta_status', 'publish'),
(139, 19, '_wp_trash_meta_time', '1591363807'),
(140, 19, '_wp_desired_post_slug', 'contact'),
(141, 20, '_wp_trash_meta_status', 'publish'),
(142, 20, '_wp_trash_meta_time', '1591363810'),
(143, 20, '_wp_desired_post_slug', 'blog'),
(144, 17, '_edit_lock', '1591364603:1'),
(145, 41, '_edit_lock', '1591364017:1'),
(146, 43, '_edit_lock', '1591364094:1'),
(147, 45, '_edit_lock', '1591364266:1'),
(148, 47, '_edit_lock', '1591364415:1'),
(149, 49, '_edit_lock', '1591364477:1'),
(150, 51, '_menu_item_type', 'post_type'),
(151, 51, '_menu_item_menu_item_parent', '0'),
(152, 51, '_menu_item_object_id', '49'),
(153, 51, '_menu_item_object', 'page'),
(154, 51, '_menu_item_target', ''),
(155, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(156, 51, '_menu_item_xfn', ''),
(157, 51, '_menu_item_url', ''),
(159, 52, '_menu_item_type', 'post_type'),
(160, 52, '_menu_item_menu_item_parent', '0'),
(161, 52, '_menu_item_object_id', '47'),
(162, 52, '_menu_item_object', 'page'),
(163, 52, '_menu_item_target', ''),
(164, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(165, 52, '_menu_item_xfn', ''),
(166, 52, '_menu_item_url', ''),
(168, 53, '_menu_item_type', 'post_type'),
(169, 53, '_menu_item_menu_item_parent', '0'),
(170, 53, '_menu_item_object_id', '45'),
(171, 53, '_menu_item_object', 'page'),
(172, 53, '_menu_item_target', ''),
(173, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(174, 53, '_menu_item_xfn', ''),
(175, 53, '_menu_item_url', ''),
(177, 54, '_menu_item_type', 'post_type'),
(178, 54, '_menu_item_menu_item_parent', '0'),
(179, 54, '_menu_item_object_id', '43'),
(180, 54, '_menu_item_object', 'page'),
(181, 54, '_menu_item_target', ''),
(182, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(183, 54, '_menu_item_xfn', ''),
(184, 54, '_menu_item_url', ''),
(186, 55, '_menu_item_type', 'post_type'),
(187, 55, '_menu_item_menu_item_parent', '0'),
(188, 55, '_menu_item_object_id', '41'),
(189, 55, '_menu_item_object', 'page'),
(190, 55, '_menu_item_target', ''),
(191, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 55, '_menu_item_xfn', ''),
(193, 55, '_menu_item_url', ''),
(195, 56, '_menu_item_type', 'post_type'),
(196, 56, '_menu_item_menu_item_parent', '0'),
(197, 56, '_menu_item_object_id', '2'),
(198, 56, '_menu_item_object', 'page'),
(199, 56, '_menu_item_target', ''),
(200, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(201, 56, '_menu_item_xfn', ''),
(202, 56, '_menu_item_url', ''),
(203, 56, '_menu_item_orphaned', '1591364695'),
(204, 18, '_wp_trash_meta_status', 'publish'),
(205, 18, '_wp_trash_meta_time', '1591364738'),
(206, 18, '_wp_desired_post_slug', 'a-propos-de'),
(207, 57, '_menu_item_type', 'post_type'),
(208, 57, '_menu_item_menu_item_parent', '0'),
(209, 57, '_menu_item_object_id', '17'),
(210, 57, '_menu_item_object', 'page'),
(211, 57, '_menu_item_target', ''),
(212, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(213, 57, '_menu_item_xfn', ''),
(214, 57, '_menu_item_url', ''),
(216, 13, '_customize_restore_dismissed', '1'),
(217, 58, '_wp_trash_meta_status', 'publish'),
(218, 58, '_wp_trash_meta_time', '1591364857');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
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
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-06-05 15:23:04', '2020-06-05 13:23:04', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2020-06-05 15:23:04', '2020-06-05 13:23:04', '', 0, 'http://ip_minikube/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-06-05 15:23:04', '2020-06-05 13:23:04', '<!-- wp:paragraph -->\n<p>Les Clusters, les Dockers et tout ce qui s’en suit sont des notions relativement complexes dont l’appréhension est souvent frustrante (ou du moins dans mon cas). Pourtant, il est possible de faire un comparatif visuel.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Imaginons une maison (un bâtiment rempli de pièces avec différents usages): il s’agira de Minikube (un cluster rempli de conteneurs avec différents usages).<br>S’il existe plusieurs maisons (d’autres clusters), il est recommandé d’avoir une mairie (kubectl – il s’agit en fait d’un outil de gestion de clusters).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Notre maison a un chemin qui mène à la porte d’entrée (respectivement Ingress et Nginx). Pour aller dans une pièce (pour accéder à un service), il faut passer par le chemin, puis par la porte d’entrée. Il est tout à fait possible de rentrer par une fenêtre (les NodePorts) mais la maison n’est alors pas très bien sécurisée. C’est pourtant ce que nous demande de faire le sujet…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Voici une vidéo et une chaine youtube pour bien débuter :<br>- <a href=\"https://www.youtube.com/watch?v=1xo-0gCVhTU\">Vidéo</a><br>- <a href=\"https://www.youtube.com/watch?v=vFfngcRPj9M&amp;list=PLn6POgpklwWqfzaosSgX2XEKpse5VY2v5&amp;index=2\">Chaine</a></p>\n<!-- /wp:paragraph -->', 'Visualisation des concepts', '', 'publish', 'closed', 'closed', '', 'page-d-exemple', '', '', '2020-06-05 15:29:51', '2020-06-05 13:29:51', '', 0, 'http://ip_minikube/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-06-05 15:23:04', '2020-06-05 13:23:04', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://ip_minikube/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'trash', 'closed', 'open', '', 'politique-de-confidentialite__trashed', '', '', '2020-06-05 15:30:06', '2020-06-05 13:30:06', '', 0, 'http://ip_minikube/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-06-05 15:23:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-05 15:23:29', '0000-00-00 00:00:00', '', 0, 'http://ip_minikube/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2020-06-05 15:23:52', '0000-00-00 00:00:00', '', 'Expresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-06-05 15:23:48', '0000-00-00 00:00:00', '', 0, 'http://ip_minikube/wordpress/wp-content/uploads/2020/06/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2020-06-05 15:23:52', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-06-05 15:23:49', '0000-00-00 00:00:00', '', 0, 'http://ip_minikube/wordpress/wp-content/uploads/2020/06/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2020-06-05 15:23:52', '0000-00-00 00:00:00', '', 'Café', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-06-05 15:23:50', '0000-00-00 00:00:00', '', 0, 'http://ip_minikube/wordpress/wp-content/uploads/2020/06/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2020-06-05 15:23:52', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.</p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-05 15:23:51', '0000-00-00 00:00:00', '', 0, 'http://ip_minikube/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-06-05 15:23:52', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.</p>\n<!-- /wp:paragraph -->', 'À propos de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-05 15:23:51', '0000-00-00 00:00:00', '', 0, 'http://ip_minikube/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-06-05 15:23:52', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-05 15:23:51', '0000-00-00 00:00:00', '', 0, 'http://ip_minikube/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-06-05 15:23:52', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-05 15:23:51', '0000-00-00 00:00:00', '', 0, 'http://ip_minikube/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-06-05 15:23:52', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.</p>\n<!-- /wp:paragraph -->', 'Une section de page d’accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-05 15:23:51', '0000-00-00 00:00:00', '', 0, 'http://ip_minikube/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-06-05 15:23:52', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4NToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMOKAlDE3aDAwCkxlcyBzYW1lZGkgZXQgZGltYW5jaGXCoDogMTFoMDAmbmRhc2g7MTVoMDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"83b1ddf8babb181b9bd879f607ff8f57\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4707fe0294068b93a243d74ce20a4f38\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d0921c59da8275106470bcb7ba8a0911\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4NToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMOKAlDE3aDAwCkxlcyBzYW1lZGkgZXQgZGltYW5jaGXCoDogMTFoMDAmbmRhc2g7MTVoMDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"83b1ddf8babb181b9bd879f607ff8f57\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d0921c59da8275106470bcb7ba8a0911\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4707fe0294068b93a243d74ce20a4f38\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://ip_minikube/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u00c0 propos de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 11,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 10,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:52\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6f83a8a5-d803-4164-be21-c2ba7d1bf39d', '', '', '2020-06-05 15:23:52', '0000-00-00 00:00:00', '', 0, 'http://ip_minikube/wordpress/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 'Expresso', '', 'inherit', 'open', 'closed', '', 'expresso', '', '', '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 0, 'http://ip_minikube/wordpress/wp-content/uploads/2020/06/espresso-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 0, 'http://ip_minikube/wordpress/wp-content/uploads/2020/06/sandwich-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 'Café', '', 'inherit', 'open', 'closed', '', 'cafe', '', '', '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 0, 'http://ip_minikube/wordpress/wp-content/uploads/2020/06/coffee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '<!-- wp:paragraph -->\n<p>Il s’agira de mettre en place un cluster, sous Minikube ; composé de containers (Nginx, WordPress, MySql, Grafana, etc.)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Image</strong> – Basée sur un Dockerfile, il s’agit d’un exécutable de création de Conteneur<br><strong>Conteneur</strong> – Application isolée, fraction d’un processus global de Cluster<br><strong>Cluster</strong> – Ensemble de Conteneur travaillant en collaboration<br><strong>Kubernetes</strong> – Gestionnaire de Cluster, équivalence de Docker au niveau Cluster<br><strong>Minikube</strong> – Outils de gestion simplifié, un seul Cluster, fraction de Kubernetes<br><strong>Manifest</strong> – Equivalent d’un Dockerfile pour un cluster, fichier .yaml, mais en mieux (ex : permet de relancer automatiquement si quelque chose échoue).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pour construire le cluster, il est donc nécessaire de créer des images (ou plutôt les Dockerfiles) propres à chaque Conteneur.</p>\n<!-- /wp:paragraph -->', 'A propos', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2020-06-05 15:31:02', '2020-06-05 13:31:02', '', 0, 'http://ip_minikube/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '<!-- wp:paragraph -->\n<p>Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.</p>\n<!-- /wp:paragraph -->', 'À propos de', '', 'trash', 'closed', 'closed', '', 'a-propos-de__trashed', '', '', '2020-06-05 15:45:38', '2020-06-05 13:45:38', '', 0, 'http://ip_minikube/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '<!-- wp:paragraph -->\n<p>C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed', '', '', '2020-06-05 15:30:07', '2020-06-05 13:30:07', '', 0, 'http://ip_minikube/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2020-06-05 15:30:10', '2020-06-05 13:30:10', '', 0, 'http://ip_minikube/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '<!-- wp:paragraph -->\n<p>C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.</p>\n<!-- /wp:paragraph -->', 'Une section de page d’accueil', '', 'trash', 'closed', 'closed', '', 'une-section-de-page-daccueil__trashed', '', '', '2020-06-05 15:30:03', '2020-06-05 13:30:03', '', 0, 'http://ip_minikube/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4NToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMOKAlDE3aDAwCkxlcyBzYW1lZGkgZXQgZGltYW5jaGXCoDogMTFoMDAmbmRhc2g7MTVoMDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"83b1ddf8babb181b9bd879f607ff8f57\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4707fe0294068b93a243d74ce20a4f38\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d0921c59da8275106470bcb7ba8a0911\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"widget_text[8]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEyOiJSw6lhbGlzYXRpb24iO3M6NDoidGV4dCI7czozMjk6IjxwIGNsYXNzPSJwMSI+PHNwYW4gY2xhc3M9InMxIj48c3Ryb25nPmpjaG90ZWwg4oCTIGpjaG90ZWw4PC9zdHJvbmc+DQo8L3NwYW4+PHNwYW4gY2xhc3M9InMxIj40MiDigJMgR2l0SHViPC9zcGFuPjwvcD4NCjxzdHJvbmc+VGhhbmtzIHRvPC9zdHJvbmc+DQo8cCBjbGFzcz0icDEiPjxzcGFuIGNsYXNzPSJzMSI+Y2JlcnRvbGxhDQo8L3NwYW4+bGxhdXJlbnQNCjxzcGFuIGNsYXNzPSJzMSI+bGxlcGFnZTwvc3Bhbj4NCjxzcGFuIGNsYXNzPSJzMSI+dGhnZXJtYWk8L3NwYW4+PHNwYW4gY2xhc3M9InMxIj4NCjwvc3Bhbj48c3BhbiBjbGFzcz0iczEiPuKApjwvc3Bhbj48L3A+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"R\\u00e9alisation\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"28fc75d4e00b473cc87cd5de168e03d8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"widget_text[9]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjg4OiI8cCBjbGFzcz0icDEiPjxzcGFuIGNsYXNzPSJzMSI+SmUgbmUgdmV1eCBwbHVzIGphbWFpcyByZWZhaXJlIGR1IEt1YmVybmV0ZXMgITwvc3Bhbj48L3A+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bb880f24a333c6c9fd3c9803efaa0ddf\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4707fe0294068b93a243d74ce20a4f38\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"value\": [\n            \"text-9\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            14,\n            15,\n            16,\n            17,\n            18,\n            19,\n            20,\n            21\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://ip_minikube/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00c0 propos de\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 20,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 19,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:27:24\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 17,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 20,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 21,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 20,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:23:55\"\n    },\n    \"blogdescription\": {\n        \"value\": \"jchotel\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:25:04\"\n    },\n    \"twentyseventeen::colorscheme\": {\n        \"value\": \"dark\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:25:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eef4807b-7107-4542-9bef-88ed589762ac', '', '', '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 0, 'http://ip_minikube/wordpress/?p=22', 0, 'customize_changeset', '', 0),
(23, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '<!-- wp:paragraph -->\n<p>Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.</p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 17, 'http://ip_minikube/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '<!-- wp:paragraph -->\n<p>Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.</p>\n<!-- /wp:paragraph -->', 'À propos de', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 18, 'http://ip_minikube/wordpress/?p=24', 0, 'revision', '', 0),
(25, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '<!-- wp:paragraph -->\n<p>C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 19, 'http://ip_minikube/wordpress/?p=25', 0, 'revision', '', 0),
(26, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 20, 'http://ip_minikube/wordpress/?p=26', 0, 'revision', '', 0),
(27, 1, '2020-06-05 15:27:24', '2020-06-05 13:27:24', '<!-- wp:paragraph -->\n<p>C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.</p>\n<!-- /wp:paragraph -->', 'Une section de page d’accueil', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-06-05 15:27:24', '2020-06-05 13:27:24', '', 21, 'http://ip_minikube/wordpress/?p=27', 0, 'revision', '', 0),
(37, 1, '2020-06-05 15:29:31', '2020-06-05 13:29:31', '<!-- wp:paragraph -->\n<p>Les Clusters, les Dockers et tout ce qui s’en suit sont des notions relativement complexes dont l’appréhension est souvent frustrante (ou du moins dans mon cas). Pourtant, il est possible de faire un comparatif visuel.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Imaginons une maison (un bâtiment rempli de pièces avec différents usages): il s’agira de Minikube (un cluster rempli de conteneurs avec différents usages).<br>S’il existe plusieurs maisons (d’autres clusters), il est recommandé d’avoir une mairie (kubectl – il s’agit en fait d’un outil de gestion de clusters).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Notre maison a un chemin qui mène à la porte d’entrée (respectivement Ingress et Nginx). Pour aller dans une pièce (pour accéder à un service), il faut passer par le chemin, puis par la porte d’entrée. Il est tout à fait possible de rentrer par une fenêtre (les NodePorts) mais la maison n’est alors pas très bien sécurisée. C’est pourtant ce que nous demande de faire le sujet…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Voici une vidéo et une chaine youtube pour bien débuter :<br>- <a href=\"https://www.youtube.com/watch?v=1xo-0gCVhTU\">Vidéo</a><br>- <a href=\"https://www.youtube.com/watch?v=vFfngcRPj9M&amp;list=PLn6POgpklwWqfzaosSgX2XEKpse5VY2v5&amp;index=2\">Chaine</a></p>\n<!-- /wp:paragraph -->', 'VISUALISATION DES CONCEPTS', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-06-05 15:29:31', '2020-06-05 13:29:31', '', 2, 'http://ip_minikube/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2020-06-05 15:29:51', '2020-06-05 13:29:51', '<!-- wp:paragraph -->\n<p>Les Clusters, les Dockers et tout ce qui s’en suit sont des notions relativement complexes dont l’appréhension est souvent frustrante (ou du moins dans mon cas). Pourtant, il est possible de faire un comparatif visuel.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Imaginons une maison (un bâtiment rempli de pièces avec différents usages): il s’agira de Minikube (un cluster rempli de conteneurs avec différents usages).<br>S’il existe plusieurs maisons (d’autres clusters), il est recommandé d’avoir une mairie (kubectl – il s’agit en fait d’un outil de gestion de clusters).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Notre maison a un chemin qui mène à la porte d’entrée (respectivement Ingress et Nginx). Pour aller dans une pièce (pour accéder à un service), il faut passer par le chemin, puis par la porte d’entrée. Il est tout à fait possible de rentrer par une fenêtre (les NodePorts) mais la maison n’est alors pas très bien sécurisée. C’est pourtant ce que nous demande de faire le sujet…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Voici une vidéo et une chaine youtube pour bien débuter :<br>- <a href=\"https://www.youtube.com/watch?v=1xo-0gCVhTU\">Vidéo</a><br>- <a href=\"https://www.youtube.com/watch?v=vFfngcRPj9M&amp;list=PLn6POgpklwWqfzaosSgX2XEKpse5VY2v5&amp;index=2\">Chaine</a></p>\n<!-- /wp:paragraph -->', 'Visualisation des concepts', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-06-05 15:29:51', '2020-06-05 13:29:51', '', 2, 'http://ip_minikube/wordpress/?p=38', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(39, 1, '2020-06-05 15:30:06', '2020-06-05 13:30:06', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://ip_minikube/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-06-05 15:30:06', '2020-06-05 13:30:06', '', 3, 'http://ip_minikube/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2020-06-05 15:31:02', '2020-06-05 13:31:02', '<!-- wp:paragraph -->\n<p>Il s’agira de mettre en place un cluster, sous Minikube ; composé de containers (Nginx, WordPress, MySql, Grafana, etc.)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Image</strong> – Basée sur un Dockerfile, il s’agit d’un exécutable de création de Conteneur<br><strong>Conteneur</strong> – Application isolée, fraction d’un processus global de Cluster<br><strong>Cluster</strong> – Ensemble de Conteneur travaillant en collaboration<br><strong>Kubernetes</strong> – Gestionnaire de Cluster, équivalence de Docker au niveau Cluster<br><strong>Minikube</strong> – Outils de gestion simplifié, un seul Cluster, fraction de Kubernetes<br><strong>Manifest</strong> – Equivalent d’un Dockerfile pour un cluster, fichier .yaml, mais en mieux (ex : permet de relancer automatiquement si quelque chose échoue).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pour construire le cluster, il est donc nécessaire de créer des images (ou plutôt les Dockerfiles) propres à chaque Conteneur.</p>\n<!-- /wp:paragraph -->', 'A propos', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-06-05 15:31:02', '2020-06-05 13:31:02', '', 17, 'http://ip_minikube/wordpress/?p=40', 0, 'revision', '', 0),
(41, 1, '2020-06-05 15:36:00', '2020-06-05 13:36:00', '<!-- wp:paragraph -->\n<p><strong>Pour installer Kubernetes</strong><br>J’ai noté ces quelques commandes à l’époque, elles ne sont peut-être pas toutes exactes.<br>– run la commande suivante pour vérifier que VMX est coloré<br>— sysctl -a | grep -E –color ‘machdep.cpu.features|VMX’<br>– installer kubectl si la commande shell n’existe pas<br>— curl -LO « https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl »<br>— chmod +x ./kubectl pour le rendre executable<br>— sudo mv ./kubectl /usr/local/bin/kubectl pour le déplacer dans les binaires<br>— kubectl version –client pour vérifier que kubectl est bien installé</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Pour installer <a href=\"https://kubernetes.io/docs/tasks/tools/install-minikube/\">Minikube</a></strong> :<br>Mes notes :<br>– curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64 \\ &amp;&amp; chmod +x minikube<br>– sudo mv minikube /usr/local/bin pour déplacer le fichier dans les binaires</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Pour installer <a href=\"https://docs.docker.com/docker-for-mac/install/\">Docker</a> :</strong><br>Il faut également installer VirtualBox, mais je n’ai rien noté sur le sujet.<br>Il est également recommandé d’installer la commande « watch« , elle permettra de lancer en continue une commande.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Commandes Utiles</strong><br><span style=\"text-decoration: underline;\">Watch</span><br>– eval $(minikube docker-env) : pour avoir accès au docker de minikube<br>– watch docker images : pour voir en continue les images dockers<br>– watch kubectl get all : pour voir en continue les pods et les infos minikube<br>– watch kubectl get all -o wide : pour avoir un complément d’infos<br><br><span style=\"text-decoration: underline;\">Minikube</span><br>– minikube version : verifier la version et l’instalattion de minikube<br>– minikube stop : arrêter minikube<br>– minikube delete : supprimer minikube<br><br><span style=\"text-decoration: underline;\">Kubectl</span><br>– kubectl get nodes : (all/deploy/service) pour avoir la ressources<br>– kubectl get pods -n kube-system : pour vérifier que ingress est installé<br>– kubectl api-ressources: pour voir toutes ressources possibles<br>– kubectl api-versions : pour voir les versions disponibles<br>– kubectl explain pod : man de la ressource<br>– kubectl create deploy deployment-mysql –image mysql : to create a deploy from image<br>– kubectl get deploy deployment-mysql -o yaml > mysql.yaml : to get the .yaml<br><br><span style=\"text-decoration: underline;\">Docker</span><br>– docker images : voir les images construite<br>– docker build -t n_img n_file : construire une image<br>– docker system prune : pour supprimer les images inutiles<br>– docker run -p 80:80 -p 443:443 n_img : pour ouvrir dans le navigateur<br>– docker run -ti n_img : pour ouvrir dans le terminal<br>– docker image rm -f n_img : pour supprimer une image<br>– docker ps : pour voir les conteneurs qui tournent et leurs id<br>– docker cp id_contener:/path/fichier ./ : copier d’un conteneur vers mon dossier<br><br><span style=\"text-decoration: underline;\">MySQL</span><br>– mysql -u root -e « command » : pour interagir avec mysql</p>\n<!-- /wp:paragraph -->', 'Installation & Commandes Utiles', '', 'publish', 'closed', 'closed', '', 'installation-commandes-utiles', '', '', '2020-06-05 15:36:00', '2020-06-05 13:36:00', '', 0, 'http://ip_minikube/wordpress/?page_id=41', 0, 'page', '', 0),
(42, 1, '2020-06-05 15:36:00', '2020-06-05 13:36:00', '<!-- wp:paragraph -->\n<p><strong>Pour installer Kubernetes</strong><br>J’ai noté ces quelques commandes à l’époque, elles ne sont peut-être pas toutes exactes.<br>– run la commande suivante pour vérifier que VMX est coloré<br>— sysctl -a | grep -E –color ‘machdep.cpu.features|VMX’<br>– installer kubectl si la commande shell n’existe pas<br>— curl -LO « https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl »<br>— chmod +x ./kubectl pour le rendre executable<br>— sudo mv ./kubectl /usr/local/bin/kubectl pour le déplacer dans les binaires<br>— kubectl version –client pour vérifier que kubectl est bien installé</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Pour installer <a href=\"https://kubernetes.io/docs/tasks/tools/install-minikube/\">Minikube</a></strong> :<br>Mes notes :<br>– curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64 \\ &amp;&amp; chmod +x minikube<br>– sudo mv minikube /usr/local/bin pour déplacer le fichier dans les binaires</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Pour installer <a href=\"https://docs.docker.com/docker-for-mac/install/\">Docker</a> :</strong><br>Il faut également installer VirtualBox, mais je n’ai rien noté sur le sujet.<br>Il est également recommandé d’installer la commande « watch« , elle permettra de lancer en continue une commande.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Commandes Utiles</strong><br><span style=\"text-decoration: underline;\">Watch</span><br>– eval $(minikube docker-env) : pour avoir accès au docker de minikube<br>– watch docker images : pour voir en continue les images dockers<br>– watch kubectl get all : pour voir en continue les pods et les infos minikube<br>– watch kubectl get all -o wide : pour avoir un complément d’infos<br><br><span style=\"text-decoration: underline;\">Minikube</span><br>– minikube version : verifier la version et l’instalattion de minikube<br>– minikube stop : arrêter minikube<br>– minikube delete : supprimer minikube<br><br><span style=\"text-decoration: underline;\">Kubectl</span><br>– kubectl get nodes : (all/deploy/service) pour avoir la ressources<br>– kubectl get pods -n kube-system : pour vérifier que ingress est installé<br>– kubectl api-ressources: pour voir toutes ressources possibles<br>– kubectl api-versions : pour voir les versions disponibles<br>– kubectl explain pod : man de la ressource<br>– kubectl create deploy deployment-mysql –image mysql : to create a deploy from image<br>– kubectl get deploy deployment-mysql -o yaml > mysql.yaml : to get the .yaml<br><br><span style=\"text-decoration: underline;\">Docker</span><br>– docker images : voir les images construite<br>– docker build -t n_img n_file : construire une image<br>– docker system prune : pour supprimer les images inutiles<br>– docker run -p 80:80 -p 443:443 n_img : pour ouvrir dans le navigateur<br>– docker run -ti n_img : pour ouvrir dans le terminal<br>– docker image rm -f n_img : pour supprimer une image<br>– docker ps : pour voir les conteneurs qui tournent et leurs id<br>– docker cp id_contener:/path/fichier ./ : copier d’un conteneur vers mon dossier<br><br><span style=\"text-decoration: underline;\">MySQL</span><br>– mysql -u root -e « command » : pour interagir avec mysql</p>\n<!-- /wp:paragraph -->', 'Installation & Commandes Utiles', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2020-06-05 15:36:00', '2020-06-05 13:36:00', '', 41, 'http://ip_minikube/wordpress/?p=42', 0, 'revision', '', 0),
(43, 1, '2020-06-05 15:37:17', '2020-06-05 13:37:17', '<!-- wp:paragraph -->\n<p><strong>Lancement de Minikube</strong><br>Au vue des nombreuses commandes bash à effectuer, il est fortement recommandé de construire un script sh de setup.<br>Pour lancer minikube il suffit d’utiliser la commande suivant « minikube start –vm-driver=virtualbox –extra-config=apiserver.service-node-port-range=1-35000« . Elle permet notamment d’agrandir la plage de NodePort. (Ce qui n’est pas très joli, mais demandé par le sujet).<br>Il faut ensuite rajouter certaines extensions en utilisant « minikube addons enable » (ingress, dashboard et metric-server).<br>Il suffira maintenant de construire les images dockers de nos services (en veillant à utiliser « eval « $(minikube docker-env) »« ) et de lancer nos déploiements.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Ingress</strong><br>Ingress nécéssite un manifeste de déploiement, il permettra d’indiquer les ports accessibles.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Premier Conteneur</strong><br>Nginx est un serveur Web au même titre que Apache.<br>J’ai pas le courage de faire le résumer de celui-ci…</p>\n<!-- /wp:paragraph -->', 'Minikube & Nginx & Ingress', '', 'publish', 'closed', 'closed', '', 'minikube-nginx-ingress', '', '', '2020-06-05 15:37:17', '2020-06-05 13:37:17', '', 0, 'http://ip_minikube/wordpress/?page_id=43', 0, 'page', '', 0),
(44, 1, '2020-06-05 15:37:17', '2020-06-05 13:37:17', '<!-- wp:paragraph -->\n<p><strong>Lancement de Minikube</strong><br>Au vue des nombreuses commandes bash à effectuer, il est fortement recommandé de construire un script sh de setup.<br>Pour lancer minikube il suffit d’utiliser la commande suivant « minikube start –vm-driver=virtualbox –extra-config=apiserver.service-node-port-range=1-35000« . Elle permet notamment d’agrandir la plage de NodePort. (Ce qui n’est pas très joli, mais demandé par le sujet).<br>Il faut ensuite rajouter certaines extensions en utilisant « minikube addons enable » (ingress, dashboard et metric-server).<br>Il suffira maintenant de construire les images dockers de nos services (en veillant à utiliser « eval « $(minikube docker-env) »« ) et de lancer nos déploiements.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Ingress</strong><br>Ingress nécéssite un manifeste de déploiement, il permettra d’indiquer les ports accessibles.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Premier Conteneur</strong><br>Nginx est un serveur Web au même titre que Apache.<br>J’ai pas le courage de faire le résumer de celui-ci…</p>\n<!-- /wp:paragraph -->', 'Minikube & Nginx & Ingress', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-06-05 15:37:17', '2020-06-05 13:37:17', '', 43, 'http://ip_minikube/wordpress/?p=44', 0, 'revision', '', 0),
(45, 1, '2020-06-05 15:39:48', '2020-06-05 13:39:48', '<!-- wp:paragraph -->\n<p>WordPress est un éditeur de site internet. Il utilise une base de donnée de type MySQL. PHPMyAdmin est simplement un éditeur de base de donnée (évite d’apprendre le langage SQL).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Le conteneur WordPress</strong><br>Un conteneur a besoin d’un modèle de fabrication, aka une image. Elle-même suit un modèle, le Dockerfile.<br>L’image doit être sous alpine.<br>Nous pouvons récupérer d’éventuelle nouvelle version en utilisant un « apk get update« .<br>WordPress nécessite le langage PHP pour être visualisé.<br><br>Finalement, il nous faut WP ! Il est possible de le télécharger et d’ajouter un .tar (<a href=\"https://fr.wordpress.org/download/\">https://fr.wordpress.org/download/</a>) à notre liste de source. Il suffira de le décompresser après l’avoir importé dans notre environnement en construction. Rangeons le dans un dossier que nous appèlerons /www. Plus tard, nous chercherons à visualiser ce dossier.<br>Parmis les fichiers présents dans le dossier wordpress, il est important de modifier wp-config.php dont un exemple nous est fourni.<br>Ligne 22 – saisir le nom de la base de donnée.<br>Ligne 25 – saisir le nom de l’administrateur.<br>Ligne 28 – saisir le mot de passe.<br>Ligne 31 – saisir ‘mysql’.<br><br>Maintenant il nous reste à exposer le port 5050. Dans un ‘entrypoint’ démarrer le service php-fpm7 et lancer le WP en utilisant la commande « php -S 0.0.0.0:5050 -t /www« . Cette commande permet également de maintenir le conteneur en vie.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Le conteneur <a href=\"https://wiki.alpinelinux.org/wiki/MariaDB\">MySQL</a> :</strong><br>– upgrade et ajouter les packages (openssh, openrc, mysql et mysql-client).<br>– le fichier de configuration ‘my.cnf’ est à placer dans le répertoir /etc/mysql<br>– il faut « openrc boot » et « rc-update add sshd..<br>La base de donnée MySQL doit être persistante, nous allons donc créer un volume « /var/lib/mysql« .<br>Après avoir exposé le port 3306, il faut ‘setup‘ et ‘start‘ mariadb dans l’entrypoint.<br>– créer une base de donnée en langage SQL en utilisant la commande « mysql -u root -e ‘CREATE DATABASE wordpress’« .<br>– de la même manière il faut créer un user avec un mot de passe (il s’agira de celui renseigné dans le fichier de configuration de WP). Lui donner les droits et ‘flush privileges’.<br>Il faudra rajouter une commande pour maintenir le conteneur en vie (un while ou un tail de /dev/null).<br>Pour vérifier que MySQL est correctement installé, il est possible de tester « mysql -u root show database » dans le terminal du conteneur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Finalement, le conteneur PHPMyAdmin</strong><br>Ici et là, 2 liens utiles ou non, je ne sais plus.<br>– upgrade et update, ajouter le langage PHP et mysql-client<br>– décompresser le fichier .tar de PHPMyAdmin dans le dossier /www/<br>– récupérer et modifier le fichier de config « config.inc.php » (je ne sais plus ce qu’il faut modifier dedans).<br>– start php-fpm7 et utiliser la même commande que pour wordpress pour lancer la visualisation du dossier /www/</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Redirections</strong><br>Une fois 3 conteneurs montés, il faut créer les redirections à nginx. Il suffit de créer un dossier pour chaque conteneur accessible (PHPMyAdmin et WordPress) et y insérer un fichier index.html comportant l’objet suivant : &lt;meta http-equiv= »refresh » content= »0; URL=/nom_conteneur »>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Manifestes</strong><br>Pour que minikube crée les conteneurs et les maintiennent en vie, il est nécessaire de créer des fichier .yaml.<br>Dans un premier il s’agira pour tous d’un Déployement et d’un Service standards. Dans le cas de MySQL, il sera nécessaire de rajouter un Volume.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Finaliser</strong><br>Une fois que les conteneurs sont accessibles, il est possible de modifier le WP (et notamment de créer les autres utilisateurs, et de récuperer le fichier .sql correspondant depuis PHPMyAdmin. Il faudra ensuite le rajouter à MySQL et importer le contenu de celui-ci dans la base après sa création.<br>Il est important de veiller à l’actualisation des adresses IP dans le fichier. Il est donc possible, de remplacer leur valeur par un mot clé et d’utiliser la fonction sed pour les remplacer par la nouvelle adresse.</p>\n<!-- /wp:paragraph -->', 'MySQL & PHPMyAdmin & Wordpress', '', 'publish', 'closed', 'closed', '', 'mysql-phpmyadmin-wordpress', '', '', '2020-06-05 15:39:48', '2020-06-05 13:39:48', '', 0, 'http://ip_minikube/wordpress/?page_id=45', 0, 'page', '', 0),
(46, 1, '2020-06-05 15:39:48', '2020-06-05 13:39:48', '<!-- wp:paragraph -->\n<p>WordPress est un éditeur de site internet. Il utilise une base de donnée de type MySQL. PHPMyAdmin est simplement un éditeur de base de donnée (évite d’apprendre le langage SQL).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Le conteneur WordPress</strong><br>Un conteneur a besoin d’un modèle de fabrication, aka une image. Elle-même suit un modèle, le Dockerfile.<br>L’image doit être sous alpine.<br>Nous pouvons récupérer d’éventuelle nouvelle version en utilisant un « apk get update« .<br>WordPress nécessite le langage PHP pour être visualisé.<br><br>Finalement, il nous faut WP ! Il est possible de le télécharger et d’ajouter un .tar (<a href=\"https://fr.wordpress.org/download/\">https://fr.wordpress.org/download/</a>) à notre liste de source. Il suffira de le décompresser après l’avoir importé dans notre environnement en construction. Rangeons le dans un dossier que nous appèlerons /www. Plus tard, nous chercherons à visualiser ce dossier.<br>Parmis les fichiers présents dans le dossier wordpress, il est important de modifier wp-config.php dont un exemple nous est fourni.<br>Ligne 22 – saisir le nom de la base de donnée.<br>Ligne 25 – saisir le nom de l’administrateur.<br>Ligne 28 – saisir le mot de passe.<br>Ligne 31 – saisir ‘mysql’.<br><br>Maintenant il nous reste à exposer le port 5050. Dans un ‘entrypoint’ démarrer le service php-fpm7 et lancer le WP en utilisant la commande « php -S 0.0.0.0:5050 -t /www« . Cette commande permet également de maintenir le conteneur en vie.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Le conteneur <a href=\"https://wiki.alpinelinux.org/wiki/MariaDB\">MySQL</a> :</strong><br>– upgrade et ajouter les packages (openssh, openrc, mysql et mysql-client).<br>– le fichier de configuration ‘my.cnf’ est à placer dans le répertoir /etc/mysql<br>– il faut « openrc boot » et « rc-update add sshd..<br>La base de donnée MySQL doit être persistante, nous allons donc créer un volume « /var/lib/mysql« .<br>Après avoir exposé le port 3306, il faut ‘setup‘ et ‘start‘ mariadb dans l’entrypoint.<br>– créer une base de donnée en langage SQL en utilisant la commande « mysql -u root -e ‘CREATE DATABASE wordpress’« .<br>– de la même manière il faut créer un user avec un mot de passe (il s’agira de celui renseigné dans le fichier de configuration de WP). Lui donner les droits et ‘flush privileges’.<br>Il faudra rajouter une commande pour maintenir le conteneur en vie (un while ou un tail de /dev/null).<br>Pour vérifier que MySQL est correctement installé, il est possible de tester « mysql -u root show database » dans le terminal du conteneur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Finalement, le conteneur PHPMyAdmin</strong><br>Ici et là, 2 liens utiles ou non, je ne sais plus.<br>– upgrade et update, ajouter le langage PHP et mysql-client<br>– décompresser le fichier .tar de PHPMyAdmin dans le dossier /www/<br>– récupérer et modifier le fichier de config « config.inc.php » (je ne sais plus ce qu’il faut modifier dedans).<br>– start php-fpm7 et utiliser la même commande que pour wordpress pour lancer la visualisation du dossier /www/</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Redirections</strong><br>Une fois 3 conteneurs montés, il faut créer les redirections à nginx. Il suffit de créer un dossier pour chaque conteneur accessible (PHPMyAdmin et WordPress) et y insérer un fichier index.html comportant l’objet suivant : &lt;meta http-equiv= »refresh » content= »0; URL=/nom_conteneur »>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Manifestes</strong><br>Pour que minikube crée les conteneurs et les maintiennent en vie, il est nécessaire de créer des fichier .yaml.<br>Dans un premier il s’agira pour tous d’un Déployement et d’un Service standards. Dans le cas de MySQL, il sera nécessaire de rajouter un Volume.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Finaliser</strong><br>Une fois que les conteneurs sont accessibles, il est possible de modifier le WP (et notamment de créer les autres utilisateurs, et de récuperer le fichier .sql correspondant depuis PHPMyAdmin. Il faudra ensuite le rajouter à MySQL et importer le contenu de celui-ci dans la base après sa création.<br>Il est important de veiller à l’actualisation des adresses IP dans le fichier. Il est donc possible, de remplacer leur valeur par un mot clé et d’utiliser la fonction sed pour les remplacer par la nouvelle adresse.</p>\n<!-- /wp:paragraph -->', 'MySQL & PHPMyAdmin & Wordpress', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2020-06-05 15:39:48', '2020-06-05 13:39:48', '', 45, 'http://ip_minikube/wordpress/?p=46', 0, 'revision', '', 0),
(47, 1, '2020-06-05 15:42:45', '2020-06-05 13:42:45', '<!-- wp:paragraph -->\n<p>Grafana est un simple outil de visualisation. Il nécessite une base de donnée, ici InfluxDB. Celle-ci doit être remplie par Telegraf, un outil de mesure pour conteneur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Grafana</strong><br>Pour Grafana, le principe est le même, un .tar à décompresser. On rajoutera également une librairie libc6.<br>Il faudra modifier le document de configuration « default.ini » :<br>– Ligne 48 : root_url = %(protocol)s://%(domain)s:%(http_port)s/grafana/<br>– Ligne 51 : serve_from_sub_path = true<br>– Ligne 77 : name = telegraf<br>– Ligne 78 : user = user1<br>– Ligne 80 : password = test123<br>Après avoir exposé le port, il faudra lancer la commande « ./grafana-server &amp;> /dev/null &amp; » depuis le dossier « grafana-7.0.0/bin« .<br><a href=\"https://grafana.com/grafana/download?platform=linux\">Lien</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>InfluxDB</strong><br>Il suffit d’ajouter InfluxDB, de boot le openrc, et d’ajouter le fichier de configuration « influxdb.conf« . Ce document étant très long, il est possible de le récupérer en utilisant la commande « docker cp id_contener:/path/fichier ./« . Il y a deux trois petites choses à modifier mais je n’ai pas noté…<br>Il faudra start influxdb et créer la base de donner avec l’utilisateur.<br>Étant une base de donnée persistante, il est également nécessaire de rajouter un volume.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Telegraf</strong><br>Nous chercherons à visualiser les données de tous les conteneurs. Il est donc nécessaire de rajouter l’outil de mesure Telegraf dans chaque conteneur. Puis de lui rajouter son fichier de configuration respectif (il suffit de modifier la ligne 15 pour chaque conteneur et de le ranger dans « /etc/telegraf.conf.d »).<br>Il faut finalement start le service telegraf.<br>Récupération de certains paramètres<br>En veillant avoir rajouter l’accès à grafana via Nginx et Ingress, il est alors possible d’accéder au logiciel et de finir les quelques derniers réglages.<br>– se connecter sur Grafana<br>– dans configuration/data sources : add influxdb<br>– URL : http://influxdb:8086, database : telegraf, User : user1, Password : test123, HTTP Method : Post<br>- Create/Import : 5955<br>– +/dashboard/new dashboard -> le dashboarb est accessible<br>– via le dashboard/pod/grafana/exec : récupérer les modifications .json</p>\n<!-- /wp:paragraph -->', 'InfluxDB & Telegraf & Grafana', '', 'publish', 'closed', 'closed', '', 'influxdb-telegraf-grafana', '', '', '2020-06-05 15:42:45', '2020-06-05 13:42:45', '', 0, 'http://ip_minikube/wordpress/?page_id=47', 0, 'page', '', 0),
(48, 1, '2020-06-05 15:42:45', '2020-06-05 13:42:45', '<!-- wp:paragraph -->\n<p>Grafana est un simple outil de visualisation. Il nécessite une base de donnée, ici InfluxDB. Celle-ci doit être remplie par Telegraf, un outil de mesure pour conteneur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Grafana</strong><br>Pour Grafana, le principe est le même, un .tar à décompresser. On rajoutera également une librairie libc6.<br>Il faudra modifier le document de configuration « default.ini » :<br>– Ligne 48 : root_url = %(protocol)s://%(domain)s:%(http_port)s/grafana/<br>– Ligne 51 : serve_from_sub_path = true<br>– Ligne 77 : name = telegraf<br>– Ligne 78 : user = user1<br>– Ligne 80 : password = test123<br>Après avoir exposé le port, il faudra lancer la commande « ./grafana-server &amp;> /dev/null &amp; » depuis le dossier « grafana-7.0.0/bin« .<br><a href=\"https://grafana.com/grafana/download?platform=linux\">Lien</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>InfluxDB</strong><br>Il suffit d’ajouter InfluxDB, de boot le openrc, et d’ajouter le fichier de configuration « influxdb.conf« . Ce document étant très long, il est possible de le récupérer en utilisant la commande « docker cp id_contener:/path/fichier ./« . Il y a deux trois petites choses à modifier mais je n’ai pas noté…<br>Il faudra start influxdb et créer la base de donner avec l’utilisateur.<br>Étant une base de donnée persistante, il est également nécessaire de rajouter un volume.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Telegraf</strong><br>Nous chercherons à visualiser les données de tous les conteneurs. Il est donc nécessaire de rajouter l’outil de mesure Telegraf dans chaque conteneur. Puis de lui rajouter son fichier de configuration respectif (il suffit de modifier la ligne 15 pour chaque conteneur et de le ranger dans « /etc/telegraf.conf.d »).<br>Il faut finalement start le service telegraf.<br>Récupération de certains paramètres<br>En veillant avoir rajouter l’accès à grafana via Nginx et Ingress, il est alors possible d’accéder au logiciel et de finir les quelques derniers réglages.<br>– se connecter sur Grafana<br>– dans configuration/data sources : add influxdb<br>– URL : http://influxdb:8086, database : telegraf, User : user1, Password : test123, HTTP Method : Post<br>- Create/Import : 5955<br>– +/dashboard/new dashboard -> le dashboarb est accessible<br>– via le dashboard/pod/grafana/exec : récupérer les modifications .json</p>\n<!-- /wp:paragraph -->', 'InfluxDB & Telegraf & Grafana', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-06-05 15:42:45', '2020-06-05 13:42:45', '', 47, 'http://ip_minikube/wordpress/?p=48', 0, 'revision', '', 0),
(49, 1, '2020-06-05 15:43:40', '2020-06-05 13:43:40', '<!-- wp:paragraph -->\n<p>FTPS est un système de transfert de fichier.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Liveness et Services</strong><br>Si un service crash cela ne signifie pas que le conteneur crash, pourtant les .yaml ne réactive ceux-ci que dans cette situation précise. Nous allons donc, faire en sorte de les éteindre nous même. Pour se faire nous passerons en « fond » les commandes qui permettait de les maintenir en vie. Nous rajouterons une boucle while pour vérifier le status de nos services.<br>Liveness sera à rajouter dans les .yaml, ils permettront de redémarrer dans certains autres cas de figures.</p>\n<!-- /wp:paragraph -->', 'FTPS & Liveness et Services', '', 'publish', 'closed', 'closed', '', 'ftps-liveness-et-services', '', '', '2020-06-05 15:43:40', '2020-06-05 13:43:40', '', 0, 'http://ip_minikube/wordpress/?page_id=49', 0, 'page', '', 0),
(50, 1, '2020-06-05 15:43:40', '2020-06-05 13:43:40', '<!-- wp:paragraph -->\n<p>FTPS est un système de transfert de fichier.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Liveness et Services</strong><br>Si un service crash cela ne signifie pas que le conteneur crash, pourtant les .yaml ne réactive ceux-ci que dans cette situation précise. Nous allons donc, faire en sorte de les éteindre nous même. Pour se faire nous passerons en « fond » les commandes qui permettait de les maintenir en vie. Nous rajouterons une boucle while pour vérifier le status de nos services.<br>Liveness sera à rajouter dans les .yaml, ils permettront de redémarrer dans certains autres cas de figures.</p>\n<!-- /wp:paragraph -->', 'FTPS & Liveness et Services', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-06-05 15:43:40', '2020-06-05 13:43:40', '', 49, 'http://ip_minikube/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2020-06-05 15:45:22', '2020-06-05 13:45:22', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-06-05 15:46:25', '2020-06-05 13:46:25', '', 0, 'http://ip_minikube/wordpress/?p=51', 6, 'nav_menu_item', '', 0),
(52, 1, '2020-06-05 15:45:22', '2020-06-05 13:45:22', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2020-06-05 15:46:25', '2020-06-05 13:46:25', '', 0, 'http://ip_minikube/wordpress/?p=52', 5, 'nav_menu_item', '', 0),
(53, 1, '2020-06-05 15:45:22', '2020-06-05 13:45:22', '', 'MySQL & PHPMyAdmin & WordPress', '', 'publish', 'closed', 'closed', '', 'mysql-phpmyadmin-wordpress', '', '', '2020-06-05 15:46:24', '2020-06-05 13:46:24', '', 0, 'http://ip_minikube/wordpress/?p=53', 4, 'nav_menu_item', '', 0),
(54, 1, '2020-06-05 15:45:21', '2020-06-05 13:45:21', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2020-06-05 15:46:24', '2020-06-05 13:46:24', '', 0, 'http://ip_minikube/wordpress/?p=54', 3, 'nav_menu_item', '', 0),
(55, 1, '2020-06-05 15:45:21', '2020-06-05 13:45:21', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2020-06-05 15:46:24', '2020-06-05 13:46:24', '', 0, 'http://ip_minikube/wordpress/?p=55', 2, 'nav_menu_item', '', 0),
(56, 1, '2020-06-05 15:44:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-06-05 15:44:55', '0000-00-00 00:00:00', '', 0, 'http://ip_minikube/wordpress/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2020-06-05 15:46:24', '2020-06-05 13:46:24', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2020-06-05 15:46:24', '2020-06-05 13:46:24', '', 0, 'http://ip_minikube/wordpress/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2020-06-05 15:47:37', '2020-06-05 13:47:37', '{\n    \"twentyseventeen::panel_1\": {\n        \"value\": \"2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:47:37\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:47:37\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:47:37\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-05 13:47:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5a2948f3-b73d-4c7b-810c-8e589b2fec15', '', '', '2020-06-05 15:47:37', '2020-06-05 13:47:37', '', 0, 'http://ip_minikube/wordpress/?p=58', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu supérieur', 'menu-superieur', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(51, 2, 0),
(52, 2, 0),
(53, 2, 0),
(54, 2, 0),
(55, 2, 0),
(57, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
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
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'user1'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"d605c55d2ec7c39000b2305025b520d7047ca9ae798aca8e95232b43b10ac20f\";a:4:{s:10:\"expiration\";i:1591536208;s:2:\"ip\";s:10:\"172.17.0.5\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";s:5:\"login\";i:1591363408;}}'),
(17, 1, 'wp_user-settings', 'editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1591363403'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"192.168.99.0\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(24, 2, 'nickname', 'user2'),
(25, 2, 'first_name', ''),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(36, 2, 'wp_user_level', '0'),
(37, 2, 'dismissed_wp_pointers', ''),
(38, 3, 'nickname', 'user3'),
(39, 3, 'first_name', ''),
(40, 3, 'last_name', ''),
(41, 3, 'description', ''),
(42, 3, 'rich_editing', 'true'),
(43, 3, 'syntax_highlighting', 'true'),
(44, 3, 'comment_shortcuts', 'false'),
(45, 3, 'admin_color', 'fresh'),
(46, 3, 'use_ssl', '0'),
(47, 3, 'show_admin_bar_front', 'true'),
(48, 3, 'locale', ''),
(49, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(50, 3, 'wp_user_level', '0'),
(51, 3, 'dismissed_wp_pointers', ''),
(52, 4, 'nickname', 'user4'),
(53, 4, 'first_name', ''),
(54, 4, 'last_name', ''),
(55, 4, 'description', ''),
(56, 4, 'rich_editing', 'true'),
(57, 4, 'syntax_highlighting', 'true'),
(58, 4, 'comment_shortcuts', 'false'),
(59, 4, 'admin_color', 'fresh'),
(60, 4, 'use_ssl', '0'),
(61, 4, 'show_admin_bar_front', 'true'),
(62, 4, 'locale', ''),
(63, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(64, 4, 'wp_user_level', '0'),
(65, 4, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
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
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'user1', '$P$Bem5IRpiW5lw3ZaK.rj5o82dHGXont0', 'user1', 'test1@gmail.com', 'http://ip_minikube/wordpress', '2020-06-05 13:23:04', '', 0, 'user1'),
(2, 'user2', '$P$BI7agltjRgWEsVH580cRlx5QWsqDbw.', 'user2', 'test2@gmail.com', '', '2020-06-05 13:48:56', '1591364936:$P$BqGYFHdGS85wjZJz/7yjyfVMj8IpGx/', 0, 'user2'),
(3, 'user3', '$P$BKcfLC2HcO7wACB5tnY.AgV67.wOnQ/', 'user3', 'test3@gmail.com', '', '2020-06-05 13:49:05', '1591364945:$P$BXhGNoBQ0giQ72Ol/B/XwwNttLGfkP1', 0, 'user3'),
(4, 'user4', '$P$BYuBUuITGKGAAw7zpKe9MjbFh8F/ty0', 'user4', 'test4@gmail.com', '', '2020-06-05 13:49:13', '1591364953:$P$BmsYV8zVA6mNHPSXl.pgl7uMkwjp8f/', 0, 'user4');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
