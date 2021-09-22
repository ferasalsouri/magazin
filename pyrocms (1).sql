-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2017 at 09:37 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pyrocms`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `name`, `reference`, `domain`, `enabled`) VALUES
(1, 'Default', 'default', 'localhost:8000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `applications_domains`
--

CREATE TABLE `applications_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_addons_extensions`
--

CREATE TABLE `default_addons_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_addons_extensions`
--

INSERT INTO `default_addons_extensions` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.extension.default_authenticator', 1, 1),
(2, 'anomaly.extension.default_page_handler', 1, 1),
(3, 'anomaly.extension.local_storage_adapter', 1, 1),
(4, 'anomaly.extension.page_link_type', 1, 1),
(5, 'anomaly.extension.robots', 1, 1),
(6, 'anomaly.extension.sitemap', 1, 1),
(7, 'anomaly.extension.throttle_security_check', 1, 1),
(8, 'anomaly.extension.url_link_type', 1, 1),
(9, 'anomaly.extension.user_security_check', 1, 1),
(10, 'anomaly.extension.xml_feed_widget', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `default_addons_modules`
--

CREATE TABLE `default_addons_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_addons_modules`
--

INSERT INTO `default_addons_modules` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.module.addons', 1, 1),
(2, 'anomaly.module.configuration', 1, 1),
(3, 'anomaly.module.dashboard', 1, 1),
(4, 'anomaly.module.files', 1, 1),
(5, 'anomaly.module.navigation', 1, 1),
(6, 'anomaly.module.pages', 1, 1),
(7, 'anomaly.module.posts', 1, 1),
(8, 'anomaly.module.preferences', 1, 1),
(9, 'anomaly.module.redirects', 1, 1),
(10, 'anomaly.module.repeaters', 1, 1),
(11, 'anomaly.module.settings', 1, 1),
(12, 'anomaly.module.users', 1, 1),
(13, 'anomaly.module.variables', 1, 1),
(14, 'anomaly.module.videos', 1, 1),
(15, 'anomaly.module.website', 0, 0),
(16, 'anomaly.module.website_setting', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `default_configuration_configuration`
--

CREATE TABLE `default_configuration_configuration` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_configuration_configuration`
--

INSERT INTO `default_configuration_configuration` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `scope`, `key`, `value`) VALUES
(1, 1, '2017-02-16 15:08:16', NULL, NULL, NULL, '1', 'anomaly.extension.xml_feed_widget::url', 'http://www.pyrocms.com/posts/rss.xml');

-- --------------------------------------------------------

--
-- Table structure for table `default_dashboard_dashboards`
--

CREATE TABLE `default_dashboard_dashboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_dashboard_dashboards`
--

INSERT INTO `default_dashboard_dashboards` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`, `layout`) VALUES
(1, 1, '2017-02-16 15:08:16', NULL, NULL, NULL, 'welcome', '24');

-- --------------------------------------------------------

--
-- Table structure for table `default_dashboard_dashboards_allowed_roles`
--

CREATE TABLE `default_dashboard_dashboards_allowed_roles` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_dashboard_dashboards_translations`
--

CREATE TABLE `default_dashboard_dashboards_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_dashboard_dashboards_translations`
--

INSERT INTO `default_dashboard_dashboards_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-02-16 15:08:16', NULL, '2017-02-16 15:08:16', NULL, 'en', 'Welcome', 'This is the default dashboard for PyroCMS.');

-- --------------------------------------------------------

--
-- Table structure for table `default_dashboard_widgets`
--

CREATE TABLE `default_dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column` int(11) NOT NULL DEFAULT '1',
  `dashboard_id` int(11) NOT NULL,
  `pinned` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_dashboard_widgets`
--

INSERT INTO `default_dashboard_widgets` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `extension`, `column`, `dashboard_id`, `pinned`) VALUES
(1, 1, '2017-02-16 15:08:16', NULL, NULL, NULL, 'anomaly.extension.xml_feed_widget', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `default_dashboard_widgets_allowed_roles`
--

CREATE TABLE `default_dashboard_widgets_allowed_roles` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_dashboard_widgets_translations`
--

CREATE TABLE `default_dashboard_widgets_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_dashboard_widgets_translations`
--

INSERT INTO `default_dashboard_widgets_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2017-02-16 15:08:16', NULL, '2017-02-16 15:08:16', NULL, 'en', 'Recent News', 'Recent news from http://pyrocms.com/');

-- --------------------------------------------------------

--
-- Table structure for table `default_failed_jobs`
--

CREATE TABLE `default_failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_files_disks`
--

CREATE TABLE `default_files_disks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adapter` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_files_disks`
--

INSERT INTO `default_files_disks` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`, `adapter`) VALUES
(1, 1, '2017-02-16 15:08:16', NULL, NULL, NULL, 'local', 'anomaly.extension.local_storage_adapter');

-- --------------------------------------------------------

--
-- Table structure for table `default_files_disks_translations`
--

CREATE TABLE `default_files_disks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_files_disks_translations`
--

INSERT INTO `default_files_disks_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-02-16 15:08:16', NULL, '2017-02-16 15:08:16', NULL, 'en', 'Local', 'A local (public) storage disk.');

-- --------------------------------------------------------

--
-- Table structure for table `default_files_documents`
--

CREATE TABLE `default_files_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_files_documents_translations`
--

CREATE TABLE `default_files_documents_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_files_files`
--

CREATE TABLE `default_files_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_files_files`
--

INSERT INTO `default_files_files` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `name`, `disk_id`, `folder_id`, `extension`, `size`, `mime_type`, `entry_id`, `entry_type`, `keywords`, `height`, `width`) VALUES
(1, 1, '2017-02-17 10:50:14', 1, '2017-02-17 10:50:14', 1, NULL, 'photodune-2043745-college-student-s-225x136.jpg', 1, 1, 'jpg', 13338, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '136', '225'),
(2, 2, '2017-02-17 13:56:00', 1, '2017-02-17 13:56:00', 1, NULL, 'photodune-2043745-college-student-s-770x364.jpg', 1, 1, 'jpg', 70480, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '364', '770'),
(3, 3, '2017-02-26 21:04:03', 1, '2017-02-26 21:04:04', 1, NULL, 'Hydrangeas.jpg', 1, 1, 'jpg', 595284, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '768', '1024'),
(4, 4, '2017-02-28 12:10:50', 1, '2017-02-28 12:10:50', 1, NULL, 'shift-logo1.jpg', 1, 1, 'jpg', 96254, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '249', '940'),
(5, 5, '2017-03-07 16:00:29', 1, '2017-03-11 10:22:49', 1, NULL, 'logo.png', 1, 1, 'png', 3907, 'image/png', 1, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', 'a:0:{}', '20', '113');

-- --------------------------------------------------------

--
-- Table structure for table `default_files_folders`
--

CREATE TABLE `default_files_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `disk_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_types` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_files_folders`
--

INSERT INTO `default_files_folders` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `disk_id`, `slug`, `allowed_types`) VALUES
(1, 1, '2017-02-16 15:08:17', NULL, NULL, NULL, NULL, 1, 'images', 'a:3:{i:0;s:3:"png";i:1;s:4:"jpeg";i:2;s:3:"jpg";}'),
(2, 2, '2017-02-16 15:08:17', NULL, NULL, NULL, NULL, 1, 'documents', 'a:2:{i:0;s:3:"pdf";i:1;s:4:"docx";}');

-- --------------------------------------------------------

--
-- Table structure for table `default_files_folders_translations`
--

CREATE TABLE `default_files_folders_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_files_folders_translations`
--

INSERT INTO `default_files_folders_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-02-16 15:08:17', NULL, '2017-02-16 15:08:17', NULL, 'en', 'Images', 'A folder for images.'),
(2, 2, '2017-02-16 15:08:17', NULL, '2017-02-16 15:08:17', NULL, 'en', 'Documents', 'A folder for documents.');

-- --------------------------------------------------------

--
-- Table structure for table `default_files_images`
--

CREATE TABLE `default_files_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_files_images`
--

INSERT INTO `default_files_images` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2017-03-11 10:22:49', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_files_images_translations`
--

CREATE TABLE `default_files_images_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_files_images_translations`
--

INSERT INTO `default_files_images_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2017-03-11 10:22:49', NULL, '2017-03-11 10:22:49', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `default_jobs`
--

CREATE TABLE `default_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_migrations`
--

CREATE TABLE `default_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_migrations`
--

INSERT INTO `default_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2015_03_15_171506_create_jobs_table', 1),
(2, '2015_03_15_171507_create_failed_jobs_table', 1),
(3, '2015_03_15_171508_create_sessions_table', 1),
(4, '2015_03_15_171620_create_streams_tables', 1),
(5, '2015_03_15_171646_create_fields_tables', 1),
(6, '2015_03_15_171720_create_assignments_tables', 1),
(7, '2015_03_15_171838_create_modules_table', 1),
(8, '2015_03_15_171926_create_extensions_table', 1),
(9, '2016_08_30_185635_create_notifications_table', 1),
(10, '2016_09_02_164448_add_searchable_column_to_streams', 1),
(11, '2016_11_11_154228_append_id_to_user_meta_columns', 1),
(12, '2015_03_25_091755_anomaly.module.configuration__create_configuration_fields', 2),
(13, '2015_03_25_091845_anomaly.module.configuration__create_configuration_stream', 2),
(14, '2015_11_01_164326_anomaly.module.dashboard__create_dashboard_fields', 3),
(15, '2015_11_01_170645_anomaly.module.dashboard__create_dashboards_stream', 3),
(16, '2015_11_01_170650_anomaly.module.dashboard__create_widgets_stream', 3),
(17, '2015_03_05_021725_anomaly.module.files__create_files_fields', 4),
(18, '2015_03_05_022227_anomaly.module.files__create_disks_stream', 4),
(19, '2015_06_09_031343_anomaly.module.files__create_folders_stream', 4),
(20, '2015_06_09_031351_anomaly.module.files__create_files_stream', 4),
(21, '2016_08_29_151020_anomaly.module.files__remove_required_from_entry_assignment', 4),
(22, '2016_09_02_175659_anomaly.module.files__make_files_searchable', 4),
(23, '2016_10_05_221741_anomaly.module.files__make_disks_sortable', 4),
(24, '2015_05_21_061832_anomaly.module.navigation__create_navigation_fields', 5),
(25, '2015_05_21_062115_anomaly.module.navigation__create_menus_stream', 5),
(26, '2015_05_21_064952_anomaly.module.navigation__create_links_stream', 5),
(27, '2015_03_20_171947_anomaly.module.pages__create_pages_fields', 6),
(28, '2015_03_20_171955_anomaly.module.pages__create_pages_stream', 6),
(29, '2015_04_22_150211_anomaly.module.pages__create_types_stream', 6),
(30, '2016_09_02_175135_anomaly.module.pages__make_pages_searchable', 6),
(31, '2015_03_20_184103_anomaly.module.posts__create_posts_fields', 7),
(32, '2015_03_20_184141_anomaly.module.posts__create_categories_stream', 7),
(33, '2015_03_20_184148_anomaly.module.posts__create_posts_stream', 7),
(34, '2015_05_16_050818_anomaly.module.posts__create_types_stream', 7),
(35, '2016_09_02_175531_anomaly.module.posts__make_posts_searchable', 7),
(36, '2015_02_27_101227_anomaly.module.preferences__create_preferences_fields', 8),
(37, '2015_02_27_101300_anomaly.module.preferences__create_preferences_streams', 8),
(38, '2016_11_16_151654_anomaly.module.preferences__update_user_related_config', 8),
(39, '2015_03_21_153325_anomaly.module.redirects__create_redirects_fields', 9),
(40, '2015_03_21_153326_anomaly.module.redirects__create_redirects_stream', 9),
(41, '2015_02_27_101410_anomaly.module.settings__create_settings_fields', 10),
(42, '2015_02_27_101510_anomaly.module.settings__create_settings_stream', 10),
(43, '2015_02_27_101816_anomaly.module.users__create_users_fields', 11),
(44, '2015_02_27_101851_anomaly.module.users__create_users_stream', 11),
(45, '2015_02_27_101940_anomaly.module.users__create_roles_stream', 11),
(46, '2016_09_02_175848_anomaly.module.users__make_users_searchable', 11),
(47, '2015_06_02_170526_anomaly.extension.page_link_type__create_page_link_type_fields', 12),
(48, '2015_06_02_170542_anomaly.extension.page_link_type__create_page_links_stream', 12),
(49, '2015_05_24_201105_anomaly.extension.url_link_type__create_url_link_type_fields', 13),
(50, '2015_05_24_201134_anomaly.extension.url_link_type__create_links_stream', 13),
(67, '2017_02_21_102410_anomaly.module.videos__create_videos_fields', 16),
(73, '2017_03_05_151445_anomaly.module.videos__create_videos_fields', 17),
(74, '2017_03_05_151530_anomaly.module.videos__create_videos_stream', 17),
(75, '2017_03_05_151615_anomaly.module.videos__create_series_stream', 17),
(76, '2017_03_05_151628_anomaly.module.videos__create_categories_stream', 17),
(68, '2017_02_21_111124_anomaly.module.videos__create_videos_stream', 16),
(188, '2017_03_07_134248_anomaly.module.website_setting__create_website_setting_fields', 19),
(98, '2017_03_07_140033_anomaly.module.website_setting__create_website_setting_stream', 18),
(189, '2017_03_09_134136_anomaly.module.website_setting__create_Logo_stream', 19),
(190, '2017_03_09_134335_anomaly.module.website_setting__create_SocialNetwork_stream', 19),
(191, '2017_03_09_134350_anomaly.module.website_setting__create_Contact_stream', 19),
(192, '2017_03_09_150752_anomaly.module.website_setting__create_Map_stream', 19);

-- --------------------------------------------------------

--
-- Table structure for table `default_navigation_links`
--

CREATE TABLE `default_navigation_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_navigation_links`
--

INSERT INTO `default_navigation_links` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `menu_id`, `type`, `entry_id`, `entry_type`, `target`, `class`, `parent_id`) VALUES
(1, 1, '2017-02-16 15:08:18', NULL, '2017-02-16 15:43:57', 1, NULL, 1, 'anomaly.extension.url_link_type', 1, 'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel', '_blank', NULL, NULL),
(3, 2, '2017-02-16 15:48:28', 1, NULL, NULL, NULL, 1, 'anomaly.extension.page_link_type', 1, 'Anomaly\\PageLinkTypeExtension\\PageLinkTypeModel', '_self', NULL, NULL),
(4, 3, '2017-02-16 15:49:12', 1, NULL, NULL, NULL, 1, 'anomaly.extension.page_link_type', 2, 'Anomaly\\PageLinkTypeExtension\\PageLinkTypeModel', '_self', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_navigation_links_allowed_roles`
--

CREATE TABLE `default_navigation_links_allowed_roles` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_navigation_menus`
--

CREATE TABLE `default_navigation_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_navigation_menus`
--

INSERT INTO `default_navigation_menus` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2017-02-16 15:08:18', NULL, NULL, NULL, NULL, 'footer');

-- --------------------------------------------------------

--
-- Table structure for table `default_navigation_menus_translations`
--

CREATE TABLE `default_navigation_menus_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_navigation_menus_translations`
--

INSERT INTO `default_navigation_menus_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-02-16 15:08:18', NULL, '2017-02-16 15:08:18', NULL, 'en', 'Footer', 'This is the footer.');

-- --------------------------------------------------------

--
-- Table structure for table `default_notifications`
--

CREATE TABLE `default_notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_pages_default_pages`
--

CREATE TABLE `default_pages_default_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_pages_default_pages`
--

INSERT INTO `default_pages_default_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2017-02-16 15:08:20', NULL, '2017-02-28 12:33:30', 1, '2017-03-09 13:22:24'),
(2, 2, '2017-02-16 15:08:20', NULL, NULL, NULL, '2017-03-09 16:18:00'),
(3, 3, '2017-02-16 15:30:03', 1, NULL, NULL, '2017-02-17 13:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `default_pages_default_pages_translations`
--

CREATE TABLE `default_pages_default_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `html_content` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_pages_default_pages_translations`
--

INSERT INTO `default_pages_default_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`, `html_content`) VALUES
(1, 1, '2017-02-16 15:08:20', NULL, '2017-03-09 13:16:27', 1, 'en', NULL, NULL),
(2, 2, '2017-02-16 15:08:20', NULL, '2017-02-27 16:45:07', 1, 'en', '<article id="post-206" class="post-206 page type-page status-publish hentry instock">\r\n<header class="entry-header"><h1 class="entry-title">Contact Us</h1></header>\r\n{%  set form = form(\'contact\')\r\n.fields({\r\n    \'email\': {\r\n        \'placeholder\': \'What is your email?\',\r\n        \'type\': \'anomaly.field_type.email\',\r\n        \'id\':\'cf_email\',\r\n        \'class\':\'-\',\r\n        \'required\': true\r\n    },\r\n  \'name\': {\r\n      \'placeholder\': \'What is your name?\',\r\n      \'type\': \'anomaly.field_type.text\',\r\n         \'id\':\'cf_name\',\r\n         \'class\':\'-\',\r\n        \'required\': true\r\n     },\r\n    \'website\': {\r\n      \'placeholder\': \'What is your website?\',\r\n      \'type\': \'anomaly.field_type.text\',\r\n         \'id\':\'cf_name\',\r\n         \'class\':\'-\',\r\n        \'required\': true\r\n     },\r\n    \'comment\': {\r\n        \'placeholder\': \'What would you like to talk about?\',\r\n        \'type\': \'anomaly.field_type.textarea\',\r\n         \'id\':\'cf_message\',\r\n         \'class\':\'-\',\r\n        \'required\': true\r\n    }\r\n})\r\n.to(\'example@domain.com\').columns({\'class\':\'contact-form\'})\r\n.from(\'{email}\').get %}\r\n{{ form.open|raw }}\r\n<div class="cform email">\r\n    {{ form.fields.email.input|raw }}\r\n</div>\r\n<div class="cform name">\r\n    {{ form.fields.name.input|raw }}\r\n</div>\r\n<div class="cform website">\r\n    {{ form.fields.website.input|raw }}\r\n</div>\r\n<div class="clearfix"></div>\r\n<div>\r\n    {{ form.fields.comment.input|raw }}\r\n</div>\r\n{{ form.actions|raw }}\r\n{{ form.close|raw }}</article>\r\n<article id="post-206" class="post-206 page type-page status-publish hentry instock"><br>\r\n </article>', NULL),
(3, 3, '2017-02-16 15:30:03', NULL, '2017-02-16 15:30:03', 1, 'en', '<p>This Home 1</p>', NULL),
(4, 1, '2017-03-04 15:53:40', NULL, '2017-03-04 15:59:50', 1, 'ar', '<div id="slider" class="clearfix">\r\n                     <div id="slide-left" class="flexslider span8">\r\n                         <div class="flex-viewport" style="overflow: hidden; position: relative;">\r\n                             <ul class="slides" style="width: 1200%; transition-duration: 0s; transform: translate3d(-507px, 0px, 0px);">\r\n                                 {% set posts=entries(\'posts\').get() %}\r\n                                 {% for post in posts %}\r\n                                     <li data-thumb="{{ image_url(post.b) }}" class="clone" style="width: 507px; float: left; display: block;">\r\n                                         <a href="{{ post.route(\'view\') }}" title="{{ post.title }}" rel="bookmark">\r\n                                             {{ post.b.make.fit(546, 291)|raw }}\r\n                                         </a>\r\n                                         <div class="entry">\r\n                                             <h4>{{ post.title }}</h4>\r\n                                             <p>{{substr( post.summary,0,100) }} ..</p>\r\n                                         </div>\r\n                                     </li>\r\n                                 {% endfor %}\r\n                                 {{ posts.render|raw }}\r\n                             </ul>\r\n                         </div>\r\n                       \r\n                         <ul class="flex-direction-nav">\r\n                             <li><a class="flex-prev" href="#">Previous</a>\r\n                             </li><li><a class="flex-next" href="#">Next</a>\r\n                             </li>\r\n                         </ul>\r\n                     </div>\r\n                     <div id="slide-right" class="span4">\r\n                         <h3>Most Popular News</h3>\r\n                         {% set posts=entries(\'posts\').where(\'category_id\',\'1\').get() %}\r\n                         <ul>\r\n                             {% for post in posts %}\r\n                                 <li><a href="{{ post.route(\'view\') }}" title="{{ post.title }}" rel="bookmark"><h4 class="post-title">{{ post.title }}</h4></a></li>\r\n                             {% endfor %}\r\n                         </ul>\r\n                         {{ posts.render|raw }}\r\n                         <div class="clear"></div>\r\n                     </div>\r\n                 </div>', NULL),
(5, 2, '2017-03-04 16:29:31', NULL, '2017-03-04 16:29:31', 1, 'ar', '<article id="post-206" class="post-206 page type-page status-publish hentry instock">\r\n<header class="entry-header"><h1 class="entry-title">Contact Us</h1></header>\r\n{%  set form = form(\'contact\')\r\n.fields({\r\n    \'email\': {\r\n        \'placeholder\': \'What is your email?\',\r\n        \'type\': \'anomaly.field_type.email\',\r\n        \'id\':\'cf_email\',\r\n        \'class\':\'-\',\r\n        \'required\': true\r\n    },\r\n  \'name\': {\r\n      \'placeholder\': \'What is your name?\',\r\n      \'type\': \'anomaly.field_type.text\',\r\n         \'id\':\'cf_name\',\r\n         \'class\':\'-\',\r\n        \'required\': true\r\n     },\r\n    \'website\': {\r\n      \'placeholder\': \'What is your website?\',\r\n      \'type\': \'anomaly.field_type.text\',\r\n         \'id\':\'cf_name\',\r\n         \'class\':\'-\',\r\n        \'required\': true\r\n     },\r\n    \'comment\': {\r\n        \'placeholder\': \'What would you like to talk about?\',\r\n        \'type\': \'anomaly.field_type.textarea\',\r\n         \'id\':\'cf_message\',\r\n         \'class\':\'-\',\r\n        \'required\': true\r\n    }\r\n})\r\n.to(\'example@domain.com\').columns({\'class\':\'contact-form\'})\r\n.from(\'{email}\').get %}\r\n{{ form.open|raw }}\r\n<div class="cform email">\r\n    {{ form.fields.email.input|raw }}\r\n</div>\r\n<div class="cform name">\r\n    {{ form.fields.name.input|raw }}\r\n</div>\r\n<div class="cform website">\r\n    {{ form.fields.website.input|raw }}\r\n</div>\r\n<div class="clearfix"></div>\r\n<div>\r\n    {{ form.fields.comment.input|raw }}\r\n</div>\r\n{{ form.actions|raw }}\r\n{{ form.close|raw }}</article>\r\n<article id="post-206" class="post-206 page type-page status-publish hentry instock"><br>\r\n </article>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_pages_pages`
--

CREATE TABLE `default_pages_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `enabled` tinyint(1) DEFAULT '1',
  `exact` tinyint(1) DEFAULT '1',
  `home` tinyint(1) DEFAULT '0',
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'theme::layouts/default.twig'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_pages_pages`
--

INSERT INTO `default_pages_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `slug`, `path`, `type_id`, `entry_id`, `entry_type`, `parent_id`, `visible`, `enabled`, `exact`, `home`, `theme_layout`) VALUES
(1, 1, '2017-02-16 15:08:20', NULL, '2017-03-09 13:16:28', 1, '2017-03-09 13:22:24', 'haarbD2XTzSPI4rFJTJOXeIC', 'home', '/', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 1, 'theme::layouts.default'),
(2, 2, '2017-02-16 15:08:20', NULL, '2017-03-04 17:08:30', 1, '2017-03-09 16:18:00', 'COoFDSefMYdPpgWHZawq7FFG', 'contact', '/contact', 1, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, NULL),
(3, 3, '2017-02-16 15:30:03', 1, '2017-02-16 15:33:03', 1, '2017-02-17 13:57:51', 'T2S40VWFNBUc8E2C1wcpS2k0', 'home', 'welcome/home', 1, 3, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 1, 1, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_pages_pages_allowed_roles`
--

CREATE TABLE `default_pages_pages_allowed_roles` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_pages_pages_translations`
--

CREATE TABLE `default_pages_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_pages_pages_translations`
--

INSERT INTO `default_pages_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(1, 1, '2017-02-16 15:08:20', NULL, '2017-02-16 15:30:34', 1, 'en', 'Home', NULL, NULL, 'a:0:{}'),
(2, 2, '2017-02-16 15:08:20', NULL, '2017-03-04 17:08:05', 1, 'en', 'Contact', NULL, NULL, 'a:0:{}'),
(3, 3, '2017-02-16 15:30:03', NULL, '2017-02-16 15:32:36', 1, 'en', 'Home2', NULL, NULL, 'a:0:{}'),
(4, 1, '2017-03-04 15:53:42', NULL, '2017-03-04 16:28:05', 1, 'ar', 'الصفحة الرئيسية', NULL, NULL, 'a:0:{}'),
(5, 2, '2017-03-04 16:29:32', NULL, '2017-03-04 17:08:30', 1, 'ar', 'للتواصل', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `default_pages_types`
--

CREATE TABLE `default_pages_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'theme::layouts/default.twig',
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `handler` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'anomaly.extension.default_page_handler'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_pages_types`
--

INSERT INTO `default_pages_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `theme_layout`, `layout`, `handler`) VALUES
(1, 1, '2017-02-16 15:08:19', NULL, NULL, NULL, NULL, 'default', 'theme::layouts/default.twig', '<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}', 'anomaly.extension.default_page_handler');

-- --------------------------------------------------------

--
-- Table structure for table `default_pages_types_translations`
--

CREATE TABLE `default_pages_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_pages_types_translations`
--

INSERT INTO `default_pages_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-02-16 15:08:19', NULL, '2017-02-16 15:08:19', NULL, 'en', 'Default', 'A simple page type.');

-- --------------------------------------------------------

--
-- Table structure for table `default_page_link_type_pages`
--

CREATE TABLE `default_page_link_type_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_page_link_type_pages`
--

INSERT INTO `default_page_link_type_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `page_id`) VALUES
(1, 1, '2017-02-16 15:48:28', 1, NULL, NULL, 1),
(2, 2, '2017-02-16 15:49:12', 1, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `default_page_link_type_pages_translations`
--

CREATE TABLE `default_page_link_type_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_page_link_type_pages_translations`
--

INSERT INTO `default_page_link_type_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2017-02-16 15:48:28', NULL, '2017-02-16 15:48:28', 1, 'en', 'Home', NULL),
(2, 2, '2017-02-16 15:49:12', NULL, '2017-02-16 15:49:12', 1, 'en', 'Contact', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_posts_categories`
--

CREATE TABLE `default_posts_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_posts_categories`
--

INSERT INTO `default_posts_categories` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2017-02-16 15:08:22', NULL, NULL, NULL, NULL, 'news'),
(2, 2, '2017-02-25 13:55:38', 1, NULL, NULL, NULL, 'sports'),
(3, 3, '2017-02-26 21:06:25', 1, NULL, NULL, NULL, 'funandfunny');

-- --------------------------------------------------------

--
-- Table structure for table `default_posts_categories_translations`
--

CREATE TABLE `default_posts_categories_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_posts_categories_translations`
--

INSERT INTO `default_posts_categories_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-02-16 15:08:22', NULL, '2017-02-16 15:08:22', NULL, 'en', 'News', 'Company news and updates.'),
(2, 2, '2017-02-25 13:55:38', NULL, '2017-02-25 13:55:38', 1, 'en', 'Sports', 'This is Sports News'),
(3, 3, '2017-02-26 21:06:25', NULL, '2017-02-26 21:06:25', 1, 'en', 'Fun&Funny', 'This is Funny');

-- --------------------------------------------------------

--
-- Table structure for table `default_posts_default_posts`
--

CREATE TABLE `default_posts_default_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_posts_default_posts`
--

INSERT INTO `default_posts_default_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `b_id`) VALUES
(1, 1, '2017-02-16 15:08:22', NULL, '2017-02-26 21:04:23', 1, NULL, 3),
(2, 2, '2017-02-17 13:12:54', 1, '2017-02-17 13:44:07', 1, NULL, 1),
(3, 3, '2017-02-17 13:56:35', 1, NULL, NULL, NULL, 2),
(4, 4, '2017-02-28 12:11:13', 1, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `default_posts_default_posts_translations`
--

CREATE TABLE `default_posts_default_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_posts_default_posts_translations`
--

INSERT INTO `default_posts_default_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2017-02-16 15:08:22', NULL, '2017-02-16 15:08:22', NULL, 'en', '<p>Welcome to PyroCMS!</p>'),
(2, 2, '2017-02-17 13:12:54', NULL, '2017-02-17 13:12:54', 1, 'en', '<p>Nam nibh arcu, tristique eget pretium sed, porta id quam. Praesent dignissim ante ac tincidunt molestie. Nunc quis turpis vel ipsum bibendum fringilla id et risus. In ultricies, eros quis viverra pretium, neque purus tincidunt neque, at egestas est lectus non ante. <strong>Phasellus imperdiet laoreet sapien, quis consectetur urna adipiscing placerat</strong>. Cum sociis natoque penatibus</p>'),
(3, 3, '2017-02-17 13:56:35', NULL, '2017-02-17 13:56:35', 1, 'en', '<p>Nam nibh arcu, tristique eget pretium sed, porta id quam. Praesent dignissim ante ac tincidunt molestie. Nunc quis turpis vel ipsum bibendum fringilla id et risus. In ultricies, eros quis viverra pretium, neque purus tincidunt neque, at egestas est lectus non ante. Phasellus imperdiet laoreet sapien, quis consectetur urna adipiscing placerat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc euismod purus purus, in commodo risus facilisis in. Vestibulum at enim pulvinar, feugiat metus vitae, consectetur leo. Nulla viverra enim vel eleifend molestie. Cras in massa venenatis, venenatis nibh nec, rutrum ante. Donec adipiscing iaculis dolor, quis porta lorem iaculis non.</p>'),
(4, 4, '2017-02-28 12:11:13', NULL, '2017-02-28 12:11:13', 1, 'en', '<p>I Like that work on pyrocms this make me very specialist programmer for many reasons , First one &nbsp;is comfortable for user and programmer&nbsp;&nbsp;&nbsp;&nbsp;and not take time to great cms and there were many reason I\'ll speak about that later insahallah .</p>'),
(5, 3, '2017-03-04 13:41:08', NULL, '2017-03-04 13:41:08', 1, 'ar', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل "ألدوس بايج مايكر" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل "ألدوس بايج مايكر" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p><p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل "ألدوس بايج مايكر" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل "ألدوس بايج مايكر" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `default_posts_hot_stuff_posts`
--

CREATE TABLE `default_posts_hot_stuff_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_posts_hot_stuff_posts`
--

INSERT INTO `default_posts_hot_stuff_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `content`) VALUES
(1, 1, '2017-02-17 10:55:59', 1, '2017-02-17 12:46:28', 1, NULL, '<p>Nam nibh arcu, tristique eget pretium sed, porta id quam. Praesent dignissim ante ac tincidunt molestie. Nunc quis turpis vel ipsum bibendum fringilla id et risus. In ultricies, eros quis viverra pretium, neque purus tincidunt neque, at egestas est lectus non ante. Phasellus imperdiet laoreet sapien, quis consectetur urna adipiscing placerat. Cum sociis natoque penatibus</p>');

-- --------------------------------------------------------

--
-- Table structure for table `default_posts_hot_stuff_posts_translations`
--

CREATE TABLE `default_posts_hot_stuff_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_posts_hot_stuff_posts_translations`
--

INSERT INTO `default_posts_hot_stuff_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2017-02-17 10:55:59', NULL, '2017-02-17 12:51:29', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `default_posts_posts`
--

CREATE TABLE `default_posts_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `publish_at` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '0',
  `tags` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_posts_posts`
--

INSERT INTO `default_posts_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `slug`, `type_id`, `publish_at`, `author_id`, `entry_id`, `entry_type`, `category_id`, `featured`, `enabled`, `tags`) VALUES
(1, 1, '2017-02-16 15:08:22', NULL, '2017-02-26 21:07:10', 1, NULL, 'zQCWfS3Za3K3wnSk', 'welcome-to-pyrocms', 1, '2017-02-16 15:08:00', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', 3, 0, 1, 'a:0:{}'),
(2, 2, '2017-02-17 10:55:59', 1, '2017-02-17 13:40:58', 1, '2017-02-23 10:43:33', 'uVo2m6oQHU3NqELL', 'lectus-non-rutrum-pulvinar', 2, '2017-02-16 14:12:00', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsHotStuffPostsEntryModel', 1, 0, 0, 'a:1:{i:0;s:12:"Fashion News";}'),
(3, 3, '2017-02-17 13:12:54', 1, '2017-02-28 12:58:50', 1, NULL, 'b0qQ5KMnprfECuKA', 'lectus-non-rutrum-pulvinar-r', 1, '2017-02-17 13:11:00', 1, 2, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', 2, 0, 1, 'a:2:{i:0;s:7:"Fashion";i:1;s:6:"Styles";}'),
(4, 4, '2017-02-17 13:56:35', 1, '2017-03-04 13:41:08', 1, NULL, 'WxAqiYj3EOlQRDm2', 'donec-consectetuer-ligula-vulputate-sem-tristique-cursus', 1, '2017-02-17 13:53:00', 1, 3, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', 1, 0, 1, 'a:0:{}'),
(5, 4, '2017-02-28 12:11:13', 1, '2017-02-28 12:12:33', 1, NULL, '3oUxvunfZOvoSSUx', 'shift-company', 1, '2017-02-28 12:05:00', 1, 4, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', 1, 0, 1, 'a:2:{i:0;s:9:"new Tag  ";i:1;s:16:"amazing company ";}');

-- --------------------------------------------------------

--
-- Table structure for table `default_posts_posts_translations`
--

CREATE TABLE `default_posts_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_posts_posts_translations`
--

INSERT INTO `default_posts_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `summary`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(1, 1, '2017-02-16 15:08:22', NULL, '2017-02-17 10:42:55', 1, 'en', 'Welcome to PyroCMS!', 'This is an example post to demonstrate the posts module.', NULL, NULL, 'a:0:{}'),
(2, 2, '2017-02-17 10:55:59', NULL, '2017-02-17 12:46:28', 1, 'en', 'Lectus non rutrum pulvinar urna leo dignissim lorem', 'Nam nibh arcu, tristique eget pretium sed, porta id quam. Praesent dignissim ante ac tincidunt .....', 'Lectus non rutrum pulvinar', NULL, 'a:0:{}'),
(3, 3, '2017-02-17 13:12:54', NULL, '2017-02-28 12:58:50', 1, 'en', 'sports sports sports sports sports sports sports sports sports ', 'Nam nibh arcu, tristique eget pretium sed, porta id quam. Praesent dignissim ante ac tincidunt .....', NULL, NULL, 'a:0:{}'),
(4, 4, '2017-02-17 13:56:35', NULL, '2017-02-23 14:19:52', 1, 'en', '111Donec consectetuer ligula vulputate sem tristique cursus', '​Nam nibh arcu, tristique eget pretium sed, porta id quam. .....', NULL, NULL, 'a:0:{}'),
(5, 5, '2017-02-28 12:11:13', NULL, '2017-02-28 12:11:13', 1, 'en', 'Shift Company', 'This is First Create on Shift Company', NULL, NULL, 'a:0:{}'),
(6, 4, '2017-03-04 13:41:08', NULL, '2017-03-04 13:41:08', 1, 'ar', 'لا أحد يحب الألم بذاته، يسعى ورائه أو يبتغيه، ببساطة لأنه الألم..', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل "ألدوس بايج مايكر" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.\r\n\r\n', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `default_posts_types`
--

CREATE TABLE `default_posts_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_posts_types`
--

INSERT INTO `default_posts_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `layout`, `theme_layout`) VALUES
(1, 2, '2017-02-16 15:08:21', NULL, '2017-02-17 13:51:16', 1, NULL, 'default', '{{ post.b.make|raw }}\r\n{{ post.content.render|raw }}', 'theme::layouts.default'),
(2, 1, '2017-02-17 09:50:59', 1, '2017-02-17 11:58:38', 1, NULL, 'hot_stuff', '{{ post.content|row}}\r\n\r\n', 'theme::layouts.default');

-- --------------------------------------------------------

--
-- Table structure for table `default_posts_types_translations`
--

CREATE TABLE `default_posts_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_posts_types_translations`
--

INSERT INTO `default_posts_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-02-16 15:08:21', NULL, '2017-02-16 15:08:21', NULL, 'en', 'Default', 'A simple post type.'),
(2, 2, '2017-02-17 09:50:59', NULL, '2017-02-17 09:50:59', 1, 'en', 'Hot Stuff', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_preferences_preferences`
--

CREATE TABLE `default_preferences_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_redirects_redirects`
--

CREATE TABLE `default_redirects_redirects` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_sessions`
--

CREATE TABLE `default_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_settings_settings`
--

CREATE TABLE `default_settings_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_settings_settings`
--

INSERT INTO `default_settings_settings` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `key`, `value`) VALUES
(1, 1, '2017-02-16 15:08:25', NULL, '2017-03-06 14:16:21', 1, 'streams::timezone', 'UTC'),
(2, 2, '2017-02-16 15:08:25', NULL, '2017-03-06 14:16:21', 1, 'streams::default_locale', 'en'),
(3, 3, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::name', 'Feras AlSouri'),
(4, 4, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::description', 'Build better Laravel websites and applications faster with Pyro.'),
(5, 5, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::business', NULL),
(6, 6, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::phone', '0599467685'),
(7, 7, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::address', 'AlNasser-Street'),
(8, 8, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::address2', 'AlMashtel-Street'),
(9, 9, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::city', 'Gaza Strip'),
(10, 10, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::state', ''),
(11, 11, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::postal_code', '00972'),
(12, 12, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::country', 'IS'),
(13, 13, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::date_format', 'j F, Y'),
(14, 14, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::time_format', 'g:i A'),
(15, 15, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::unit_system', 'imperial'),
(16, 16, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::currency', 'USD'),
(17, 17, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::standard_theme', 'anomaly.theme.demo'),
(18, 18, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::admin_theme', 'pyrocms.theme.accelerant'),
(19, 19, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::per_page', '15'),
(20, 20, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::enabled_locales', 'a:2:{i:0;s:2:"en";i:1;s:2:"ar";}'),
(21, 21, '2017-02-16 15:15:47', 1, '2017-02-17 08:32:41', 1, 'streams::debug', '0'),
(22, 22, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::maintenance', '0'),
(23, 23, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::basic_auth', '0'),
(24, 24, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::ip_whitelist', 'a:0:{}'),
(25, 25, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::email', 'feras2007_2007@hotmail.com'),
(26, 26, '2017-02-16 15:15:47', 1, '2017-03-06 14:16:21', 1, 'streams::sender', 'PyroCMS');

-- --------------------------------------------------------

--
-- Table structure for table `default_streams_assignments`
--

CREATE TABLE `default_streams_assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_streams_assignments`
--

INSERT INTO `default_streams_assignments` (`id`, `sort_order`, `stream_id`, `field_id`, `config`, `unique`, `required`, `translatable`) VALUES
(1, 1, 1, 1, 'a:0:{}', 0, 1, 0),
(2, 2, 1, 2, 'a:0:{}', 0, 1, 0),
(3, 3, 1, 3, 'a:0:{}', 0, 0, 0),
(4, 4, 2, 4, 'a:0:{}', 0, 1, 1),
(5, 5, 2, 5, 'a:0:{}', 1, 1, 0),
(6, 6, 2, 6, 'a:0:{}', 0, 0, 1),
(7, 7, 2, 7, 'a:0:{}', 0, 1, 0),
(8, 8, 2, 13, 'a:0:{}', 0, 0, 0),
(9, 9, 3, 8, 'a:0:{}', 0, 1, 1),
(10, 10, 3, 6, 'a:0:{}', 0, 0, 1),
(11, 11, 3, 9, 'a:0:{}', 0, 1, 0),
(12, 12, 3, 10, 'a:0:{}', 0, 1, 0),
(13, 13, 3, 12, 'a:0:{}', 0, 1, 0),
(14, 14, 3, 13, 'a:0:{}', 0, 0, 0),
(15, 15, 3, 11, 'a:0:{}', 0, 0, 0),
(16, 16, 4, 14, 'a:0:{}', 1, 1, 1),
(17, 17, 4, 15, 'a:0:{}', 1, 1, 0),
(18, 18, 4, 16, 'a:0:{}', 0, 1, 0),
(19, 19, 4, 20, 'a:0:{}', 0, 0, 1),
(20, 20, 5, 18, 'a:0:{}', 0, 1, 0),
(21, 21, 5, 14, 'a:1:{s:3:"max";i:50;}', 0, 1, 1),
(22, 22, 5, 15, 'a:1:{s:3:"max";i:50;}', 1, 1, 0),
(23, 23, 5, 20, 'a:0:{}', 0, 0, 1),
(24, 24, 5, 21, 'a:0:{}', 0, 0, 0),
(25, 25, 6, 14, 'a:0:{}', 0, 1, 0),
(26, 26, 6, 18, 'a:0:{}', 0, 1, 0),
(27, 27, 6, 17, 'a:0:{}', 0, 1, 0),
(28, 28, 6, 23, 'a:0:{}', 0, 1, 0),
(29, 29, 6, 27, 'a:0:{}', 0, 1, 0),
(30, 30, 6, 26, 'a:0:{}', 0, 1, 0),
(31, 31, 6, 19, 'a:0:{}', 0, 0, 0),
(32, 32, 6, 22, 'a:0:{}', 0, 0, 0),
(33, 33, 6, 25, 'a:0:{}', 0, 0, 0),
(34, 34, 6, 24, 'a:0:{}', 0, 0, 0),
(35, 35, 7, 28, 'a:0:{}', 1, 1, 1),
(36, 36, 7, 32, 'a:0:{}', 1, 1, 0),
(37, 37, 7, 30, 'a:0:{}', 0, 0, 1),
(38, 38, 8, 33, 'a:0:{}', 0, 1, 0),
(39, 39, 8, 36, 'a:0:{}', 0, 1, 0),
(40, 40, 8, 31, 'a:0:{}', 0, 1, 0),
(41, 41, 8, 37, 'a:0:{}', 0, 1, 0),
(42, 42, 8, 29, 'a:0:{}', 0, 0, 0),
(43, 43, 8, 34, 'a:0:{}', 0, 0, 0),
(44, 44, 8, 35, 'a:0:{}', 0, 0, 0),
(45, 45, 9, 38, 'a:0:{}', 0, 1, 0),
(46, 46, 9, 39, 'a:0:{}', 0, 1, 1),
(47, 47, 9, 40, 'a:0:{}', 0, 1, 0),
(48, 48, 9, 42, 'a:0:{}', 0, 1, 0),
(49, 49, 9, 52, 'a:0:{}', 0, 1, 0),
(50, 50, 9, 56, 'a:0:{}', 0, 0, 0),
(51, 51, 9, 50, 'a:0:{}', 0, 0, 0),
(52, 52, 9, 54, 'a:0:{}', 0, 0, 0),
(53, 53, 9, 43, 'a:0:{}', 0, 0, 0),
(54, 54, 9, 55, 'a:0:{}', 0, 0, 0),
(55, 55, 9, 44, 'a:0:{}', 0, 0, 0),
(56, 56, 9, 45, 'a:0:{}', 0, 0, 1),
(57, 57, 9, 46, 'a:0:{}', 0, 0, 1),
(58, 58, 9, 47, 'a:0:{}', 0, 0, 1),
(59, 59, 9, 51, 'a:0:{}', 0, 0, 0),
(60, 60, 9, 49, 'a:0:{}', 0, 0, 0),
(61, 61, 10, 57, 'a:1:{s:3:"max";i:50;}', 1, 1, 1),
(62, 62, 10, 40, 'a:3:{s:7:"slugify";s:4:"name";s:4:"type";s:1:"_";s:3:"max";i:50;}', 1, 1, 0),
(63, 63, 10, 58, 'a:0:{}', 0, 0, 1),
(64, 64, 10, 51, 'a:0:{}', 0, 1, 0),
(65, 65, 10, 48, 'a:0:{}', 0, 1, 0),
(66, 66, 10, 53, 'a:0:{}', 0, 1, 0),
(67, 67, 11, 60, 'a:0:{}', 1, 1, 1),
(68, 68, 11, 62, 'a:1:{s:7:"slugify";s:4:"name";}', 1, 1, 0),
(69, 69, 11, 67, 'a:0:{}', 0, 0, 1),
(70, 70, 12, 59, 'a:0:{}', 1, 1, 0),
(71, 71, 12, 61, 'a:0:{}', 0, 1, 1),
(72, 72, 12, 66, 'a:0:{}', 0, 0, 1),
(73, 73, 12, 62, 'a:0:{}', 1, 1, 0),
(74, 74, 12, 64, 'a:0:{}', 0, 1, 0),
(75, 75, 12, 68, 'a:0:{}', 0, 1, 0),
(76, 76, 12, 70, 'a:0:{}', 0, 1, 0),
(77, 77, 12, 69, 'a:0:{}', 0, 1, 0),
(78, 78, 12, 75, 'a:0:{}', 0, 0, 1),
(79, 79, 12, 76, 'a:0:{}', 0, 0, 1),
(80, 80, 12, 77, 'a:0:{}', 0, 0, 1),
(81, 81, 12, 72, 'a:0:{}', 0, 0, 0),
(82, 82, 12, 74, 'a:0:{}', 0, 0, 0),
(83, 83, 12, 73, 'a:0:{}', 0, 0, 0),
(84, 84, 12, 65, 'a:0:{}', 0, 0, 0),
(85, 85, 13, 60, 'a:1:{s:3:"max";i:50;}', 1, 1, 1),
(86, 86, 13, 62, 'a:3:{s:7:"slugify";s:4:"name";s:4:"type";s:1:"_";s:3:"max";i:50;}', 1, 1, 0),
(87, 87, 13, 71, 'a:0:{}', 0, 1, 0),
(88, 88, 13, 79, 'a:0:{}', 0, 1, 0),
(89, 89, 13, 67, 'a:0:{}', 0, 0, 1),
(90, 90, 14, 80, 'a:0:{}', 0, 1, 0),
(91, 91, 14, 81, 'a:0:{}', 0, 1, 0),
(92, 92, 14, 82, 'a:0:{}', 0, 0, 0),
(93, 93, 15, 83, 'a:0:{}', 1, 1, 0),
(94, 94, 15, 84, 'a:0:{}', 0, 1, 0),
(95, 95, 15, 85, 'a:0:{}', 0, 1, 0),
(96, 96, 15, 86, 'a:0:{}', 0, 0, 0),
(97, 97, 16, 87, 'a:0:{}', 1, 1, 0),
(98, 98, 16, 88, 'a:0:{}', 0, 0, 0),
(99, 99, 17, 89, 'a:0:{}', 1, 1, 0),
(100, 100, 17, 90, 'a:0:{}', 1, 1, 0),
(101, 101, 17, 91, 'a:0:{}', 0, 1, 0),
(102, 102, 17, 109, 'a:0:{}', 0, 1, 0),
(103, 103, 17, 97, 'a:0:{}', 0, 1, 0),
(104, 104, 17, 98, 'a:0:{}', 0, 0, 0),
(105, 105, 17, 99, 'a:0:{}', 0, 0, 0),
(106, 106, 17, 106, 'a:0:{}', 0, 0, 0),
(107, 107, 17, 107, 'a:0:{}', 0, 0, 0),
(108, 108, 17, 96, 'a:0:{}', 0, 0, 0),
(109, 109, 17, 94, 'a:0:{}', 0, 0, 0),
(110, 110, 17, 92, 'a:0:{}', 0, 0, 0),
(111, 111, 17, 104, 'a:0:{}', 0, 0, 0),
(112, 112, 17, 102, 'a:0:{}', 0, 0, 0),
(113, 113, 17, 95, 'a:0:{}', 0, 0, 0),
(114, 114, 17, 93, 'a:0:{}', 0, 0, 0),
(115, 115, 18, 100, 'a:0:{}', 0, 1, 1),
(116, 116, 18, 108, 'a:0:{}', 1, 1, 0),
(117, 117, 18, 101, 'a:0:{}', 0, 0, 1),
(118, 118, 18, 96, 'a:0:{}', 0, 0, 0),
(119, 119, 19, 110, 'a:0:{}', 0, 0, 1),
(120, 120, 19, 111, 'a:0:{}', 0, 1, 0),
(121, 121, 19, 112, 'a:0:{}', 0, 0, 1),
(122, 122, 20, 113, 'a:0:{}', 0, 1, 1),
(123, 123, 20, 114, 'a:0:{}', 0, 1, 0),
(124, 124, 20, 115, 'a:0:{}', 0, 0, 1),
(125, 125, 23, 41, 'a:0:{}', 0, 0, 1),
(126, 126, 24, 63, 'a:0:{}', 0, 0, 1),
(135, 130, 26, 121, 'a:1:{i:0;s:6:"a:0:{}";}', 0, 0, 0),
(134, 129, 23, 120, 'a:1:{i:0;s:6:"a:0:{}";}', 0, 0, 1),
(132, 128, 24, 118, 'a:1:{i:0;s:6:"a:0:{}";}', 0, 0, 0),
(130, 130, 25, 63, 'a:1:{i:0;s:6:"a:0:{}";}', 0, 0, 0),
(212, 138, 41, 186, 'a:0:{}', 0, 1, 1),
(213, 139, 41, 190, 'a:0:{}', 1, 1, 0),
(214, 140, 41, 189, 'a:0:{}', 0, 1, 1),
(215, 141, 42, 188, 'a:0:{}', 0, 1, 1),
(216, 142, 42, 190, 'a:1:{s:7:"slugify";s:4:"name";}', 1, 1, 0),
(217, 143, 42, 189, 'a:0:{}', 0, 1, 1),
(205, 131, 40, 191, 'a:0:{}', 0, 0, 0),
(206, 132, 40, 187, 'a:0:{}', 0, 1, 0),
(207, 133, 40, 186, 'a:0:{}', 0, 1, 1),
(208, 134, 40, 190, 'a:0:{}', 1, 1, 0),
(209, 135, 40, 189, 'a:0:{}', 0, 1, 1),
(210, 136, 40, 192, 'a:0:{}', 0, 1, 0),
(211, 137, 40, 193, 'a:0:{}', 0, 0, 0),
(483, 157, 118, 534, 'a:0:{}', 0, 1, 0),
(470, 144, 115, 533, 'a:0:{}', 0, 1, 0),
(471, 145, 115, 536, 'a:0:{}', 0, 1, 0),
(472, 146, 116, 533, 'a:0:{}', 0, 1, 0),
(473, 147, 116, 537, 'a:0:{}', 0, 0, 0),
(474, 148, 116, 540, 'a:0:{}', 0, 0, 0),
(475, 149, 116, 538, 'a:0:{}', 0, 0, 0),
(476, 150, 116, 539, 'a:0:{}', 0, 0, 0),
(477, 151, 117, 533, 'a:0:{}', 0, 1, 0),
(478, 152, 117, 541, 'a:0:{}', 0, 0, 0),
(479, 153, 117, 542, 'a:0:{}', 0, 0, 0),
(480, 154, 117, 543, 'a:0:{}', 0, 0, 0),
(481, 155, 117, 544, 'a:0:{}', 0, 0, 0),
(482, 156, 118, 533, 'a:0:{}', 0, 1, 0),
(484, 158, 118, 535, 'a:0:{}', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `default_streams_assignments_translations`
--

CREATE TABLE `default_streams_assignments_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_streams_assignments_translations`
--

INSERT INTO `default_streams_assignments_translations` (`id`, `assignment_id`, `locale`, `label`, `warning`, `placeholder`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::field.scope.label.configuration', 'anomaly.module.configuration::field.scope.warning.configuration', 'anomaly.module.configuration::field.scope.placeholder.configuration', 'anomaly.module.configuration::field.scope.instructions.configuration'),
(2, 2, 'en', 'anomaly.module.configuration::field.key.label.configuration', 'anomaly.module.configuration::field.key.warning.configuration', 'anomaly.module.configuration::field.key.placeholder.configuration', 'anomaly.module.configuration::field.key.instructions.configuration'),
(3, 3, 'en', 'anomaly.module.configuration::field.value.label.configuration', 'anomaly.module.configuration::field.value.warning.configuration', 'anomaly.module.configuration::field.value.placeholder.configuration', 'anomaly.module.configuration::field.value.instructions.configuration'),
(4, 4, 'en', 'anomaly.module.dashboard::field.name.label.dashboards', 'anomaly.module.dashboard::field.name.warning.dashboards', 'anomaly.module.dashboard::field.name.placeholder.dashboards', 'anomaly.module.dashboard::field.name.instructions.dashboards'),
(5, 5, 'en', 'anomaly.module.dashboard::field.slug.label.dashboards', 'anomaly.module.dashboard::field.slug.warning.dashboards', 'anomaly.module.dashboard::field.slug.placeholder.dashboards', 'anomaly.module.dashboard::field.slug.instructions.dashboards'),
(6, 6, 'en', 'anomaly.module.dashboard::field.description.label.dashboards', 'anomaly.module.dashboard::field.description.warning.dashboards', 'anomaly.module.dashboard::field.description.placeholder.dashboards', 'anomaly.module.dashboard::field.description.instructions.dashboards'),
(7, 7, 'en', 'anomaly.module.dashboard::field.layout.label.dashboards', 'anomaly.module.dashboard::field.layout.warning.dashboards', 'anomaly.module.dashboard::field.layout.placeholder.dashboards', 'anomaly.module.dashboard::field.layout.instructions.dashboards'),
(8, 8, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.dashboards', 'anomaly.module.dashboard::field.allowed_roles.warning.dashboards', 'anomaly.module.dashboard::field.allowed_roles.placeholder.dashboards', 'anomaly.module.dashboard::field.allowed_roles.instructions.dashboards'),
(9, 9, 'en', 'anomaly.module.dashboard::field.title.label.widgets', 'anomaly.module.dashboard::field.title.warning.widgets', 'anomaly.module.dashboard::field.title.placeholder.widgets', 'anomaly.module.dashboard::field.title.instructions.widgets'),
(10, 10, 'en', 'anomaly.module.dashboard::field.description.label.widgets', 'anomaly.module.dashboard::field.description.warning.widgets', 'anomaly.module.dashboard::field.description.placeholder.widgets', 'anomaly.module.dashboard::field.description.instructions.widgets'),
(11, 11, 'en', 'anomaly.module.dashboard::field.extension.label.widgets', 'anomaly.module.dashboard::field.extension.warning.widgets', 'anomaly.module.dashboard::field.extension.placeholder.widgets', 'anomaly.module.dashboard::field.extension.instructions.widgets'),
(12, 12, 'en', 'anomaly.module.dashboard::field.column.label.widgets', 'anomaly.module.dashboard::field.column.warning.widgets', 'anomaly.module.dashboard::field.column.placeholder.widgets', 'anomaly.module.dashboard::field.column.instructions.widgets'),
(13, 13, 'en', 'anomaly.module.dashboard::field.dashboard.label.widgets', 'anomaly.module.dashboard::field.dashboard.warning.widgets', 'anomaly.module.dashboard::field.dashboard.placeholder.widgets', 'anomaly.module.dashboard::field.dashboard.instructions.widgets'),
(14, 14, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.widgets', 'anomaly.module.dashboard::field.allowed_roles.warning.widgets', 'anomaly.module.dashboard::field.allowed_roles.placeholder.widgets', 'anomaly.module.dashboard::field.allowed_roles.instructions.widgets'),
(15, 15, 'en', 'anomaly.module.dashboard::field.pinned.label.widgets', 'anomaly.module.dashboard::field.pinned.warning.widgets', 'anomaly.module.dashboard::field.pinned.placeholder.widgets', 'anomaly.module.dashboard::field.pinned.instructions.widgets'),
(16, 16, 'en', 'anomaly.module.files::field.name.label.disks', 'anomaly.module.files::field.name.warning.disks', 'anomaly.module.files::field.name.placeholder.disks', 'anomaly.module.files::field.name.instructions.disks'),
(17, 17, 'en', 'anomaly.module.files::field.slug.label.disks', 'anomaly.module.files::field.slug.warning.disks', 'anomaly.module.files::field.slug.placeholder.disks', 'anomaly.module.files::field.slug.instructions.disks'),
(18, 18, 'en', 'anomaly.module.files::field.adapter.label.disks', 'anomaly.module.files::field.adapter.warning.disks', 'anomaly.module.files::field.adapter.placeholder.disks', 'anomaly.module.files::field.adapter.instructions.disks'),
(19, 19, 'en', 'anomaly.module.files::field.description.label.disks', 'anomaly.module.files::field.description.warning.disks', 'anomaly.module.files::field.description.placeholder.disks', 'anomaly.module.files::field.description.instructions.disks'),
(20, 20, 'en', 'anomaly.module.files::field.disk.label.folders', 'anomaly.module.files::field.disk.warning.folders', 'anomaly.module.files::field.disk.placeholder.folders', 'anomaly.module.files::field.disk.instructions.folders'),
(21, 21, 'en', 'anomaly.module.files::field.name.label.folders', 'anomaly.module.files::field.name.warning.folders', 'anomaly.module.files::field.name.placeholder.folders', 'anomaly.module.files::field.name.instructions.folders'),
(22, 22, 'en', 'anomaly.module.files::field.slug.label.folders', 'anomaly.module.files::field.slug.warning.folders', 'anomaly.module.files::field.slug.placeholder.folders', 'anomaly.module.files::field.slug.instructions.folders'),
(23, 23, 'en', 'anomaly.module.files::field.description.label.folders', 'anomaly.module.files::field.description.warning.folders', 'anomaly.module.files::field.description.placeholder.folders', 'anomaly.module.files::field.description.instructions.folders'),
(24, 24, 'en', 'anomaly.module.files::field.allowed_types.label.folders', 'anomaly.module.files::field.allowed_types.warning.folders', 'anomaly.module.files::field.allowed_types.placeholder.folders', 'anomaly.module.files::field.allowed_types.instructions.folders'),
(25, 25, 'en', 'anomaly.module.files::field.name.label.files', 'anomaly.module.files::field.name.warning.files', 'anomaly.module.files::field.name.placeholder.files', 'anomaly.module.files::field.name.instructions.files'),
(26, 26, 'en', 'anomaly.module.files::field.disk.label.files', 'anomaly.module.files::field.disk.warning.files', 'anomaly.module.files::field.disk.placeholder.files', 'anomaly.module.files::field.disk.instructions.files'),
(27, 27, 'en', 'anomaly.module.files::field.folder.label.files', 'anomaly.module.files::field.folder.warning.files', 'anomaly.module.files::field.folder.placeholder.files', 'anomaly.module.files::field.folder.instructions.files'),
(28, 28, 'en', 'anomaly.module.files::field.extension.label.files', 'anomaly.module.files::field.extension.warning.files', 'anomaly.module.files::field.extension.placeholder.files', 'anomaly.module.files::field.extension.instructions.files'),
(29, 29, 'en', 'anomaly.module.files::field.size.label.files', 'anomaly.module.files::field.size.warning.files', 'anomaly.module.files::field.size.placeholder.files', 'anomaly.module.files::field.size.instructions.files'),
(30, 30, 'en', 'anomaly.module.files::field.mime_type.label.files', 'anomaly.module.files::field.mime_type.warning.files', 'anomaly.module.files::field.mime_type.placeholder.files', 'anomaly.module.files::field.mime_type.instructions.files'),
(31, 31, 'en', 'anomaly.module.files::field.entry.label.files', 'anomaly.module.files::field.entry.warning.files', 'anomaly.module.files::field.entry.placeholder.files', 'anomaly.module.files::field.entry.instructions.files'),
(32, 32, 'en', 'anomaly.module.files::field.keywords.label.files', 'anomaly.module.files::field.keywords.warning.files', 'anomaly.module.files::field.keywords.placeholder.files', 'anomaly.module.files::field.keywords.instructions.files'),
(33, 33, 'en', 'anomaly.module.files::field.height.label.files', 'anomaly.module.files::field.height.warning.files', 'anomaly.module.files::field.height.placeholder.files', 'anomaly.module.files::field.height.instructions.files'),
(34, 34, 'en', 'anomaly.module.files::field.width.label.files', 'anomaly.module.files::field.width.warning.files', 'anomaly.module.files::field.width.placeholder.files', 'anomaly.module.files::field.width.instructions.files'),
(35, 35, 'en', 'anomaly.module.navigation::field.name.label.menus', 'anomaly.module.navigation::field.name.warning.menus', 'anomaly.module.navigation::field.name.placeholder.menus', 'anomaly.module.navigation::field.name.instructions.menus'),
(36, 36, 'en', 'anomaly.module.navigation::field.slug.label.menus', 'anomaly.module.navigation::field.slug.warning.menus', 'anomaly.module.navigation::field.slug.placeholder.menus', 'anomaly.module.navigation::field.slug.instructions.menus'),
(37, 37, 'en', 'anomaly.module.navigation::field.description.label.menus', 'anomaly.module.navigation::field.description.warning.menus', 'anomaly.module.navigation::field.description.placeholder.menus', 'anomaly.module.navigation::field.description.instructions.menus'),
(38, 38, 'en', 'anomaly.module.navigation::field.menu.label.links', 'anomaly.module.navigation::field.menu.warning.links', 'anomaly.module.navigation::field.menu.placeholder.links', 'anomaly.module.navigation::field.menu.instructions.links'),
(39, 39, 'en', 'anomaly.module.navigation::field.type.label.links', 'anomaly.module.navigation::field.type.warning.links', 'anomaly.module.navigation::field.type.placeholder.links', 'anomaly.module.navigation::field.type.instructions.links'),
(40, 40, 'en', 'anomaly.module.navigation::field.entry.label.links', 'anomaly.module.navigation::field.entry.warning.links', 'anomaly.module.navigation::field.entry.placeholder.links', 'anomaly.module.navigation::field.entry.instructions.links'),
(41, 41, 'en', 'anomaly.module.navigation::field.target.label.links', 'anomaly.module.navigation::field.target.warning.links', 'anomaly.module.navigation::field.target.placeholder.links', 'anomaly.module.navigation::field.target.instructions.links'),
(42, 42, 'en', 'anomaly.module.navigation::field.class.label.links', 'anomaly.module.navigation::field.class.warning.links', 'anomaly.module.navigation::field.class.placeholder.links', 'anomaly.module.navigation::field.class.instructions.links'),
(43, 43, 'en', 'anomaly.module.navigation::field.parent.label.links', 'anomaly.module.navigation::field.parent.warning.links', 'anomaly.module.navigation::field.parent.placeholder.links', 'anomaly.module.navigation::field.parent.instructions.links'),
(44, 44, 'en', 'anomaly.module.navigation::field.allowed_roles.label.links', 'anomaly.module.navigation::field.allowed_roles.warning.links', 'anomaly.module.navigation::field.allowed_roles.placeholder.links', 'anomaly.module.navigation::field.allowed_roles.instructions.links'),
(45, 45, 'en', 'anomaly.module.pages::field.str_id.label.pages', 'anomaly.module.pages::field.str_id.warning.pages', 'anomaly.module.pages::field.str_id.placeholder.pages', 'anomaly.module.pages::field.str_id.instructions.pages'),
(46, 46, 'en', 'anomaly.module.pages::field.title.label.pages', 'anomaly.module.pages::field.title.warning.pages', 'anomaly.module.pages::field.title.placeholder.pages', 'anomaly.module.pages::field.title.instructions.pages'),
(47, 47, 'en', 'anomaly.module.pages::field.slug.label.pages', 'anomaly.module.pages::field.slug.warning.pages', 'anomaly.module.pages::field.slug.placeholder.pages', 'anomaly.module.pages::field.slug.instructions.pages'),
(48, 48, 'en', 'anomaly.module.pages::field.path.label.pages', 'anomaly.module.pages::field.path.warning.pages', 'anomaly.module.pages::field.path.placeholder.pages', 'anomaly.module.pages::field.path.instructions.pages'),
(49, 49, 'en', 'anomaly.module.pages::field.type.label.pages', 'anomaly.module.pages::field.type.warning.pages', 'anomaly.module.pages::field.type.placeholder.pages', 'anomaly.module.pages::field.type.instructions.pages'),
(50, 50, 'en', 'anomaly.module.pages::field.entry.label.pages', 'anomaly.module.pages::field.entry.warning.pages', 'anomaly.module.pages::field.entry.placeholder.pages', 'anomaly.module.pages::field.entry.instructions.pages'),
(51, 51, 'en', 'anomaly.module.pages::field.parent.label.pages', 'anomaly.module.pages::field.parent.warning.pages', 'anomaly.module.pages::field.parent.placeholder.pages', 'anomaly.module.pages::field.parent.instructions.pages'),
(52, 52, 'en', 'anomaly.module.pages::field.visible.label.pages', 'anomaly.module.pages::field.visible.warning.pages', 'anomaly.module.pages::field.visible.placeholder.pages', 'anomaly.module.pages::field.visible.instructions.pages'),
(53, 53, 'en', 'anomaly.module.pages::field.enabled.label.pages', 'anomaly.module.pages::field.enabled.warning.pages', 'anomaly.module.pages::field.enabled.placeholder.pages', 'anomaly.module.pages::field.enabled.instructions.pages'),
(54, 54, 'en', 'anomaly.module.pages::field.exact.label.pages', 'anomaly.module.pages::field.exact.warning.pages', 'anomaly.module.pages::field.exact.placeholder.pages', 'anomaly.module.pages::field.exact.instructions.pages'),
(55, 55, 'en', 'anomaly.module.pages::field.home.label.pages', 'anomaly.module.pages::field.home.warning.pages', 'anomaly.module.pages::field.home.placeholder.pages', 'anomaly.module.pages::field.home.instructions.pages'),
(56, 56, 'en', 'anomaly.module.pages::field.meta_title.label.pages', 'anomaly.module.pages::field.meta_title.warning.pages', 'anomaly.module.pages::field.meta_title.placeholder.pages', 'anomaly.module.pages::field.meta_title.instructions.pages'),
(57, 57, 'en', 'anomaly.module.pages::field.meta_description.label.pages', 'anomaly.module.pages::field.meta_description.warning.pages', 'anomaly.module.pages::field.meta_description.placeholder.pages', 'anomaly.module.pages::field.meta_description.instructions.pages'),
(58, 58, 'en', 'anomaly.module.pages::field.meta_keywords.label.pages', 'anomaly.module.pages::field.meta_keywords.warning.pages', 'anomaly.module.pages::field.meta_keywords.placeholder.pages', 'anomaly.module.pages::field.meta_keywords.instructions.pages'),
(59, 59, 'en', 'anomaly.module.pages::field.theme_layout.label.pages', 'anomaly.module.pages::field.theme_layout.warning.pages', 'anomaly.module.pages::field.theme_layout.placeholder.pages', 'anomaly.module.pages::field.theme_layout.instructions.pages'),
(60, 60, 'en', 'anomaly.module.pages::field.allowed_roles.label.pages', 'anomaly.module.pages::field.allowed_roles.warning.pages', 'anomaly.module.pages::field.allowed_roles.placeholder.pages', 'anomaly.module.pages::field.allowed_roles.instructions.pages'),
(61, 61, 'en', 'anomaly.module.pages::field.name.label.types', 'anomaly.module.pages::field.name.warning.types', 'anomaly.module.pages::field.name.placeholder.types', 'anomaly.module.pages::field.name.instructions.types'),
(62, 62, 'en', 'anomaly.module.pages::field.slug.label.types', 'anomaly.module.pages::field.slug.warning.types', 'anomaly.module.pages::field.slug.placeholder.types', 'anomaly.module.pages::field.slug.instructions.types'),
(63, 63, 'en', 'anomaly.module.pages::field.description.label.types', 'anomaly.module.pages::field.description.warning.types', 'anomaly.module.pages::field.description.placeholder.types', 'anomaly.module.pages::field.description.instructions.types'),
(64, 64, 'en', 'anomaly.module.pages::field.theme_layout.label.types', 'anomaly.module.pages::field.theme_layout.warning.types', 'anomaly.module.pages::field.theme_layout.placeholder.types', 'anomaly.module.pages::field.theme_layout.instructions.types'),
(65, 65, 'en', 'anomaly.module.pages::field.layout.label.types', 'anomaly.module.pages::field.layout.warning.types', 'anomaly.module.pages::field.layout.placeholder.types', 'anomaly.module.pages::field.layout.instructions.types'),
(66, 66, 'en', 'anomaly.module.pages::field.handler.label.types', 'anomaly.module.pages::field.handler.warning.types', 'anomaly.module.pages::field.handler.placeholder.types', 'anomaly.module.pages::field.handler.instructions.types'),
(67, 67, 'en', 'anomaly.module.posts::field.name.label.categories', 'anomaly.module.posts::field.name.warning.categories', 'anomaly.module.posts::field.name.placeholder.categories', 'anomaly.module.posts::field.name.instructions.categories'),
(68, 68, 'en', 'anomaly.module.posts::field.slug.label.categories', 'anomaly.module.posts::field.slug.warning.categories', 'anomaly.module.posts::field.slug.placeholder.categories', 'anomaly.module.posts::field.slug.instructions.categories'),
(69, 69, 'en', 'anomaly.module.posts::field.description.label.categories', 'anomaly.module.posts::field.description.warning.categories', 'anomaly.module.posts::field.description.placeholder.categories', 'anomaly.module.posts::field.description.instructions.categories'),
(70, 70, 'en', 'anomaly.module.posts::field.str_id.label.posts', 'anomaly.module.posts::field.str_id.warning.posts', 'anomaly.module.posts::field.str_id.placeholder.posts', 'anomaly.module.posts::field.str_id.instructions.posts'),
(71, 71, 'en', 'anomaly.module.posts::field.title.label.posts', 'anomaly.module.posts::field.title.warning.posts', 'anomaly.module.posts::field.title.placeholder.posts', 'anomaly.module.posts::field.title.instructions.posts'),
(72, 72, 'en', 'anomaly.module.posts::field.summary.label.posts', 'anomaly.module.posts::field.summary.warning.posts', 'anomaly.module.posts::field.summary.placeholder.posts', 'anomaly.module.posts::field.summary.instructions.posts'),
(73, 73, 'en', 'anomaly.module.posts::field.slug.label.posts', 'anomaly.module.posts::field.slug.warning.posts', 'anomaly.module.posts::field.slug.placeholder.posts', 'anomaly.module.posts::field.slug.instructions.posts'),
(74, 74, 'en', 'anomaly.module.posts::field.type.label.posts', 'anomaly.module.posts::field.type.warning.posts', 'anomaly.module.posts::field.type.placeholder.posts', 'anomaly.module.posts::field.type.instructions.posts'),
(75, 75, 'en', 'anomaly.module.posts::field.publish_at.label.posts', 'anomaly.module.posts::field.publish_at.warning.posts', 'anomaly.module.posts::field.publish_at.placeholder.posts', 'anomaly.module.posts::field.publish_at.instructions.posts'),
(76, 76, 'en', 'anomaly.module.posts::field.author.label.posts', 'anomaly.module.posts::field.author.warning.posts', 'anomaly.module.posts::field.author.placeholder.posts', 'anomaly.module.posts::field.author.instructions.posts'),
(77, 77, 'en', 'anomaly.module.posts::field.entry.label.posts', 'anomaly.module.posts::field.entry.warning.posts', 'anomaly.module.posts::field.entry.placeholder.posts', 'anomaly.module.posts::field.entry.instructions.posts'),
(78, 78, 'en', 'anomaly.module.posts::field.meta_title.label.posts', 'anomaly.module.posts::field.meta_title.warning.posts', 'anomaly.module.posts::field.meta_title.placeholder.posts', 'anomaly.module.posts::field.meta_title.instructions.posts'),
(79, 79, 'en', 'anomaly.module.posts::field.meta_description.label.posts', 'anomaly.module.posts::field.meta_description.warning.posts', 'anomaly.module.posts::field.meta_description.placeholder.posts', 'anomaly.module.posts::field.meta_description.instructions.posts'),
(80, 80, 'en', 'anomaly.module.posts::field.meta_keywords.label.posts', 'anomaly.module.posts::field.meta_keywords.warning.posts', 'anomaly.module.posts::field.meta_keywords.placeholder.posts', 'anomaly.module.posts::field.meta_keywords.instructions.posts'),
(81, 81, 'en', 'anomaly.module.posts::field.category.label.posts', 'anomaly.module.posts::field.category.warning.posts', 'anomaly.module.posts::field.category.placeholder.posts', 'anomaly.module.posts::field.category.instructions.posts'),
(82, 82, 'en', 'anomaly.module.posts::field.featured.label.posts', 'anomaly.module.posts::field.featured.warning.posts', 'anomaly.module.posts::field.featured.placeholder.posts', 'anomaly.module.posts::field.featured.instructions.posts'),
(83, 83, 'en', 'anomaly.module.posts::field.enabled.label.posts', 'anomaly.module.posts::field.enabled.warning.posts', 'anomaly.module.posts::field.enabled.placeholder.posts', 'anomaly.module.posts::field.enabled.instructions.posts'),
(84, 84, 'en', 'anomaly.module.posts::field.tags.label.posts', 'anomaly.module.posts::field.tags.warning.posts', 'anomaly.module.posts::field.tags.placeholder.posts', 'anomaly.module.posts::field.tags.instructions.posts'),
(85, 85, 'en', 'anomaly.module.posts::field.name.label.types', 'anomaly.module.posts::field.name.warning.types', 'anomaly.module.posts::field.name.placeholder.types', 'anomaly.module.posts::field.name.instructions.types'),
(86, 86, 'en', 'anomaly.module.posts::field.slug.label.types', 'anomaly.module.posts::field.slug.warning.types', 'anomaly.module.posts::field.slug.placeholder.types', 'anomaly.module.posts::field.slug.instructions.types'),
(87, 87, 'en', 'anomaly.module.posts::field.layout.label.types', 'anomaly.module.posts::field.layout.warning.types', 'anomaly.module.posts::field.layout.placeholder.types', 'anomaly.module.posts::field.layout.instructions.types'),
(88, 88, 'en', 'anomaly.module.posts::field.theme_layout.label.types', 'anomaly.module.posts::field.theme_layout.warning.types', 'anomaly.module.posts::field.theme_layout.placeholder.types', 'anomaly.module.posts::field.theme_layout.instructions.types'),
(89, 89, 'en', 'anomaly.module.posts::field.description.label.types', 'anomaly.module.posts::field.description.warning.types', 'anomaly.module.posts::field.description.placeholder.types', 'anomaly.module.posts::field.description.instructions.types'),
(90, 90, 'en', 'anomaly.module.preferences::field.user.label.preferences', 'anomaly.module.preferences::field.user.warning.preferences', 'anomaly.module.preferences::field.user.placeholder.preferences', 'anomaly.module.preferences::field.user.instructions.preferences'),
(91, 91, 'en', 'anomaly.module.preferences::field.key.label.preferences', 'anomaly.module.preferences::field.key.warning.preferences', 'anomaly.module.preferences::field.key.placeholder.preferences', 'anomaly.module.preferences::field.key.instructions.preferences'),
(92, 92, 'en', 'anomaly.module.preferences::field.value.label.preferences', 'anomaly.module.preferences::field.value.warning.preferences', 'anomaly.module.preferences::field.value.placeholder.preferences', 'anomaly.module.preferences::field.value.instructions.preferences'),
(93, 93, 'en', 'anomaly.module.redirects::field.from.label.redirects', 'anomaly.module.redirects::field.from.warning.redirects', 'anomaly.module.redirects::field.from.placeholder.redirects', 'anomaly.module.redirects::field.from.instructions.redirects'),
(94, 94, 'en', 'anomaly.module.redirects::field.to.label.redirects', 'anomaly.module.redirects::field.to.warning.redirects', 'anomaly.module.redirects::field.to.placeholder.redirects', 'anomaly.module.redirects::field.to.instructions.redirects'),
(95, 95, 'en', 'anomaly.module.redirects::field.status.label.redirects', 'anomaly.module.redirects::field.status.warning.redirects', 'anomaly.module.redirects::field.status.placeholder.redirects', 'anomaly.module.redirects::field.status.instructions.redirects'),
(96, 96, 'en', 'anomaly.module.redirects::field.secure.label.redirects', 'anomaly.module.redirects::field.secure.warning.redirects', 'anomaly.module.redirects::field.secure.placeholder.redirects', 'anomaly.module.redirects::field.secure.instructions.redirects'),
(97, 97, 'en', 'anomaly.module.settings::field.key.label.settings', 'anomaly.module.settings::field.key.warning.settings', 'anomaly.module.settings::field.key.placeholder.settings', 'anomaly.module.settings::field.key.instructions.settings'),
(98, 98, 'en', 'anomaly.module.settings::field.value.label.settings', 'anomaly.module.settings::field.value.warning.settings', 'anomaly.module.settings::field.value.placeholder.settings', 'anomaly.module.settings::field.value.instructions.settings'),
(99, 99, 'en', 'anomaly.module.users::field.email.label.users', 'anomaly.module.users::field.email.warning.users', 'anomaly.module.users::field.email.placeholder.users', 'anomaly.module.users::field.email.instructions.users'),
(100, 100, 'en', 'anomaly.module.users::field.username.label.users', 'anomaly.module.users::field.username.warning.users', 'anomaly.module.users::field.username.placeholder.users', 'anomaly.module.users::field.username.instructions.users'),
(101, 101, 'en', 'anomaly.module.users::field.password.label.users', 'anomaly.module.users::field.password.warning.users', 'anomaly.module.users::field.password.placeholder.users', 'anomaly.module.users::field.password.instructions.users'),
(102, 102, 'en', 'anomaly.module.users::field.roles.label.users', 'anomaly.module.users::field.roles.warning.users', 'anomaly.module.users::field.roles.placeholder.users', 'anomaly.module.users::field.roles.instructions.users'),
(103, 103, 'en', 'anomaly.module.users::field.display_name.label.users', 'anomaly.module.users::field.display_name.warning.users', 'anomaly.module.users::field.display_name.placeholder.users', 'anomaly.module.users::field.display_name.instructions.users'),
(104, 104, 'en', 'anomaly.module.users::field.first_name.label.users', 'anomaly.module.users::field.first_name.warning.users', 'anomaly.module.users::field.first_name.placeholder.users', 'anomaly.module.users::field.first_name.instructions.users'),
(105, 105, 'en', 'anomaly.module.users::field.last_name.label.users', 'anomaly.module.users::field.last_name.warning.users', 'anomaly.module.users::field.last_name.placeholder.users', 'anomaly.module.users::field.last_name.instructions.users'),
(106, 106, 'en', 'anomaly.module.users::field.activated.label.users', 'anomaly.module.users::field.activated.warning.users', 'anomaly.module.users::field.activated.placeholder.users', 'anomaly.module.users::field.activated.instructions.users'),
(107, 107, 'en', 'anomaly.module.users::field.enabled.label.users', 'anomaly.module.users::field.enabled.warning.users', 'anomaly.module.users::field.enabled.placeholder.users', 'anomaly.module.users::field.enabled.instructions.users'),
(108, 108, 'en', 'anomaly.module.users::field.permissions.label.users', 'anomaly.module.users::field.permissions.warning.users', 'anomaly.module.users::field.permissions.placeholder.users', 'anomaly.module.users::field.permissions.instructions.users'),
(109, 109, 'en', 'anomaly.module.users::field.last_login_at.label.users', 'anomaly.module.users::field.last_login_at.warning.users', 'anomaly.module.users::field.last_login_at.placeholder.users', 'anomaly.module.users::field.last_login_at.instructions.users'),
(110, 110, 'en', 'anomaly.module.users::field.remember_token.label.users', 'anomaly.module.users::field.remember_token.warning.users', 'anomaly.module.users::field.remember_token.placeholder.users', 'anomaly.module.users::field.remember_token.instructions.users'),
(111, 111, 'en', 'anomaly.module.users::field.activation_code.label.users', 'anomaly.module.users::field.activation_code.warning.users', 'anomaly.module.users::field.activation_code.placeholder.users', 'anomaly.module.users::field.activation_code.instructions.users'),
(112, 112, 'en', 'anomaly.module.users::field.reset_code.label.users', 'anomaly.module.users::field.reset_code.warning.users', 'anomaly.module.users::field.reset_code.placeholder.users', 'anomaly.module.users::field.reset_code.instructions.users'),
(113, 113, 'en', 'anomaly.module.users::field.last_activity_at.label.users', 'anomaly.module.users::field.last_activity_at.warning.users', 'anomaly.module.users::field.last_activity_at.placeholder.users', 'anomaly.module.users::field.last_activity_at.instructions.users'),
(114, 114, 'en', 'anomaly.module.users::field.ip_address.label.users', 'anomaly.module.users::field.ip_address.warning.users', 'anomaly.module.users::field.ip_address.placeholder.users', 'anomaly.module.users::field.ip_address.instructions.users'),
(115, 115, 'en', 'anomaly.module.users::field.name.label.roles', 'anomaly.module.users::field.name.warning.roles', 'anomaly.module.users::field.name.placeholder.roles', 'anomaly.module.users::field.name.instructions.roles'),
(116, 116, 'en', 'anomaly.module.users::field.slug.label.roles', 'anomaly.module.users::field.slug.warning.roles', 'anomaly.module.users::field.slug.placeholder.roles', 'anomaly.module.users::field.slug.instructions.roles'),
(117, 117, 'en', 'anomaly.module.users::field.description.label.roles', 'anomaly.module.users::field.description.warning.roles', 'anomaly.module.users::field.description.placeholder.roles', 'anomaly.module.users::field.description.instructions.roles'),
(118, 118, 'en', 'anomaly.module.users::field.permissions.label.roles', 'anomaly.module.users::field.permissions.warning.roles', 'anomaly.module.users::field.permissions.placeholder.roles', 'anomaly.module.users::field.permissions.instructions.roles'),
(119, 119, 'en', 'anomaly.extension.page_link_type::field.title.label.pages', 'anomaly.extension.page_link_type::field.title.warning.pages', 'anomaly.extension.page_link_type::field.title.placeholder.pages', 'anomaly.extension.page_link_type::field.title.instructions.pages'),
(120, 120, 'en', 'anomaly.extension.page_link_type::field.page.label.pages', 'anomaly.extension.page_link_type::field.page.warning.pages', 'anomaly.extension.page_link_type::field.page.placeholder.pages', 'anomaly.extension.page_link_type::field.page.instructions.pages'),
(121, 121, 'en', 'anomaly.extension.page_link_type::field.description.label.pages', 'anomaly.extension.page_link_type::field.description.warning.pages', 'anomaly.extension.page_link_type::field.description.placeholder.pages', 'anomaly.extension.page_link_type::field.description.instructions.pages'),
(122, 122, 'en', 'anomaly.extension.url_link_type::field.title.label.urls', 'anomaly.extension.url_link_type::field.title.warning.urls', 'anomaly.extension.url_link_type::field.title.placeholder.urls', 'anomaly.extension.url_link_type::field.title.instructions.urls'),
(123, 123, 'en', 'anomaly.extension.url_link_type::field.url.label.urls', 'anomaly.extension.url_link_type::field.url.warning.urls', 'anomaly.extension.url_link_type::field.url.placeholder.urls', 'anomaly.extension.url_link_type::field.url.instructions.urls'),
(124, 124, 'en', 'anomaly.extension.url_link_type::field.description.label.urls', 'anomaly.extension.url_link_type::field.description.warning.urls', 'anomaly.extension.url_link_type::field.description.placeholder.urls', 'anomaly.extension.url_link_type::field.description.instructions.urls'),
(125, 125, 'en', NULL, NULL, NULL, NULL),
(126, 126, 'en', NULL, NULL, NULL, NULL),
(134, 134, 'en', 'HTML', NULL, 'HTML', NULL),
(132, 132, 'en', NULL, NULL, NULL, NULL),
(130, 130, 'en', 'content', NULL, NULL, NULL),
(135, 135, 'en', 'Arabic', NULL, NULL, NULL),
(136, 135, 'ar', NULL, NULL, NULL, NULL),
(211, 214, 'en', 'anomaly.module.videos::field.description.label.series', 'anomaly.module.videos::field.description.warning.series', 'anomaly.module.videos::field.description.placeholder.series', 'anomaly.module.videos::field.description.instructions.series'),
(212, 215, 'en', 'anomaly.module.videos::field.name.label.categories', 'anomaly.module.videos::field.name.warning.categories', 'anomaly.module.videos::field.name.placeholder.categories', 'anomaly.module.videos::field.name.instructions.categories'),
(213, 216, 'en', 'anomaly.module.videos::field.slug.label.categories', 'anomaly.module.videos::field.slug.warning.categories', 'anomaly.module.videos::field.slug.placeholder.categories', 'anomaly.module.videos::field.slug.instructions.categories'),
(214, 217, 'en', 'anomaly.module.videos::field.description.label.categories', 'anomaly.module.videos::field.description.warning.categories', 'anomaly.module.videos::field.description.placeholder.categories', 'anomaly.module.videos::field.description.instructions.categories'),
(210, 213, 'en', 'anomaly.module.videos::field.slug.label.series', 'anomaly.module.videos::field.slug.warning.series', 'anomaly.module.videos::field.slug.placeholder.series', 'anomaly.module.videos::field.slug.instructions.series'),
(209, 212, 'en', 'anomaly.module.videos::field.title.label.series', 'anomaly.module.videos::field.title.warning.series', 'anomaly.module.videos::field.title.placeholder.series', 'anomaly.module.videos::field.title.instructions.series'),
(208, 211, 'en', 'anomaly.module.videos::field.categories.label.videos', 'anomaly.module.videos::field.categories.warning.videos', 'anomaly.module.videos::field.categories.placeholder.videos', 'anomaly.module.videos::field.categories.instructions.videos'),
(207, 210, 'en', 'anomaly.module.videos::field.series.label.videos', 'anomaly.module.videos::field.series.warning.videos', 'anomaly.module.videos::field.series.placeholder.videos', 'anomaly.module.videos::field.series.instructions.videos'),
(206, 209, 'en', 'anomaly.module.videos::field.description.label.videos', 'anomaly.module.videos::field.description.warning.videos', 'anomaly.module.videos::field.description.placeholder.videos', 'anomaly.module.videos::field.description.instructions.videos'),
(205, 208, 'en', 'anomaly.module.videos::field.slug.label.videos', 'anomaly.module.videos::field.slug.warning.videos', 'anomaly.module.videos::field.slug.placeholder.videos', 'anomaly.module.videos::field.slug.instructions.videos'),
(202, 205, 'en', 'anomaly.module.videos::field.poster.label.videos', 'anomaly.module.videos::field.poster.warning.videos', 'anomaly.module.videos::field.poster.placeholder.videos', 'anomaly.module.videos::field.poster.instructions.videos'),
(203, 206, 'en', 'anomaly.module.videos::field.video.label.videos', 'anomaly.module.videos::field.video.warning.videos', 'anomaly.module.videos::field.video.placeholder.videos', 'anomaly.module.videos::field.video.instructions.videos'),
(204, 207, 'en', 'anomaly.module.videos::field.title.label.videos', 'anomaly.module.videos::field.title.warning.videos', 'anomaly.module.videos::field.title.placeholder.videos', 'anomaly.module.videos::field.title.instructions.videos'),
(239, 247, 'en', 'anomaly.module.website_setting::field.title.label.website_setting', 'anomaly.module.website_setting::field.title.warning.website_setting', 'anomaly.module.website_setting::field.title.placeholder.website_setting', 'anomaly.module.website_setting::field.title.instructions.website_setting'),
(461, 481, 'en', 'anomaly.module.website_setting::field.Address.label.contact', 'anomaly.module.website_setting::field.Address.warning.contact', 'anomaly.module.website_setting::field.Address.placeholder.contact', 'anomaly.module.website_setting::field.Address.instructions.contact'),
(229, 235, 'en', 'anomaly.module.website_setting::field.title.label.website_setting', 'anomaly.module.website_setting::field.title.warning.website_setting', 'anomaly.module.website_setting::field.title.placeholder.website_setting', 'anomaly.module.website_setting::field.title.instructions.website_setting'),
(464, 484, 'en', 'anomaly.module.website_setting::field.latitude.label.map', 'anomaly.module.website_setting::field.latitude.warning.map', 'anomaly.module.website_setting::field.latitude.placeholder.map', 'anomaly.module.website_setting::field.latitude.instructions.map'),
(238, 245, 'en', 'anomaly.module.website_setting::field.title.label.website_setting', 'anomaly.module.website_setting::field.title.warning.website_setting', 'anomaly.module.website_setting::field.title.placeholder.website_setting', 'anomaly.module.website_setting::field.title.instructions.website_setting'),
(460, 480, 'en', 'anomaly.module.website_setting::field.Email.label.contact', 'anomaly.module.website_setting::field.Email.warning.contact', 'anomaly.module.website_setting::field.Email.placeholder.contact', 'anomaly.module.website_setting::field.Email.instructions.contact'),
(457, 477, 'en', 'anomaly.module.website_setting::field.title.label.contact', 'anomaly.module.website_setting::field.title.warning.contact', 'anomaly.module.website_setting::field.title.placeholder.contact', 'anomaly.module.website_setting::field.title.instructions.contact'),
(458, 478, 'en', 'anomaly.module.website_setting::field.Mobile.label.contact', 'anomaly.module.website_setting::field.Mobile.warning.contact', 'anomaly.module.website_setting::field.Mobile.placeholder.contact', 'anomaly.module.website_setting::field.Mobile.instructions.contact'),
(459, 479, 'en', 'anomaly.module.website_setting::field.Phone.label.contact', 'anomaly.module.website_setting::field.Phone.warning.contact', 'anomaly.module.website_setting::field.Phone.placeholder.contact', 'anomaly.module.website_setting::field.Phone.instructions.contact'),
(463, 483, 'en', 'anomaly.module.website_setting::field.Longitude.label.map', 'anomaly.module.website_setting::field.Longitude.warning.map', 'anomaly.module.website_setting::field.Longitude.placeholder.map', 'anomaly.module.website_setting::field.Longitude.instructions.map'),
(462, 482, 'en', 'anomaly.module.website_setting::field.title.label.map', 'anomaly.module.website_setting::field.title.warning.map', 'anomaly.module.website_setting::field.title.placeholder.map', 'anomaly.module.website_setting::field.title.instructions.map'),
(456, 476, 'en', 'anomaly.module.website_setting::field.LinkedIn.label.socialnetwork', 'anomaly.module.website_setting::field.LinkedIn.warning.socialnetwork', 'anomaly.module.website_setting::field.LinkedIn.placeholder.socialnetwork', 'anomaly.module.website_setting::field.LinkedIn.instructions.socialnetwork'),
(450, 470, 'en', 'anomaly.module.website_setting::field.title.label.logo', 'anomaly.module.website_setting::field.title.warning.logo', 'anomaly.module.website_setting::field.title.placeholder.logo', 'anomaly.module.website_setting::field.title.instructions.logo'),
(451, 471, 'en', 'anomaly.module.website_setting::field.logo.label.logo', 'anomaly.module.website_setting::field.logo.warning.logo', 'anomaly.module.website_setting::field.logo.placeholder.logo', 'anomaly.module.website_setting::field.logo.instructions.logo'),
(452, 472, 'en', 'anomaly.module.website_setting::field.title.label.socialnetwork', 'anomaly.module.website_setting::field.title.warning.socialnetwork', 'anomaly.module.website_setting::field.title.placeholder.socialnetwork', 'anomaly.module.website_setting::field.title.instructions.socialnetwork'),
(453, 473, 'en', 'anomaly.module.website_setting::field.Facebook.label.socialnetwork', 'anomaly.module.website_setting::field.Facebook.warning.socialnetwork', 'anomaly.module.website_setting::field.Facebook.placeholder.socialnetwork', 'anomaly.module.website_setting::field.Facebook.instructions.socialnetwork'),
(454, 474, 'en', 'anomaly.module.website_setting::field.Twitter.label.socialnetwork', 'anomaly.module.website_setting::field.Twitter.warning.socialnetwork', 'anomaly.module.website_setting::field.Twitter.placeholder.socialnetwork', 'anomaly.module.website_setting::field.Twitter.instructions.socialnetwork'),
(455, 475, 'en', 'anomaly.module.website_setting::field.Instagram.label.socialnetwork', 'anomaly.module.website_setting::field.Instagram.warning.socialnetwork', 'anomaly.module.website_setting::field.Instagram.placeholder.socialnetwork', 'anomaly.module.website_setting::field.Instagram.instructions.socialnetwork');

-- --------------------------------------------------------

--
-- Table structure for table `default_streams_fields`
--

CREATE TABLE `default_streams_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_streams_fields`
--

INSERT INTO `default_streams_fields` (`id`, `namespace`, `slug`, `type`, `config`, `locked`) VALUES
(1, 'configuration', 'scope', 'anomaly.field_type.text', 'a:0:{}', 1),
(2, 'configuration', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(3, 'configuration', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(4, 'dashboard', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(5, 'dashboard', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:"slugify";s:4:"name";}', 1),
(6, 'dashboard', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(7, 'dashboard', 'layout', 'anomaly.field_type.select', 'a:1:{s:7:"options";a:9:{i:24;s:48:"anomaly.module.dashboard::field.layout.option.24";s:5:"12-12";s:51:"anomaly.module.dashboard::field.layout.option.12-12";s:4:"16-8";s:50:"anomaly.module.dashboard::field.layout.option.16-8";s:4:"8-16";s:50:"anomaly.module.dashboard::field.layout.option.8-16";s:5:"8-8-8";s:51:"anomaly.module.dashboard::field.layout.option.8-8-8";s:6:"6-12-6";s:52:"anomaly.module.dashboard::field.layout.option.6-12-6";s:6:"12-6-6";s:52:"anomaly.module.dashboard::field.layout.option.12-6-6";s:6:"6-6-12";s:52:"anomaly.module.dashboard::field.layout.option.6-6-12";s:7:"6-6-6-6";s:53:"anomaly.module.dashboard::field.layout.option.6-6-6-6";}}', 1),
(8, 'dashboard', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(9, 'dashboard', 'extension', 'anomaly.field_type.addon', 'a:2:{s:4:"type";s:9:"extension";s:6:"search";s:34:"anomaly.module.dashboard::widget.*";}', 1),
(10, 'dashboard', 'column', 'anomaly.field_type.integer', 'a:2:{s:3:"min";i:1;s:13:"default_value";i:1;}', 1),
(11, 'dashboard', 'pinned', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(12, 'dashboard', 'dashboard', 'anomaly.field_type.relationship', 'a:1:{s:7:"related";s:48:"Anomaly\\DashboardModule\\Dashboard\\DashboardModel";}', 1),
(13, 'dashboard', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:"related";s:34:"Anomaly\\UsersModule\\Role\\RoleModel";}', 1),
(14, 'files', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(15, 'files', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:"slugify";s:4:"name";}', 1),
(16, 'files', 'adapter', 'anomaly.field_type.addon', 'a:2:{s:4:"type";s:10:"extensions";s:6:"search";s:31:"anomaly.module.files::adapter.*";}', 1),
(17, 'files', 'folder', 'anomaly.field_type.relationship', 'a:1:{s:7:"related";s:38:"Anomaly\\FilesModule\\Folder\\FolderModel";}', 1),
(18, 'files', 'disk', 'anomaly.field_type.relationship', 'a:1:{s:7:"related";s:34:"Anomaly\\FilesModule\\Disk\\DiskModel";}', 1),
(19, 'files', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(20, 'files', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(21, 'files', 'allowed_types', 'anomaly.field_type.tags', 'a:0:{}', 1),
(22, 'files', 'keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(23, 'files', 'extension', 'anomaly.field_type.text', 'a:0:{}', 1),
(24, 'files', 'width', 'anomaly.field_type.text', 'a:0:{}', 1),
(25, 'files', 'height', 'anomaly.field_type.text', 'a:0:{}', 1),
(26, 'files', 'mime_type', 'anomaly.field_type.text', 'a:0:{}', 1),
(27, 'files', 'size', 'anomaly.field_type.integer', 'a:0:{}', 1),
(28, 'navigation', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(29, 'navigation', 'class', 'anomaly.field_type.text', 'a:0:{}', 1),
(30, 'navigation', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(31, 'navigation', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(32, 'navigation', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:"slugify";s:4:"name";}', 1),
(33, 'navigation', 'menu', 'anomaly.field_type.relationship', 'a:1:{s:7:"related";s:39:"Anomaly\\NavigationModule\\Menu\\MenuModel";}', 1),
(34, 'navigation', 'parent', 'anomaly.field_type.relationship', 'a:1:{s:7:"related";s:39:"Anomaly\\NavigationModule\\Link\\LinkModel";}', 1),
(35, 'navigation', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:"related";s:34:"Anomaly\\UsersModule\\Role\\RoleModel";}', 1),
(36, 'navigation', 'type', 'anomaly.field_type.addon', 'a:2:{s:4:"type";s:9:"extension";s:6:"search";s:38:"anomaly.module.navigation::link_type.*";}', 1),
(37, 'navigation', 'target', 'anomaly.field_type.select', 'a:2:{s:13:"default_value";s:5:"_self";s:7:"options";a:2:{s:5:"_self";s:51:"anomaly.module.navigation::field.target.option.self";s:6:"_blank";s:52:"anomaly.module.navigation::field.target.option.blank";}}', 1),
(38, 'pages', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(39, 'pages', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(40, 'pages', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:"slugify";s:5:"title";s:4:"type";s:1:"-";}', 1),
(41, 'pages', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(42, 'pages', 'path', 'anomaly.field_type.text', 'a:0:{}', 1),
(43, 'pages', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:"default_value";b:1;}', 1),
(44, 'pages', 'home', 'anomaly.field_type.boolean', 'a:1:{s:13:"default_value";b:0;}', 1),
(45, 'pages', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(46, 'pages', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(47, 'pages', 'meta_keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(48, 'pages', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:"default_value";s:25:"<h1>{{ page.title }}</h1>";s:4:"mode";s:4:"twig";}', 1),
(49, 'pages', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:"related";s:34:"Anomaly\\UsersModule\\Role\\RoleModel";}', 1),
(50, 'pages', 'parent', 'anomaly.field_type.relationship', 'a:1:{s:7:"related";s:34:"Anomaly\\PagesModule\\Page\\PageModel";}', 1),
(51, 'pages', 'theme_layout', 'anomaly.field_type.select', 'a:2:{s:13:"default_value";s:27:"theme::layouts/default.twig";s:7:"handler";s:46:"Anomaly\\SelectFieldType\\Handler\\Layouts@handle";}', 1),
(52, 'pages', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:"related";s:34:"Anomaly\\PagesModule\\Type\\TypeModel";}', 1),
(53, 'pages', 'handler', 'anomaly.field_type.addon', 'a:3:{s:4:"type";s:9:"extension";s:6:"search";s:31:"anomaly.module.pages::handler.*";s:13:"default_value";s:38:"anomaly.extension.default_page_handler";}', 1),
(54, 'pages', 'visible', 'anomaly.field_type.boolean', 'a:1:{s:13:"default_value";b:1;}', 1),
(55, 'pages', 'exact', 'anomaly.field_type.boolean', 'a:1:{s:13:"default_value";b:1;}', 1),
(56, 'pages', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(57, 'pages', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(58, 'pages', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(59, 'posts', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(60, 'posts', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(61, 'posts', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(62, 'posts', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:"slugify";s:5:"title";s:4:"type";s:1:"-";}', 1),
(63, 'posts', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(64, 'posts', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:"related";s:34:"Anomaly\\PostsModule\\Type\\TypeModel";}', 1),
(65, 'posts', 'tags', 'anomaly.field_type.tags', 'a:0:{}', 1),
(66, 'posts', 'summary', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(67, 'posts', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(68, 'posts', 'publish_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(69, 'posts', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(70, 'posts', 'author', 'anomaly.field_type.relationship', 'a:2:{s:4:"mode";s:6:"lookup";s:7:"related";s:34:"Anomaly\\UsersModule\\User\\UserModel";}', 1),
(71, 'posts', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:"default_value";s:22:"{{ post.content|raw }}";s:4:"mode";s:4:"twig";}', 1),
(72, 'posts', 'category', 'anomaly.field_type.relationship', 'a:1:{s:7:"related";s:42:"Anomaly\\PostsModule\\Category\\CategoryModel";}', 1),
(73, 'posts', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:"default_value";b:0;}', 1),
(74, 'posts', 'featured', 'anomaly.field_type.boolean', 'a:1:{s:13:"default_value";b:0;}', 1),
(75, 'posts', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(76, 'posts', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(77, 'posts', 'meta_keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(78, 'posts', 'ttl', 'anomaly.field_type.integer', 'a:3:{s:3:"min";i:0;s:4:"step";i:1;s:4:"page";i:5;}', 1),
(79, 'posts', 'theme_layout', 'anomaly.field_type.select', 'a:1:{s:7:"handler";s:39:"Anomaly\\SelectFieldType\\Handler\\Layouts";}', 1),
(80, 'preferences', 'user', 'anomaly.field_type.relationship', 'a:2:{s:4:"mode";s:6:"lookup";s:7:"related";s:34:"Anomaly\\UsersModule\\User\\UserModel";}', 1),
(81, 'preferences', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(82, 'preferences', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(83, 'redirects', 'from', 'anomaly.field_type.text', 'a:0:{}', 1),
(84, 'redirects', 'to', 'anomaly.field_type.text', 'a:0:{}', 1),
(85, 'redirects', 'status', 'anomaly.field_type.select', 'a:2:{s:13:"default_value";s:3:"301";s:7:"options";a:2:{i:301;s:49:"anomaly.module.redirects::field.status.option.301";i:302;s:49:"anomaly.module.redirects::field.status.option.302";}}', 1),
(86, 'redirects', 'secure', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(87, 'settings', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(88, 'settings', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(89, 'users', 'email', 'anomaly.field_type.email', 'a:0:{}', 1),
(90, 'users', 'username', 'anomaly.field_type.slug', 'a:2:{s:4:"type";s:1:"_";s:9:"lowercase";b:0;}', 1),
(91, 'users', 'password', 'anomaly.field_type.text', 'a:1:{s:4:"type";s:8:"password";}', 1),
(92, 'users', 'remember_token', 'anomaly.field_type.text', 'a:0:{}', 1),
(93, 'users', 'ip_address', 'anomaly.field_type.text', 'a:0:{}', 1),
(94, 'users', 'last_login_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(95, 'users', 'last_activity_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(96, 'users', 'permissions', 'anomaly.field_type.checkboxes', 'a:0:{}', 1),
(97, 'users', 'display_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(98, 'users', 'first_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(99, 'users', 'last_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(100, 'users', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(101, 'users', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(102, 'users', 'reset_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(103, 'users', 'reset_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(104, 'users', 'activation_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(105, 'users', 'activation_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(106, 'users', 'activated', 'anomaly.field_type.boolean', 'a:1:{s:13:"default_value";b:0;}', 1),
(107, 'users', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:"default_value";b:1;}', 1),
(108, 'users', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:"slugify";s:4:"name";}', 1),
(109, 'users', 'roles', 'anomaly.field_type.multiple', 'a:1:{s:7:"related";s:34:"Anomaly\\UsersModule\\Role\\RoleModel";}', 1),
(110, 'page_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(111, 'page_link_type', 'page', 'anomaly.field_type.relationship', 'a:2:{s:4:"mode";s:6:"lookup";s:7:"related";s:34:"Anomaly\\PagesModule\\Page\\PageModel";}', 1),
(112, 'page_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(113, 'url_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(114, 'url_link_type', 'url', 'anomaly.field_type.text', 'a:0:{}', 1),
(115, 'url_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(120, 'pages', 'html_content', 'anomaly.field_type.editor', 'a:4:{s:4:"mode";s:4:"twig";s:13:"default_value";N;s:6:"height";s:3:"500";s:9:"word_wrap";s:2:"no";}', 0),
(118, 'posts', 'b', 'anomaly.field_type.file', 'a:3:{s:7:"folders";a:1:{i:0;s:1:"1";}s:3:"max";N;s:4:"mode";s:7:"default";}', 0),
(121, 'variables', 'multi_lanaguages', 'anomaly.field_type.select', 'a:3:{s:4:"mode";s:8:"dropdown";s:7:"options";s:21:"en:English\r\nar:Arabic";s:13:"default_value";N;}', 0),
(186, 'videos', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(187, 'videos', 'video', 'anomaly.field_type.video', 'a:0:{}', 1),
(188, 'videos', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(189, 'videos', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(190, 'videos', 'slug', 'anomaly.field_type.slug', 'a:2:{s:4:"type";s:1:"_";s:7:"slugify";s:5:"title";}', 1),
(191, 'videos', 'poster', 'anomaly.field_type.file', 'a:0:{}', 1),
(192, 'videos', 'series', 'anomaly.field_type.relationship', 'a:2:{s:10:"title_name";s:5:"title";s:7:"related";s:39:"Anomaly\\VideosModule\\Series\\SeriesModel";}', 1),
(193, 'videos', 'categories', 'anomaly.field_type.multiple', 'a:2:{s:10:"title_name";s:4:"name";s:7:"related";s:43:"Anomaly\\VideosModule\\Category\\CategoryModel";}', 1),
(533, 'website_setting', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(195, 'website_setting', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(228, 'website_setting', 'logo1', 'anomaly.field_type.image', 'a:3:{s:7:"folders";N;s:12:"aspect_ratio";N;s:10:"min_height";i:400;}', 1),
(544, 'website_setting', 'Address', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(543, 'website_setting', 'email', 'anomaly.field_type.email', 'a:0:{}', 1),
(542, 'website_setting', 'Phone', 'anomaly.field_type.text', 'a:0:{}', 1),
(540, 'website_setting', 'Twitter', 'anomaly.field_type.url', 'a:0:{}', 1),
(541, 'website_setting', 'Mobile', 'anomaly.field_type.text', 'a:0:{}', 1),
(539, 'website_setting', 'LinkedIn', 'anomaly.field_type.url', 'a:0:{}', 1),
(538, 'website_setting', 'Instagram', 'anomaly.field_type.url', 'a:0:{}', 1),
(537, 'website_setting', 'Facebook', 'anomaly.field_type.url', 'a:0:{}', 1),
(536, 'website_setting', 'logo', 'anomaly.field_type.file', 'a:3:{s:7:"folders";a:1:{i:0;s:6:"images";}s:12:"aspect_ratio";N;s:10:"min_height";i:400;}', 1),
(535, 'website_setting', 'latitude', 'anomaly.field_type.text', 'a:0:{}', 1),
(534, 'website_setting', 'Longitude', 'anomaly.field_type.text', 'a:0:{}', 1),
(475, 'website_setting', 'lat', 'anomaly.field_type.text', 'a:0:{}', 1),
(474, 'website_setting', 'long ', 'anomaly.field_type.text', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `default_streams_fields_translations`
--

CREATE TABLE `default_streams_fields_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_streams_fields_translations`
--

INSERT INTO `default_streams_fields_translations` (`id`, `field_id`, `locale`, `name`, `placeholder`, `warning`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::field.scope.name', 'anomaly.module.configuration::field.scope.placeholder', 'anomaly.module.configuration::field.scope.warning', 'anomaly.module.configuration::field.scope.instructions'),
(2, 2, 'en', 'anomaly.module.configuration::field.key.name', 'anomaly.module.configuration::field.key.placeholder', 'anomaly.module.configuration::field.key.warning', 'anomaly.module.configuration::field.key.instructions'),
(3, 3, 'en', 'anomaly.module.configuration::field.value.name', 'anomaly.module.configuration::field.value.placeholder', 'anomaly.module.configuration::field.value.warning', 'anomaly.module.configuration::field.value.instructions'),
(4, 4, 'en', 'anomaly.module.dashboard::field.name.name', 'anomaly.module.dashboard::field.name.placeholder', 'anomaly.module.dashboard::field.name.warning', 'anomaly.module.dashboard::field.name.instructions'),
(5, 5, 'en', 'anomaly.module.dashboard::field.slug.name', 'anomaly.module.dashboard::field.slug.placeholder', 'anomaly.module.dashboard::field.slug.warning', 'anomaly.module.dashboard::field.slug.instructions'),
(6, 6, 'en', 'anomaly.module.dashboard::field.description.name', 'anomaly.module.dashboard::field.description.placeholder', 'anomaly.module.dashboard::field.description.warning', 'anomaly.module.dashboard::field.description.instructions'),
(7, 7, 'en', 'anomaly.module.dashboard::field.layout.name', 'anomaly.module.dashboard::field.layout.placeholder', 'anomaly.module.dashboard::field.layout.warning', 'anomaly.module.dashboard::field.layout.instructions'),
(8, 8, 'en', 'anomaly.module.dashboard::field.title.name', 'anomaly.module.dashboard::field.title.placeholder', 'anomaly.module.dashboard::field.title.warning', 'anomaly.module.dashboard::field.title.instructions'),
(9, 9, 'en', 'anomaly.module.dashboard::field.extension.name', 'anomaly.module.dashboard::field.extension.placeholder', 'anomaly.module.dashboard::field.extension.warning', 'anomaly.module.dashboard::field.extension.instructions'),
(10, 10, 'en', 'anomaly.module.dashboard::field.column.name', 'anomaly.module.dashboard::field.column.placeholder', 'anomaly.module.dashboard::field.column.warning', 'anomaly.module.dashboard::field.column.instructions'),
(11, 11, 'en', 'anomaly.module.dashboard::field.pinned.name', 'anomaly.module.dashboard::field.pinned.placeholder', 'anomaly.module.dashboard::field.pinned.warning', 'anomaly.module.dashboard::field.pinned.instructions'),
(12, 12, 'en', 'anomaly.module.dashboard::field.dashboard.name', 'anomaly.module.dashboard::field.dashboard.placeholder', 'anomaly.module.dashboard::field.dashboard.warning', 'anomaly.module.dashboard::field.dashboard.instructions'),
(13, 13, 'en', 'anomaly.module.dashboard::field.allowed_roles.name', 'anomaly.module.dashboard::field.allowed_roles.placeholder', 'anomaly.module.dashboard::field.allowed_roles.warning', 'anomaly.module.dashboard::field.allowed_roles.instructions'),
(14, 14, 'en', 'anomaly.module.files::field.name.name', 'anomaly.module.files::field.name.placeholder', 'anomaly.module.files::field.name.warning', 'anomaly.module.files::field.name.instructions'),
(15, 15, 'en', 'anomaly.module.files::field.slug.name', 'anomaly.module.files::field.slug.placeholder', 'anomaly.module.files::field.slug.warning', 'anomaly.module.files::field.slug.instructions'),
(16, 16, 'en', 'anomaly.module.files::field.adapter.name', 'anomaly.module.files::field.adapter.placeholder', 'anomaly.module.files::field.adapter.warning', 'anomaly.module.files::field.adapter.instructions'),
(17, 17, 'en', 'anomaly.module.files::field.folder.name', 'anomaly.module.files::field.folder.placeholder', 'anomaly.module.files::field.folder.warning', 'anomaly.module.files::field.folder.instructions'),
(18, 18, 'en', 'anomaly.module.files::field.disk.name', 'anomaly.module.files::field.disk.placeholder', 'anomaly.module.files::field.disk.warning', 'anomaly.module.files::field.disk.instructions'),
(19, 19, 'en', 'anomaly.module.files::field.entry.name', 'anomaly.module.files::field.entry.placeholder', 'anomaly.module.files::field.entry.warning', 'anomaly.module.files::field.entry.instructions'),
(20, 20, 'en', 'anomaly.module.files::field.description.name', 'anomaly.module.files::field.description.placeholder', 'anomaly.module.files::field.description.warning', 'anomaly.module.files::field.description.instructions'),
(21, 21, 'en', 'anomaly.module.files::field.allowed_types.name', 'anomaly.module.files::field.allowed_types.placeholder', 'anomaly.module.files::field.allowed_types.warning', 'anomaly.module.files::field.allowed_types.instructions'),
(22, 22, 'en', 'anomaly.module.files::field.keywords.name', 'anomaly.module.files::field.keywords.placeholder', 'anomaly.module.files::field.keywords.warning', 'anomaly.module.files::field.keywords.instructions'),
(23, 23, 'en', 'anomaly.module.files::field.extension.name', 'anomaly.module.files::field.extension.placeholder', 'anomaly.module.files::field.extension.warning', 'anomaly.module.files::field.extension.instructions'),
(24, 24, 'en', 'anomaly.module.files::field.width.name', 'anomaly.module.files::field.width.placeholder', 'anomaly.module.files::field.width.warning', 'anomaly.module.files::field.width.instructions'),
(25, 25, 'en', 'anomaly.module.files::field.height.name', 'anomaly.module.files::field.height.placeholder', 'anomaly.module.files::field.height.warning', 'anomaly.module.files::field.height.instructions'),
(26, 26, 'en', 'anomaly.module.files::field.mime_type.name', 'anomaly.module.files::field.mime_type.placeholder', 'anomaly.module.files::field.mime_type.warning', 'anomaly.module.files::field.mime_type.instructions'),
(27, 27, 'en', 'anomaly.module.files::field.size.name', 'anomaly.module.files::field.size.placeholder', 'anomaly.module.files::field.size.warning', 'anomaly.module.files::field.size.instructions'),
(28, 28, 'en', 'anomaly.module.navigation::field.name.name', 'anomaly.module.navigation::field.name.placeholder', 'anomaly.module.navigation::field.name.warning', 'anomaly.module.navigation::field.name.instructions'),
(29, 29, 'en', 'anomaly.module.navigation::field.class.name', 'anomaly.module.navigation::field.class.placeholder', 'anomaly.module.navigation::field.class.warning', 'anomaly.module.navigation::field.class.instructions'),
(30, 30, 'en', 'anomaly.module.navigation::field.description.name', 'anomaly.module.navigation::field.description.placeholder', 'anomaly.module.navigation::field.description.warning', 'anomaly.module.navigation::field.description.instructions'),
(31, 31, 'en', 'anomaly.module.navigation::field.entry.name', 'anomaly.module.navigation::field.entry.placeholder', 'anomaly.module.navigation::field.entry.warning', 'anomaly.module.navigation::field.entry.instructions'),
(32, 32, 'en', 'anomaly.module.navigation::field.slug.name', 'anomaly.module.navigation::field.slug.placeholder', 'anomaly.module.navigation::field.slug.warning', 'anomaly.module.navigation::field.slug.instructions'),
(33, 33, 'en', 'anomaly.module.navigation::field.menu.name', 'anomaly.module.navigation::field.menu.placeholder', 'anomaly.module.navigation::field.menu.warning', 'anomaly.module.navigation::field.menu.instructions'),
(34, 34, 'en', 'anomaly.module.navigation::field.parent.name', 'anomaly.module.navigation::field.parent.placeholder', 'anomaly.module.navigation::field.parent.warning', 'anomaly.module.navigation::field.parent.instructions'),
(35, 35, 'en', 'anomaly.module.navigation::field.allowed_roles.name', 'anomaly.module.navigation::field.allowed_roles.placeholder', 'anomaly.module.navigation::field.allowed_roles.warning', 'anomaly.module.navigation::field.allowed_roles.instructions'),
(36, 36, 'en', 'anomaly.module.navigation::field.type.name', 'anomaly.module.navigation::field.type.placeholder', 'anomaly.module.navigation::field.type.warning', 'anomaly.module.navigation::field.type.instructions'),
(37, 37, 'en', 'anomaly.module.navigation::field.target.name', 'anomaly.module.navigation::field.target.placeholder', 'anomaly.module.navigation::field.target.warning', 'anomaly.module.navigation::field.target.instructions'),
(38, 38, 'en', 'anomaly.module.pages::field.str_id.name', 'anomaly.module.pages::field.str_id.placeholder', 'anomaly.module.pages::field.str_id.warning', 'anomaly.module.pages::field.str_id.instructions'),
(39, 39, 'en', 'anomaly.module.pages::field.title.name', 'anomaly.module.pages::field.title.placeholder', 'anomaly.module.pages::field.title.warning', 'anomaly.module.pages::field.title.instructions'),
(40, 40, 'en', 'anomaly.module.pages::field.slug.name', 'anomaly.module.pages::field.slug.placeholder', 'anomaly.module.pages::field.slug.warning', 'anomaly.module.pages::field.slug.instructions'),
(41, 41, 'en', 'anomaly.module.pages::field.content.name', 'anomaly.module.pages::field.content.placeholder', 'anomaly.module.pages::field.content.warning', 'anomaly.module.pages::field.content.instructions'),
(42, 42, 'en', 'anomaly.module.pages::field.path.name', 'anomaly.module.pages::field.path.placeholder', 'anomaly.module.pages::field.path.warning', 'anomaly.module.pages::field.path.instructions'),
(43, 43, 'en', 'anomaly.module.pages::field.enabled.name', 'anomaly.module.pages::field.enabled.placeholder', 'anomaly.module.pages::field.enabled.warning', 'anomaly.module.pages::field.enabled.instructions'),
(44, 44, 'en', 'anomaly.module.pages::field.home.name', 'anomaly.module.pages::field.home.placeholder', 'anomaly.module.pages::field.home.warning', 'anomaly.module.pages::field.home.instructions'),
(45, 45, 'en', 'anomaly.module.pages::field.meta_title.name', 'anomaly.module.pages::field.meta_title.placeholder', 'anomaly.module.pages::field.meta_title.warning', 'anomaly.module.pages::field.meta_title.instructions'),
(46, 46, 'en', 'anomaly.module.pages::field.meta_description.name', 'anomaly.module.pages::field.meta_description.placeholder', 'anomaly.module.pages::field.meta_description.warning', 'anomaly.module.pages::field.meta_description.instructions'),
(47, 47, 'en', 'anomaly.module.pages::field.meta_keywords.name', 'anomaly.module.pages::field.meta_keywords.placeholder', 'anomaly.module.pages::field.meta_keywords.warning', 'anomaly.module.pages::field.meta_keywords.instructions'),
(48, 48, 'en', 'anomaly.module.pages::field.layout.name', 'anomaly.module.pages::field.layout.placeholder', 'anomaly.module.pages::field.layout.warning', 'anomaly.module.pages::field.layout.instructions'),
(49, 49, 'en', 'anomaly.module.pages::field.allowed_roles.name', 'anomaly.module.pages::field.allowed_roles.placeholder', 'anomaly.module.pages::field.allowed_roles.warning', 'anomaly.module.pages::field.allowed_roles.instructions'),
(50, 50, 'en', 'anomaly.module.pages::field.parent.name', 'anomaly.module.pages::field.parent.placeholder', 'anomaly.module.pages::field.parent.warning', 'anomaly.module.pages::field.parent.instructions'),
(51, 51, 'en', 'anomaly.module.pages::field.theme_layout.name', 'anomaly.module.pages::field.theme_layout.placeholder', 'anomaly.module.pages::field.theme_layout.warning', 'anomaly.module.pages::field.theme_layout.instructions'),
(52, 52, 'en', 'anomaly.module.pages::field.type.name', 'anomaly.module.pages::field.type.placeholder', 'anomaly.module.pages::field.type.warning', 'anomaly.module.pages::field.type.instructions'),
(53, 53, 'en', 'anomaly.module.pages::field.handler.name', 'anomaly.module.pages::field.handler.placeholder', 'anomaly.module.pages::field.handler.warning', 'anomaly.module.pages::field.handler.instructions'),
(54, 54, 'en', 'anomaly.module.pages::field.visible.name', 'anomaly.module.pages::field.visible.placeholder', 'anomaly.module.pages::field.visible.warning', 'anomaly.module.pages::field.visible.instructions'),
(55, 55, 'en', 'anomaly.module.pages::field.exact.name', 'anomaly.module.pages::field.exact.placeholder', 'anomaly.module.pages::field.exact.warning', 'anomaly.module.pages::field.exact.instructions'),
(56, 56, 'en', 'anomaly.module.pages::field.entry.name', 'anomaly.module.pages::field.entry.placeholder', 'anomaly.module.pages::field.entry.warning', 'anomaly.module.pages::field.entry.instructions'),
(57, 57, 'en', 'anomaly.module.pages::field.name.name', 'anomaly.module.pages::field.name.placeholder', 'anomaly.module.pages::field.name.warning', 'anomaly.module.pages::field.name.instructions'),
(58, 58, 'en', 'anomaly.module.pages::field.description.name', 'anomaly.module.pages::field.description.placeholder', 'anomaly.module.pages::field.description.warning', 'anomaly.module.pages::field.description.instructions'),
(59, 59, 'en', 'anomaly.module.posts::field.str_id.name', 'anomaly.module.posts::field.str_id.placeholder', 'anomaly.module.posts::field.str_id.warning', 'anomaly.module.posts::field.str_id.instructions'),
(60, 60, 'en', 'anomaly.module.posts::field.name.name', 'anomaly.module.posts::field.name.placeholder', 'anomaly.module.posts::field.name.warning', 'anomaly.module.posts::field.name.instructions'),
(61, 61, 'en', 'anomaly.module.posts::field.title.name', 'anomaly.module.posts::field.title.placeholder', 'anomaly.module.posts::field.title.warning', 'anomaly.module.posts::field.title.instructions'),
(62, 62, 'en', 'anomaly.module.posts::field.slug.name', 'anomaly.module.posts::field.slug.placeholder', 'anomaly.module.posts::field.slug.warning', 'anomaly.module.posts::field.slug.instructions'),
(63, 63, 'en', 'anomaly.module.posts::field.content.name', 'anomaly.module.posts::field.content.placeholder', 'anomaly.module.posts::field.content.warning', 'anomaly.module.posts::field.content.instructions'),
(64, 64, 'en', 'anomaly.module.posts::field.type.name', 'anomaly.module.posts::field.type.placeholder', 'anomaly.module.posts::field.type.warning', 'anomaly.module.posts::field.type.instructions'),
(65, 65, 'en', 'anomaly.module.posts::field.tags.name', 'anomaly.module.posts::field.tags.placeholder', 'anomaly.module.posts::field.tags.warning', 'anomaly.module.posts::field.tags.instructions'),
(66, 66, 'en', 'anomaly.module.posts::field.summary.name', 'anomaly.module.posts::field.summary.placeholder', 'anomaly.module.posts::field.summary.warning', 'anomaly.module.posts::field.summary.instructions'),
(67, 67, 'en', 'anomaly.module.posts::field.description.name', 'anomaly.module.posts::field.description.placeholder', 'anomaly.module.posts::field.description.warning', 'anomaly.module.posts::field.description.instructions'),
(68, 68, 'en', 'anomaly.module.posts::field.publish_at.name', 'anomaly.module.posts::field.publish_at.placeholder', 'anomaly.module.posts::field.publish_at.warning', 'anomaly.module.posts::field.publish_at.instructions'),
(69, 69, 'en', 'anomaly.module.posts::field.entry.name', 'anomaly.module.posts::field.entry.placeholder', 'anomaly.module.posts::field.entry.warning', 'anomaly.module.posts::field.entry.instructions'),
(70, 70, 'en', 'anomaly.module.posts::field.author.name', 'anomaly.module.posts::field.author.placeholder', 'anomaly.module.posts::field.author.warning', 'anomaly.module.posts::field.author.instructions'),
(71, 71, 'en', 'anomaly.module.posts::field.layout.name', 'anomaly.module.posts::field.layout.placeholder', 'anomaly.module.posts::field.layout.warning', 'anomaly.module.posts::field.layout.instructions'),
(72, 72, 'en', 'anomaly.module.posts::field.category.name', 'anomaly.module.posts::field.category.placeholder', 'anomaly.module.posts::field.category.warning', 'anomaly.module.posts::field.category.instructions'),
(73, 73, 'en', 'anomaly.module.posts::field.enabled.name', 'anomaly.module.posts::field.enabled.placeholder', 'anomaly.module.posts::field.enabled.warning', 'anomaly.module.posts::field.enabled.instructions'),
(74, 74, 'en', 'anomaly.module.posts::field.featured.name', 'anomaly.module.posts::field.featured.placeholder', 'anomaly.module.posts::field.featured.warning', 'anomaly.module.posts::field.featured.instructions'),
(75, 75, 'en', 'anomaly.module.posts::field.meta_title.name', 'anomaly.module.posts::field.meta_title.placeholder', 'anomaly.module.posts::field.meta_title.warning', 'anomaly.module.posts::field.meta_title.instructions'),
(76, 76, 'en', 'anomaly.module.posts::field.meta_description.name', 'anomaly.module.posts::field.meta_description.placeholder', 'anomaly.module.posts::field.meta_description.warning', 'anomaly.module.posts::field.meta_description.instructions'),
(77, 77, 'en', 'anomaly.module.posts::field.meta_keywords.name', 'anomaly.module.posts::field.meta_keywords.placeholder', 'anomaly.module.posts::field.meta_keywords.warning', 'anomaly.module.posts::field.meta_keywords.instructions'),
(78, 78, 'en', 'anomaly.module.posts::field.ttl.name', 'anomaly.module.posts::field.ttl.placeholder', 'anomaly.module.posts::field.ttl.warning', 'anomaly.module.posts::field.ttl.instructions'),
(79, 79, 'en', 'anomaly.module.posts::field.theme_layout.name', 'anomaly.module.posts::field.theme_layout.placeholder', 'anomaly.module.posts::field.theme_layout.warning', 'anomaly.module.posts::field.theme_layout.instructions'),
(80, 80, 'en', 'anomaly.module.preferences::field.user.name', 'anomaly.module.preferences::field.user.placeholder', 'anomaly.module.preferences::field.user.warning', 'anomaly.module.preferences::field.user.instructions'),
(81, 81, 'en', 'anomaly.module.preferences::field.key.name', 'anomaly.module.preferences::field.key.placeholder', 'anomaly.module.preferences::field.key.warning', 'anomaly.module.preferences::field.key.instructions'),
(82, 82, 'en', 'anomaly.module.preferences::field.value.name', 'anomaly.module.preferences::field.value.placeholder', 'anomaly.module.preferences::field.value.warning', 'anomaly.module.preferences::field.value.instructions'),
(83, 83, 'en', 'anomaly.module.redirects::field.from.name', 'anomaly.module.redirects::field.from.placeholder', 'anomaly.module.redirects::field.from.warning', 'anomaly.module.redirects::field.from.instructions'),
(84, 84, 'en', 'anomaly.module.redirects::field.to.name', 'anomaly.module.redirects::field.to.placeholder', 'anomaly.module.redirects::field.to.warning', 'anomaly.module.redirects::field.to.instructions'),
(85, 85, 'en', 'anomaly.module.redirects::field.status.name', 'anomaly.module.redirects::field.status.placeholder', 'anomaly.module.redirects::field.status.warning', 'anomaly.module.redirects::field.status.instructions'),
(86, 86, 'en', 'anomaly.module.redirects::field.secure.name', 'anomaly.module.redirects::field.secure.placeholder', 'anomaly.module.redirects::field.secure.warning', 'anomaly.module.redirects::field.secure.instructions'),
(87, 87, 'en', 'anomaly.module.settings::field.key.name', 'anomaly.module.settings::field.key.placeholder', 'anomaly.module.settings::field.key.warning', 'anomaly.module.settings::field.key.instructions'),
(88, 88, 'en', 'anomaly.module.settings::field.value.name', 'anomaly.module.settings::field.value.placeholder', 'anomaly.module.settings::field.value.warning', 'anomaly.module.settings::field.value.instructions'),
(89, 89, 'en', 'anomaly.module.users::field.email.name', 'anomaly.module.users::field.email.placeholder', 'anomaly.module.users::field.email.warning', 'anomaly.module.users::field.email.instructions'),
(90, 90, 'en', 'anomaly.module.users::field.username.name', 'anomaly.module.users::field.username.placeholder', 'anomaly.module.users::field.username.warning', 'anomaly.module.users::field.username.instructions'),
(91, 91, 'en', 'anomaly.module.users::field.password.name', 'anomaly.module.users::field.password.placeholder', 'anomaly.module.users::field.password.warning', 'anomaly.module.users::field.password.instructions'),
(92, 92, 'en', 'anomaly.module.users::field.remember_token.name', 'anomaly.module.users::field.remember_token.placeholder', 'anomaly.module.users::field.remember_token.warning', 'anomaly.module.users::field.remember_token.instructions'),
(93, 93, 'en', 'anomaly.module.users::field.ip_address.name', 'anomaly.module.users::field.ip_address.placeholder', 'anomaly.module.users::field.ip_address.warning', 'anomaly.module.users::field.ip_address.instructions'),
(94, 94, 'en', 'anomaly.module.users::field.last_login_at.name', 'anomaly.module.users::field.last_login_at.placeholder', 'anomaly.module.users::field.last_login_at.warning', 'anomaly.module.users::field.last_login_at.instructions'),
(95, 95, 'en', 'anomaly.module.users::field.last_activity_at.name', 'anomaly.module.users::field.last_activity_at.placeholder', 'anomaly.module.users::field.last_activity_at.warning', 'anomaly.module.users::field.last_activity_at.instructions'),
(96, 96, 'en', 'anomaly.module.users::field.permissions.name', 'anomaly.module.users::field.permissions.placeholder', 'anomaly.module.users::field.permissions.warning', 'anomaly.module.users::field.permissions.instructions'),
(97, 97, 'en', 'anomaly.module.users::field.display_name.name', 'anomaly.module.users::field.display_name.placeholder', 'anomaly.module.users::field.display_name.warning', 'anomaly.module.users::field.display_name.instructions'),
(98, 98, 'en', 'anomaly.module.users::field.first_name.name', 'anomaly.module.users::field.first_name.placeholder', 'anomaly.module.users::field.first_name.warning', 'anomaly.module.users::field.first_name.instructions'),
(99, 99, 'en', 'anomaly.module.users::field.last_name.name', 'anomaly.module.users::field.last_name.placeholder', 'anomaly.module.users::field.last_name.warning', 'anomaly.module.users::field.last_name.instructions'),
(100, 100, 'en', 'anomaly.module.users::field.name.name', 'anomaly.module.users::field.name.placeholder', 'anomaly.module.users::field.name.warning', 'anomaly.module.users::field.name.instructions'),
(101, 101, 'en', 'anomaly.module.users::field.description.name', 'anomaly.module.users::field.description.placeholder', 'anomaly.module.users::field.description.warning', 'anomaly.module.users::field.description.instructions'),
(102, 102, 'en', 'anomaly.module.users::field.reset_code.name', 'anomaly.module.users::field.reset_code.placeholder', 'anomaly.module.users::field.reset_code.warning', 'anomaly.module.users::field.reset_code.instructions'),
(103, 103, 'en', 'anomaly.module.users::field.reset_code_expires_at.name', 'anomaly.module.users::field.reset_code_expires_at.placeholder', 'anomaly.module.users::field.reset_code_expires_at.warning', 'anomaly.module.users::field.reset_code_expires_at.instructions'),
(104, 104, 'en', 'anomaly.module.users::field.activation_code.name', 'anomaly.module.users::field.activation_code.placeholder', 'anomaly.module.users::field.activation_code.warning', 'anomaly.module.users::field.activation_code.instructions'),
(105, 105, 'en', 'anomaly.module.users::field.activation_code_expires_at.name', 'anomaly.module.users::field.activation_code_expires_at.placeholder', 'anomaly.module.users::field.activation_code_expires_at.warning', 'anomaly.module.users::field.activation_code_expires_at.instructions'),
(106, 106, 'en', 'anomaly.module.users::field.activated.name', 'anomaly.module.users::field.activated.placeholder', 'anomaly.module.users::field.activated.warning', 'anomaly.module.users::field.activated.instructions'),
(107, 107, 'en', 'anomaly.module.users::field.enabled.name', 'anomaly.module.users::field.enabled.placeholder', 'anomaly.module.users::field.enabled.warning', 'anomaly.module.users::field.enabled.instructions'),
(108, 108, 'en', 'anomaly.module.users::field.slug.name', 'anomaly.module.users::field.slug.placeholder', 'anomaly.module.users::field.slug.warning', 'anomaly.module.users::field.slug.instructions'),
(109, 109, 'en', 'anomaly.module.users::field.roles.name', 'anomaly.module.users::field.roles.placeholder', 'anomaly.module.users::field.roles.warning', 'anomaly.module.users::field.roles.instructions'),
(110, 110, 'en', 'anomaly.extension.page_link_type::field.title.name', 'anomaly.extension.page_link_type::field.title.placeholder', 'anomaly.extension.page_link_type::field.title.warning', 'anomaly.extension.page_link_type::field.title.instructions'),
(111, 111, 'en', 'anomaly.extension.page_link_type::field.page.name', 'anomaly.extension.page_link_type::field.page.placeholder', 'anomaly.extension.page_link_type::field.page.warning', 'anomaly.extension.page_link_type::field.page.instructions'),
(112, 112, 'en', 'anomaly.extension.page_link_type::field.description.name', 'anomaly.extension.page_link_type::field.description.placeholder', 'anomaly.extension.page_link_type::field.description.warning', 'anomaly.extension.page_link_type::field.description.instructions'),
(113, 113, 'en', 'anomaly.extension.url_link_type::field.title.name', 'anomaly.extension.url_link_type::field.title.placeholder', 'anomaly.extension.url_link_type::field.title.warning', 'anomaly.extension.url_link_type::field.title.instructions'),
(114, 114, 'en', 'anomaly.extension.url_link_type::field.url.name', 'anomaly.extension.url_link_type::field.url.placeholder', 'anomaly.extension.url_link_type::field.url.warning', 'anomaly.extension.url_link_type::field.url.instructions'),
(115, 115, 'en', 'anomaly.extension.url_link_type::field.description.name', 'anomaly.extension.url_link_type::field.description.placeholder', 'anomaly.extension.url_link_type::field.description.warning', 'anomaly.extension.url_link_type::field.description.instructions'),
(120, 120, 'en', 'HTML', 'HTML', NULL, NULL),
(118, 118, 'en', 'Banner', NULL, NULL, NULL),
(121, 121, 'en', 'Multi Lanaguages', NULL, NULL, NULL),
(122, 121, 'ar', 'Multi Lanaguages', NULL, NULL, NULL),
(187, 186, 'en', 'anomaly.module.videos::field.title.name', 'anomaly.module.videos::field.title.placeholder', 'anomaly.module.videos::field.title.warning', 'anomaly.module.videos::field.title.instructions'),
(188, 187, 'en', 'anomaly.module.videos::field.video.name', 'anomaly.module.videos::field.video.placeholder', 'anomaly.module.videos::field.video.warning', 'anomaly.module.videos::field.video.instructions'),
(189, 188, 'en', 'anomaly.module.videos::field.name.name', 'anomaly.module.videos::field.name.placeholder', 'anomaly.module.videos::field.name.warning', 'anomaly.module.videos::field.name.instructions'),
(190, 189, 'en', 'anomaly.module.videos::field.description.name', 'anomaly.module.videos::field.description.placeholder', 'anomaly.module.videos::field.description.warning', 'anomaly.module.videos::field.description.instructions'),
(191, 190, 'en', 'anomaly.module.videos::field.slug.name', 'anomaly.module.videos::field.slug.placeholder', 'anomaly.module.videos::field.slug.warning', 'anomaly.module.videos::field.slug.instructions'),
(192, 191, 'en', 'anomaly.module.videos::field.poster.name', 'anomaly.module.videos::field.poster.placeholder', 'anomaly.module.videos::field.poster.warning', 'anomaly.module.videos::field.poster.instructions'),
(193, 192, 'en', 'anomaly.module.videos::field.series.name', 'anomaly.module.videos::field.series.placeholder', 'anomaly.module.videos::field.series.warning', 'anomaly.module.videos::field.series.instructions'),
(194, 193, 'en', 'anomaly.module.videos::field.categories.name', 'anomaly.module.videos::field.categories.placeholder', 'anomaly.module.videos::field.categories.warning', 'anomaly.module.videos::field.categories.instructions'),
(534, 533, 'en', 'anomaly.module.website_setting::field.title.name', 'anomaly.module.website_setting::field.title.placeholder', 'anomaly.module.website_setting::field.title.warning', 'anomaly.module.website_setting::field.title.instructions'),
(196, 195, 'en', 'anomaly.module.website_setting::field.name.name', 'anomaly.module.website_setting::field.name.placeholder', 'anomaly.module.website_setting::field.name.warning', 'anomaly.module.website_setting::field.name.instructions'),
(545, 544, 'en', 'anomaly.module.website_setting::field.Address.name', 'anomaly.module.website_setting::field.Address.placeholder', 'anomaly.module.website_setting::field.Address.warning', 'anomaly.module.website_setting::field.Address.instructions'),
(229, 228, 'en', 'anomaly.module.website_setting::field.logo1.name', 'anomaly.module.website_setting::field.logo1.placeholder', 'anomaly.module.website_setting::field.logo1.warning', 'anomaly.module.website_setting::field.logo1.instructions'),
(544, 543, 'en', 'anomaly.module.website_setting::field.email.name', 'anomaly.module.website_setting::field.email.placeholder', 'anomaly.module.website_setting::field.email.warning', 'anomaly.module.website_setting::field.email.instructions'),
(475, 474, 'en', 'anomaly.module.website_setting::field.long .name', 'anomaly.module.website_setting::field.long .placeholder', 'anomaly.module.website_setting::field.long .warning', 'anomaly.module.website_setting::field.long .instructions'),
(476, 475, 'en', 'anomaly.module.website_setting::field.lat.name', 'anomaly.module.website_setting::field.lat.placeholder', 'anomaly.module.website_setting::field.lat.warning', 'anomaly.module.website_setting::field.lat.instructions'),
(543, 542, 'en', 'anomaly.module.website_setting::field.Phone.name', 'anomaly.module.website_setting::field.Phone.placeholder', 'anomaly.module.website_setting::field.Phone.warning', 'anomaly.module.website_setting::field.Phone.instructions'),
(542, 541, 'en', 'anomaly.module.website_setting::field.Mobile.name', 'anomaly.module.website_setting::field.Mobile.placeholder', 'anomaly.module.website_setting::field.Mobile.warning', 'anomaly.module.website_setting::field.Mobile.instructions'),
(541, 540, 'en', 'anomaly.module.website_setting::field.Twitter.name', 'anomaly.module.website_setting::field.Twitter.placeholder', 'anomaly.module.website_setting::field.Twitter.warning', 'anomaly.module.website_setting::field.Twitter.instructions'),
(540, 539, 'en', 'anomaly.module.website_setting::field.LinkedIn.name', 'anomaly.module.website_setting::field.LinkedIn.placeholder', 'anomaly.module.website_setting::field.LinkedIn.warning', 'anomaly.module.website_setting::field.LinkedIn.instructions'),
(539, 538, 'en', 'anomaly.module.website_setting::field.Instagram.name', 'anomaly.module.website_setting::field.Instagram.placeholder', 'anomaly.module.website_setting::field.Instagram.warning', 'anomaly.module.website_setting::field.Instagram.instructions'),
(538, 537, 'en', 'anomaly.module.website_setting::field.Facebook.name', 'anomaly.module.website_setting::field.Facebook.placeholder', 'anomaly.module.website_setting::field.Facebook.warning', 'anomaly.module.website_setting::field.Facebook.instructions'),
(537, 536, 'en', 'anomaly.module.website_setting::field.logo.name', 'anomaly.module.website_setting::field.logo.placeholder', 'anomaly.module.website_setting::field.logo.warning', 'anomaly.module.website_setting::field.logo.instructions'),
(536, 535, 'en', 'anomaly.module.website_setting::field.latitude.name', 'anomaly.module.website_setting::field.latitude.placeholder', 'anomaly.module.website_setting::field.latitude.warning', 'anomaly.module.website_setting::field.latitude.instructions'),
(535, 534, 'en', 'anomaly.module.website_setting::field.Longitude.name', 'anomaly.module.website_setting::field.Longitude.placeholder', 'anomaly.module.website_setting::field.Longitude.warning', 'anomaly.module.website_setting::field.Longitude.instructions');

-- --------------------------------------------------------

--
-- Table structure for table `default_streams_streams`
--

CREATE TABLE `default_streams_streams` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `order_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sortable` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `trashable` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_streams_streams`
--

INSERT INTO `default_streams_streams` (`id`, `namespace`, `slug`, `prefix`, `title_column`, `order_by`, `locked`, `hidden`, `sortable`, `searchable`, `trashable`, `translatable`, `config`) VALUES
(1, 'configuration', 'configuration', 'configuration_', 'id', 'id', 1, 0, 0, 0, 0, 0, 'a:0:{}'),
(2, 'dashboard', 'dashboards', 'dashboard_', 'name', 'id', 0, 0, 1, 0, 0, 1, 'a:0:{}'),
(3, 'dashboard', 'widgets', 'dashboard_', 'title', 'id', 0, 0, 1, 0, 0, 1, 'a:0:{}'),
(4, 'files', 'disks', 'files_', 'name', 'id', 0, 0, 1, 0, 0, 1, 'a:0:{}'),
(5, 'files', 'folders', 'files_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(6, 'files', 'files', 'files_', 'name', 'id', 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(7, 'navigation', 'menus', 'navigation_', 'name', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(8, 'navigation', 'links', 'navigation_', 'id', 'id', 0, 0, 1, 0, 1, 0, 'a:0:{}'),
(9, 'pages', 'pages', 'pages_', 'title', 'id', 0, 0, 1, 1, 1, 1, 'a:0:{}'),
(10, 'pages', 'types', 'pages_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(11, 'posts', 'categories', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(12, 'posts', 'posts', 'posts_', 'title', 'id', 0, 0, 0, 1, 1, 1, 'a:0:{}'),
(13, 'posts', 'types', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(14, 'preferences', 'preferences', 'preferences_', 'id', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(15, 'redirects', 'redirects', 'redirects_', 'from', 'id', 0, 0, 1, 0, 1, 0, 'a:0:{}'),
(16, 'settings', 'settings', 'settings_', 'id', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(17, 'users', 'users', 'users_', 'display_name', 'id', 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(18, 'users', 'roles', 'users_', 'name', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(19, 'page_link_type', 'pages', 'page_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(20, 'url_link_type', 'urls', 'url_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(21, 'files', 'images', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(22, 'files', 'documents', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(23, 'pages', 'default_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(24, 'posts', 'default_posts', 'posts_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(25, 'posts', 'hot_stuff_posts', 'posts_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(26, 'variables', 'languages', 'variables_', 'id', 'id', 0, 0, 0, 0, 0, 1, 'a:1:{i:0;s:0:"";}'),
(40, 'videos', 'videos', 'videos_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(41, 'videos', 'series', 'videos_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(42, 'videos', 'categories', 'videos_', 'id', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(50, 'website_setting', 'website_setting', 'website_setting_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(115, 'website_setting', 'logo', 'website_setting_', 'title', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(116, 'website_setting', 'socialnetwork', 'website_setting_', 'title', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(117, 'website_setting', 'contact', 'website_setting_', 'title', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(118, 'website_setting', 'map', 'website_setting_', 'title', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `default_streams_streams_translations`
--

CREATE TABLE `default_streams_streams_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `stream_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_streams_streams_translations`
--

INSERT INTO `default_streams_streams_translations` (`id`, `stream_id`, `locale`, `name`, `description`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::stream.configuration.name', 'anomaly.module.configuration::stream.configuration.description'),
(2, 2, 'en', 'anomaly.module.dashboard::stream.dashboards.name', 'anomaly.module.dashboard::stream.dashboards.description'),
(3, 3, 'en', 'anomaly.module.dashboard::stream.widgets.name', 'anomaly.module.dashboard::stream.widgets.description'),
(4, 4, 'en', 'anomaly.module.files::stream.disks.name', 'anomaly.module.files::stream.disks.description'),
(5, 5, 'en', 'anomaly.module.files::stream.folders.name', 'anomaly.module.files::stream.folders.description'),
(6, 6, 'en', 'anomaly.module.files::stream.files.name', 'anomaly.module.files::stream.files.description'),
(7, 7, 'en', 'anomaly.module.navigation::stream.menus.name', 'anomaly.module.navigation::stream.menus.description'),
(8, 8, 'en', 'anomaly.module.navigation::stream.links.name', 'anomaly.module.navigation::stream.links.description'),
(9, 9, 'en', 'anomaly.module.pages::stream.pages.name', 'anomaly.module.pages::stream.pages.description'),
(10, 10, 'en', 'anomaly.module.pages::stream.types.name', 'anomaly.module.pages::stream.types.description'),
(11, 11, 'en', 'anomaly.module.posts::stream.categories.name', 'anomaly.module.posts::stream.categories.description'),
(12, 12, 'en', 'anomaly.module.posts::stream.posts.name', 'anomaly.module.posts::stream.posts.description'),
(13, 13, 'en', 'anomaly.module.posts::stream.types.name', 'anomaly.module.posts::stream.types.description'),
(14, 14, 'en', 'anomaly.module.preferences::stream.preferences.name', 'anomaly.module.preferences::stream.preferences.description'),
(15, 15, 'en', 'anomaly.module.redirects::stream.redirects.name', 'anomaly.module.redirects::stream.redirects.description'),
(16, 16, 'en', 'anomaly.module.settings::stream.settings.name', 'anomaly.module.settings::stream.settings.description'),
(17, 17, 'en', 'anomaly.module.users::stream.users.name', 'anomaly.module.users::stream.users.description'),
(18, 18, 'en', 'anomaly.module.users::stream.roles.name', 'anomaly.module.users::stream.roles.description'),
(19, 19, 'en', 'anomaly.extension.page_link_type::stream.pages.name', 'anomaly.extension.page_link_type::stream.pages.description'),
(20, 20, 'en', 'anomaly.extension.url_link_type::stream.urls.name', 'anomaly.extension.url_link_type::stream.urls.description'),
(21, 21, 'en', 'Images', 'A folder for images.'),
(22, 22, 'en', 'Documents', 'A folder for documents.'),
(23, 23, 'en', 'Default', 'A simple page type.'),
(24, 24, 'en', 'Default', NULL),
(25, 25, 'en', 'Hot Stuff', NULL),
(26, 26, 'en', 'Languages', NULL),
(27, 26, 'ar', 'Arabic', NULL),
(42, 40, 'en', 'anomaly.module.videos::stream.videos.name', 'anomaly.module.videos::stream.videos.description'),
(43, 41, 'en', 'anomaly.module.videos::stream.series.name', 'anomaly.module.videos::stream.series.description'),
(44, 42, 'en', 'anomaly.module.videos::stream.categories.name', 'anomaly.module.videos::stream.categories.description'),
(52, 50, 'en', 'anomaly.module.website_setting::stream.website_setting.name', 'anomaly.module.website_setting::stream.website_setting.description'),
(117, 115, 'en', 'anomaly.module.website_setting::stream.Logo.name', 'anomaly.module.website_setting::stream.Logo.description'),
(118, 116, 'en', 'anomaly.module.website_setting::stream.SocialNetwork.name', 'anomaly.module.website_setting::stream.SocialNetwork.description'),
(119, 117, 'en', 'anomaly.module.website_setting::stream.Contact.name', 'anomaly.module.website_setting::stream.Contact.description'),
(120, 118, 'en', 'anomaly.module.website_setting::stream.Map.name', 'anomaly.module.website_setting::stream.Map.description');

-- --------------------------------------------------------

--
-- Table structure for table `default_url_link_type_urls`
--

CREATE TABLE `default_url_link_type_urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_url_link_type_urls`
--

INSERT INTO `default_url_link_type_urls` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `url`) VALUES
(1, 1, '2017-02-16 15:08:18', NULL, '2017-02-16 15:43:57', 1, 'http://shiftict.com/'),
(2, 2, '2017-02-16 15:08:18', NULL, NULL, NULL, 'http://pyrocms.com/documentation');

-- --------------------------------------------------------

--
-- Table structure for table `default_url_link_type_urls_translations`
--

CREATE TABLE `default_url_link_type_urls_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_url_link_type_urls_translations`
--

INSERT INTO `default_url_link_type_urls_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2017-02-16 15:08:18', NULL, '2017-02-16 15:43:57', 1, 'en', 'shiftict.com', 'لطابق الخامس ، عمارة موسى ابو شعبان مقابل ابو خضرة ، فلسطين \r\nواتس آب : 0097059898964\r\n0097082821173'),
(2, 2, '2017-02-16 15:08:18', NULL, '2017-02-16 15:08:18', NULL, 'en', 'Documentation', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_users_roles`
--

CREATE TABLE `default_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_users_roles`
--

INSERT INTO `default_users_roles` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `permissions`) VALUES
(1, 1, '2017-02-16 15:08:26', NULL, NULL, NULL, NULL, 'admin', NULL),
(2, 2, '2017-02-16 15:08:26', NULL, NULL, NULL, NULL, 'user', NULL),
(3, 3, '2017-02-16 15:08:26', NULL, NULL, NULL, NULL, 'guest', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_users_roles_translations`
--

CREATE TABLE `default_users_roles_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_users_roles_translations`
--

INSERT INTO `default_users_roles_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-02-16 15:08:26', NULL, '2017-02-16 15:08:26', NULL, 'en', 'Admin', 'The super admin role.'),
(2, 2, '2017-02-16 15:08:26', NULL, '2017-02-16 15:08:26', NULL, 'en', 'User', 'The default user role.'),
(3, 3, '2017-02-16 15:08:26', NULL, '2017-02-16 15:08:26', NULL, 'en', 'Guest', 'The fallback role for non-users.');

-- --------------------------------------------------------

--
-- Table structure for table `default_users_users`
--

CREATE TABLE `default_users_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_users_users`
--

INSERT INTO `default_users_users` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `email`, `username`, `password`, `display_name`, `first_name`, `last_name`, `activated`, `enabled`, `permissions`, `last_login_at`, `remember_token`, `activation_code`, `reset_code`, `last_activity_at`, `ip_address`) VALUES
(1, 1, '2017-02-16 15:08:26', NULL, '2017-03-13 10:52:56', 1, NULL, 'feras2007_2007@hotmail.com', 'admin', '$2y$10$gyD9tK9G8mI1pkGu5WsWrOeupkfFCpYmqBdh8IQTwcwQ.0JAez8/S', 'Administrator', NULL, NULL, 1, 1, NULL, '2017-03-13 10:52:56', 'mvypj3VAx8fzPht3wnyHPCMjxagPQTSBy9gef5ZsOAuV8k2IjfFVMTDTgcT4', NULL, NULL, '2017-02-19 14:32:27', '127.0.0.1'),
(2, 2, '2017-02-16 15:08:27', NULL, '2017-02-16 15:08:27', NULL, NULL, 'demo@pyrocms.com', 'demo', '$2y$10$lHK4kGB6282GwUnMgjXedewgG2/ktK6W5R65HM0VCygckCpYKt8lG', 'Demo User', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_users_users_roles`
--

CREATE TABLE `default_users_users_roles` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_users_users_roles`
--

INSERT INTO `default_users_users_roles` (`entry_id`, `related_id`, `sort_order`) VALUES
(2, 2, NULL),
(1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_variables_languages`
--

CREATE TABLE `default_variables_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `multi_lanaguages` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_variables_languages_translations`
--

CREATE TABLE `default_variables_languages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_videos_categories`
--

CREATE TABLE `default_videos_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_videos_categories`
--

INSERT INTO `default_videos_categories` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`) VALUES
(1, 1, '2017-03-05 17:07:25', 1, NULL, NULL, 'category_videos');

-- --------------------------------------------------------

--
-- Table structure for table `default_videos_categories_translations`
--

CREATE TABLE `default_videos_categories_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_videos_categories_translations`
--

INSERT INTO `default_videos_categories_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-03-05 17:07:25', NULL, '2017-03-05 17:07:25', 1, 'en', 'category videos', 'testing for category videos'),
(2, 1, '2017-03-05 17:07:25', NULL, '2017-03-05 17:07:25', 1, 'ar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_videos_series`
--

CREATE TABLE `default_videos_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_videos_series`
--

INSERT INTO `default_videos_series` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`) VALUES
(1, 1, '2017-03-05 17:08:15', 1, NULL, NULL, 'test_video');

-- --------------------------------------------------------

--
-- Table structure for table `default_videos_series_translations`
--

CREATE TABLE `default_videos_series_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_videos_series_translations`
--

INSERT INTO `default_videos_series_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2017-03-05 17:08:15', NULL, '2017-03-05 17:08:15', 1, 'en', 'test  video', 'testing for series videos'),
(2, 1, '2017-03-05 17:08:15', NULL, '2017-03-05 17:35:16', 1, 'ar', 'test video', 'This is test videos');

-- --------------------------------------------------------

--
-- Table structure for table `default_videos_videos`
--

CREATE TABLE `default_videos_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `series_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_videos_videos`
--

INSERT INTO `default_videos_videos` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `poster_id`, `video`, `slug`, `series_id`) VALUES
(1, 1, '2017-03-05 17:10:30', 1, '2017-03-05 17:45:51', 1, 4, 'https://www.youtube.com/watch?v=X_Et9MJlrYg', 'shift_ict', 1),
(2, 2, '2017-03-05 17:56:54', 1, '2017-03-06 13:45:30', 1, 3, 'https://vimeo.com/206329654', 'nazare_black_carnival', 1);

-- --------------------------------------------------------

--
-- Table structure for table `default_videos_videos_categories`
--

CREATE TABLE `default_videos_videos_categories` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_videos_videos_translations`
--

CREATE TABLE `default_videos_videos_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_videos_videos_translations`
--

INSERT INTO `default_videos_videos_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2017-03-05 17:10:30', NULL, '2017-03-05 17:10:30', 1, 'en', 'شِفت لتكنولوجيا المعلومات والإتصالات - Shift ICT', 'نحرص دائماً في شركة شِفت على مواكبة كل ما يصدر من وسائل تكنولوجية حديثة، ونبقى على دراية بمتطلبات مجالات العمل المختلفة وذلك لتقديم أفضل الحلول التقنية التي تتناسب مع أعمال عملائنا، فنحن نكرس كل معرفتنا وخبراتنا لنطبقها على الحلول التقنية لتعظيم الأرباح والنمو وتقليل التكاليف. ونقدر الوقت الذي ستستثمره في قراءة التعرف بشركة شِفت ومنتجاتنا، كما نتمنى أن تجد لدينا كل ما تحتاجه. ونتطلع لكي نصبح شركائك في النجاح.\r\n\r\nأنشأت شركة شِفت عام 2013 كإضافة نوعية في قطاع تكنولوجيا المعلومات، وأن تكون إحدى الشركات الرائدة في مجال تطوير البرمجيات، تكمن مهنية شِفت في تقديم نظم تقنية بسيطة وفعالة لعملائنا مما أتاح لنا توسيع نشاطاتنا وتحسين جودة منتجاتنا خلال فترة زمنية قصيرة. وايضاً نوفر مجموعة من الخدمات التقنية المتكاملة وذلك لتلبية الاحتياجات المختلفة لعملائنا.\r\n\r\n** خدماتنا\r\n* تصميم وتطوير موقع الويب\r\n* تطوير الأنظمة الخاصة\r\n* تطوير تطبيقات الموبايل\r\n* التسويق الالكتروني\r\n* خدمة الاستضافة'),
(2, 1, '2017-03-05 17:10:30', NULL, '2017-03-05 17:53:04', 1, 'ar', 'شِفت لتكنولوجيا المعلومات والإتصالات - Shift ICT', 'نحرص دائماً في شركة شِفت على مواكبة كل ما يصدر من وسائل تكنولوجية حديثة، ونبقى على دراية بمتطلبات مجالات العمل المختلفة وذلك لتقديم أفضل الحلول التقنية التي تتناسب مع أعمال عملائنا، فنحن نكرس كل معرفتنا وخبراتنا لنطبقها على الحلول التقنية لتعظيم الأرباح والنمو وتقليل التكاليف. ونقدر الوقت الذي ستستثمره في قراءة التعرف بشركة شِفت ومنتجاتنا، كما نتمنى أن تجد لدينا كل ما تحتاجه. ونتطلع لكي نصبح شركائك في النجاح.\r\n\r\nأنشأت شركة شِفت عام 2013 كإضافة نوعية في قطاع تكنولوجيا المعلومات، وأن تكون إحدى الشركات الرائدة في مجال تطوير البرمجيات، تكمن مهنية شِفت في تقديم نظم تقنية بسيطة وفعالة لعملائنا مما أتاح لنا توسيع نشاطاتنا وتحسين جودة منتجاتنا خلال فترة زمنية قصيرة. وايضاً نوفر مجموعة من الخدمات التقنية المتكاملة وذلك لتلبية الاحتياجات المختلفة لعملائنا.\r\n\r\n** خدماتنا\r\n* تصميم وتطوير موقع الويب\r\n* تطوير الأنظمة الخاصة\r\n* تطوير تطبيقات الموبايل\r\n* التسويق الالكتروني\r\n* خدمة الاستضافة'),
(3, 2, '2017-03-05 17:56:54', NULL, '2017-03-05 17:56:54', 1, 'en', 'Nazaré - Black carnival', 'During last carnival a few riders confronted one of the last truths in the world: big ocean exploting.\r\nArt director: Hector Menendez\r\nMusic: Dark Jazz trio - daydream nation'),
(4, 2, '2017-03-05 17:56:54', NULL, '2017-03-06 13:45:30', 1, 'ar', 'Nazaré - Black carnival', 'During last carnival a few riders confronted one of the last truths in the world: big ocean exploting.\r\nArt director: Hector Menendez\r\nMusic: Dark Jazz trio - daydream nation');

-- --------------------------------------------------------

--
-- Table structure for table `default_website_setting_contact`
--

CREATE TABLE `default_website_setting_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_website_setting_contact`
--

INSERT INTO `default_website_setting_contact` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `title`, `Mobile`, `Phone`, `email`, `Address`) VALUES
(1, 1, '2017-03-11 09:59:52', 1, NULL, NULL, 'Magazin Contact', '+97259999999', '+97082588888', 'feras2007_2007@hotmail.com', 'AlNasser-Street\r\nAlMashtel-Street');

-- --------------------------------------------------------

--
-- Table structure for table `default_website_setting_logo`
--

CREATE TABLE `default_website_setting_logo` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_website_setting_logo`
--

INSERT INTO `default_website_setting_logo` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `title`, `logo_id`) VALUES
(1, 1, '2017-03-11 10:00:29', 1, NULL, NULL, 'Logo', 5);

-- --------------------------------------------------------

--
-- Table structure for table `default_website_setting_map`
--

CREATE TABLE `default_website_setting_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_website_setting_map`
--

INSERT INTO `default_website_setting_map` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `title`, `Longitude`, `latitude`) VALUES
(1, 1, '2017-03-11 10:01:35', 1, NULL, NULL, 'Location', '75843', '45468');

-- --------------------------------------------------------

--
-- Table structure for table `default_website_setting_socialnetwork`
--

CREATE TABLE `default_website_setting_socialnetwork` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LinkedIn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_website_setting_socialnetwork`
--

INSERT INTO `default_website_setting_socialnetwork` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `title`, `Facebook`, `Twitter`, `Instagram`, `LinkedIn`) VALUES
(1, 1, '2017-03-11 10:00:59', 1, NULL, NULL, 'social Network', 'http://www.facebook.com', 'http://www.twitter.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_website_setting_website_setting`
--

CREATE TABLE `default_website_setting_website_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_website_setting_website_setting`
--

INSERT INTO `default_website_setting_website_setting` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`) VALUES
(1, 1, '2017-03-09 08:26:40', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_website_setting_website_setting_translations`
--

CREATE TABLE `default_website_setting_website_setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_website_setting_website_setting_translations`
--

INSERT INTO `default_website_setting_website_setting_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2017-03-09 08:26:40', NULL, '2017-03-09 08:26:40', 1, 'en'),
(2, 1, '2017-03-09 08:26:40', NULL, '2017-03-09 08:26:40', 1, 'ar');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2015_03_15_171404_create_applications_table', 1),
(2, '2015_03_15_171506_create_applications_domains_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_references` (`reference`),
  ADD UNIQUE KEY `unique_application_domains` (`domain`);

--
-- Indexes for table `applications_domains`
--
ALTER TABLE `applications_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_aliases` (`domain`);

--
-- Indexes for table `default_addons_extensions`
--
ALTER TABLE `default_addons_extensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_extensions` (`namespace`);

--
-- Indexes for table `default_addons_modules`
--
ALTER TABLE `default_addons_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_modules` (`namespace`);

--
-- Indexes for table `default_configuration_configuration`
--
ALTER TABLE `default_configuration_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_dashboard_dashboards`
--
ALTER TABLE `default_dashboard_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `9e2c1f0b0af4a3796ef2922690d63a22` (`slug`);

--
-- Indexes for table `default_dashboard_dashboards_allowed_roles`
--
ALTER TABLE `default_dashboard_dashboards_allowed_roles`
  ADD PRIMARY KEY (`entry_id`,`related_id`);

--
-- Indexes for table `default_dashboard_dashboards_translations`
--
ALTER TABLE `default_dashboard_dashboards_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_dashboards_translations_locale_index` (`locale`);

--
-- Indexes for table `default_dashboard_widgets`
--
ALTER TABLE `default_dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_dashboard_widgets_allowed_roles`
--
ALTER TABLE `default_dashboard_widgets_allowed_roles`
  ADD PRIMARY KEY (`entry_id`,`related_id`);

--
-- Indexes for table `default_dashboard_widgets_translations`
--
ALTER TABLE `default_dashboard_widgets_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widgets_translations_locale_index` (`locale`);

--
-- Indexes for table `default_failed_jobs`
--
ALTER TABLE `default_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_files_disks`
--
ALTER TABLE `default_files_disks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e45e39ecdef3a3c7a5535279b117d2a4` (`slug`);

--
-- Indexes for table `default_files_disks_translations`
--
ALTER TABLE `default_files_disks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_disks_translations_locale_index` (`locale`);

--
-- Indexes for table `default_files_documents`
--
ALTER TABLE `default_files_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_files_documents_translations`
--
ALTER TABLE `default_files_documents_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_documents_translations_locale_index` (`locale`);

--
-- Indexes for table `default_files_files`
--
ALTER TABLE `default_files_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_files_folders`
--
ALTER TABLE `default_files_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eb1f1e9d6c256e3428a0c6606a721cc5` (`slug`);

--
-- Indexes for table `default_files_folders_translations`
--
ALTER TABLE `default_files_folders_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_folders_translations_locale_index` (`locale`);

--
-- Indexes for table `default_files_images`
--
ALTER TABLE `default_files_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_files_images_translations`
--
ALTER TABLE `default_files_images_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_images_translations_locale_index` (`locale`);

--
-- Indexes for table `default_jobs`
--
ALTER TABLE `default_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `default_migrations`
--
ALTER TABLE `default_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_navigation_links`
--
ALTER TABLE `default_navigation_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_navigation_links_allowed_roles`
--
ALTER TABLE `default_navigation_links_allowed_roles`
  ADD PRIMARY KEY (`entry_id`,`related_id`);

--
-- Indexes for table `default_navigation_menus`
--
ALTER TABLE `default_navigation_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `b971176b13cd6738cbb5a6905fe40e9b` (`slug`);

--
-- Indexes for table `default_navigation_menus_translations`
--
ALTER TABLE `default_navigation_menus_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigation_menus_translations_locale_index` (`locale`);

--
-- Indexes for table `default_notifications`
--
ALTER TABLE `default_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `default_pages_default_pages`
--
ALTER TABLE `default_pages_default_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_pages_default_pages_translations`
--
ALTER TABLE `default_pages_default_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_default_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `default_pages_pages`
--
ALTER TABLE `default_pages_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_pages_pages_allowed_roles`
--
ALTER TABLE `default_pages_pages_allowed_roles`
  ADD PRIMARY KEY (`entry_id`,`related_id`);

--
-- Indexes for table `default_pages_pages_translations`
--
ALTER TABLE `default_pages_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `default_pages_types`
--
ALTER TABLE `default_pages_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `381176fc0d89ae8d97d99ce9b6109b9a` (`slug`);

--
-- Indexes for table `default_pages_types_translations`
--
ALTER TABLE `default_pages_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_types_translations_locale_index` (`locale`);

--
-- Indexes for table `default_page_link_type_pages`
--
ALTER TABLE `default_page_link_type_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_page_link_type_pages_translations`
--
ALTER TABLE `default_page_link_type_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_link_type_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `default_posts_categories`
--
ALTER TABLE `default_posts_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `9a8a0682d35f9b22c741cb0536aa691f` (`slug`);

--
-- Indexes for table `default_posts_categories_translations`
--
ALTER TABLE `default_posts_categories_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_categories_translations_locale_index` (`locale`);

--
-- Indexes for table `default_posts_default_posts`
--
ALTER TABLE `default_posts_default_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_posts_default_posts_translations`
--
ALTER TABLE `default_posts_default_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_default_posts_translations_locale_index` (`locale`);

--
-- Indexes for table `default_posts_hot_stuff_posts`
--
ALTER TABLE `default_posts_hot_stuff_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_posts_hot_stuff_posts_translations`
--
ALTER TABLE `default_posts_hot_stuff_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_hot_stuff_posts_translations_locale_index` (`locale`);

--
-- Indexes for table `default_posts_posts`
--
ALTER TABLE `default_posts_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `a1128facbe9e8e6c2c59eddcfa495104` (`str_id`),
  ADD UNIQUE KEY `0c47b5470543e28befe49a899387ccff` (`slug`);

--
-- Indexes for table `default_posts_posts_translations`
--
ALTER TABLE `default_posts_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_posts_translations_locale_index` (`locale`);

--
-- Indexes for table `default_posts_types`
--
ALTER TABLE `default_posts_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `1dc1b98be4181be266b483941a42b000` (`slug`);

--
-- Indexes for table `default_posts_types_translations`
--
ALTER TABLE `default_posts_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_types_translations_locale_index` (`locale`);

--
-- Indexes for table `default_preferences_preferences`
--
ALTER TABLE `default_preferences_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_redirects_redirects`
--
ALTER TABLE `default_redirects_redirects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `0cb4275c3992e35aae2a6b18f5f213c1` (`from`);

--
-- Indexes for table `default_sessions`
--
ALTER TABLE `default_sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `default_settings_settings`
--
ALTER TABLE `default_settings_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c51990785fa58fe7b8132ccb33d9b45f` (`key`);

--
-- Indexes for table `default_streams_assignments`
--
ALTER TABLE `default_streams_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_assignments` (`stream_id`,`field_id`);

--
-- Indexes for table `default_streams_assignments_translations`
--
ALTER TABLE `default_streams_assignments_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_assignments_translations_locale_index` (`locale`);

--
-- Indexes for table `default_streams_fields`
--
ALTER TABLE `default_streams_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_fields` (`namespace`,`slug`);

--
-- Indexes for table `default_streams_fields_translations`
--
ALTER TABLE `default_streams_fields_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_fields_translations_locale_index` (`locale`);

--
-- Indexes for table `default_streams_streams`
--
ALTER TABLE `default_streams_streams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_streams` (`namespace`,`slug`);

--
-- Indexes for table `default_streams_streams_translations`
--
ALTER TABLE `default_streams_streams_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_streams_translations_locale_index` (`locale`);

--
-- Indexes for table `default_url_link_type_urls`
--
ALTER TABLE `default_url_link_type_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_url_link_type_urls_translations`
--
ALTER TABLE `default_url_link_type_urls_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_link_type_urls_translations_locale_index` (`locale`);

--
-- Indexes for table `default_users_roles`
--
ALTER TABLE `default_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c8501689d10e8645dd553604c773dca2` (`slug`);

--
-- Indexes for table `default_users_roles_translations`
--
ALTER TABLE `default_users_roles_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_roles_translations_locale_index` (`locale`);

--
-- Indexes for table `default_users_users`
--
ALTER TABLE `default_users_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `f432e8a18875d82efd589bf0d89fc033` (`email`),
  ADD UNIQUE KEY `729e247f9366c049a3e2924a0a51b756` (`username`);

--
-- Indexes for table `default_users_users_roles`
--
ALTER TABLE `default_users_users_roles`
  ADD PRIMARY KEY (`entry_id`,`related_id`);

--
-- Indexes for table `default_variables_languages`
--
ALTER TABLE `default_variables_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_variables_languages_translations`
--
ALTER TABLE `default_variables_languages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variables_arabic_translations_locale_index` (`locale`);

--
-- Indexes for table `default_videos_categories`
--
ALTER TABLE `default_videos_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `614811090eb254533615620a46605363` (`slug`);

--
-- Indexes for table `default_videos_categories_translations`
--
ALTER TABLE `default_videos_categories_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_categories_translations_locale_index` (`locale`);

--
-- Indexes for table `default_videos_series`
--
ALTER TABLE `default_videos_series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `10a6fd16b2fa904493c518b29c66098b` (`slug`);

--
-- Indexes for table `default_videos_series_translations`
--
ALTER TABLE `default_videos_series_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_series_translations_locale_index` (`locale`);

--
-- Indexes for table `default_videos_videos`
--
ALTER TABLE `default_videos_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `5bb131699711ceb6665591ea4514d993` (`slug`);

--
-- Indexes for table `default_videos_videos_categories`
--
ALTER TABLE `default_videos_videos_categories`
  ADD PRIMARY KEY (`entry_id`,`related_id`);

--
-- Indexes for table `default_videos_videos_translations`
--
ALTER TABLE `default_videos_videos_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_videos_translations_locale_index` (`locale`);

--
-- Indexes for table `default_website_setting_contact`
--
ALTER TABLE `default_website_setting_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_website_setting_logo`
--
ALTER TABLE `default_website_setting_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_website_setting_map`
--
ALTER TABLE `default_website_setting_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_website_setting_socialnetwork`
--
ALTER TABLE `default_website_setting_socialnetwork`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_website_setting_website_setting`
--
ALTER TABLE `default_website_setting_website_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_website_setting_website_setting_translations`
--
ALTER TABLE `default_website_setting_website_setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_setting_website_setting_translations_locale_index` (`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `applications_domains`
--
ALTER TABLE `applications_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_addons_extensions`
--
ALTER TABLE `default_addons_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `default_addons_modules`
--
ALTER TABLE `default_addons_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `default_configuration_configuration`
--
ALTER TABLE `default_configuration_configuration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_dashboard_dashboards`
--
ALTER TABLE `default_dashboard_dashboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_dashboard_dashboards_translations`
--
ALTER TABLE `default_dashboard_dashboards_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_dashboard_widgets`
--
ALTER TABLE `default_dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_dashboard_widgets_translations`
--
ALTER TABLE `default_dashboard_widgets_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_failed_jobs`
--
ALTER TABLE `default_failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_files_disks`
--
ALTER TABLE `default_files_disks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_files_disks_translations`
--
ALTER TABLE `default_files_disks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_files_documents`
--
ALTER TABLE `default_files_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_files_documents_translations`
--
ALTER TABLE `default_files_documents_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_files_files`
--
ALTER TABLE `default_files_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `default_files_folders`
--
ALTER TABLE `default_files_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_files_folders_translations`
--
ALTER TABLE `default_files_folders_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_files_images`
--
ALTER TABLE `default_files_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_files_images_translations`
--
ALTER TABLE `default_files_images_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_jobs`
--
ALTER TABLE `default_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_migrations`
--
ALTER TABLE `default_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT for table `default_navigation_links`
--
ALTER TABLE `default_navigation_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `default_navigation_menus`
--
ALTER TABLE `default_navigation_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_navigation_menus_translations`
--
ALTER TABLE `default_navigation_menus_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_pages_default_pages`
--
ALTER TABLE `default_pages_default_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `default_pages_default_pages_translations`
--
ALTER TABLE `default_pages_default_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `default_pages_pages`
--
ALTER TABLE `default_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `default_pages_pages_translations`
--
ALTER TABLE `default_pages_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `default_pages_types`
--
ALTER TABLE `default_pages_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_pages_types_translations`
--
ALTER TABLE `default_pages_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_page_link_type_pages`
--
ALTER TABLE `default_page_link_type_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_page_link_type_pages_translations`
--
ALTER TABLE `default_page_link_type_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_posts_categories`
--
ALTER TABLE `default_posts_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `default_posts_categories_translations`
--
ALTER TABLE `default_posts_categories_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `default_posts_default_posts`
--
ALTER TABLE `default_posts_default_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `default_posts_default_posts_translations`
--
ALTER TABLE `default_posts_default_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `default_posts_hot_stuff_posts`
--
ALTER TABLE `default_posts_hot_stuff_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_posts_hot_stuff_posts_translations`
--
ALTER TABLE `default_posts_hot_stuff_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_posts_posts`
--
ALTER TABLE `default_posts_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `default_posts_posts_translations`
--
ALTER TABLE `default_posts_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `default_posts_types`
--
ALTER TABLE `default_posts_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_posts_types_translations`
--
ALTER TABLE `default_posts_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_preferences_preferences`
--
ALTER TABLE `default_preferences_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_redirects_redirects`
--
ALTER TABLE `default_redirects_redirects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_settings_settings`
--
ALTER TABLE `default_settings_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `default_streams_assignments`
--
ALTER TABLE `default_streams_assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=485;
--
-- AUTO_INCREMENT for table `default_streams_assignments_translations`
--
ALTER TABLE `default_streams_assignments_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;
--
-- AUTO_INCREMENT for table `default_streams_fields`
--
ALTER TABLE `default_streams_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;
--
-- AUTO_INCREMENT for table `default_streams_fields_translations`
--
ALTER TABLE `default_streams_fields_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;
--
-- AUTO_INCREMENT for table `default_streams_streams`
--
ALTER TABLE `default_streams_streams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `default_streams_streams_translations`
--
ALTER TABLE `default_streams_streams_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `default_url_link_type_urls`
--
ALTER TABLE `default_url_link_type_urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_url_link_type_urls_translations`
--
ALTER TABLE `default_url_link_type_urls_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_users_roles`
--
ALTER TABLE `default_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `default_users_roles_translations`
--
ALTER TABLE `default_users_roles_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `default_users_users`
--
ALTER TABLE `default_users_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_variables_languages`
--
ALTER TABLE `default_variables_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_variables_languages_translations`
--
ALTER TABLE `default_variables_languages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_videos_categories`
--
ALTER TABLE `default_videos_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_videos_categories_translations`
--
ALTER TABLE `default_videos_categories_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_videos_series`
--
ALTER TABLE `default_videos_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_videos_series_translations`
--
ALTER TABLE `default_videos_series_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_videos_videos`
--
ALTER TABLE `default_videos_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_videos_videos_translations`
--
ALTER TABLE `default_videos_videos_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `default_website_setting_contact`
--
ALTER TABLE `default_website_setting_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_website_setting_logo`
--
ALTER TABLE `default_website_setting_logo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_website_setting_map`
--
ALTER TABLE `default_website_setting_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_website_setting_socialnetwork`
--
ALTER TABLE `default_website_setting_socialnetwork`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_website_setting_website_setting`
--
ALTER TABLE `default_website_setting_website_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_website_setting_website_setting_translations`
--
ALTER TABLE `default_website_setting_website_setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
