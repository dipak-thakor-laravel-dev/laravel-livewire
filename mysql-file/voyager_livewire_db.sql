-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2024 at 10:46 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voyager_livewire_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_title` varchar(100) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(101) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `main_title`, `title`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `image`) VALUES
(1, 'ABOUT US', 'Lorum ipsum doller', '<p>&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. &lt;/p&gt; &lt;p&gt;Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.&lt;/p&gt;</p>', 1, '2024-03-15 07:31:39', '2024-03-18 08:29:56', NULL, 'about-us\\March2024\\x6yhvz1EqXErQRcHOuT8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(2, NULL, 1, 'Category 2', 'category-2', '2024-04-03 23:36:45', '2024-04-03 23:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'icon_class', 'text', 'Icon Class', 0, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'short_desc', 'text', 'Short Desc', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"Inactive\",\"1\":\"Active\"}}', 6),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(30, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(31, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(32, 6, 'main_title', 'text', 'Main Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(33, 6, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(34, 6, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(35, 6, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"Inactive\",\"1\":\"Active\"}}', 5),
(36, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(37, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(38, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 8),
(39, 6, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 9),
(48, 9, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(49, 9, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(50, 9, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(51, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(52, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(53, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(54, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(55, 10, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(56, 10, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(57, 10, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(58, 10, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(59, 10, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(60, 10, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(61, 10, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(62, 10, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(63, 10, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(64, 10, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(65, 10, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(66, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(67, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(68, 10, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(69, 10, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(70, 11, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(71, 11, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(72, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(73, 11, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(74, 11, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(75, 11, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(76, 11, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(77, 11, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(78, 11, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(79, 11, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(80, 11, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(81, 11, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(4, 'services', 'services', 'Service', 'Services', 'voyager-tools', 'App\\Models\\Service', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-15 05:02:31', '2024-03-15 05:03:12'),
(6, 'about_us', 'about-us', 'About U', 'About Us', 'voyager-browser', 'App\\Models\\AboutUs', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-15 07:28:45', '2024-03-15 07:33:57'),
(9, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(10, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(11, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2024-04-03 23:36:45', '2024-04-03 23:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-03-15 04:54:47', '2024-03-15 04:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-03-15 04:54:47', '2024-03-15 04:54:47', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2024-03-15 04:54:47', '2024-03-15 04:54:47', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2024-03-15 04:54:47', '2024-03-15 04:54:47', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2024-03-15 04:54:47', '2024-03-15 04:54:47', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2024-03-15 04:54:47', '2024-03-15 04:54:47', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2024-03-15 04:54:47', '2024-03-15 04:54:47', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2024-03-15 04:54:47', '2024-03-15 04:54:47', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2024-03-15 04:54:47', '2024-03-15 04:54:47', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2024-03-15 04:54:47', '2024-03-15 04:54:47', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2024-03-15 04:54:47', '2024-03-15 04:54:47', 'voyager.settings.index', NULL),
(11, 1, 'Services', '', '_self', 'voyager-tools', '#000000', NULL, 15, '2024-03-15 05:02:31', '2024-03-15 05:03:27', 'voyager.services.index', 'null'),
(13, 1, 'About Us', '', '_self', 'voyager-browser', '#000000', NULL, 16, '2024-03-15 07:28:45', '2024-03-15 07:29:56', 'voyager.about-us.index', 'null'),
(15, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2024-04-03 23:36:45', '2024-04-03 23:36:45', 'voyager.categories.index', NULL),
(16, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2024-04-03 23:36:45', '2024-04-03 23:36:45', 'voyager.posts.index', NULL),
(17, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2024-04-03 23:36:45', '2024-04-03 23:36:45', 'voyager.pages.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_01_000000_add_voyager_user_fields', 2),
(6, '2016_01_01_000000_create_data_types_table', 2),
(7, '2016_05_19_173453_create_menu_table', 2),
(8, '2016_10_21_190000_create_roles_table', 2),
(9, '2016_10_21_190000_create_settings_table', 2),
(10, '2016_11_30_135954_create_permission_table', 2),
(11, '2016_11_30_141208_create_permission_role_table', 2),
(12, '2016_12_26_201236_data_types__add__server_side', 2),
(13, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(14, '2017_01_14_005015_create_translations_table', 2),
(15, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(16, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(17, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(18, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(19, '2017_08_05_000000_add_group_to_settings_table', 2),
(20, '2017_11_26_013050_add_user_role_relationship', 2),
(21, '2017_11_26_015000_create_user_roles_table', 2),
(22, '2018_03_11_000000_add_user_settings', 2),
(23, '2018_03_14_000000_add_details_to_data_types_table', 2),
(24, '2018_03_16_000000_make_settings_value_nullable', 2),
(25, '2016_01_01_000000_create_pages_table', 3),
(26, '2016_01_01_000000_create_posts_table', 3),
(27, '2016_02_15_204651_create_categories_table', 3),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2024-04-03 23:36:45', '2024-04-03 23:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(2, 'browse_bread', NULL, '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(3, 'browse_database', NULL, '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(4, 'browse_media', NULL, '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(5, 'browse_compass', NULL, '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(6, 'browse_menus', 'menus', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(7, 'read_menus', 'menus', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(8, 'edit_menus', 'menus', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(9, 'add_menus', 'menus', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(10, 'delete_menus', 'menus', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(11, 'browse_roles', 'roles', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(12, 'read_roles', 'roles', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(13, 'edit_roles', 'roles', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(14, 'add_roles', 'roles', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(15, 'delete_roles', 'roles', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(16, 'browse_users', 'users', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(17, 'read_users', 'users', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(18, 'edit_users', 'users', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(19, 'add_users', 'users', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(20, 'delete_users', 'users', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(21, 'browse_settings', 'settings', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(22, 'read_settings', 'settings', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(23, 'edit_settings', 'settings', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(24, 'add_settings', 'settings', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(25, 'delete_settings', 'settings', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(26, 'browse_services', 'services', '2024-03-15 05:02:31', '2024-03-15 05:02:31'),
(27, 'read_services', 'services', '2024-03-15 05:02:31', '2024-03-15 05:02:31'),
(28, 'edit_services', 'services', '2024-03-15 05:02:31', '2024-03-15 05:02:31'),
(29, 'add_services', 'services', '2024-03-15 05:02:31', '2024-03-15 05:02:31'),
(30, 'delete_services', 'services', '2024-03-15 05:02:31', '2024-03-15 05:02:31'),
(36, 'browse_about_us', 'about_us', '2024-03-15 07:28:45', '2024-03-15 07:28:45'),
(37, 'read_about_us', 'about_us', '2024-03-15 07:28:45', '2024-03-15 07:28:45'),
(38, 'edit_about_us', 'about_us', '2024-03-15 07:28:45', '2024-03-15 07:28:45'),
(39, 'add_about_us', 'about_us', '2024-03-15 07:28:45', '2024-03-15 07:28:45'),
(40, 'delete_about_us', 'about_us', '2024-03-15 07:28:45', '2024-03-15 07:28:45'),
(46, 'browse_categories', 'categories', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(47, 'read_categories', 'categories', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(48, 'edit_categories', 'categories', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(49, 'add_categories', 'categories', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(50, 'delete_categories', 'categories', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(51, 'browse_posts', 'posts', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(52, 'read_posts', 'posts', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(53, 'edit_posts', 'posts', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(54, 'add_posts', 'posts', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(55, 'delete_posts', 'posts', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(56, 'browse_pages', 'pages', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(57, 'read_pages', 'pages', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(58, 'edit_pages', 'pages', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(59, 'add_pages', 'pages', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(60, 'delete_pages', 'pages', '2024-04-03 23:36:45', '2024-04-03 23:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum postLorem Ipsum PostLorem Ipsum PostLorem Ipsum PostLorem Ipsum Post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-04-03 23:36:45', '2024-04-03 23:43:39'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(5, 1, 2, 'Voluptatem iusto ear', 'Exercitation ut quae', 'Autem hic sed ex eaq', '<p>Voluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto earVoluptatem iusto ear</p>', 'posts\\April2024\\4zkUcdDrYqEgvOGwrz1b.png', 'voluptatem-iusto-ear', 'Exercitationem tenet', 'Anim adipisci vitae', 'PUBLISHED', 0, '2024-04-22 00:05:43', '2024-04-22 00:06:12'),
(6, 1, 2, 'Amet cum quibusdam', 'Fugiat ut exercitati', 'Ullamco architecto tAmet cum quibusdam', '<p>Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam Amet cum quibusdam&nbsp;</p>', 'posts\\April2024\\EC19bqZpwLjKYS3qHlOW.png', 'amet-cum-quibusdam', 'Incidunt doloremque', 'Id magni itaque nih', 'PENDING', 1, '2024-04-22 00:06:39', '2024-04-22 00:06:51'),
(7, 1, 2, 'In qui soluta aliqua', 'Aliqua Veniam vel', 'Corporis amet dolor', '<p>wrdwrwerwerwer</p>', 'posts\\May2024\\2kCkEIEPoru5TJY2JCZy.jpg', 'Nisi cum incididunt', 'Dolorem repudiandae', 'Non facere ab molest', 'PUBLISHED', 1, '2024-05-29 08:19:16', '2024-05-29 08:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-03-15 04:54:47', '2024-03-15 04:54:47'),
(2, 'user', 'Normal User', '2024-03-15 04:54:47', '2024-03-15 04:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `icon_class` varchar(100) DEFAULT NULL,
  `short_desc` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon_class`, `short_desc`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Suscipit sunt quide', 'A ducimus corporis', 'Id placeat et est', '<p>Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est&nbsp;</p>', 1, '2024-03-15 05:06:15', '2024-03-15 05:06:15', NULL),
(2, 'Vero laborum Velit', 'Natus quae velit se', 'Id placeat et est', '<p>Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est&nbsp;</p>', 1, '2024-03-15 05:06:27', '2024-03-15 05:06:33', NULL),
(3, 'Commodo minim velit', 'Adipisci vitae minim', 'Cupidatat molestiae', '<p>Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est Id placeat et est&nbsp;</p>', 1, '2024-03-15 05:06:45', '2024-03-15 05:06:45', NULL),
(4, 'Aliqua Et assumenda', 'Enim mollitia in ea', 'Voluptatem Molestia', '<p>Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea&nbsp;</p>', 1, '2024-03-15 05:06:58', '2024-03-15 05:06:58', NULL),
(5, 'Labore dolorem anim', 'Minim voluptatem op', 'Culpa consequuntur', '<p>Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea Enim mollitia in ea&nbsp;</p>', 1, '2024-03-15 05:07:10', '2024-03-15 05:07:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 10, 'pt', 'Post', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(2, 'data_types', 'display_name_singular', 11, 'pt', 'Página', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(4, 'data_types', 'display_name_singular', 9, 'pt', 'Categoria', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(7, 'data_types', 'display_name_plural', 10, 'pt', 'Posts', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(8, 'data_types', 'display_name_plural', 11, 'pt', 'Páginas', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(10, 'data_types', 'display_name_plural', 9, 'pt', 'Categorias', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(22, 'menu_items', 'title', 16, 'pt', 'Publicações', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(24, 'menu_items', 'title', 15, 'pt', 'Categorias', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(25, 'menu_items', 'title', 17, 'pt', 'Páginas', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2024-04-03 23:36:45', '2024-04-03 23:36:45'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2024-04-03 23:36:45', '2024-04-03 23:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$VDjmLEnJ4z2bCASAD9a0ueHGrRwu6tcnDOe/1QK92j9eKSuKBXlpy', NULL, NULL, '2024-03-15 04:56:19', '2024-03-15 04:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
