-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 12:09 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advance_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(12, 'Mackup', NULL, 'active', '2021-03-17 09:37:34', '2021-03-18 12:28:03'),
(13, 'Skin care', NULL, 'active', '2021-03-18 12:28:15', '2021-03-18 13:26:24'),
(14, 'Toner', NULL, 'active', '2021-03-18 12:28:21', '2021-03-18 12:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` int(255) UNSIGNED DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `status` enum('new','progress','delivered','cancel') COLLATE utf8mb4_unicode_ci DEFAULT 'new',
  `quantity` int(11) DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `order_id`, `user_id`, `price`, `status`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(68, 34, NULL, 28636, 21.00, 'new', 2, 42.00, '2021-03-25 10:53:21', '2021-03-25 10:53:50'),
(69, 35, NULL, 28636, 1221.00, 'new', 1, 1221.00, '2021-03-25 10:53:34', '2021-03-25 10:53:34'),
(70, 34, NULL, 15, 21.00, 'new', 1, 21.00, '2021-03-25 10:54:17', '2021-03-25 10:54:17'),
(71, 35, NULL, 15, 1221.00, 'new', 1, 1221.00, '2021-03-25 10:54:26', '2021-03-25 10:54:26'),
(72, 35, 34, 48034, 1221.00, 'new', 1, 1221.00, '2021-03-29 03:37:35', '2021-03-29 03:56:05'),
(73, 35, 35, 1, 1221.00, 'new', 3, 3663.00, '2021-03-29 04:13:11', '2021-03-29 04:16:43'),
(74, 34, 36, 1, 21.00, 'new', 1, 21.00, '2021-03-29 04:44:08', '2021-03-29 04:50:10'),
(75, 35, 37, 1, 1221.00, 'new', 1, 1221.00, '2021-03-29 05:01:52', '2021-03-29 05:12:13'),
(76, 35, 38, 1, 1221.00, 'new', 1, 1221.00, '2021-03-29 05:12:21', '2021-03-29 05:12:41'),
(77, 35, 39, 1, 1221.00, 'new', 1, 1221.00, '2021-03-29 05:14:40', '2021-03-29 05:14:52'),
(78, 35, 40, 1, 1221.00, 'new', 1, 1221.00, '2021-03-29 05:17:05', '2021-03-29 05:23:13'),
(79, 34, 41, 1, 21.00, 'new', 1, 21.00, '2021-03-29 05:25:26', '2021-03-29 05:25:38'),
(80, 34, 42, 1, 21.00, 'new', 1, 21.00, '2021-03-29 05:26:28', '2021-03-29 05:26:45'),
(81, 35, 43, 1, 1221.00, 'new', 1, 1221.00, '2021-03-29 05:28:01', '2021-03-29 05:28:11'),
(82, 35, 44, 1, 1221.00, 'new', 1, 1221.00, '2021-03-29 05:32:59', '2021-03-29 05:33:08'),
(83, 34, 45, 1, 21.00, 'new', 1, 21.00, '2021-03-29 05:35:20', '2021-03-29 05:35:38'),
(84, 35, 46, 1, 1221.00, 'new', 1, 1221.00, '2021-03-29 05:36:16', '2021-03-29 05:36:30'),
(85, 34, 47, 1, 21.00, 'new', 1, 21.00, '2021-03-29 05:37:24', '2021-03-29 05:37:37'),
(86, 35, 48, 1, 1221.00, 'new', 1, 1221.00, '2021-03-29 05:38:13', '2021-03-29 05:38:29'),
(87, 34, 49, 1, 21.00, 'new', 1, 21.00, '2021-03-29 05:41:11', '2021-03-29 05:41:22'),
(88, 35, 50, 1, 1221.00, 'new', 1, 1221.00, '2021-03-29 05:41:55', '2021-03-29 05:42:06'),
(89, 35, 51, 1, 1221.00, 'new', 1, 1221.00, '2021-03-29 05:44:39', '2021-03-29 05:44:51'),
(90, 35, 52, 1, 1221.00, 'new', 1, 1221.00, '2021-03-29 05:46:31', '2021-03-29 05:46:42'),
(91, 34, 53, 1, 21.00, 'new', 1, 21.00, '2021-03-29 05:47:39', '2021-03-29 05:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 'Women Products', 'women-products', 'Women Products', NULL, 1, NULL, NULL, 'active', '2021-03-25 07:14:47', '2021-03-25 07:14:47', NULL),
(22, 'Women Products Cat 2', 'women-products-cat-2', 'Women Products Cat 2', NULL, 1, NULL, NULL, 'active', '2021-03-25 07:15:01', '2021-03-26 02:44:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `value` decimal(20,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `admin_vendor_id` int(11) DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mileage` double DEFAULT NULL,
  `transmission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel_type` tinyint(4) DEFAULT NULL,
  `fuel_economy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `steering` tinyint(4) DEFAULT NULL,
  `condition` tinyint(4) DEFAULT NULL,
  `no_of_seats` tinyint(4) DEFAULT NULL,
  `drive_train` tinyint(4) DEFAULT NULL,
  `product_engine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exterior_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interior_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_ac_status` tinyint(4) DEFAULT NULL,
  `power_steering_status` tinyint(4) DEFAULT NULL,
  `air_bags_status` tinyint(4) DEFAULT NULL,
  `abs_status` tinyint(4) DEFAULT NULL,
  `air_conditioner_status` tinyint(4) DEFAULT NULL,
  `leather_seats_status` tinyint(4) DEFAULT NULL,
  `fog_light_status` tinyint(4) DEFAULT NULL,
  `cd_dvd_player_status` tinyint(4) DEFAULT NULL,
  `sound_system_status` tinyint(4) DEFAULT NULL,
  `am_fm_status` tinyint(4) DEFAULT NULL,
  `safety_belts_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `email`, `photo`, `phone`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 'Prajwal Rai', 'About price', 'prajwal.iar@gmail.com', NULL, '9807009999', 'Hello sir i am from kathmandu nepal.', '2020-08-14 08:25:46', '2020-08-14 08:00:01', '2020-08-14 08:25:46'),
(2, 'Prajwal Rai', 'About Price', 'prajwal.iar@gmail.com', NULL, '9800099000', 'Hello i am Prajwal Rai', '2020-08-18 03:04:15', '2020-08-15 07:52:39', '2020-08-18 03:04:16'),
(3, 'Prajwal Rai', 'lorem ipsum', 'prajwal.iar@gmail.com', NULL, '1200990009', 'hello sir sdfdfd dfdjf ;dfjd fd ldkfd', '2021-02-01 05:43:04', '2020-08-17 21:15:12', '2021-02-01 05:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_10_021010_create_brands_table', 1),
(5, '2020_07_10_025334_create_banners_table', 1),
(6, '2020_07_10_112147_create_categories_table', 1),
(7, '2020_07_11_063857_create_products_table', 1),
(8, '2020_07_12_073132_create_post_categories_table', 1),
(9, '2020_07_12_073701_create_post_tags_table', 1),
(10, '2020_07_12_083638_create_posts_table', 1),
(11, '2020_07_13_151329_create_messages_table', 1),
(12, '2020_07_14_023748_create_shippings_table', 1),
(13, '2020_07_15_054356_create_orders_table', 1),
(14, '2020_07_15_102626_create_carts_table', 1),
(15, '2020_07_16_041623_create_notifications_table', 1),
(16, '2020_07_16_053240_create_coupons_table', 1),
(17, '2020_07_23_143757_create_wishlists_table', 1),
(18, '2020_07_24_074930_create_product_reviews_table', 1),
(19, '2020_07_24_131727_create_post_comments_table', 1),
(20, '2020_08_01_143408_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('00778c1d-c84c-462b-83fa-f101a4e3a773', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-05 06:33:07', '2021-02-05 06:33:07'),
('01f8da2a-fad1-4c08-bba4-f46180a5c282', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/30\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-25 08:56:50', '2021-03-25 08:56:50'),
('026c6046-ca4d-4726-9ef7-16bd3a497393', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/50\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:42:06', '2021-03-29 05:42:06'),
('04cd1cb8-9f57-4a82-89c2-5dff2d688e9b', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/47\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:37:37', '2021-03-29 05:37:37'),
('0ce20188-dce1-472a-9d19-64a9a804e9fa', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/53\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:47:48', '2021-03-29 05:47:48'),
('1d9e7961-c486-4572-8211-39bbb9c36510', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/18\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-15 03:41:29', '2021-02-15 03:41:29'),
('2145a8e3-687d-444a-8873-b3b2fb77a342', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:31:21', '2020-08-15 07:31:21'),
('342eac8a-e9b6-4d0b-8ee6-2934445c946e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/31\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-25 09:31:22', '2021-03-25 09:31:22'),
('34637c17-adeb-497f-ab8f-0e8644a87793', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/14\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-10 04:24:19', '2021-02-10 04:24:19'),
('369fd6c8-007b-4d5a-aee9-0e5dee73c2bb', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/37\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:12:13', '2021-03-29 05:12:13'),
('39ffafac-09ca-4c49-942d-8b35998ce9ac', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/13\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-10 04:22:53', '2021-02-10 04:22:53'),
('3a4eb1d4-ee6b-49e0-b50f-b6b7cca58221', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/24\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-18 03:50:21', '2021-02-18 03:50:21'),
('3ae5b6bf-6223-4bb7-b590-7ffd530397ad', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/44\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:33:08', '2021-03-29 05:33:08'),
('3af39f84-cab4-4152-9202-d448435c67de', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/4\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 07:54:52', '2020-08-15 07:54:52'),
('443a7740-d855-4626-b218-6d34a0d91bf6', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/6\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-05 07:31:11', '2021-02-05 07:31:11'),
('4a0afdb0-71ad-4ce6-bc70-c92ef491a525', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:51', '2020-08-17 21:13:51'),
('4d9df877-e482-4fcb-b273-cd49ee83e9e8', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/25\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-23 03:39:21', '2021-03-23 03:39:21'),
('51c55893-fa1a-4e97-a13c-50e306084e7c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/11\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-08 08:15:34', '2021-02-08 08:15:34'),
('540ca3e9-0ff9-4e2e-9db3-6b5abc823422', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2020-08-15 07:30:44', '2020-08-14 07:12:28', '2020-08-15 07:30:44'),
('57689920-c1f8-416d-b5e3-87de44e49cea', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/12\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-10 03:59:05', '2021-02-10 03:59:05'),
('5c7545ad-cf23-4889-a314-69dfb95fbb89', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/38\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:12:41', '2021-03-29 05:12:41'),
('5da09dd1-3ffc-43b0-aba2-a4260ba4cc76', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:51:02', '2020-08-15 07:51:02'),
('5e91e603-024e-45c5-b22f-36931fef0d90', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/white-sports-casual-t\",\"fas\":\"fa-star\"}', NULL, '2020-08-15 07:44:07', '2020-08-15 07:44:07'),
('60d374c1-9f0a-4c31-a265-b38d23e6a634', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/43\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:28:11', '2021-03-29 05:28:11'),
('62844b0d-fe69-4cb3-8c44-bd4225d61bd5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/21\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-18 03:35:15', '2021-02-18 03:35:15'),
('6370aa2e-25c2-43bf-a873-49776357237e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/22\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-18 03:42:01', '2021-02-18 03:42:01'),
('69aa1daf-f210-4228-b835-4c7b2b50acb1', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/40\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:23:13', '2021-03-29 05:23:13'),
('6cce38ed-98ae-492c-866b-34fa47df2d5e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/16\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-10 04:27:36', '2021-02-10 04:27:36'),
('72265a51-3e4c-403a-a64f-8a13f43f99b0', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/10\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-08 08:13:08', '2021-02-08 08:13:08'),
('73a3b51a-416a-4e7d-8ca2-53b216d9ad8e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
('79702d87-6728-4af0-8d5c-b44b94dc80d6', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/33\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-25 09:33:10', '2021-03-25 09:33:10'),
('7d6ce70a-78aa-4656-9183-2bd085cb38a9', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/29\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-25 08:40:39', '2021-03-25 08:40:39'),
('810db222-5729-443c-acc3-4736dbbda164', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/20\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-18 03:31:45', '2021-02-18 03:31:45'),
('8605db5d-1462-496e-8b5f-8b923d88912c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/1\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-14 07:20:44', '2020-08-14 07:20:44'),
('87791256-6b38-443a-a954-6d31cc103d60', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/35\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 04:16:43', '2021-03-29 04:16:43'),
('88fe9252-f91e-4fa7-85fb-a2a5600d1519', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/4\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-05 06:22:56', '2021-02-05 06:22:56'),
('8fe3d70f-1324-4ec0-8d12-dd5aa30e4d73', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/19\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-15 04:01:33', '2021-02-15 04:01:33'),
('9a6adb9a-5444-4da9-adc2-8dc09601d581', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/28\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-23 04:01:54', '2021-03-23 04:01:54'),
('9cce545b-8457-4859-81d8-7bca89a5889f', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/17\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-15 03:10:56', '2021-02-15 03:10:56'),
('a6ec5643-748c-4128-92e2-9a9f293f53b5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-17 21:17:03', '2020-08-17 21:17:03'),
('ac1a0154-60c0-45e4-b631-0b348252971f', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/46\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:36:30', '2021-03-29 05:36:30'),
('b11915df-a383-44da-a8c1-e849bb1154f3', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/9\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-08 08:09:25', '2021-02-08 08:09:25'),
('b186a883-42f2-4a05-8fc5-f0d3e10309ff', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/2\",\"fas\":\"fa-file-alt\"}', '2020-08-15 04:17:24', '2020-08-14 22:14:55', '2020-08-15 04:17:24'),
('b22fad6c-55a6-4c8d-9de7-2d7311f2b231', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/15\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-10 04:25:51', '2021-02-10 04:25:51'),
('b7d56c3d-3e61-486a-bd3b-c85b466a048c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/42\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:26:44', '2021-03-29 05:26:44'),
('b8df32f2-a8cd-440f-b081-66d689652fb2', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/8\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-05 08:01:22', '2021-02-05 08:01:22'),
('b9e6b6c4-a312-4828-b8f8-2062064261bf', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/49\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:41:22', '2021-03-29 05:41:22'),
('bdf0e02e-4ad0-4525-beb8-05a2427b952b', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/23\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-18 03:44:55', '2021-02-18 03:44:55'),
('bffd3f5a-0ad2-4ed2-bc08-6fa8ba9e3dda', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/51\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:44:51', '2021-03-29 05:44:51'),
('c7355865-b180-4d60-bcc3-2a090bacd88f', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/48\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:38:29', '2021-03-29 05:38:29'),
('cad1f87c-b1ff-432e-bf1a-8bcfc71a51ef', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/39\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:14:52', '2021-03-29 05:14:52'),
('d1ab7c73-1152-4adc-b342-4abe08bad5b6', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/45\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:35:37', '2021-03-29 05:35:37'),
('d1f6bb89-f0ee-49a2-b82b-47542c0b7128', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/3\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-05 06:21:09', '2021-02-05 06:21:09'),
('d2fd7c33-b0fe-47d6-8bc6-f377d404080d', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:08:50', '2020-08-14 07:08:50'),
('db4c0af6-9a30-4c32-8ecd-159a27e4bba6', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/32\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-25 09:31:59', '2021-03-25 09:31:59'),
('dff78b90-85c8-42ee-a5b1-de8ad0b21be4', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/3\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 06:40:54', '2020-08-15 06:40:54'),
('e28b0a73-4819-4016-b915-0e525d4148f5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/lorem-ipsum-is-simply\",\"fas\":\"fa-star\"}', NULL, '2020-08-17 21:08:16', '2020-08-17 21:08:16'),
('e5269985-0717-4e4e-83af-a3ccfe0e3ed1', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/Carjeep\\/public\\/admin\\/order\\/7\",\"fas\":\"fa-file-alt\"}', NULL, '2021-02-05 07:41:49', '2021-02-05 07:41:49'),
('e9d7df9b-639a-47aa-a7fc-73eb02487af2', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/26\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-23 03:51:59', '2021-03-23 03:51:59'),
('eb7b76ab-cadd-4112-979b-32da6592c73d', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/41\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:25:38', '2021-03-29 05:25:38'),
('ee8d838a-d252-4588-a71b-179225f03bd7', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/27\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-23 03:55:00', '2021-03-23 03:55:00'),
('eed95727-7c41-4b3c-ac7b-6047f6ad64a5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/36\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 04:50:10', '2021-03-29 04:50:10'),
('ef4ad453-108c-4d14-906b-86fa49615e5f', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/52\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 05:46:42', '2021-03-29 05:46:42'),
('f8a79d92-82a1-461c-80d8-1bd3354e1875', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost\\/americansook\\/public\\/admin\\/order\\/34\",\"fas\":\"fa-file-alt\"}', NULL, '2021-03-29 03:56:04', '2021-03-29 03:56:04'),
('ffffa177-c54e-4dfe-ba43-27c466ff1f4b', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` double(20,2) DEFAULT NULL,
  `shipping_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon` double(20,2) DEFAULT NULL,
  `total_amount` double(20,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `payment_method` enum('cod','paypal') COLLATE utf8mb4_unicode_ci DEFAULT 'cod',
  `payment_status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci DEFAULT 'unpaid',
  `status` enum('new','process','delivered','cancel') COLLATE utf8mb4_unicode_ci DEFAULT 'new',
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `vender_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `replied_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_vendor_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT 1,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `condition` enum('default','new','hot') COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `price` double(8,2) DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_new` tinyint(4) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `is_approved` tinyint(4) NOT NULL DEFAULT 0,
  `type` tinyint(4) DEFAULT NULL,
  `product_type` tinyint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `admin_vendor_id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`, `year`, `old_new`, `quantity`, `is_approved`, `type`, `product_type`) VALUES
(34, 1, 'Women Products Sub', 'women-products-sub', 'Women Products Sub', NULL, NULL, 221, 'M', 'default', 'active', 21.00, NULL, 1, 7, NULL, 12, '2021-03-25 07:18:20', '2021-03-29 05:51:19', '213', 1, NULL, 1, 2, NULL),
(35, 1, 'asdasd1221', 'asdasd1221', '212', NULL, NULL, 20, 'M', 'default', 'active', 1221.00, NULL, 1, 8, NULL, 12, '2021-03-25 07:21:57', '2021-03-29 05:50:50', '2112', 1, NULL, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` tinyint(4) DEFAULT 0,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspiciatis unde sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspiciatis unde omnis iste natus error sit voluptatem Excepteu\r\n\r\n                            sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspiciatis Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspi deserunt mollit anim id est laborum. sed ut perspi.', 'Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', '/storage/photos/1/logo.png', '/storage/photos/1/blog3.jpg', 'NO. 342 - London Oxford Street, 012 United Kingdom', '+060 (800) 801-582', '', NULL, '2020-08-14 01:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `type`, `price`, `status`, `created_at`, `updated_at`) VALUES
(5, 'USA - State Name', '10.00', 'active', '2021-02-05 07:59:59', '2021-03-29 06:19:14'),
(6, 'Oman - City Name', '1.00', 'active', '2021-02-08 08:00:21', '2021-03-29 06:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` tinyint(1) DEFAULT 1,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_parent` int(11) DEFAULT NULL,
  `parent_id` int(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `title`, `slug`, `summary`, `photo`, `cat_id`, `status`, `created_at`, `updated_at`, `is_parent`, `parent_id`) VALUES
(6, 'Women Products SubCat 2', 'women-products-subcat-2', 'Women Products SubCat 2', NULL, 21, 'inactive', '2021-03-25 07:16:47', '2021-03-25 07:37:43', NULL, NULL),
(7, 'Women Products SubCat 3', 'women-products-subcat-3', 'Women Products SubCat 3', NULL, 21, 'active', '2021-03-25 07:17:15', '2021-03-25 07:17:15', NULL, NULL),
(8, 'asdasd', 'asdasd', 'Women Products Cat', NULL, 22, 'active', '2021-03-25 07:20:28', '2021-03-25 07:20:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user','vendor') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_vendor` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`, `is_vendor`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$Fk6vml5lb8EdyngsspSUXeVd2p6yZQAElfsOPvrbryG32hbvsKMwK', NULL, 'admin', NULL, NULL, 'active', NULL, NULL, NULL, 0),
(2, 'Steve', 'steve@gmail.com', NULL, '$2y$10$aNAS0yRR0PLqA8sQMF9UXuHKyUf1MVkzmsfSRc1dvPIt4ZimT2A/W', NULL, 'vendor', NULL, NULL, 'active', NULL, '2021-02-03 10:20:51', '2021-02-05 03:00:38', 2),
(12, 'testvender2@gmail.com', 'testvender2@gmail.com', NULL, '$2y$10$6MOMcJxymE00kT0YLWai5eYmXeftWa8XvmRoMUpApkPZd.aHUyQiy', NULL, 'vendor', NULL, NULL, 'active', NULL, '2021-02-09 02:46:12', '2021-02-09 02:49:50', 2),
(13, 'testtt@@gmail.com', 'testtt@@gmail.com', NULL, '$2y$10$LtzzTDmvHevcPeUraS8f8uwNUxiYn4FzIVPR8pjFB.a0mKvH9iW3e', NULL, 'vendor', NULL, NULL, 'active', NULL, '2021-02-09 06:05:30', '2021-02-09 06:06:25', 2),
(15, 'user@gmail.com', 'user@gmail.com', NULL, '$2y$10$./TP0RTNF7YcXzrHC95afuD/ZSUjE.heeNqh7TRFqJ.xCilxZNHF2', NULL, 'user', NULL, NULL, 'active', NULL, '2021-03-17 10:32:14', '2021-03-17 10:32:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`),
  ADD KEY `posts_post_tag_id_foreign` (`post_tag_id`),
  ADD KEY `posts_added_by_foreign` (`added_by`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
