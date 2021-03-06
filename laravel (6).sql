-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 29 2019 г., 22:02
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs`
--

CREATE TABLE `catalogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cars', NULL, '', NULL, NULL),
(2, 'gagets', NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-04-22 17:42:02', '2019-04-22 17:42:02');

-- --------------------------------------------------------

--
-- Структура таблицы `charts`
--

CREATE TABLE `charts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci,
  `value` int(11) DEFAULT NULL,
  `status` tinytext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'voyager::seeders.data_rows.name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'voyager::seeders.data_rows.email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'voyager::seeders.data_rows.password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'voyager::seeders.data_rows.remember_token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'voyager::seeders.data_rows.avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'voyager::seeders.data_rows.role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'voyager::seeders.data_rows.name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'voyager::seeders.data_rows.name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'voyager::seeders.data_rows.display_name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'voyager::seeders.data_rows.role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'voyager::seeders.data_rows.parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'voyager::seeders.data_rows.order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'voyager::seeders.data_rows.name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'voyager::seeders.data_rows.slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'voyager::seeders.data_rows.author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'voyager::seeders.data_rows.category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'voyager::seeders.data_rows.title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'voyager::seeders.data_rows.excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'voyager::seeders.data_rows.body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'voyager::seeders.data_rows.post_image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'voyager::seeders.data_rows.slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'voyager::seeders.data_rows.meta_description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'voyager::seeders.data_rows.meta_keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'voyager::seeders.data_rows.status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'voyager::seeders.data_rows.seo_title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'voyager::seeders.data_rows.featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'voyager::seeders.data_rows.author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'voyager::seeders.data_rows.title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'voyager::seeders.data_rows.excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'voyager::seeders.data_rows.body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'voyager::seeders.data_rows.slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'voyager::seeders.data_rows.meta_description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'voyager::seeders.data_rows.meta_keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'voyager::seeders.data_rows.status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'voyager::seeders.data_rows.page_image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'body', 'text_area', 'Body', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(65, 8, 'body', 'text_area', 'Body', 1, 1, 1, 1, 1, 1, '{}', 3),
(66, 8, 'catalog_id', 'text', 'Catalog Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 8, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(68, 8, 'picture', 'text', 'Picture', 0, 1, 1, 1, 1, 1, '{}', 6),
(69, 8, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 7),
(70, 8, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, '{}', 8),
(71, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(72, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(73, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(74, 10, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(75, 10, 'body', 'text', 'Body', 0, 1, 1, 1, 1, 1, '{}', 3),
(76, 10, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 4),
(77, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(78, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(79, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(80, 10, 'message_belongsto_catalog_relationship', 'relationship', 'catalogs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Catalog\",\"table\":\"catalogs\",\"type\":\"belongsTo\",\"column\":\"catalog_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"catalogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(81, 10, 'message_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\user\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"catalogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(82, 10, 'catalog_id', 'text', 'Catalog Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(83, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 11, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(85, 11, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 3),
(86, 11, 'picture', 'image', 'Picture', 0, 1, 1, 1, 1, 1, '{}', 4),
(87, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(88, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(89, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'voyager::seeders.data_types.user.singular', 'voyager::seeders.data_types.user.plural', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-04-22 17:41:59', '2019-04-22 17:41:59'),
(2, 'menus', 'menus', 'voyager::seeders.data_types.menu.singular', 'voyager::seeders.data_types.menu.plural', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-04-22 17:41:59', '2019-04-22 17:41:59'),
(3, 'roles', 'roles', 'voyager::seeders.data_types.role.singular', 'voyager::seeders.data_types.role.plural', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-04-22 17:41:59', '2019-04-22 17:41:59'),
(4, 'categories', 'categories', 'voyager::seeders.data_types.category.singular', 'voyager::seeders.data_types.category.plural', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(5, 'posts', 'posts', 'voyager::seeders.data_types.post.singular', 'voyager::seeders.data_types.post.plural', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(6, 'pages', 'pages', 'voyager::seeders.data_types.page.singular', 'voyager::seeders.data_types.page.plural', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(7, 'maintexts', 'maintexts', 'Maintext', 'Maintexts', NULL, 'App\\Maintext', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-04-22 18:41:56', '2019-04-22 18:41:56'),
(8, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-04-22 18:47:21', '2019-04-22 18:47:21'),
(10, 'messages', 'messages', 'Message', 'Messages', NULL, 'App\\Message', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-24 16:39:30', '2019-04-24 17:14:44'),
(11, 'works', 'works', 'Work', 'Works', NULL, 'App\\Work', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-29 18:17:41', '2019-04-29 18:58:49');

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE `maintexts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Контакты', '', 'contact', 'show', NULL, NULL),
(2, 'Информация', '', 'give', 'show', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-04-22 17:42:00', '2019-04-22 17:42:00');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'voyager::seeders.menu_items.dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-04-22 17:42:00', '2019-04-22 17:42:00', 'voyager.dashboard', NULL),
(2, 1, 'voyager::seeders.menu_items.media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-04-22 17:42:00', '2019-04-22 17:42:00', 'voyager.media.index', NULL),
(3, 1, 'voyager::seeders.menu_items.users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-04-22 17:42:00', '2019-04-22 17:42:00', 'voyager.users.index', NULL),
(4, 1, 'voyager::seeders.menu_items.roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-04-22 17:42:00', '2019-04-22 17:42:00', 'voyager.roles.index', NULL),
(5, 1, 'voyager::seeders.menu_items.tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-04-22 17:42:00', '2019-04-22 17:42:00', NULL, NULL),
(6, 1, 'voyager::seeders.menu_items.menu_builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-04-22 17:42:00', '2019-04-22 17:42:00', 'voyager.menus.index', NULL),
(7, 1, 'voyager::seeders.menu_items.database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-04-22 17:42:00', '2019-04-22 17:42:00', 'voyager.database.index', NULL),
(8, 1, 'voyager::seeders.menu_items.compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-04-22 17:42:00', '2019-04-22 17:42:00', 'voyager.compass.index', NULL),
(9, 1, 'voyager::seeders.menu_items.bread', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-04-22 17:42:00', '2019-04-22 17:42:00', 'voyager.bread.index', NULL),
(10, 1, 'voyager::seeders.menu_items.settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-04-22 17:42:00', '2019-04-22 17:42:00', 'voyager.settings.index', NULL),
(11, 1, 'voyager::seeders.menu_items.categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2019-04-22 17:42:02', '2019-04-22 17:42:02', 'voyager.categories.index', NULL),
(12, 1, 'voyager::seeders.menu_items.posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-04-22 17:42:02', '2019-04-22 17:42:02', 'voyager.posts.index', NULL),
(13, 1, 'voyager::seeders.menu_items.pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-04-22 17:42:02', '2019-04-22 17:42:02', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, NULL, 13, '2019-04-22 17:59:21', '2019-04-22 17:59:21', 'voyager.hooks', NULL),
(15, 1, 'Maintexts', '', '_self', NULL, NULL, NULL, 15, '2019-04-22 18:41:56', '2019-04-22 18:41:56', 'voyager.maintexts.index', NULL),
(16, 1, 'Products', '', '_self', NULL, NULL, NULL, 16, '2019-04-22 18:47:21', '2019-04-22 18:47:21', 'voyager.products.index', NULL),
(17, 1, 'Messages', '', '_self', NULL, NULL, NULL, 17, '2019-04-24 16:39:30', '2019-04-24 16:39:30', 'voyager.messages.index', NULL),
(18, 1, 'Works', '', '_self', NULL, NULL, NULL, 18, '2019-04-29 18:17:41', '2019-04-29 18:17:41', 'voyager.works.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `status` tinytext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `body`, `status`, `created_at`, `updated_at`, `deleted_at`, `catalog_id`) VALUES
(3, 1, 'esfs', 'fsef', '2019-04-24 17:15:53', '2019-04-24 17:15:53', NULL, 2),
(4, 2, 'grg', 'gdrgd', '2019-04-24 17:16:31', '2019-04-24 17:16:31', NULL, 1),
(5, 3, 'trhf', 'hftfh', '2019-04-24 17:16:58', '2019-04-24 17:16:58', NULL, 1),
(6, 2, 'ferf', 'esf', '2019-04-24 17:55:51', '2019-04-24 17:55:51', NULL, 2),
(7, 2, 'проп', 'опрорп', '2019-04-24 18:19:40', '2019-04-24 18:19:40', NULL, 2),
(8, 1, 'fesf', 'esf', '2019-04-24 18:23:03', '2019-04-24 18:23:03', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_03_22_162459_create_maintexts_table', 2),
(6, '2019_03_27_172150_create_products_table', 3),
(7, '2019_04_10_203836_create_catalogs_table', 4),
(8, '2016_01_01_000000_add_voyager_user_fields', 5),
(9, '2016_01_01_000000_create_data_types_table', 5),
(10, '2016_05_19_173453_create_menu_table', 5),
(11, '2016_10_21_190000_create_roles_table', 5),
(12, '2016_10_21_190000_create_settings_table', 5),
(13, '2016_11_30_135954_create_permission_table', 5),
(14, '2016_11_30_141208_create_permission_role_table', 5),
(15, '2016_12_26_201236_data_types__add__server_side', 5),
(16, '2017_01_13_000000_add_route_to_menu_items_table', 5),
(17, '2017_01_14_005015_create_translations_table', 5),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 5),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 5),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 5),
(21, '2017_07_05_210000_add_policyname_to_data_types_table', 5),
(22, '2017_08_05_000000_add_group_to_settings_table', 5),
(23, '2017_11_26_013050_add_user_role_relationship', 5),
(24, '2017_11_26_015000_create_user_roles_table', 5),
(25, '2018_03_11_000000_add_user_settings', 5),
(26, '2018_03_14_000000_add_details_to_data_types_table', 5),
(27, '2018_03_16_000000_make_settings_value_nullable', 5),
(28, '2016_01_01_000000_create_pages_table', 6),
(29, '2016_01_01_000000_create_posts_table', 6),
(30, '2016_02_15_204651_create_categories_table', 6),
(31, '2017_04_11_000000_alter_post_nullable_fields_table', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-04-22 17:42:02', '2019-04-22 17:42:02');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(2, 'browse_bread', NULL, '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(3, 'browse_database', NULL, '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(4, 'browse_media', NULL, '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(5, 'browse_compass', NULL, '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(6, 'browse_menus', 'menus', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(7, 'read_menus', 'menus', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(8, 'edit_menus', 'menus', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(9, 'add_menus', 'menus', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(10, 'delete_menus', 'menus', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(11, 'browse_roles', 'roles', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(12, 'read_roles', 'roles', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(13, 'edit_roles', 'roles', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(14, 'add_roles', 'roles', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(15, 'delete_roles', 'roles', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(16, 'browse_users', 'users', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(17, 'read_users', 'users', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(18, 'edit_users', 'users', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(19, 'add_users', 'users', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(20, 'delete_users', 'users', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(21, 'browse_settings', 'settings', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(22, 'read_settings', 'settings', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(23, 'edit_settings', 'settings', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(24, 'add_settings', 'settings', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(25, 'delete_settings', 'settings', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(26, 'browse_categories', 'categories', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(27, 'read_categories', 'categories', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(28, 'edit_categories', 'categories', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(29, 'add_categories', 'categories', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(30, 'delete_categories', 'categories', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(31, 'browse_posts', 'posts', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(32, 'read_posts', 'posts', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(33, 'edit_posts', 'posts', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(34, 'add_posts', 'posts', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(35, 'delete_posts', 'posts', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(36, 'browse_pages', 'pages', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(37, 'read_pages', 'pages', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(38, 'edit_pages', 'pages', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(39, 'add_pages', 'pages', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(40, 'delete_pages', 'pages', '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(41, 'browse_hooks', NULL, '2019-04-22 17:59:21', '2019-04-22 17:59:21'),
(42, 'browse_maintexts', 'maintexts', '2019-04-22 18:41:56', '2019-04-22 18:41:56'),
(43, 'read_maintexts', 'maintexts', '2019-04-22 18:41:56', '2019-04-22 18:41:56'),
(44, 'edit_maintexts', 'maintexts', '2019-04-22 18:41:56', '2019-04-22 18:41:56'),
(45, 'add_maintexts', 'maintexts', '2019-04-22 18:41:56', '2019-04-22 18:41:56'),
(46, 'delete_maintexts', 'maintexts', '2019-04-22 18:41:56', '2019-04-22 18:41:56'),
(47, 'browse_products', 'products', '2019-04-22 18:47:21', '2019-04-22 18:47:21'),
(48, 'read_products', 'products', '2019-04-22 18:47:21', '2019-04-22 18:47:21'),
(49, 'edit_products', 'products', '2019-04-22 18:47:21', '2019-04-22 18:47:21'),
(50, 'add_products', 'products', '2019-04-22 18:47:21', '2019-04-22 18:47:21'),
(51, 'delete_products', 'products', '2019-04-22 18:47:21', '2019-04-22 18:47:21'),
(52, 'browse_messages', 'messages', '2019-04-24 16:39:30', '2019-04-24 16:39:30'),
(53, 'read_messages', 'messages', '2019-04-24 16:39:30', '2019-04-24 16:39:30'),
(54, 'edit_messages', 'messages', '2019-04-24 16:39:30', '2019-04-24 16:39:30'),
(55, 'add_messages', 'messages', '2019-04-24 16:39:30', '2019-04-24 16:39:30'),
(56, 'delete_messages', 'messages', '2019-04-24 16:39:30', '2019-04-24 16:39:30'),
(57, 'browse_works', 'works', '2019-04-29 18:17:41', '2019-04-29 18:17:41'),
(58, 'read_works', 'works', '2019-04-29 18:17:41', '2019-04-29 18:17:41'),
(59, 'edit_works', 'works', '2019-04-29 18:17:41', '2019-04-29 18:17:41'),
(60, 'add_works', 'works', '2019-04-29 18:17:41', '2019-04-29 18:17:41'),
(61, 'delete_works', 'works', '2019-04-29 18:17:41', '2019-04-29 18:17:41');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
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
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
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
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-22 17:42:02', '2019-04-22 17:42:02'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-22 17:42:02', '2019-04-22 17:42:02');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalog_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `body`, `catalog_id`, `price`, `picture`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 'dawd', 'adw', '1', 'awdaw', '19_03_29_05_38_07.jpg', 1, 'daw', '2019-03-29 14:38:07', '2019-03-29 14:38:07'),
(5, 'пингвины', 'ничего такие', '2', '1р', '19_03_29_06_02_35.jpg', 1, 'в зоопарке', '2019-03-29 15:02:35', '2019-03-29 15:02:35'),
(6, 'add', 'ads', '1', 'ads', '', 1, 'adsd', '2019-04-01 14:36:10', '2019-04-01 14:36:10');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'voyager::seeders.roles.admin', '2019-04-22 17:42:00', '2019-04-22 17:42:00'),
(2, 'user', 'voyager::seeders.roles.user', '2019-04-22 17:42:00', '2019-04-22 17:42:00');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'voyager::seeders.settings.site.title', 'voyager::seeders.settings.site.title', '', 'text', 1, 'Site'),
(2, 'site.description', 'voyager::seeders.settings.site.description', 'voyager::seeders.settings.site.description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'voyager::seeders.settings.site.logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'voyager::seeders.settings.site.google_analytics_tracking_id', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'voyager::seeders.settings.admin.background_image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'voyager::seeders.settings.admin.title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'voyager::seeders.settings.admin.description', 'voyager::seeders.settings.admin.description_value', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'voyager::seeders.settings.admin.loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'voyager::seeders.settings.admin.icon_image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'voyager::seeders.settings.admin.google_analytics_client_id', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'roman', 'ly4ik2301@gmail.com', 'users/default.png', NULL, '$2y$10$YDzcmQ38ibtbgbWi6la6Fu1zezyLBtox3Vzs9qQkWdEb8f9Nt9DkW', 'agIXrgK1khMEMBWa8S6Qr8jdtfBmQaYQGrB8R5ZrUDaTYw8y1SjKtstgnsVb', NULL, '2019-03-27 13:17:16', '2019-03-27 13:17:16'),
(2, NULL, 'grish', 'grisha@gmail.com', 'users/default.png', NULL, '$2y$10$pB.MkgDLBeyWznCKCpSfh.BUH2yJ9LATHK6pl5yD/53fgHlcbuY6i', NULL, NULL, '2019-04-12 17:49:24', '2019-04-12 17:49:24'),
(3, NULL, 'dwada', 'adwdad@gmail.com', 'users/default.png', NULL, '$2y$10$/iXrVNrqPxMVVzCnCR2vWuO/jGEglTeTlCUU79MdfXosjri8F8NSe', NULL, NULL, '2019-04-12 17:56:14', '2019-04-12 17:56:14');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `picture` tinytext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `name`, `body`, `picture`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'add', '<p>test</p>', 'works\\April2019\\utt66pEhVcDDJg1Dwf9f.jpg', '2019-04-29 19:00:33', '2019-04-29 19:00:33', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `charts`
--
ALTER TABLE `charts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `charts`
--
ALTER TABLE `charts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
