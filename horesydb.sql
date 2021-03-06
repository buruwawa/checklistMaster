-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 01:35 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `horesydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_name`, `descriptions`, `main_account`, `total`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Main Account', 'Main cash account', '1', 1665775, 1, '2022-01-28 16:55:25', '2022-05-26 03:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `activity_roles`
--

CREATE TABLE `activity_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_roles`
--

INSERT INTO `activity_roles` (`id`, `role_id`, `activity_id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2', '1', 'Active', 1, '2022-05-15 21:25:56', '2022-05-15 21:25:56'),
(2, '2', '6', 'Active', 1, '2022-05-15 21:25:56', '2022-05-15 21:25:56'),
(3, '19', '9', 'Active', 1, '2022-05-15 21:25:56', '2022-05-15 21:25:56'),
(4, '19', '1', 'Active', 1, '2022-05-15 21:25:56', '2022-05-15 21:25:56'),
(5, '3', '6', 'Active', 1, '2022-05-15 21:25:56', '2022-05-15 21:25:56'),
(6, '5', '9', 'Active', 1, '2022-05-15 21:25:56', '2022-05-15 21:25:56'),
(7, '6', '1', 'Active', 1, '2022-05-22 05:34:53', '2022-05-22 05:34:53'),
(8, '9', '14', 'Active', 1, '2022-05-22 05:34:53', '2022-05-22 05:34:53'),
(9, '1', '6', 'Active', 1, '2022-05-22 19:20:33', '2022-05-22 19:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `indicator_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_id` bigint(20) DEFAULT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `action` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `indicator_id`, `answer`, `property_id`, `description`, `image`, `status`, `action`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '20', 'bv', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:17:58', '2022-06-13 22:17:59'),
(2, '21', 'Swept2', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:17:58', '2022-06-13 22:17:59'),
(3, '22', 'c3', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:17:58', '2022-06-13 22:17:59'),
(4, '27', 'A3', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:17:58', '2022-06-13 22:17:59'),
(5, '20', 'bv', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:21:37', '2022-06-13 22:21:39'),
(6, '21', 'Swept2', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:21:37', '2022-06-13 22:21:39'),
(7, '22', 'c2', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:21:38', '2022-06-13 22:21:39'),
(8, '22', 'c3', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:21:38', '2022-06-13 22:21:39'),
(9, '27', 'A1', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:21:38', '2022-06-13 22:21:39'),
(10, '27', 'A2', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:21:38', '2022-06-13 22:21:39'),
(11, '27', 'A3', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:21:38', '2022-06-13 22:21:39'),
(12, '27', 'A4', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:21:38', '2022-06-13 22:21:39'),
(13, '20', 'bv', 36, 'desc1', NULL, 'Active', 0, 1, '2022-06-13 22:34:35', '2022-06-13 22:34:37'),
(14, '21', 'Swept2', 36, 'desc2', NULL, 'Active', 0, 1, '2022-06-13 22:34:36', '2022-06-13 22:34:37'),
(15, '22', 'c2', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:34:36', '2022-06-13 22:34:37'),
(16, '27', 'A2', 36, '', NULL, 'Active', 0, 1, '2022-06-13 22:34:36', '2022-06-13 22:34:37'),
(17, '20', 'bv', NULL, NULL, NULL, 'Active', 1, 1, '2022-06-13 22:46:40', '2022-06-13 22:46:40'),
(18, '20', 'bv', NULL, NULL, NULL, 'Active', 1, 1, '2022-06-13 22:47:38', '2022-06-13 22:47:38'),
(19, '20', 'bv', NULL, NULL, NULL, 'Active', 1, 1, '2022-06-13 22:47:42', '2022-06-13 22:47:42'),
(20, '20', 'bv', NULL, NULL, NULL, 'Active', 1, 1, '2022-06-13 22:48:07', '2022-06-13 22:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `answer_update_photos`
--

CREATE TABLE `answer_update_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `index_id` int(11) DEFAULT NULL,
  `index_count` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_values`
--

CREATE TABLE `asset_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `cash_in_hand` bigint(20) UNSIGNED NOT NULL,
  `credit_customer` bigint(20) UNSIGNED NOT NULL,
  `advance_paid_to_supplier` bigint(20) UNSIGNED NOT NULL,
  `stock_value` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundles`
--

CREATE TABLE `bundles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bundle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit_users` int(10) UNSIGNED NOT NULL,
  `limit_shops` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bundles`
--

INSERT INTO `bundles` (`id`, `bundle_name`, `limit_users`, `limit_shops`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Awali', 3, 1, 30000, '2022-01-16 11:26:11', '2022-01-16 11:26:11'),
(2, 'Uwezo', 5, 3, 50000, '2022-01-16 11:26:29', '2022-01-16 11:26:29'),
(3, 'Nguvu', 100, 10, 120000, '2022-01-16 11:26:50', '2022-01-16 11:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `cash_ins`
--

CREATE TABLE `cash_ins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `amount_received` int(10) UNSIGNED NOT NULL,
  `amount_to` int(10) UNSIGNED NOT NULL,
  `cash_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_ins`
--

INSERT INTO `cash_ins` (`id`, `account_id`, `amount_received`, `amount_to`, `cash_category`, `cash_descriptions`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 'Purchases', 'Purchase Payments', 1, '2022-01-28 22:27:26', '2022-01-28 22:27:26'),
(2, 1, 7000, 7000, 'Sale', 'Cash', 2, '2022-01-28 22:31:19', '2022-01-28 22:31:19'),
(3, 1, 500000, 507000, 'capital', 'capital', 1, '2022-01-28 22:35:07', '2022-01-28 22:35:07'),
(4, 1, 0, 342000, 'Purchase', 'Purchase payment', 1, '2022-01-28 22:36:00', '2022-01-28 22:36:00'),
(5, 1, 35000, 377000, 'Sale', 'Cash', 2, '2022-01-29 01:41:23', '2022-01-29 01:41:23'),
(6, 1, 0, 375500, 'Purchases', 'Purchase Payments', 1, '2022-01-29 02:08:08', '2022-01-29 02:08:08'),
(7, 1, 0, 300500, 'Purchases', 'Purchase Payments', 1, '2022-01-29 02:11:44', '2022-01-29 02:11:44'),
(8, 1, 22000, 322500, 'Sale', 'Cash', 2, '2022-01-29 02:14:55', '2022-01-29 02:14:55'),
(9, 1, 28000, 350500, 'Sale', 'Cash', 2, '2022-01-29 02:26:09', '2022-01-29 02:26:09'),
(10, 1, 105000, 455500, 'Sale', 'Cash', 2, '2022-01-29 02:49:14', '2022-01-29 02:49:14'),
(11, 1, 80000, 535500, 'Sale', 'Cash', 2, '2022-01-29 02:51:11', '2022-01-29 02:51:11'),
(12, 1, 0, 513000, 'Purchases', 'Purchase Payments', 1, '2022-01-31 15:49:02', '2022-01-31 15:49:02'),
(13, 1, 6000, 519000, 'Sale', 'Cash', 2, '2022-01-31 15:55:32', '2022-01-31 15:55:32'),
(14, 1, 10000, 529000, 'Sale', 'Cash', 7, '2022-01-31 16:16:12', '2022-01-31 16:16:12'),
(15, 1, 0, 429000, 'Purchases', 'Purchase Payments', 1, '2022-01-31 16:28:20', '2022-01-31 16:28:20'),
(16, 1, 5000, 424000, 'Expenses', 'Luku', 1, '2022-01-31 16:39:02', '2022-01-31 16:39:02'),
(17, 1, 62500, 486500, 'Sale', 'Cash', 7, '2022-01-31 16:46:16', '2022-01-31 16:46:16'),
(18, 1, 14000, 500500, 'Sale', 'Cash', 2, '2022-02-08 19:33:30', '2022-02-08 19:33:30'),
(19, 1, 0, 350500, 'Purchases', 'Purchase Payments', 1, '2022-02-08 19:34:50', '2022-02-08 19:34:50'),
(20, 1, 100000, 450500, 'Sale', 'Cash', 2, '2022-02-08 19:47:40', '2022-02-08 19:47:40'),
(21, 1, 0, 100500, 'Purchases', 'Purchase Payments', 1, '2022-02-08 21:36:11', '2022-02-08 21:36:11'),
(22, 1, 900000, 1000500, 'Sale', 'Cash', 2, '2022-02-08 21:41:04', '2022-02-08 21:41:04'),
(23, 1, 500000, 1500500, 'capital', 'cash', 1, '2022-02-08 21:54:50', '2022-02-08 21:54:50'),
(24, 1, 10000, 1490500, 'Expenses', 'wages', 1, '2022-02-08 21:57:21', '2022-02-08 21:57:21'),
(25, 1, 0, 1468500, 'Purchases', 'Purchase Payments', 1, '2022-02-09 18:26:53', '2022-02-09 18:26:53'),
(26, 1, 6000, 1474500, 'Sale', 'Cash', 2, '2022-02-09 18:47:44', '2022-02-09 18:47:44'),
(27, 1, 10000, 1464500, 'Expenses', 'wages', 1, '2022-02-09 18:50:52', '2022-02-09 18:50:52'),
(28, 1, 4000, 1468500, 'Sale', 'Cash', 9, '2022-02-11 15:53:53', '2022-02-11 15:53:53'),
(29, 1, 60000, 1408500, 'Expenses', 'wages', 1, '2022-02-11 16:05:47', '2022-02-11 16:05:47'),
(30, 1, 4500, 1413000, 'Sale', 'Cash', 8, '2022-02-12 19:27:37', '2022-02-12 19:27:37'),
(31, 1, 0, 1413000, 'Purchases', 'Purchase Payments', 1, '2022-02-12 19:29:26', '2022-02-12 19:29:26'),
(32, 1, 0, 1376000, 'Purchases', 'Purchase Payments', 8, '2022-02-14 00:40:34', '2022-02-14 00:40:34'),
(33, 1, 0, 1365000, 'Purchases', 'Purchase Payments', 1, '2022-02-19 16:00:20', '2022-02-19 16:00:20'),
(34, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-20 11:46:58', '2022-02-20 11:46:58'),
(35, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-20 11:47:43', '2022-02-20 11:47:43'),
(36, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-20 11:48:49', '2022-02-20 11:48:49'),
(37, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-20 22:38:27', '2022-02-20 22:38:27'),
(38, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-20 22:39:25', '2022-02-20 22:39:25'),
(39, 1, 0, 1365000, 'Purchases', 'Purchase Payments', 1, '2022-02-20 22:47:03', '2022-02-20 22:47:03'),
(40, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-20 22:53:23', '2022-02-20 22:53:23'),
(41, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-20 22:59:16', '2022-02-20 22:59:16'),
(42, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-20 23:05:41', '2022-02-20 23:05:41'),
(43, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 08:03:50', '2022-02-21 08:03:50'),
(44, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 08:32:42', '2022-02-21 08:32:42'),
(45, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 08:48:17', '2022-02-21 08:48:17'),
(46, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 08:56:09', '2022-02-21 08:56:09'),
(47, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:00:52', '2022-02-21 09:00:52'),
(48, 1, 0, 1365000, 'Purchases', 'Purchase Payments', 1, '2022-02-21 09:04:51', '2022-02-21 09:04:51'),
(49, 1, 0, 1365000, 'Purchases', 'Purchase Payments', 1, '2022-02-21 09:16:04', '2022-02-21 09:16:04'),
(50, 1, 0, 1365000, 'Purchases', 'Purchase Payments', 1, '2022-02-21 09:18:08', '2022-02-21 09:18:08'),
(51, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:19:59', '2022-02-21 09:19:59'),
(52, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:33:18', '2022-02-21 09:33:18'),
(53, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:35:38', '2022-02-21 09:35:38'),
(54, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:36:38', '2022-02-21 09:36:38'),
(55, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:37:45', '2022-02-21 09:37:45'),
(56, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:41:46', '2022-02-21 09:41:46'),
(57, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:42:59', '2022-02-21 09:42:59'),
(58, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:47:44', '2022-02-21 09:47:44'),
(59, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:48:28', '2022-02-21 09:48:28'),
(60, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:51:13', '2022-02-21 09:51:13'),
(61, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:53:12', '2022-02-21 09:53:12'),
(62, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:54:52', '2022-02-21 09:54:52'),
(63, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:55:48', '2022-02-21 09:55:48'),
(64, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:58:20', '2022-02-21 09:58:20'),
(65, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 09:59:57', '2022-02-21 09:59:57'),
(66, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 10:01:26', '2022-02-21 10:01:26'),
(67, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 10:02:13', '2022-02-21 10:02:13'),
(68, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 10:02:28', '2022-02-21 10:02:28'),
(69, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 10:26:06', '2022-02-21 10:26:06'),
(70, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 10:27:16', '2022-02-21 10:27:16'),
(71, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 10:29:22', '2022-02-21 10:29:22'),
(72, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 10:31:14', '2022-02-21 10:31:14'),
(73, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 10:32:20', '2022-02-21 10:32:20'),
(74, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 11:04:50', '2022-02-21 11:04:50'),
(75, 1, 0, 1365000, 'Sale', 'Credit', 7, '2022-02-21 11:32:58', '2022-02-21 11:32:58'),
(76, 1, 72040, 1437040, 'Sale', 'Cash', 7, '2022-02-22 07:40:29', '2022-02-22 07:40:29'),
(77, 1, 303170, 1740210, 'Sale', 'Installment', 7, '2022-02-22 07:40:46', '2022-02-22 07:40:46'),
(78, 1, 12000, 1752210, 'Sale', 'Cash', 7, '2022-02-23 08:20:59', '2022-02-23 08:20:59'),
(79, 1, 12000, 1764210, 'Sale', 'Cash', 7, '2022-02-23 08:21:14', '2022-02-23 08:21:14'),
(80, 1, 2000, 1766210, 'Sale', 'Cash', 7, '2022-02-23 08:28:42', '2022-02-23 08:28:42'),
(81, 1, 0, 1766210, 'Sale', 'Credit', 7, '2022-02-23 08:35:38', '2022-02-23 08:35:38'),
(82, 1, 14400, 1780610, 'Sale', 'Cash', 7, '2022-02-24 07:46:51', '2022-02-24 07:46:51'),
(83, 1, 0, 1780610, 'Purchases', 'Purchase Payments', 7, '2022-02-24 08:20:54', '2022-02-24 08:20:54'),
(84, 1, 8000, 1788610, 'Sale', 'Installment and Wallet payment', 7, '2022-02-25 07:40:26', '2022-02-25 07:40:26'),
(85, 1, 2000, 1790610, 'Sale', 'Installment and Wallet payment', 7, '2022-02-25 07:41:05', '2022-02-25 07:41:05'),
(86, 1, 0, 1790610, 'Sale', 'Pay via E-wallet', 7, '2022-03-16 08:00:43', '2022-03-16 08:00:43'),
(87, 1, 0, 1740610, 'Purchases', 'Purchase Payments', 11, '2022-03-16 09:15:41', '2022-03-16 09:15:41'),
(88, 1, 2160, 1742770, 'Sale', 'Cash', 7, '2022-03-16 10:24:18', '2022-03-16 10:24:18'),
(89, 1, 2400, 1745170, 'Sale', 'Cash', 7, '2022-03-18 09:29:00', '2022-03-18 09:29:00'),
(90, 1, 255, 1745425, 'Sale', 'Cash', 7, '2022-03-18 13:48:37', '2022-03-18 13:48:37'),
(91, 1, 15350, 1760775, 'Sale', 'Cash', 7, '2022-03-18 13:54:43', '2022-03-18 13:54:43'),
(92, 1, 45000, 1715775, 'Expenses', 'Transport', 11, '2022-03-18 14:12:04', '2022-03-18 14:12:04'),
(93, 1, 30000, 1685775, 'Expenses', 'wages', 11, '2022-03-18 14:14:03', '2022-03-18 14:14:03'),
(94, 1, 20000, 1665775, 'Expenses', 'wages', 11, '2022-03-18 14:16:08', '2022-03-18 14:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin` int(10) UNSIGNED NOT NULL,
  `vrn` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(10) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `company_name`, `tin`, `vrn`, `email`, `phone`, `location`, `from`, `to`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'rashii', 'null', 117271212, 0, 'null', 627981622, 'iguguno', -8000, -8000, 2, '2022-01-28 22:09:36', '2022-03-18 13:48:37'),
(2, 'Makundi', 'Makundi Agrovet', 90909090, 0, 'null', 1234567890, 'Ndago', -927500, -927500, 7, '2022-01-31 16:45:12', '2022-02-22 07:40:46'),
(3, 'Cash', '5star', 123123123, 0, '5star@gmail.com', 1234567890, 'mbezi', -12000, -12000, 2, '2022-02-09 18:31:55', '2022-03-18 13:54:43'),
(4, 'Abdul', 'No', 0, 0, 'null', 99888899, 'Atque ipsa debitis', 0, 0, 7, '2022-02-23 07:56:46', '2022-02-24 07:46:52'),
(5, 'Ema Moran', 'No', 0, 0, 'ema@yahoo.com', 767888888, 'Arusha-Sakina', 0, 0, 7, '2022-03-16 07:41:53', '2022-03-16 07:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `customer_account_summaries`
--

CREATE TABLE `customer_account_summaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL DEFAULT 0,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_account_summaries`
--

INSERT INTO `customer_account_summaries` (`id`, `customer_id`, `sale_id`, `from`, `to`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 0, 'Cash', 2, '2022-01-28 22:31:19', '2022-01-28 22:31:19'),
(2, 1, 2, 0, 0, 'Cash', 2, '2022-01-29 01:41:23', '2022-01-29 01:41:23'),
(3, 1, 3, 0, 0, 'Cash', 2, '2022-01-29 02:14:55', '2022-01-29 02:14:55'),
(4, 1, 4, 0, 0, 'Cash', 2, '2022-01-29 02:26:09', '2022-01-29 02:26:09'),
(5, 1, 5, 0, 0, 'Cash', 2, '2022-01-29 02:49:14', '2022-01-29 02:49:14'),
(6, 1, 6, 0, 0, 'Cash', 2, '2022-01-29 02:51:11', '2022-01-29 02:51:11'),
(7, 1, 7, 0, 0, 'Cash', 2, '2022-01-31 15:55:32', '2022-01-31 15:55:32'),
(8, 1, 8, 0, 0, 'Cash', 7, '2022-01-31 16:16:12', '2022-01-31 16:16:12'),
(9, 2, 9, 0, 0, 'Cash', 7, '2022-01-31 16:46:16', '2022-01-31 16:46:16'),
(10, 2, 10, 0, 0, 'Cash', 2, '2022-02-08 19:33:30', '2022-02-08 19:33:30'),
(11, 2, 12, 0, 0, 'Cash', 2, '2022-02-08 19:47:40', '2022-02-08 19:47:40'),
(12, 2, 13, 0, 0, 'Cash', 2, '2022-02-08 21:41:04', '2022-02-08 21:41:04'),
(13, 3, 14, 0, 0, 'Cash', 2, '2022-02-09 18:47:44', '2022-02-09 18:47:44'),
(14, 3, 15, 0, 0, 'Cash', 9, '2022-02-11 15:53:53', '2022-02-11 15:53:53'),
(15, 1, 16, 0, 0, 'Cash', 8, '2022-02-12 19:27:37', '2022-02-12 19:27:37'),
(16, 1, 17, 0, -10000, 'Credit', 7, '2022-02-20 11:46:58', '2022-02-20 11:46:58'),
(17, 2, 18, 0, -12000, 'Credit', 7, '2022-02-20 11:47:43', '2022-02-20 11:47:43'),
(18, 1, 19, -10000, -18000, 'Credit', 7, '2022-02-20 11:48:49', '2022-02-20 11:48:49'),
(19, 2, 20, -12000, -14500, 'Credit', 7, '2022-02-20 22:38:27', '2022-02-20 22:38:27'),
(20, 2, 21, -14500, -16500, 'Credit', 7, '2022-02-20 22:39:25', '2022-02-20 22:39:25'),
(21, 2, 22, -16500, -18500, 'Credit', 7, '2022-02-20 22:53:23', '2022-02-20 22:53:23'),
(22, 2, 23, -18500, -22500, 'Credit', 7, '2022-02-20 22:59:17', '2022-02-20 22:59:17'),
(23, 2, 24, -22500, -24500, 'Credit', 7, '2022-02-20 23:05:41', '2022-02-20 23:05:41'),
(24, 2, 25, -24500, -36500, 'Credit', 7, '2022-02-21 08:03:50', '2022-02-21 08:03:50'),
(25, 2, 26, -36500, -52100, 'Credit', 7, '2022-02-21 08:32:42', '2022-02-21 08:32:42'),
(26, 2, 27, -52100, -61100, 'Credit', 7, '2022-02-21 08:48:17', '2022-02-21 08:48:17'),
(27, 2, 28, -61100, -66100, 'Credit', 7, '2022-02-21 08:56:09', '2022-02-21 08:56:09'),
(28, 2, 29, -66100, -79100, 'Credit', 7, '2022-02-21 09:00:52', '2022-02-21 09:00:52'),
(29, 2, 30, -79100, -103580, 'Credit', 7, '2022-02-21 09:19:59', '2022-02-21 09:19:59'),
(30, 2, 31, -103580, -156380, 'Credit', 7, '2022-02-21 09:33:18', '2022-02-21 09:33:18'),
(31, 2, 32, -156380, -170780, 'Credit', 7, '2022-02-21 09:35:38', '2022-02-21 09:35:38'),
(32, 2, 33, -170780, -201980, 'Credit', 7, '2022-02-21 09:36:39', '2022-02-21 09:36:39'),
(33, 2, 34, -201980, -213980, 'Credit', 7, '2022-02-21 09:37:45', '2022-02-21 09:37:45'),
(34, 2, 35, -213980, -237980, 'Credit', 7, '2022-02-21 09:41:47', '2022-02-21 09:41:47'),
(35, 2, 36, -237980, -261980, 'Credit', 7, '2022-02-21 09:42:59', '2022-02-21 09:42:59'),
(36, 2, 37, -261980, -285980, 'Credit', 7, '2022-02-21 09:47:44', '2022-02-21 09:47:44'),
(37, 2, 38, -285980, -333980, 'Credit', 7, '2022-02-21 09:48:28', '2022-02-21 09:48:28'),
(38, 2, 39, -333980, -357980, 'Credit', 7, '2022-02-21 09:51:14', '2022-02-21 09:51:14'),
(39, 2, 40, -357980, -405980, 'Credit', 7, '2022-02-21 09:53:12', '2022-02-21 09:53:12'),
(40, 2, 41, -405980, -417980, 'Credit', 7, '2022-02-21 09:54:52', '2022-02-21 09:54:52'),
(41, 2, 42, -417980, -429980, 'Credit', 7, '2022-02-21 09:55:49', '2022-02-21 09:55:49'),
(42, 2, 43, -429980, -453980, 'Credit', 7, '2022-02-21 09:58:20', '2022-02-21 09:58:20'),
(43, 2, 44, -453980, -501980, 'Credit', 7, '2022-02-21 09:59:58', '2022-02-21 09:59:58'),
(44, 2, 45, -501980, -525980, 'Credit', 7, '2022-02-21 10:01:26', '2022-02-21 10:01:26'),
(45, 2, 46, -525980, -573980, 'Credit', 7, '2022-02-21 10:02:13', '2022-02-21 10:02:13'),
(46, 2, 47, -573980, -621980, 'Credit', 7, '2022-02-21 10:02:28', '2022-02-21 10:02:28'),
(47, 2, 48, -621980, -689980, 'Credit', 7, '2022-02-21 10:26:07', '2022-02-21 10:26:07'),
(48, 2, 49, -689980, -723100, 'Credit', 7, '2022-02-21 10:27:16', '2022-02-21 10:27:16'),
(49, 2, 50, -723100, -761420, 'Credit', 7, '2022-02-21 10:29:22', '2022-02-21 10:29:22'),
(50, 2, 51, -761420, -795740, 'Credit', 7, '2022-02-21 10:31:14', '2022-02-21 10:31:14'),
(51, 2, 52, -795740, -830060, 'Credit', 7, '2022-02-21 10:32:21', '2022-02-21 10:32:21'),
(52, 2, 53, -830060, -867500, 'Credit', 7, '2022-02-21 11:04:50', '2022-02-21 11:04:50'),
(53, 2, 54, -867500, -927500, 'Credit', 7, '2022-02-21 11:32:58', '2022-02-21 11:32:58'),
(54, 1, 55, -18000, -18000, 'Cash', 7, '2022-02-22 07:40:30', '2022-02-22 07:40:30'),
(55, 2, 56, -927500, -927500, 'Installment', 7, '2022-02-22 07:40:46', '2022-02-22 07:40:46'),
(56, 4, 57, 0, 0, 'Cash', 7, '2022-02-23 08:20:59', '2022-02-23 08:20:59'),
(57, 3, 58, 0, 0, 'Cash', 7, '2022-02-23 08:21:14', '2022-02-23 08:21:14'),
(58, 1, 59, -18000, -18000, 'Cash', 7, '2022-02-23 08:28:42', '2022-02-23 08:28:42'),
(59, 3, 60, 0, -12000, 'Credit', 7, '2022-02-23 08:35:38', '2022-02-23 08:35:38'),
(60, 4, 61, 0, 0, 'Cash', 7, '2022-02-24 07:46:52', '2022-02-24 07:46:52'),
(61, 1, 17, -18000, -10000, 'Installment', 7, '2022-02-25 07:40:26', '2022-02-25 07:40:26'),
(62, 1, 17, -10000, -8000, 'Installment', 7, '2022-02-25 07:41:05', '2022-02-25 07:41:05'),
(63, 5, 62, 0, 0, 'Pay via E-wallet', 7, '2022-03-16 08:00:43', '2022-03-16 08:00:43'),
(64, 3, 63, -12000, -12000, 'Cash', 7, '2022-03-16 10:24:18', '2022-03-16 10:24:18'),
(65, 1, 64, -8000, -8000, 'Cash', 7, '2022-03-18 09:29:00', '2022-03-18 09:29:00'),
(66, 1, 65, -8000, -8000, 'Cash', 7, '2022-03-18 13:48:37', '2022-03-18 13:48:37'),
(67, 3, 66, -12000, -12000, 'Cash', 7, '2022-03-18 13:54:43', '2022-03-18 13:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallets`
--

CREATE TABLE `customer_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `balance` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_wallets`
--

INSERT INTO `customer_wallets` (`id`, `customer_id`, `amount`, `balance`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 2, '2022-01-28 22:09:36', '2022-03-18 13:48:37'),
(2, 2, 0, 0, 7, '2022-01-31 16:45:12', '2022-02-22 07:40:46'),
(3, 3, 0, 0, 2, '2022-02-09 18:31:55', '2022-03-18 13:54:43'),
(4, 4, 0, 0, 7, '2022-02-23 07:56:47', '2022-02-24 07:46:51'),
(5, 5, 0, 0, 7, '2022-03-16 07:41:53', '2022-03-16 08:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallet_summuries`
--

CREATE TABLE `customer_wallet_summuries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `wallet_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `wallet_amount` int(11) NOT NULL DEFAULT 0,
  `wallet_balance` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_wallet_summuries`
--

INSERT INTO `customer_wallet_summuries` (`id`, `customer_id`, `wallet_id`, `order_id`, `wallet_amount`, `wallet_balance`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0, 0, 'Pay via E-Wallet', 2, '2022-01-28 22:31:19', '2022-01-28 22:31:19'),
(2, 1, 1, 2, 0, 0, 'Pay via E-Wallet', 2, '2022-01-29 01:41:23', '2022-01-29 01:41:23'),
(3, 1, 1, 3, 0, 0, 'Pay via E-Wallet', 2, '2022-01-29 02:14:55', '2022-01-29 02:14:55'),
(4, 1, 1, 4, 0, 0, 'Pay via E-Wallet', 2, '2022-01-29 02:26:09', '2022-01-29 02:26:09'),
(5, 1, 1, 5, 0, 0, 'Pay via E-Wallet', 2, '2022-01-29 02:49:14', '2022-01-29 02:49:14'),
(6, 1, 1, 6, 0, 0, 'Pay via E-Wallet', 2, '2022-01-29 02:51:11', '2022-01-29 02:51:11'),
(7, 1, 1, 7, 0, 0, 'Pay via E-Wallet', 2, '2022-01-31 15:55:32', '2022-01-31 15:55:32'),
(8, 1, 1, 8, 0, 0, 'Pay via E-Wallet', 7, '2022-01-31 16:16:12', '2022-01-31 16:16:12'),
(9, 2, 2, 9, 0, 0, 'Pay via E-Wallet', 7, '2022-01-31 16:46:16', '2022-01-31 16:46:16'),
(10, 2, 2, 11, 0, 0, 'Pay via E-Wallet', 2, '2022-02-08 19:33:30', '2022-02-08 19:33:30'),
(11, 2, 2, 13, 0, 0, 'Pay via E-Wallet', 2, '2022-02-08 19:47:40', '2022-02-08 19:47:40'),
(12, 2, 2, 14, 0, 0, 'Pay via E-Wallet', 2, '2022-02-08 21:41:04', '2022-02-08 21:41:04'),
(13, 3, 3, 15, 0, 0, 'Pay via E-Wallet', 2, '2022-02-09 18:47:44', '2022-02-09 18:47:44'),
(14, 3, 3, 16, 0, 0, 'Pay via E-Wallet', 9, '2022-02-11 15:53:53', '2022-02-11 15:53:53'),
(15, 1, 1, 19, 0, 0, 'Pay via E-Wallet', 8, '2022-02-12 19:27:37', '2022-02-12 19:27:37'),
(16, 1, 1, 22, 0, 0, 'Pay via E-Wallet', 7, '2022-02-20 11:46:58', '2022-02-20 11:46:58'),
(17, 2, 2, 23, 0, 0, 'Pay via E-Wallet', 7, '2022-02-20 11:47:43', '2022-02-20 11:47:43'),
(18, 1, 1, 24, 0, 0, 'Pay via E-Wallet', 7, '2022-02-20 11:48:49', '2022-02-20 11:48:49'),
(19, 2, 2, 25, 0, 0, 'Pay via E-Wallet', 7, '2022-02-20 22:38:27', '2022-02-20 22:38:27'),
(20, 2, 2, 29, 0, 0, 'Pay via E-Wallet', 7, '2022-02-20 22:39:25', '2022-02-20 22:39:25'),
(21, 2, 2, 30, 0, 0, 'Pay via E-Wallet', 7, '2022-02-20 22:53:23', '2022-02-20 22:53:23'),
(22, 2, 2, 31, 0, 0, 'Pay via E-Wallet', 7, '2022-02-20 22:59:17', '2022-02-20 22:59:17'),
(23, 2, 2, 32, 0, 0, 'Pay via E-Wallet', 7, '2022-02-20 23:05:41', '2022-02-20 23:05:41'),
(24, 2, 2, 33, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 08:03:50', '2022-02-21 08:03:50'),
(25, 2, 2, 34, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 08:32:42', '2022-02-21 08:32:42'),
(26, 2, 2, 35, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 08:48:17', '2022-02-21 08:48:17'),
(27, 2, 2, 36, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 08:56:09', '2022-02-21 08:56:09'),
(28, 2, 2, 37, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:00:52', '2022-02-21 09:00:52'),
(29, 2, 2, 38, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:19:59', '2022-02-21 09:19:59'),
(30, 2, 2, 40, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:33:18', '2022-02-21 09:33:18'),
(31, 2, 2, 41, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:35:38', '2022-02-21 09:35:38'),
(32, 2, 2, 42, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:36:39', '2022-02-21 09:36:39'),
(33, 2, 2, 43, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:37:45', '2022-02-21 09:37:45'),
(34, 2, 2, 44, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:41:47', '2022-02-21 09:41:47'),
(35, 2, 2, 45, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:42:59', '2022-02-21 09:42:59'),
(36, 2, 2, 46, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:47:44', '2022-02-21 09:47:44'),
(37, 2, 2, 47, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:48:28', '2022-02-21 09:48:28'),
(38, 2, 2, 48, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:51:14', '2022-02-21 09:51:14'),
(39, 2, 2, 49, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:53:12', '2022-02-21 09:53:12'),
(40, 2, 2, 50, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:54:52', '2022-02-21 09:54:52'),
(41, 2, 2, 51, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:55:49', '2022-02-21 09:55:49'),
(42, 2, 2, 52, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:58:20', '2022-02-21 09:58:20'),
(43, 2, 2, 53, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 09:59:58', '2022-02-21 09:59:58'),
(44, 2, 2, 54, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 10:01:26', '2022-02-21 10:01:26'),
(45, 2, 2, 55, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 10:02:13', '2022-02-21 10:02:13'),
(46, 2, 2, 56, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 10:02:28', '2022-02-21 10:02:28'),
(47, 2, 2, 57, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 10:26:07', '2022-02-21 10:26:07'),
(48, 2, 2, 58, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 10:27:16', '2022-02-21 10:27:16'),
(49, 2, 2, 59, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 10:29:22', '2022-02-21 10:29:22'),
(50, 2, 2, 60, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 10:31:14', '2022-02-21 10:31:14'),
(51, 2, 2, 61, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 10:32:21', '2022-02-21 10:32:21'),
(52, 2, 2, 62, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 11:04:50', '2022-02-21 11:04:50'),
(53, 2, 2, 63, 0, 0, 'Pay via E-Wallet', 7, '2022-02-21 11:32:58', '2022-02-21 11:32:58'),
(54, 1, 1, 39, 0, 0, 'Pay via E-Wallet', 7, '2022-02-22 07:40:30', '2022-02-22 07:40:30'),
(55, 2, 2, 64, 0, 0, 'Pay via E-Wallet', 7, '2022-02-22 07:40:46', '2022-02-22 07:40:46'),
(56, 4, 4, 67, 0, 0, 'Pay via E-Wallet', 7, '2022-02-23 08:20:59', '2022-02-23 08:20:59'),
(57, 3, 3, 66, 0, 0, 'Pay via E-Wallet', 7, '2022-02-23 08:21:14', '2022-02-23 08:21:14'),
(58, 1, 1, 65, 0, 0, 'Pay via E-Wallet', 7, '2022-02-23 08:28:42', '2022-02-23 08:28:42'),
(59, 3, 3, 68, 0, 0, 'Pay via E-Wallet', 7, '2022-02-23 08:35:38', '2022-02-23 08:35:38'),
(60, 4, 4, 69, 0, 0, 'Pay via E-Wallet', 7, '2022-02-24 07:46:52', '2022-02-24 07:46:52'),
(61, 5, 5, 75, 0, 0, 'Pay via E-Wallet', 7, '2022-03-16 08:00:44', '2022-03-16 08:00:44'),
(62, 3, 3, 80, 0, 0, 'Pay via E-Wallet', 7, '2022-03-16 10:24:18', '2022-03-16 10:24:18'),
(63, 1, 1, 78, 0, 0, 'Pay via E-Wallet', 7, '2022-03-18 09:29:00', '2022-03-18 09:29:00'),
(64, 1, 1, 81, 0, 0, 'Pay via E-Wallet', 7, '2022-03-18 13:48:37', '2022-03-18 13:48:37'),
(65, 3, 3, 83, 0, 0, 'Pay via E-Wallet', 7, '2022-03-18 13:54:43', '2022-03-18 13:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `datatypes`
--

CREATE TABLE `datatypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `datatype_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'input',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datatypes`
--

INSERT INTO `datatypes` (`id`, `datatype_name`, `datatype`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Text', 'text', 0, NULL, NULL),
(2, 'Number', 'number', 0, NULL, NULL),
(6, 'TextArea', 'textarea', 0, NULL, NULL),
(7, 'Image', 'image', 0, NULL, NULL),
(8, 'Media', 'video', 0, NULL, NULL),
(9, 'Radio button', 'radio', 0, NULL, NULL),
(10, 'Check box', 'checkbox', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `users` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `unit_name`, `status`, `users`, `user_id`, `created_at`, `updated_at`) VALUES
(18, 'Tamekah Moore', 'Hedy Roy', 'Active', 0, 1, '2022-04-14 20:04:32', '2022-04-16 14:04:07'),
(19, 'Hoteliar', 'Hoteliar', 'Active', 0, 1, '2022-04-14 20:35:44', '2022-04-14 20:35:44'),
(20, 'Hr and Admin', 'Hr and Admin', 'Active', 0, 1, '2022-04-14 20:52:14', '2022-04-16 12:23:29'),
(21, 'Store', 'Store', 'Active', 0, 1, '2022-04-14 20:56:30', '2022-04-16 11:58:38'),
(23, 'Account', 'Account', 'Inactive', 0, 1, '2022-05-21 06:57:17', '2022-05-21 06:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `department_roles`
--

CREATE TABLE `department_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(12) DEFAULT NULL,
  `role_id` int(12) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_roles`
--

INSERT INTO `department_roles` (`id`, `department_id`, `role_id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 20, 2, 'Active', 1, '2022-05-15 19:35:19', '2022-05-15 19:35:19'),
(2, 20, 3, 'Active', 1, '2022-05-15 19:35:19', '2022-05-15 19:35:19'),
(3, 20, 4, 'Active', 1, '2022-05-15 19:35:19', '2022-05-15 19:35:19'),
(4, 21, 2, 'Active', 1, '2022-05-15 19:35:20', '2022-05-15 19:35:20'),
(5, 21, 3, 'Active', 1, '2022-05-15 19:35:20', '2022-05-15 19:35:20'),
(6, 21, 4, 'Active', 1, '2022-05-15 19:35:20', '2022-05-15 19:35:20'),
(7, 19, 5, 'Active', 1, '2022-05-27 06:56:08', '2022-05-27 06:56:08'),
(8, 19, 6, 'Active', 1, '2022-05-27 06:56:08', '2022-05-27 06:56:08'),
(9, 19, 9, 'Active', 1, '2022-05-27 06:56:08', '2022-05-27 06:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `direct_expenses`
--

CREATE TABLE `direct_expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expenses_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `direct_expenses`
--

INSERT INTO `direct_expenses` (`id`, `expenses_name`, `amount`, `category`, `descriptions`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Luku', 5000, 'Luku', 'Nengi alinunua', 'Paid', 1, '2022-01-31 16:36:43', '2022-01-31 16:39:02'),
(2, 'Wges', 10000, 'wages', 'paid  NESHON', 'Paid', 1, '2022-02-08 21:57:05', '2022-02-08 21:57:21'),
(3, 'Wges', 10000, 'wages', 'nengi', 'Paid', 1, '2022-02-09 18:50:34', '2022-02-09 18:50:52'),
(4, 'Posho', 60000, 'wages', NULL, 'Paid', 1, '2022-02-11 16:05:03', '2022-02-11 16:05:47'),
(5, 'Transport', 30000, 'wages', '0002', 'Paid', 11, '2022-03-18 14:10:15', '2022-03-18 14:14:03'),
(6, 'Transportation', 45000, 'Transport', NULL, 'Paid', 11, '2022-03-18 14:11:46', '2022-03-18 14:12:03'),
(7, 'Malipo ya upakuaji', 20000, 'wages', 'nill', 'Paid', 11, '2022-03-18 14:15:41', '2022-03-18 14:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expenses_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `expenses_category`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Luku', 0, '2022-01-31 16:35:45', '2022-01-31 16:35:45'),
(2, 'wages', 0, '2022-02-08 21:56:18', '2022-02-08 21:56:18'),
(3, 'Transport', 0, '2022-03-18 14:10:49', '2022-03-18 14:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `liablity_values`
--

CREATE TABLE `liablity_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payable_supplier` bigint(20) UNSIGNED NOT NULL,
  `expenses` bigint(20) UNSIGNED NOT NULL,
  `advance_paid_by_customer` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `country`, `region`, `district`, `ward`, `village`, `created_at`, `updated_at`) VALUES
(6, 'Tanzania', 'Manyara', 'Simanjiro', 'Kitwai', 'Looderkes', '2020-05-27 14:19:32', '2020-05-27 14:19:32'),
(7, 'Tanzania', 'Manyara', 'Simanjiro', 'Loibosiret', 'Narakauwo', '2020-05-27 14:20:25', '2020-05-27 14:20:25'),
(9, 'Tanzania', 'Arusha', 'Monduli', 'Lolkisale', 'Nafco', '2020-06-02 18:07:33', '2020-06-02 18:07:33'),
(14, 'Tanzania', 'Mbeya', 'Mbeya mjini', 'Iwambi', 'Iwambi', '2020-09-10 01:02:17', '2020-09-10 01:02:34'),
(15, 'Tanzania', 'Arusha', 'Monduli', 'Iwambi', 'Iwambi', '2020-10-17 15:42:14', '2020-10-17 15:42:14'),
(1, 'Tanzania', 'Manyara', 'Simanjiro', 'Kitwai', 'Kitwai A', '2020-05-27 14:18:44', '2020-05-27 14:18:44'),
(2, 'Tanzania', 'Manyara', 'Simanjiro', 'Kitwai', 'Looderkes', '2020-05-27 14:19:32', '2020-05-27 14:19:32'),
(3, 'Tanzania', 'Manyara', 'Simanjiro', 'Loibosiret', 'Narakauwo', '2020-05-27 14:20:25', '2020-05-27 14:20:25'),
(4, 'Tanzania', 'Arusha', 'Monduli', 'Lolkisale', 'Nafco', '2020-06-02 18:07:33', '2020-06-02 18:07:33'),
(5, 'Tanzania', 'Arusha', 'Monduli', 'Iwambi', 'Iwambi', '2020-10-17 15:42:14', '2020-10-17 15:42:14'),
(6, 'Tanzania', 'Arusha', 'Karatu', 'Baray', 'Matala', '2020-10-17 19:22:17', '2020-11-04 19:59:55'),
(7, 'Tanzania', 'Arusha', 'Karatu', 'Baray', 'Dumbechan', '2020-11-04 20:01:59', '2020-11-04 20:01:59'),
(8, 'Tanzania', 'Arusha', 'Karatu', 'Baray', 'Endesh', '2020-11-04 20:02:31', '2020-11-04 20:02:31'),
(9, 'Tanzania', 'Arusha', 'Karatu', 'Baray', 'Jobaj', '2020-11-04 20:03:10', '2020-11-04 20:03:10'),
(10, 'Tanzania', 'Arusha', 'Karatu', 'Baray', 'Qang\'ded', '2020-11-04 20:05:34', '2020-11-04 20:05:34'),
(11, 'Tanzania', 'Arusha', 'Karatu', 'Baray', 'Mbuga Nyekundu', '2020-11-04 20:06:04', '2020-11-04 20:06:04'),
(12, 'Tanzania', 'Arusha', 'Karatu', 'Endamaghan', 'Endamaghan', '2020-11-04 20:06:42', '2020-11-04 20:06:42'),
(13, 'Tanzania', 'Arusha', 'Karatu', 'Endamaghan', 'Mikocheni', '2020-11-04 20:07:11', '2020-11-04 20:07:11'),
(14, 'Tanzania', 'Arusha', 'Mkalama', 'Mwengeza', 'Munguli (Kipamba sub village)', '2020-11-04 20:08:26', '2020-11-04 20:08:26'),
(15, 'Tanzania', 'Arusha', 'Ngorongoro', 'Ololosokwan', 'Ololosokwan', '2020-11-04 20:09:59', '2020-11-04 20:09:59'),
(16, 'Tanzania', 'Arusha', 'Ngorongoro', 'Soitsambu', 'Soitsambu', '2020-11-04 20:10:30', '2020-11-04 20:10:30'),
(17, 'Tanzania', 'Arusha', 'Ngorongoro', 'Oloipiri', 'Oloipiri', '2020-11-04 20:11:13', '2020-11-04 20:11:13'),
(18, 'Tanzania', 'Arusha', 'Ngorongoro', 'Oloirien', 'Oloirien', '2020-11-04 20:11:42', '2020-11-04 20:11:42'),
(19, 'Tanzania', 'Arusha', 'Ngorongoro', 'Maaloni', 'Maaloni', '2020-11-04 20:12:03', '2020-11-04 20:12:03'),
(20, 'Tanzania', 'Arusha', 'Ngorongoro', 'Arash', 'Arash', '2020-11-04 20:12:51', '2020-11-04 20:12:51'),
(21, 'Tanzania', 'Arusha', 'Ngorongoro', 'Piyaya', 'Piyaya', '2020-11-04 20:13:41', '2020-11-04 20:13:41'),
(22, 'Tanzania', 'Arusha', 'Ngorongoro', 'Engaresero', 'Engaresero', '2020-11-04 20:14:20', '2020-11-04 20:14:20'),
(23, 'Tanzania', 'Arusha', 'Ngorongoro', 'Ololosokwan', 'Njoroi', '2020-11-04 20:15:09', '2020-11-04 20:15:09'),
(24, 'Tanzania', 'Arusha', 'Ngorongoro', 'Soitsambu', 'Kirtalo', '2020-11-04 20:17:08', '2020-11-04 20:17:08'),
(25, 'Tanzania', 'Arusha', 'Ngorongoro', 'Malambo', 'Malambo', '2020-11-04 20:17:49', '2020-11-04 20:17:49'),
(26, 'Tanzania', 'Arusha', 'Longido', 'Noondoto', 'Noondoto', '2020-11-04 20:18:29', '2020-11-04 20:18:29'),
(27, 'Tanzania', 'Arusha', 'Longido', 'Gelai-Meirugoi', 'Gelai-Meirugoi', '2020-11-04 20:21:35', '2020-11-04 20:21:35'),
(28, 'Tanzania', 'Arusha', 'Longido', 'Matale', 'Matale A', '2020-11-04 20:25:36', '2020-11-04 20:25:36'),
(29, 'Tanzania', 'Arusha', 'Longido', 'Matale', 'Matale B', '2020-11-04 20:26:12', '2020-11-04 20:26:12'),
(30, 'Tanzania', 'Arusha', 'Longido', 'Gelai-Lumbwa', 'Ilchangit-sapukiny', '2020-11-04 20:26:57', '2020-11-04 20:26:57'),
(31, 'Tanzania', 'Arusha', 'Longido', 'Gelai-Lumbwa', 'Wosiwosi', '2020-11-04 20:27:28', '2020-11-04 20:27:28'),
(32, 'Tanzania', 'Arusha', 'Longido', 'Engarenaibor', 'Ngoswak', '2020-11-04 20:29:29', '2021-09-29 03:58:19'),
(33, 'Tanzania', 'Arusha', 'Longido', 'Orbomba', 'Orbomba', '2020-11-04 20:29:58', '2020-11-04 20:29:58'),
(34, 'Tanzania', 'Arusha', 'Longido', 'Kimokokuwa', 'Kimokokuwa', '2020-11-04 20:47:37', '2020-11-04 20:47:37'),
(35, 'Tanzania', 'Arusha', 'Longido', 'Mundarara', 'Lesingita', '2020-11-04 20:48:23', '2020-11-04 20:48:23'),
(36, 'Tanzania', 'Arusha', 'Longido', 'Gelai-Lumbwa', 'Gelai-Lumbwa', '2020-11-04 20:49:27', '2020-11-04 20:49:27'),
(37, 'Tanzania', 'Arusha', 'Longido', 'Gelai Meirugoi', 'Magadini', '2020-11-04 20:50:11', '2020-11-04 20:50:11'),
(38, 'Tanzania', 'Arusha', 'Longido', 'Engarenaibor', 'Mairowa', '2020-11-04 21:06:11', '2020-11-04 21:06:11'),
(39, 'Tanzania', 'Arusha', 'Longido', 'Engarenaibor', 'Karao', '2020-11-04 21:06:46', '2020-11-04 21:06:46'),
(40, 'Tanzania', 'Arusha', 'Longido', 'Ketumbeine', 'Orkejuloongishu', '2020-11-04 21:07:14', '2020-11-04 21:07:14'),
(41, 'Tanzania', 'Arusha', 'Longido', 'Kimokouwa', 'Eworendeke', '2020-11-04 21:07:48', '2020-11-04 21:07:48'),
(42, 'Tanzania', 'Arusha', 'Longido', 'Ketumbeine', 'Armanie', '2020-11-04 21:08:11', '2020-11-04 21:08:11'),
(43, 'Tanzania', 'Arusha', 'Longido', 'Engarenaibor', 'Kimwat', '2020-11-04 21:08:40', '2020-11-04 21:08:40'),
(44, 'Tanzania', 'Arusha', 'Longido', 'Engarenaibor', 'Sinonik', '2020-11-04 21:09:05', '2020-11-04 21:09:05'),
(45, 'Tanzania', 'Manyara', 'Hanang\'', 'Gehandu', 'Mingenyi', '2020-11-04 21:19:21', '2020-11-04 21:19:21'),
(46, 'Tanzania', 'Manyara', 'Hanang\'', 'Dawar', 'Dawar', '2020-11-04 21:19:53', '2020-11-04 21:19:53'),
(47, 'Tanzania', 'Manyara', 'Hanang\'', 'Dawar', 'Gasaboi', '2020-11-04 21:20:25', '2020-11-04 21:20:25'),
(48, 'Tanzania', 'Manyara', 'Hanang\'', 'Balang\'dalalu', 'Mureru', '2020-11-04 21:21:01', '2020-11-04 21:21:01'),
(49, 'Tanzania', 'Manyara', 'Hanang\'', 'Mogitu', 'Mogitu', '2020-11-04 21:21:20', '2020-11-04 21:21:20'),
(50, 'Tanzania', 'Manyara', 'Hanang\'', 'Mogitu', 'Gidagamowd', '2020-11-04 21:22:41', '2020-11-04 21:22:41'),
(51, 'Tanzania', 'Manyara', 'Hanang\'', 'Gehandu', 'Gehandu', '2020-11-04 21:23:03', '2020-11-04 21:23:03'),
(52, 'Tanzania', 'Manyara', 'Hanang\'', 'Dirma', 'Dirma', '2020-11-04 21:23:26', '2020-11-04 21:23:26'),
(53, 'Tanzania', 'Manyara', 'Hanang\'', 'Mulbadaw', 'Mulbadaw', '2020-11-04 21:24:10', '2020-11-04 21:24:10'),
(54, 'Tanzania', 'Manyara', 'Hanang\'', 'Simbai', 'Simbai', '2020-11-04 21:25:27', '2020-11-04 21:25:27'),
(55, 'Tanzania', 'Manyara', 'Hanang\'', 'Simbai', 'Gemunda', '2020-11-04 21:26:01', '2020-11-04 21:26:01'),
(56, 'Tanzania', 'Manyara', 'Hanang\'', 'Dawar', 'Kinyamburi', '2020-11-04 21:26:37', '2020-11-04 21:26:37'),
(57, 'Tanzania', 'Manyara', 'Hanang\'', 'Dirma', 'Galosendo', '2020-11-04 21:27:03', '2020-11-04 21:27:03'),
(58, 'Tanzania', 'Manyara', 'Hanang\'', 'Lalaji', 'Murumba', '2020-11-04 21:27:37', '2020-11-04 21:27:37'),
(59, 'Tanzania', 'Arusha', 'Monduli', 'Makuyuni', 'Makuyuni', '2020-11-04 21:28:11', '2020-11-04 21:28:11'),
(60, 'Tanzania', 'Manyara', 'Kiteto', 'Kijungu', 'Lesoit', '2020-11-04 21:29:30', '2020-11-04 21:29:30'),
(61, 'Tanzania', 'Manyara', 'Kiteto', 'Partimbo', 'Partimbo', '2020-11-04 21:30:20', '2020-11-04 21:30:20'),
(62, 'Tanzania', 'Manyara', 'Kiteto', 'Kijungu', 'Loolera', '2020-11-04 21:31:15', '2020-11-04 21:31:15'),
(63, 'Tanzania', 'Manyara', 'Kiteto', 'Kijungu', 'Orkitikiti', '2020-11-04 21:32:02', '2020-11-04 21:32:02'),
(64, 'Tanzania', 'Manyara', 'Kiteto', 'Kijungu', 'Lerug', '2020-11-04 21:32:32', '2020-11-04 21:32:32'),
(65, 'Tanzania', 'Manyara', 'Simanjiro', 'Kitwai', 'Kitwai B', '2020-11-05 22:53:46', '2020-11-05 22:53:46'),
(66, 'Tanzania', 'Manyara', 'Simanjiro', 'Loiborsiret', 'Loiborsiret', '2020-11-09 15:07:52', '2020-11-09 15:07:52'),
(67, 'Tanzania', 'Manyara', 'Simanjiro', 'Emboreet', 'Loiborsoit ???A???', '2020-11-09 15:25:46', '2020-11-09 15:25:46'),
(68, 'Tanzania', 'Manyara', 'Simanjiro', 'Naberera', 'Namalulu', '2020-11-09 15:28:53', '2020-11-09 15:28:53'),
(69, 'Tanzania', 'Manyara', 'Simanjiro', 'Naberera', 'Lendanai', '2020-11-09 15:53:19', '2020-11-09 15:53:19'),
(70, 'Tanzania', 'Manyara', 'Simanjiro', 'Ruvu Remiti', 'Lerumo', '2020-11-09 16:10:40', '2020-11-09 16:10:40'),
(71, 'Tanzania', 'Manyara', 'Simanjiro', 'Naberera', 'Losokonoi', '2020-11-09 16:15:07', '2020-11-09 16:15:07'),
(72, 'Tanzania', 'Manyara', 'Simanjiro', 'Naberera', 'Lolbene', '2020-11-09 16:19:55', '2020-11-09 16:19:55'),
(73, 'Tanzania', 'Manyara', 'Simanjiro', 'Emboreet', 'Emboreet', '2020-11-09 16:26:08', '2020-11-09 16:26:08'),
(74, 'Tanzania', 'Manyara', 'Simanjiro', 'Terrat', 'Terrat', '2020-11-09 16:31:57', '2020-11-09 16:31:57'),
(75, 'Tanzania', 'Manyara', 'Simanjiro', 'Komolo', 'Nadonjukin', '2020-11-09 16:34:07', '2020-11-09 16:34:07'),
(76, 'Tanzania', 'Manyara', 'Simanjiro', 'Komolo', 'Sukuro', '2020-11-09 16:37:08', '2020-11-09 16:37:08'),
(77, 'Tanzania', 'Manyara', 'Simanjiro', 'Loiborsiret', 'Kimotorok', '2020-11-09 16:40:45', '2020-11-09 16:40:45'),
(78, 'Tanzania', 'Manyara', 'Simanjiro', 'Komolo', 'Kitiangare', '2020-11-09 18:03:52', '2020-11-09 18:03:52'),
(79, 'Tanzania', 'Manyara', 'Mbulu', 'Yaeda Chini', 'Yaeda Chini', '2020-11-09 18:36:01', '2020-11-09 18:36:45'),
(80, 'Tanzania', 'Manyara', 'Mbulu', 'Yaeda Chini', 'Mongo wa Mono', '2020-11-09 19:38:29', '2020-11-09 19:38:29'),
(81, 'Tanzania', 'Manyara', 'Mbulu', 'Eshkesh', 'Domanga', '2020-11-10 16:40:55', '2020-11-10 16:40:55'),
(82, 'Tanzania', 'Manyara', 'Mbulu', 'Eshkesh', 'Eshkesh', '2020-11-10 16:57:44', '2020-11-10 16:57:44'),
(83, 'Tanzania', 'Manyara', 'Mbulu', 'Masieda', 'Endanyawish', '2020-11-10 16:59:27', '2020-11-10 16:59:27'),
(84, 'Tanzania', 'Arusha', 'Ngorongoro', 'Oldonyosambu', 'Oldonyosambu', '2020-11-10 20:41:24', '2020-11-10 20:41:24'),
(85, 'Tanzania', 'Arusha', 'Ngorongoro', 'Digodigo', 'Digodigo', '2020-11-10 20:44:51', '2020-11-10 20:44:51'),
(86, 'Tanzania', 'Arusha', 'Monduli', 'Selela', 'Selela', '2020-11-10 21:29:38', '2020-11-10 21:29:38'),
(87, 'Tanzania', 'Arusha', 'Monduli', 'Esilalei', 'Losirwa', '2020-11-10 23:45:42', '2020-11-10 23:45:42'),
(88, 'Tanzania', 'Arusha', 'Monduli', 'Esilalei', 'Baraka', '2020-11-10 23:48:32', '2020-11-10 23:48:32'),
(89, 'Tanzania', 'Arusha', 'Monduli', 'Esilalei', 'Mungere', '2020-11-10 23:50:08', '2020-11-10 23:50:08'),
(90, 'Tanzania', 'Arusha', 'Monduli', 'Esilalei', 'Esilalei', '2020-11-10 23:51:54', '2020-11-10 23:51:54'),
(91, 'Tanzania', 'Arusha', 'Monduli', 'Engaruka', 'Engaruka chini', '2020-11-11 15:26:23', '2020-11-11 15:26:23'),
(92, 'Tanzania', 'Arusha', 'Monduli', 'Engaruka', 'Irendeni', '2020-11-11 15:28:28', '2020-11-11 15:28:28'),
(93, 'Tanzania', 'Arusha', 'Monduli', 'Engaruka', 'Engaruka juu', '2020-11-11 15:40:01', '2020-11-11 15:40:01'),
(94, 'Tanzania', 'Manyara', 'Monduli', 'Engaruka', 'Oldonyo Lengai', '2020-11-11 15:41:40', '2020-11-11 15:41:40'),
(95, 'Tanzania', 'Arusha', 'Monduli', 'Mswakini', 'Naitolia', '2020-11-11 15:45:03', '2020-11-11 15:45:03'),
(96, 'Tanzania', 'Arusha', 'Monduli', 'Mswakini', 'Mswakini chini', '2020-11-11 15:47:03', '2020-11-11 15:47:03'),
(97, 'Tanzania', 'Arusha', 'Monduli', 'Mswakini', 'Mswakini juu', '2020-11-11 15:49:47', '2020-11-11 15:49:47'),
(100, 'Tanzania', 'Arusha', 'Monduli', 'Lemooti', 'Lemooti', '2020-11-11 17:05:28', '2020-11-11 17:05:28'),
(101, 'Tanzania', 'Arusha', 'Monduli', 'Lemooti', 'Oldonyo', '2020-11-11 17:08:27', '2020-11-11 17:08:27'),
(102, 'Tanzania', 'Arusha', 'Monduli', 'Lemooti', 'Lengolwa', '2020-11-11 17:10:28', '2020-11-11 17:10:28'),
(103, 'Tanzania', 'Arusha', 'Monduli', 'Esilalei', 'Oltukai', '2020-11-11 17:12:59', '2020-11-11 17:12:59'),
(104, 'Tanzania', 'Arusha', 'Monduli', 'Selela', 'Mbaashi', '2020-11-11 17:15:47', '2020-11-11 17:15:47'),
(105, 'Tanzania', 'Manyara', 'Kiteto', 'Makame', 'Katikati', '2020-11-11 17:27:06', '2020-11-11 17:27:06'),
(106, 'Tanzania', 'Manyara', 'Kiteto', 'Makame', 'Irkiushibor', '2020-11-11 17:34:34', '2020-11-11 17:34:34'),
(107, 'Tanzania', 'Manyara', 'Kiteto', 'Makame', 'Makame', '2020-11-11 17:56:55', '2020-11-11 17:56:55'),
(108, 'Tanzania', 'Manyara', 'Kiteto', 'Ndedo', 'Ndedo', '2020-11-11 18:02:19', '2020-11-11 18:02:19'),
(109, 'Tanzania', 'Manyara', 'Kiteto', 'Ndedo', 'Ngabolo', '2020-11-11 18:04:48', '2020-11-11 18:04:48'),
(110, 'Tanzania', 'Manyara', 'Kiteto', 'Kijungu', 'Ngapapa', '2020-11-11 18:06:03', '2020-11-11 18:06:03'),
(111, 'Tanzania', 'Manyara', 'Kiteto', 'Partimbo', 'Kimana (Napilikunya)', '2020-11-11 18:09:55', '2020-11-11 18:09:55'),
(112, 'Tanzania', 'Manyara', 'Kiteto', 'Kijungu', 'Amei', '2020-11-11 18:12:12', '2020-11-11 18:12:12'),
(113, 'Tanzania', 'Arusha', 'Monduli', 'Engaruka', 'Rerendeni', '2020-11-23 06:23:22', '2020-11-23 06:23:22'),
(114, 'Tanzania', 'Arusha', 'Monduli', 'Lolkisale', 'Lolkisale', '2020-11-23 08:32:20', '2020-11-23 08:32:20'),
(116, 'Tanzania', 'Manyara', 'Kiteto', 'Lolera', 'Lolera', '2020-11-26 03:36:47', '2020-11-26 03:36:47'),
(117, 'Tanzania', 'Manyara', 'Kiteto', 'Kinua', 'Kinua', '2020-11-26 04:00:31', '2020-11-26 04:00:31'),
(118, 'Tanzania', 'Manyara', 'Kiteto', 'Ndedo', 'Ndedo', '2020-11-26 04:41:31', '2020-11-26 04:41:31'),
(119, 'Tanzania', 'Manyara', 'Hanang\'', 'Qalosendo', 'Qalosendo', '2020-11-27 04:57:51', '2020-11-27 04:57:51'),
(120, 'Tanzania', 'Manyara', 'Hanang\'', 'Jemunda', 'Jemunda', '2020-11-27 06:36:10', '2020-11-27 06:36:10'),
(121, 'Tanzania', 'Manyara', 'Hanang\'', 'Gemwaschi', 'Gemwaschi', '2020-11-28 04:59:00', '2020-11-28 04:59:00'),
(122, 'Tanzania', 'Arusha', 'Monduli', 'Naalarami', 'Naalarami', '2021-06-09 16:42:00', '2021-06-09 16:42:00'),
(123, 'Tanzania', 'Arusha', 'Monduli', 'Lepurko', 'Losimingori', '2021-06-09 16:42:04', '2021-06-09 16:42:04'),
(124, 'Tanzania', 'Arusha', 'Monduli', 'Lepurko', 'Lepurko', '2021-06-09 16:43:31', '2021-06-09 16:43:31'),
(125, 'Tanzania', 'Arusha', 'Monduli', 'Moita', 'Moita Kilorit', '2021-06-09 16:43:32', '2021-06-09 16:43:32'),
(126, 'Tanzania', 'Manyara', 'Simanjiro', 'Naberera', 'lolbene', '2021-06-09 18:02:14', '2021-06-09 18:02:14'),
(127, 'Tanzania', 'Manyara', 'Simanjiro', 'Komolo', 'Nadonjukin', '2021-06-09 18:21:01', '2021-08-08 12:34:38'),
(128, 'Tanzania', 'Manyara', 'Simanjiro', 'Ruvuremit', 'Ruvuremit', '2021-06-09 18:40:15', '2021-06-09 18:40:15'),
(129, 'Tanzania', 'Manyara', 'Simanjiro', 'shambarai', 'olbili', '2021-06-09 18:44:40', '2021-06-09 18:44:40'),
(130, 'Tanzania', 'Manyara', 'Simanjiro', 'Shambarai', 'Nakweni', '2021-06-09 18:45:23', '2021-06-09 18:45:23'),
(131, 'Tanzania', 'Manyara', 'Simanjiro', 'Komolo', 'Komolo', '2021-06-09 18:46:26', '2021-06-09 18:46:26'),
(132, 'Tanzania', 'Manyara', 'Simanjiro', 'Shambarai', 'kilombero', '2021-06-09 18:46:36', '2021-06-09 18:46:36'),
(133, 'Tanzania', 'Manyara', 'Simanjiro', 'Ruvu Remiti', 'Gunge', '2021-06-09 18:47:36', '2021-06-09 18:47:36'),
(134, 'Tanzania', 'Arusha', 'Ngorongoro', 'Soitsambu', 'Kirtalo', '2021-06-10 15:32:07', '2021-06-10 15:32:07'),
(135, 'Tanzania', 'Arusha', 'Longido', NULL, 'Alalilai', '2021-09-29 03:23:31', '2021-09-29 03:23:31'),
(136, 'Tanzania', 'Arusha', 'Longido', 'Engikaret', 'Engikaret', '2021-09-29 03:24:07', '2021-09-29 03:49:01'),
(137, 'Tanzania', 'Arusha', 'Longido', 'Longido', 'Ranch', '2021-09-29 03:24:48', '2021-09-29 03:48:21'),
(138, 'Tanzania', 'Arusha', 'Longido', 'Engikaret', 'Kiserian', '2021-09-29 03:45:11', '2021-09-29 03:45:11'),
(139, 'Tanzania', 'Arusha', 'Longido', 'Mundarara', 'Mundarara', '2021-09-29 03:46:25', '2021-09-29 03:46:25'),
(141, 'Tanzania', 'Manyara', 'Simanjiro', 'Naberera', 'Naberera', '2021-09-29 04:48:25', '2021-09-29 04:48:25'),
(142, 'Tanzania', 'Manyara', 'Simanjiro', 'Naberera', 'Okutu', '2021-09-29 04:48:52', '2021-09-29 05:05:15'),
(143, 'Tanzania', 'Manyara', 'Simanjiro', 'Endonyongijape', 'Endonyongijape', '2021-09-29 04:49:52', '2021-09-29 04:59:16'),
(144, 'Tanzania', 'Manyara', 'Simanjiro', 'Endonyongijape', 'Orkirungurung', '2021-09-29 04:50:17', '2021-09-29 04:59:33'),
(145, 'Tanzania', 'Arusha', 'Monduli', 'Monduli juu', 'Eluai', '2021-09-29 05:14:05', '2021-09-29 05:14:05'),
(146, 'Tanzania', 'Arusha', 'Monduli', 'Naalarami', 'Engorika', '2021-09-29 05:17:05', '2021-09-29 05:17:05'),
(147, 'Tanzania', 'Arusha', 'Monduli', 'Naalarami', 'Lengiloriti', '2021-09-29 05:17:29', '2021-09-29 05:17:29'),
(148, 'Tanzania', 'Arusha', 'Monduli', 'Meserani', 'Meserani chini', '2021-09-29 05:18:08', '2021-09-29 05:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metadata_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datatype_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `metadata_name`, `datatype`, `datatype_name`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'description', 'textarea', 'property_description', 'Active', 1, '2022-04-16 16:36:33', '2022-04-16 16:45:22'),
(3, 'barcode', 'text', 'property_barcode', 'Active', 1, '2022-04-16 16:36:43', '2022-04-16 16:36:43'),
(4, 'serial number', 'text', 'property_serial_no', 'Active', 1, '2022-04-16 16:53:23', '2022-05-21 09:04:40'),
(6, 'name', 'text', 'property_name', 'Active', 1, '2022-04-16 17:01:37', '2022-04-16 17:09:34'),
(9, 'Checkbox', 'checkbox', 'metaname_id', 'Active', 1, '2022-04-16 19:42:32', '2022-04-16 19:43:07'),
(10, 'Radio', 'radio', 'property_radio', 'Active', 1, '2022-04-16 19:56:52', '2022-04-16 19:56:52'),
(13, 'Property tagno', 'text', 'property_tag_no', 'Active', 1, '2022-04-19 18:20:45', '2022-04-19 18:20:45'),
(14, 'type', 'text', 'text', 'Active', 1, '2022-04-20 09:54:24', '2022-04-20 09:54:24'),
(15, 'rr', 'number', 'radio', 'Inactive', 1, '2022-04-21 12:55:07', '2022-06-12 20:16:48'),
(16, '88', 'textarea', '', 'Inactive', 1, '2022-04-23 12:06:37', '2022-06-12 20:17:37'),
(17, 'Room Number', 'text', '', 'Active', 1, '2022-04-23 14:17:53', '2022-04-23 14:17:53'),
(18, 'XXX', 'text', '', 'Inactive', 1, '2022-05-31 14:57:08', '2022-06-12 20:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `metanames`
--

CREATE TABLE `metanames` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metaname_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaname_description` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stop',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metanames`
--

INSERT INTO `metanames` (`id`, `metaname_name`, `metaname_description`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rooms', 'All rooms', 'Active', 1, '2022-04-20 09:53:28', '2022-04-20 09:53:28'),
(3, 'Tvs', 'Carries all type of TV', 'Active', 1, '2022-04-20 09:55:48', '2022-04-20 09:55:48'),
(5, 'TX', 'TX', 'Active', 1, '2022-04-21 10:39:59', '2022-04-21 10:39:59'),
(6, 'ff', 'df', 'Active', 1, '2022-04-21 13:02:21', '2022-04-21 13:02:21'),
(9, 'gg', 'gfg', 'Active', 1, '2022-04-21 13:12:31', '2022-04-21 13:12:31'),
(10, 'df', 'f', 'Active', 1, '2022-04-21 13:13:15', '2022-04-21 13:13:15'),
(11, 'vbn', 'bv', 'Active', 1, '2022-04-21 13:14:24', '2022-04-21 13:14:24'),
(12, 'm', 'popo xcvvb', 'Active', 1, '2022-04-21 13:15:14', '2022-04-21 13:15:14'),
(13, 'kl', 'kk', 'Active', 1, '2022-04-22 10:26:22', '2022-04-22 10:26:22'),
(14, 'k', 'kl', 'Active', 1, '2022-04-22 10:27:07', '2022-04-22 10:27:07'),
(15, 'hj', 'hh', 'Active', 1, '2022-04-22 10:29:30', '2022-04-22 10:29:30'),
(16, 'kk', 'kkk', 'Active', 1, '2022-04-22 10:31:53', '2022-04-22 10:31:53'),
(17, 'kjlo', 'rate', 'Active', 1, '2022-04-22 11:15:43', '2022-04-22 11:15:43'),
(18, 'uu', 'uu', 'Active', 1, '2022-04-22 11:17:54', '2022-04-22 11:17:54'),
(19, 'xx', 'xaa', 'Active', 1, '2022-04-22 11:25:28', '2022-04-22 11:25:28'),
(21, 'roomx', 'all roomx', 'Active', 1, '2022-04-23 14:20:08', '2022-04-23 14:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `metaname_datatypes`
--

CREATE TABLE `metaname_datatypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metaname_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datatype_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metaname_datatypes`
--

INSERT INTO `metaname_datatypes` (`id`, `metaname_id`, `metadata_name`, `datatype`, `datatype_name`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'description', 'textarea', 'property_description', 'Active', 1, '2022-04-20 09:53:28', '2022-04-20 09:53:28'),
(2, '1', 'barcode', 'text', 'property_barcode', 'Active', 1, '2022-04-20 09:53:28', '2022-04-20 09:53:28'),
(3, '1', 'serial number', 'text', 'property_serial_no', 'Active', 1, '2022-04-20 09:53:29', '2022-04-20 09:53:29'),
(4, '1', 'name', 'text', 'property_name', 'Active', 1, '2022-04-20 09:53:29', '2022-04-20 09:53:29'),
(5, '1', 'Property tagno', 'text', 'property_tag_no', 'Active', 1, '2022-04-20 09:53:29', '2022-04-20 09:53:29'),
(11, '3', 'description', 'textarea', 'property_description', 'Active', 1, '2022-04-20 09:55:49', '2022-04-20 09:55:49'),
(12, '3', 'barcode', 'text', 'property_barcode', 'Active', 1, '2022-04-20 09:55:49', '2022-04-20 09:55:49'),
(13, '3', 'serial number', 'text', 'property_serial_no', 'Active', 1, '2022-04-20 09:55:49', '2022-04-20 09:55:49'),
(14, '3', 'name', 'text', 'property_name', 'Active', 1, '2022-04-20 09:55:49', '2022-04-20 09:55:49'),
(15, '3', 'Property tagno', 'text', 'property_tag_no', 'Active', 1, '2022-04-20 09:55:49', '2022-04-20 09:55:49'),
(16, '3', 'type', 'text', 'property_type', 'Active', 1, '2022-04-20 09:55:49', '2022-04-20 09:55:49'),
(18, '5', 'description', 'textarea', 'kl', 'Active', 1, '2022-04-21 10:39:59', '2022-04-21 10:39:59'),
(19, '5', 'barcode', 'text', 'nmnm', 'Active', 1, '2022-04-21 10:40:00', '2022-04-21 10:40:00'),
(20, '9', 'description', 'textarea', 'property_description', 'Active', 1, '2022-04-21 13:12:31', '2022-04-21 13:12:31'),
(21, '9', 'barcode', 'text', 'property_barcode', 'Active', 1, '2022-04-21 13:12:31', '2022-04-21 13:12:31'),
(22, '9', 'serial number', 'text', 'property_serial_no', 'Active', 1, '2022-04-21 13:12:31', '2022-04-21 13:12:31'),
(23, '9', 'name', 'text', 'property_name', 'Active', 1, '2022-04-21 13:12:32', '2022-04-21 13:12:32'),
(24, '9', 'Checkbox', 'checkbox', 'metaname_id', 'Active', 1, '2022-04-21 13:12:32', '2022-04-21 13:12:32'),
(25, '9', 'rr', 'number', '', 'Active', 1, '2022-04-21 13:12:32', '2022-04-21 13:12:32'),
(26, '10', 'description', 'textarea', 'property_description', 'Active', 1, '2022-04-21 13:13:15', '2022-04-21 13:13:15'),
(27, '10', 'barcode', 'text', 'property_barcode', 'Active', 1, '2022-04-21 13:13:15', '2022-04-21 13:13:15'),
(28, '10', 'name', 'text', 'property_name', 'Active', 1, '2022-04-21 13:13:15', '2022-04-21 13:13:15'),
(29, '10', 'Radio', 'radio', 'property_radio', 'Active', 1, '2022-04-21 13:13:15', '2022-04-21 13:13:15'),
(30, '10', 'type', 'text', '', 'Active', 1, '2022-04-21 13:13:15', '2022-04-21 13:13:15'),
(31, '10', 'rr', 'number', '', 'Active', 1, '2022-04-21 13:13:16', '2022-04-21 13:13:16'),
(32, '11', 'barcode', 'text', 'property_barcode', 'Active', 1, '2022-04-21 13:14:24', '2022-04-21 13:14:24'),
(33, '11', 'serial number', 'text', 'property_serial_no', 'Active', 1, '2022-04-21 13:14:24', '2022-04-21 13:14:24'),
(34, '11', 'Radio', 'radio', 'property_radio', 'Active', 1, '2022-04-21 13:14:24', '2022-04-21 13:14:24'),
(35, '11', 'Property tagno', 'text', 'property_tag_no', 'Active', 1, '2022-04-21 13:14:24', '2022-04-21 13:14:24'),
(36, '12', 'name', 'text', 'property_name', 'Active', 1, '2022-04-21 13:15:14', '2022-04-21 13:15:14'),
(37, '12', 'Property tagno', 'text', 'property_tag_no', 'Active', 1, '2022-04-21 13:15:14', '2022-04-21 13:15:14'),
(38, '12', 'type', 'text', 'text', 'Active', 1, '2022-04-21 13:15:14', '2022-04-21 13:15:14'),
(39, '12', 'rr', 'number', 'radio', 'Active', 1, '2022-04-21 13:15:14', '2022-04-21 13:15:14'),
(40, '13', 'type', 'text', 'text', 'Active', 1, '2022-04-22 10:26:23', '2022-04-22 10:26:23'),
(41, '13', 'rr', 'number', 'radio', 'Active', 1, '2022-04-22 10:26:23', '2022-04-22 10:26:23'),
(42, '14', 'description', 'textarea', 'property_description', 'Active', 1, '2022-04-22 10:27:07', '2022-04-22 10:27:07'),
(43, '14', 'Checkbox', 'checkbox', 'metaname_id', 'Active', 1, '2022-04-22 10:27:07', '2022-04-22 10:27:07'),
(44, '15', 'rr', 'number', 'radio', 'Active', 1, '2022-04-22 10:29:50', '2022-04-22 10:29:50'),
(45, '16', 'type', 'text', 'property_type', 'Active', 1, '2022-04-22 10:31:53', '2022-04-22 10:31:53'),
(46, '16', 'rr', 'number', 'property_rr', 'Active', 1, '2022-04-22 10:31:53', '2022-04-22 10:31:53'),
(47, '17', 'barcode', 'text', 'property_barcode', 'Active', 1, '2022-04-22 11:15:43', '2022-04-22 11:15:43'),
(48, '17', 'serial number', 'text', 'property_serial', 'Active', 1, '2022-04-22 11:15:43', '2022-04-22 11:15:43'),
(49, '17', 'name', 'text', 'property_name', 'Active', 1, '2022-04-22 11:15:43', '2022-04-22 11:15:43'),
(50, '17', 'type', 'text', 'property_type', 'Active', 1, '2022-04-22 11:15:44', '2022-04-22 11:15:44'),
(51, '18', 'description', 'textarea', 'property_description', 'Active', 1, '2022-04-22 11:17:54', '2022-04-22 11:17:54'),
(52, '19', 'barcode', 'text', 'property_barcode', 'Active', 1, '2022-04-22 11:25:28', '2022-04-22 11:25:28'),
(53, '19', 'barcode', 'text', 'property_barcode', 'Active', 1, '2022-04-22 11:26:07', '2022-04-22 11:26:07'),
(54, '1', 'description', 'textarea', 'property_description', 'Active', 1, '2022-04-23 14:18:50', '2022-04-23 14:18:50'),
(55, '1', 'name', 'text', 'property_name', 'Active', 1, '2022-04-23 14:18:50', '2022-04-23 14:18:50'),
(56, '1', 'Room Number', 'text', 'property_Room', 'Active', 1, '2022-04-23 14:18:50', '2022-04-23 14:18:50'),
(57, '21', 'description', 'textarea', 'property_description', 'Active', 1, '2022-04-23 14:20:08', '2022-04-23 14:20:08'),
(58, '21', 'barcode', 'text', 'property_barcode', 'Active', 1, '2022-04-23 14:20:08', '2022-04-23 14:20:08'),
(59, '21', 'serial number', 'text', 'property_serial', 'Active', 1, '2022-04-23 14:20:08', '2022-04-23 14:20:08'),
(60, '21', 'name', 'text', 'property_name', 'Active', 1, '2022-04-23 14:20:08', '2022-04-23 14:20:08'),
(61, '21', 'Room Number', 'text', 'property_Room', 'Active', 1, '2022-04-23 14:20:08', '2022-04-23 14:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_06_28_183926_create_permission_tables', 1),
(7, '2021_06_30_085227_create_warehouses_table', 1),
(8, '2021_06_30_085250_create_suppliers_table', 1),
(9, '2021_06_30_085300_create_stocks_table', 1),
(10, '2021_06_30_130240_create_customers_table', 1),
(11, '2021_06_30_141059_create_orders_table', 1),
(12, '2021_07_01_082350_create_order_items_table', 1),
(13, '2021_07_01_084817_create_stockings_table', 1),
(14, '2021_07_03_085912_create_sales_table', 1),
(15, '2021_07_03_140323_create_sessions_table', 1),
(16, '2021_07_05_131159_create_sub_stores_table', 1),
(17, '2021_07_09_124552_create_payments_table', 1),
(18, '2021_07_09_165459_create_purchases_table', 1),
(19, '2021_07_16_143331_create_purchase_orders_table', 1),
(20, '2021_07_16_175603_create_purchase_items_table', 1),
(21, '2021_07_20_154102_create_accounts_table', 1),
(22, '2021_07_21_163204_create_payment_categories_table', 1),
(23, '2021_07_21_165818_create_cash_ins_table', 1),
(24, '2021_07_23_172534_create_expense_categories_table', 1),
(25, '2021_07_23_183809_create_direct_expenses_table', 1),
(26, '2021_07_27_143817_create_supplier_accounts_table', 1),
(27, '2021_07_28_102946_create_customer_account_summaries_table', 1),
(28, '2021_07_28_192513_create_supplier_account_summaries_table', 1),
(29, '2021_09_05_141028_create_customer_wallets_table', 1),
(30, '2021_09_05_141041_create_supplier_wallets_table', 1),
(31, '2021_09_07_202550_create_customer_wallet_summuries_table', 1),
(32, '2021_09_07_202606_create_supplier_wallet_summuries_table', 1),
(33, '2021_11_10_220050_create_asset_values_table', 1),
(34, '2021_11_10_220151_create_liablity_values_table', 1),
(35, '2022_01_01_220945_create_rental_items_table', 1),
(36, '2022_01_01_221017_create_rentals_table', 1),
(37, '2022_01_01_221558_create_rental_orders_table', 1),
(38, '2022_01_01_221617_create_rental_order_items_table', 1),
(39, '2022_01_03_192231_create_my_companies_table', 1),
(40, '2022_01_03_193204_create_my_payments_table', 1),
(41, '2022_03_04_153113_create_pending_stocks_table', 2),
(42, '2022_03_04_153114_create_pending_stocks_table', 3),
(43, '2022_03_04_153112_create_pending_stocks_table', 4),
(44, '2022_03_04_153103_create_pending_stocks_table', 5),
(45, '2022_03_04_153123_create_pending_stocks_table', 6),
(46, '2022_04_14_132826_create_departments_table', 7),
(47, '2022_04_14_195447_create_sites_table', 8),
(48, '2022_04_16_183133_create_datatypes_table', 9),
(49, '2022_04_16_190935_create_metadata_table', 10),
(50, '2022_04_16_204544_create_properties_table', 11),
(51, '2022_04_16_205308_create_property_histories_table', 11),
(52, '2022_04_16_204544_create_metanames_table', 12),
(53, '2022_04_16_215036_create_metaname_datatypes_table', 12),
(54, '2022_04_18_174405_create_properties_table', 13),
(55, '2022_04_23_170409_create_qns_numbers_table', 14),
(56, '2022_04_23_170416_create_set_indicators_table', 15),
(57, '2022_04_23_170417_create_set_indicators_table', 16),
(58, '2022_04_23_170419_create_qns_numbers_table', 17),
(59, '2022_04_23_170419_create_qns_table', 18),
(60, '2022_04_23_170419_create_answers_table', 19),
(61, '2022_05_04_184641_create_qns_appliedtos_table', 20),
(62, '2022_04_23_170420_create_optional_answers_table', 21),
(63, '2022_05_04_184641_create_department_roles_table', 22),
(64, '2022_05_13_151407_create_user_registers_table', 22),
(65, '2022_05_04_184641_create_activity_roles_table', 23),
(66, '2022_04_23_170419_create_answer_update_photos_table', 24),
(67, '2022_05_22_115551_create_user_activities_table', 25),
(68, '2022_05_22_115551_create_user_roles_table', 26),
(69, '2022_05_22_115552_create_user_sites_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 23);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 10),
(1, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 11);

-- --------------------------------------------------------

--
-- Table structure for table `my_companies`
--

CREATE TABLE `my_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` int(10) UNSIGNED NOT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renew_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_companies`
--

INSERT INTO `my_companies` (`id`, `company_name`, `logo`, `address`, `phone_number`, `package`, `status`, `renew_at`, `created_at`, `updated_at`) VALUES
(1, 'demo', NULL, 'arusha', 77777, 'uwezo', 'Active', '2023-01-17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `my_payments`
--

CREATE TABLE `my_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` int(10) UNSIGNED NOT NULL,
  `my_id` int(10) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_paid` int(10) UNSIGNED NOT NULL,
  `end_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_via` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit_shop` int(191) NOT NULL,
  `limit_users` int(191) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_payments`
--

INSERT INTO `my_payments` (`id`, `invoice_number`, `my_id`, `package_name`, `amount_paid`, `end_at`, `start_from`, `paid_via`, `transaction_id`, `limit_shop`, `limit_users`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'uwezo', 360000, '2023-01-28', '2023-01-2022', 'Mpesa', NULL, 10, 10, 'Active', NULL, NULL),
(2, 1, 1, 'Duka', 600000, '2023-01-12', '2022-01-12', '255757654123', '9AC76GO8V93', 0, 0, 'Pending', '2022-02-20 11:41:01', '2022-02-20 11:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `optional_answers`
--

CREATE TABLE `optional_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `indicator_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `optional_answers`
--

INSERT INTO `optional_answers` (`id`, `indicator_id`, `answer`, `datatype`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '20', 'cv', 'checkbox', 'Active', 1, '2022-05-06 08:45:23', '2022-05-06 08:45:23'),
(2, '20', 'bv', 'checkbox', 'Active', 1, '2022-05-06 08:45:23', '2022-05-06 08:45:23'),
(3, '21', 'Swept1', 'checkbox', 'Active', 1, '2022-05-07 11:35:55', '2022-05-07 11:35:55'),
(4, '21', 'Swept2', 'checkbox', 'Active', 1, '2022-05-07 11:35:56', '2022-05-07 11:35:56'),
(5, '22', 'cc', 'checkbox', 'Active', 1, '2022-05-07 11:39:21', '2022-05-07 11:39:21'),
(6, '22', 'c2', 'checkbox', 'Active', 1, '2022-05-07 11:39:22', '2022-05-07 11:39:22'),
(7, '22', 'c3', 'checkbox', 'Active', 1, '2022-05-07 11:39:22', '2022-05-07 11:39:22'),
(8, '27', 'A1', 'checkbox', 'Active', 1, '2022-06-11 19:04:46', '2022-06-11 19:04:46'),
(9, '27', 'A2', 'checkbox', 'Active', 1, '2022-06-11 19:04:46', '2022-06-11 19:04:46'),
(10, '27', 'A3', 'checkbox', 'Active', 1, '2022-06-11 19:04:46', '2022-06-11 19:04:46'),
(11, '27', 'A4', 'checkbox', 'Active', 1, '2022-06-11 19:04:46', '2022-06-11 19:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `warehouse_id`, `discount`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 0, 'Sold', 2, '2022-01-28 22:11:26', '2022-01-28 22:31:19'),
(2, 1, 2, 0, 'Sold', 2, '2022-01-29 01:40:20', '2022-01-29 01:41:23'),
(3, 1, 2, 0, 'Sold', 2, '2022-01-29 02:14:02', '2022-01-29 02:14:55'),
(4, 1, 2, 0, 'Sold', 2, '2022-01-29 02:25:16', '2022-01-29 02:26:09'),
(5, 1, 2, 0, 'Sold', 2, '2022-01-29 02:48:20', '2022-01-29 02:49:14'),
(6, 1, 2, 0, 'Sold', 2, '2022-01-29 02:50:00', '2022-01-29 02:51:11'),
(7, 1, 2, 0, 'Sold', 2, '2022-01-29 02:51:17', '2022-01-31 15:55:32'),
(8, 1, 3, 0, 'Sold', 7, '2022-01-31 16:14:37', '2022-01-31 16:16:12'),
(9, 2, 3, 0, 'Sold', 7, '2022-01-31 16:45:23', '2022-01-31 16:46:16'),
(11, 2, 2, 0, 'Sold', 2, '2022-02-08 19:33:00', '2022-02-08 19:33:30'),
(13, 2, 2, 0, 'Sold', 2, '2022-02-08 19:47:20', '2022-02-08 19:47:40'),
(14, 2, 2, 0, 'Sold', 2, '2022-02-08 21:38:23', '2022-02-08 21:41:04'),
(15, 3, 2, 0, 'Sold', 2, '2022-02-09 18:32:06', '2022-02-09 18:47:44'),
(16, 3, 4, 0, 'Sold', 9, '2022-02-11 15:50:40', '2022-02-11 15:53:53'),
(19, 1, 2, 0, 'Sold', 8, '2022-02-12 18:06:17', '2022-02-12 19:27:37'),
(21, 2, 2, 0, 'Pending', 8, '2022-02-12 20:19:07', '2022-02-12 20:19:07'),
(22, 1, 3, 0, 'Sold', 7, '2022-02-20 11:46:32', '2022-02-20 11:46:59'),
(23, 2, 3, 0, 'Sold', 7, '2022-02-20 11:47:05', '2022-02-20 11:47:43'),
(24, 1, 3, 0, 'Sold', 7, '2022-02-20 11:48:05', '2022-02-20 11:48:49'),
(25, 2, 3, 0, 'Sold', 7, '2022-02-20 12:07:01', '2022-02-20 22:38:27'),
(29, 2, 3, 0, 'Sold', 7, '2022-02-20 22:38:58', '2022-02-20 22:39:25'),
(30, 2, 3, 0, 'Sold', 7, '2022-02-20 22:52:15', '2022-02-20 22:53:23'),
(31, 2, 3, 0, 'Sold', 7, '2022-02-20 22:53:41', '2022-02-20 22:59:17'),
(32, 2, 3, 0, 'Sold', 7, '2022-02-20 23:02:46', '2022-02-20 23:05:41'),
(33, 2, 3, 0, 'Sold', 7, '2022-02-21 08:01:09', '2022-02-21 08:03:50'),
(34, 2, 3, 0, 'Sold', 7, '2022-02-21 08:10:34', '2022-02-21 08:32:42'),
(35, 2, 3, 0, 'Sold', 7, '2022-02-21 08:45:49', '2022-02-21 08:48:17'),
(36, 2, 3, 0, 'Sold', 7, '2022-02-21 08:48:57', '2022-02-21 08:56:09'),
(37, 2, 3, 0, 'Sold', 7, '2022-02-21 08:57:12', '2022-02-21 09:00:52'),
(38, 2, 3, 0, 'Sold', 7, '2022-02-21 09:07:18', '2022-02-21 09:19:59'),
(39, 1, 3, 0, 'Sold', 7, '2022-02-21 09:07:24', '2022-02-22 07:40:30'),
(40, 2, 3, 0, 'Sold', 7, '2022-02-21 09:30:20', '2022-02-21 09:33:18'),
(41, 2, 3, 0, 'Sold', 7, '2022-02-21 09:33:25', '2022-02-21 09:35:38'),
(42, 2, 3, 0, 'Sold', 7, '2022-02-21 09:36:25', '2022-02-21 09:36:39'),
(43, 2, 3, 0, 'Sold', 7, '2022-02-21 09:37:34', '2022-02-21 09:37:45'),
(44, 2, 3, 0, 'Sold', 7, '2022-02-21 09:41:03', '2022-02-21 09:41:47'),
(45, 2, 3, 0, 'Sold', 7, '2022-02-21 09:42:31', '2022-02-21 09:42:59'),
(46, 2, 3, 0, 'Sold', 7, '2022-02-21 09:47:27', '2022-02-21 09:47:44'),
(47, 2, 3, 0, 'Sold', 7, '2022-02-21 09:47:48', '2022-02-21 09:48:28'),
(48, 2, 3, 0, 'Sold', 7, '2022-02-21 09:48:36', '2022-02-21 09:51:14'),
(49, 2, 3, 0, 'Sold', 7, '2022-02-21 09:51:19', '2022-02-21 09:53:12'),
(50, 2, 3, 0, 'Sold', 7, '2022-02-21 09:54:39', '2022-02-21 09:54:52'),
(51, 2, 3, 0, 'Sold', 7, '2022-02-21 09:55:21', '2022-02-21 09:55:49'),
(52, 2, 3, 0, 'Sold', 7, '2022-02-21 09:58:08', '2022-02-21 09:58:20'),
(53, 2, 3, 0, 'Sold', 7, '2022-02-21 09:59:46', '2022-02-21 09:59:58'),
(54, 2, 3, 0, 'Sold', 7, '2022-02-21 10:01:14', '2022-02-21 10:01:26'),
(55, 2, 3, 0, 'Sold', 7, '2022-02-21 10:01:59', '2022-02-21 10:02:13'),
(56, 2, 3, 0, 'Sold', 7, '2022-02-21 10:02:18', '2022-02-21 10:02:28'),
(57, 2, 3, 0, 'Sold', 7, '2022-02-21 10:23:26', '2022-02-21 10:26:07'),
(58, 2, 3, 0, 'Sold', 7, '2022-02-21 10:26:43', '2022-02-21 10:27:16'),
(59, 2, 3, 0, 'Sold', 7, '2022-02-21 10:28:55', '2022-02-21 10:29:22'),
(60, 2, 3, 0, 'Sold', 7, '2022-02-21 10:30:46', '2022-02-21 10:31:14'),
(61, 2, 3, 0, 'Sold', 7, '2022-02-21 10:31:56', '2022-02-21 10:32:21'),
(62, 2, 3, 0, 'Sold', 7, '2022-02-21 10:33:22', '2022-02-21 11:04:50'),
(63, 2, 3, 0, 'Sold', 7, '2022-02-21 11:04:55', '2022-02-21 11:32:58'),
(64, 2, 3, 0, 'Sold', 7, '2022-02-21 11:48:53', '2022-02-22 07:40:46'),
(65, 1, 3, 0, 'Sold', 7, '2022-02-22 07:40:50', '2022-02-23 08:28:42'),
(66, 3, 3, 0, 'Sold', 7, '2022-02-22 07:41:48', '2022-02-23 08:21:14'),
(67, 4, 3, 0, 'Sold', 7, '2022-02-23 08:07:04', '2022-02-23 08:20:59'),
(68, 3, 3, 0, 'Sold', 7, '2022-02-23 08:24:03', '2022-02-23 08:35:38'),
(69, 4, 3, 0, 'Sold', 7, '2022-02-23 08:33:40', '2022-02-24 07:46:52'),
(75, 5, 3, 0, 'Sold', 7, '2022-03-16 07:43:25', '2022-03-16 08:00:44'),
(76, 5, 3, 0, 'Pending', 7, '2022-03-16 08:01:21', '2022-03-16 08:01:21'),
(77, 2, 3, 0, 'Pending', 7, '2022-03-16 08:19:34', '2022-03-16 08:19:34'),
(78, 1, 3, 0, 'Sold', 7, '2022-03-16 08:39:28', '2022-03-18 09:29:00'),
(79, 4, 3, 0, 'Pending', 7, '2022-03-16 09:31:27', '2022-03-16 09:31:27'),
(80, 3, 3, 0, 'Sold', 7, '2022-03-16 10:13:05', '2022-03-16 10:24:18'),
(81, 1, 3, 0, 'Sold', 7, '2022-03-18 13:39:00', '2022-03-18 13:48:37'),
(83, 3, 3, 0, 'Sold', 7, '2022-03-18 13:51:41', '2022-03-18 13:54:44'),
(84, 1, 2, 0, 'Pending', 11, '2022-04-14 15:40:31', '2022-04-14 15:40:31'),
(85, 1, 3, 0, 'Pending', 23, '2022-06-05 09:26:57', '2022-06-05 09:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `width` decimal(10,2) NOT NULL,
  `height` decimal(10,2) NOT NULL,
  `qty` decimal(10,2) UNSIGNED NOT NULL,
  `buying_price` decimal(10,2) NOT NULL,
  `selling_price` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `item_id`, `width`, `height`, `qty`, `buying_price`, `selling_price`, `created_at`, `updated_at`) VALUES
(6, 78, 3, '0.22', '0.47', '0.10', '0.00', 2000, '2022-03-18 08:58:50', '2022-03-18 09:23:38'),
(7, 78, 3, '0.48', '0.87', '0.42', '0.00', 2000, '2022-03-18 09:08:49', '2022-03-18 09:23:38'),
(8, 78, 3, '0.64', '0.90', '0.58', '0.00', 2000, '2022-03-18 09:14:11', '2022-03-18 09:23:38'),
(9, 78, 3, '0.18', '0.53', '0.10', '0.00', 2000, '2022-03-18 09:18:22', '2022-03-18 09:23:38'),
(10, 79, 4, '0.22', '0.22', '0.05', '0.00', 2500, '2022-03-18 09:29:07', '2022-03-18 09:30:03'),
(11, 79, 3, '0.18', '0.19', '0.03', '0.00', 2000, '2022-03-18 09:29:09', '2022-03-18 09:30:03'),
(12, 79, 3, '0.20', '0.23', '0.05', '0.00', 2000, '2022-03-18 09:29:09', '2022-03-18 09:30:03'),
(13, 79, 10, '0.17', '0.24', '0.04', '0.00', 1000, '2022-03-18 09:29:53', '2022-03-18 09:30:03'),
(14, 81, 3, '0.16', '0.25', '0.04', '0.00', 2000, '2022-03-18 13:39:05', '2022-03-18 13:48:31'),
(15, 81, 3, '0.21', '0.26', '0.05', '0.00', 2000, '2022-03-18 13:39:07', '2022-03-18 13:48:31'),
(16, 81, 4, '0.17', '0.17', '0.03', '0.00', 2500, '2022-03-18 13:39:09', '2022-03-18 13:48:31'),
(18, 83, 11, '0.21', '0.26', '0.05', '0.00', 10000, '2022-03-18 13:54:15', '2022-03-18 13:54:37'),
(19, 83, 13, '0.33', '3.00', '0.99', '0.00', 15000, '2022-03-18 13:54:16', '2022-03-18 13:54:37'),
(25, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, '2022-04-19 08:34:36', '2022-04-19 08:34:36'),
(26, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, '2022-04-19 08:43:24', '2022-04-19 08:43:24'),
(27, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, '2022-04-19 10:47:47', '2022-04-19 10:47:47'),
(28, 85, 3, '0.00', '0.00', '0.00', '0.00', 2000, '2022-06-05 09:27:38', '2022-06-05 09:27:44'),
(29, 85, 10, '0.00', '0.00', '0.00', '0.00', 1000, '2022-06-05 09:27:40', '2022-06-05 09:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('olekiroya@gmail.com', '$2y$10$Cb8vjc7J76jqk9Y8vuHnqeDQ1C80JlG3O5hX2hNBEGAtngMJvelOO', '2022-02-14 17:26:59'),
('admin@moxa.co.tz', '$2y$10$Q68bS34amjnr0LMG.KzBx.xda/xM8iNCFcAhX/PU4lGKp97/SPvC6', '2022-06-06 22:26:03'),
('buruwawa@gmail.com', '$2y$10$/HR/7VJUnuVxVeUw1ZN/ZOGpdpDPmOrXtv5ORmzMhp26eoRpbRFhS', '2022-06-06 22:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL,
  `wallet` decimal(8,2) NOT NULL DEFAULT 0.00,
  `balance` int(10) UNSIGNED NOT NULL,
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `sale_id`, `account_id`, `amount`, `paid`, `wallet`, `balance`, `receipt`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 7000, 7000, '0.00', 0, 'Sale', 'Sale', 2, '2022-01-28 22:31:19', '2022-01-28 22:31:19'),
(2, 2, 1, 35000, 35000, '0.00', 0, 'Sale', 'Sale', 2, '2022-01-29 01:41:23', '2022-01-29 01:41:23'),
(3, 3, 1, 22000, 22000, '0.00', 0, 'Sale', 'Sale', 2, '2022-01-29 02:14:55', '2022-01-29 02:14:55'),
(4, 4, 1, 28000, 28000, '0.00', 0, 'Sale', 'Sale', 2, '2022-01-29 02:26:09', '2022-01-29 02:26:09'),
(5, 5, 1, 105000, 105000, '0.00', 0, 'Sale', 'Sale', 2, '2022-01-29 02:49:14', '2022-01-29 02:49:14'),
(6, 6, 1, 80000, 80000, '0.00', 0, 'Sale', 'Sale', 2, '2022-01-29 02:51:11', '2022-01-29 02:51:11'),
(7, 7, 1, 6000, 6000, '0.00', 0, 'Sale', 'Sale', 2, '2022-01-31 15:55:32', '2022-01-31 15:55:32'),
(8, 8, 1, 10000, 10000, '0.00', 0, 'Sale', 'Sale', 7, '2022-01-31 16:16:12', '2022-01-31 16:16:12'),
(9, 9, 1, 62500, 62500, '0.00', 0, 'Sale', 'Sale', 7, '2022-01-31 16:46:16', '2022-01-31 16:46:16'),
(10, 10, 1, 14000, 14000, '0.00', 0, 'Sale', 'Sale', 2, '2022-02-08 19:33:30', '2022-02-08 19:33:30'),
(11, 12, 1, 100000, 100000, '0.00', 0, 'Sale', 'Sale', 2, '2022-02-08 19:47:40', '2022-02-08 19:47:40'),
(12, 13, 1, 900000, 900000, '0.00', 0, 'Sale', 'Sale', 2, '2022-02-08 21:41:04', '2022-02-08 21:41:04'),
(13, 14, 1, 6000, 6000, '0.00', 0, 'Sale', 'Sale', 2, '2022-02-09 18:47:44', '2022-02-09 18:47:44'),
(14, 15, 1, 4000, 4000, '0.00', 0, 'Sale', 'Sale', 9, '2022-02-11 15:53:53', '2022-02-11 15:53:53'),
(15, 16, 1, 4500, 4500, '0.00', 0, 'Sale', 'Sale', 8, '2022-02-12 19:27:37', '2022-02-12 19:27:37'),
(16, 17, 1, 10000, 0, '0.00', 10000, 'Sale', 'Sale', 7, '2022-02-20 11:46:58', '2022-02-20 11:46:58'),
(17, 18, 1, 12000, 0, '0.00', 12000, 'Sale', 'Sale', 7, '2022-02-20 11:47:42', '2022-02-20 11:47:42'),
(18, 19, 1, 8000, 0, '0.00', 8000, 'Sale', 'Sale', 7, '2022-02-20 11:48:49', '2022-02-20 11:48:49'),
(19, 20, 1, 2500, 0, '0.00', 2500, 'Sale', 'Sale', 7, '2022-02-20 22:38:27', '2022-02-20 22:38:27'),
(20, 21, 1, 2000, 0, '0.00', 2000, 'Sale', 'Sale', 7, '2022-02-20 22:39:25', '2022-02-20 22:39:25'),
(21, 22, 1, 2000, 0, '0.00', 2000, 'Sale', 'Sale', 7, '2022-02-20 22:53:23', '2022-02-20 22:53:23'),
(22, 23, 1, 4000, 0, '0.00', 4000, 'Sale', 'Sale', 7, '2022-02-20 22:59:16', '2022-02-20 22:59:16'),
(23, 24, 1, 2000, 0, '0.00', 2000, 'Sale', 'Sale', 7, '2022-02-20 23:05:41', '2022-02-20 23:05:41'),
(24, 25, 1, 12000, 0, '0.00', 12000, 'Sale', 'Sale', 7, '2022-02-21 08:03:50', '2022-02-21 08:03:50'),
(25, 26, 1, 15600, 0, '0.00', 15600, 'Sale', 'Sale', 7, '2022-02-21 08:32:42', '2022-02-21 08:32:42'),
(26, 27, 1, 9000, 0, '0.00', 9000, 'Sale', 'Sale', 7, '2022-02-21 08:48:17', '2022-02-21 08:48:17'),
(27, 28, 1, 5000, 0, '0.00', 5000, 'Sale', 'Sale', 7, '2022-02-21 08:56:09', '2022-02-21 08:56:09'),
(28, 29, 1, 13000, 0, '0.00', 13000, 'Sale', 'Sale', 7, '2022-02-21 09:00:52', '2022-02-21 09:00:52'),
(29, 30, 1, 24480, 0, '0.00', 24480, 'Sale', 'Sale', 7, '2022-02-21 09:19:59', '2022-02-21 09:19:59'),
(30, 31, 1, 52800, 0, '0.00', 52800, 'Sale', 'Sale', 7, '2022-02-21 09:33:18', '2022-02-21 09:33:18'),
(31, 32, 1, 14400, 0, '0.00', 14400, 'Sale', 'Sale', 7, '2022-02-21 09:35:38', '2022-02-21 09:35:38'),
(32, 33, 1, 31200, 0, '0.00', 31200, 'Sale', 'Sale', 7, '2022-02-21 09:36:38', '2022-02-21 09:36:38'),
(33, 34, 1, 12000, 0, '0.00', 12000, 'Sale', 'Sale', 7, '2022-02-21 09:37:45', '2022-02-21 09:37:45'),
(34, 35, 1, 24000, 0, '0.00', 24000, 'Sale', 'Sale', 7, '2022-02-21 09:41:46', '2022-02-21 09:41:46'),
(35, 36, 1, 24000, 0, '0.00', 24000, 'Sale', 'Sale', 7, '2022-02-21 09:42:59', '2022-02-21 09:42:59'),
(36, 37, 1, 24000, 0, '0.00', 24000, 'Sale', 'Sale', 7, '2022-02-21 09:47:44', '2022-02-21 09:47:44'),
(37, 38, 1, 48000, 0, '0.00', 48000, 'Sale', 'Sale', 7, '2022-02-21 09:48:28', '2022-02-21 09:48:28'),
(38, 39, 1, 24000, 0, '0.00', 24000, 'Sale', 'Sale', 7, '2022-02-21 09:51:13', '2022-02-21 09:51:13'),
(39, 40, 1, 48000, 0, '0.00', 48000, 'Sale', 'Sale', 7, '2022-02-21 09:53:11', '2022-02-21 09:53:11'),
(40, 41, 1, 12000, 0, '0.00', 12000, 'Sale', 'Sale', 7, '2022-02-21 09:54:52', '2022-02-21 09:54:52'),
(41, 42, 1, 12000, 0, '0.00', 12000, 'Sale', 'Sale', 7, '2022-02-21 09:55:48', '2022-02-21 09:55:48'),
(42, 43, 1, 24000, 0, '0.00', 24000, 'Sale', 'Sale', 7, '2022-02-21 09:58:19', '2022-02-21 09:58:19'),
(43, 44, 1, 48000, 0, '0.00', 48000, 'Sale', 'Sale', 7, '2022-02-21 09:59:57', '2022-02-21 09:59:57'),
(44, 45, 1, 24000, 0, '0.00', 24000, 'Sale', 'Sale', 7, '2022-02-21 10:01:26', '2022-02-21 10:01:26'),
(45, 46, 1, 48000, 0, '0.00', 48000, 'Sale', 'Sale', 7, '2022-02-21 10:02:12', '2022-02-21 10:02:12'),
(46, 47, 1, 48000, 0, '0.00', 48000, 'Sale', 'Sale', 7, '2022-02-21 10:02:28', '2022-02-21 10:02:28'),
(47, 48, 1, 68000, 0, '0.00', 68000, 'Sale', 'Sale', 7, '2022-02-21 10:26:06', '2022-02-21 10:26:06'),
(48, 49, 1, 33120, 0, '0.00', 33120, 'Sale', 'Sale', 7, '2022-02-21 10:27:16', '2022-02-21 10:27:16'),
(49, 50, 1, 38320, 0, '0.00', 38320, 'Sale', 'Sale', 7, '2022-02-21 10:29:22', '2022-02-21 10:29:22'),
(50, 51, 1, 34320, 0, '0.00', 34320, 'Sale', 'Sale', 7, '2022-02-21 10:31:14', '2022-02-21 10:31:14'),
(51, 52, 1, 34320, 0, '0.00', 34320, 'Sale', 'Sale', 7, '2022-02-21 10:32:20', '2022-02-21 10:32:20'),
(52, 53, 1, 37440, 0, '0.00', 37440, 'Sale', 'Sale', 7, '2022-02-21 11:04:50', '2022-02-21 11:04:50'),
(53, 54, 1, 60000, 0, '0.00', 60000, 'Sale', 'Sale', 7, '2022-02-21 11:32:57', '2022-02-21 11:32:57'),
(54, 55, 1, 72040, 72040, '0.00', 0, 'Sale', 'Sale', 7, '2022-02-22 07:40:29', '2022-02-22 07:40:29'),
(55, 56, 1, 303170, 303170, '0.00', 0, 'Sale', 'Sale', 7, '2022-02-22 07:40:46', '2022-02-22 07:40:46'),
(56, 57, 1, 12000, 12000, '0.00', 0, 'Sale', 'Sale', 7, '2022-02-23 08:20:58', '2022-02-23 08:20:58'),
(57, 58, 1, 12000, 12000, '0.00', 0, 'Sale', 'Sale', 7, '2022-02-23 08:21:14', '2022-02-23 08:21:14'),
(58, 59, 1, 2000, 2000, '0.00', 0, 'Sale', 'Sale', 7, '2022-02-23 08:28:42', '2022-02-23 08:28:42'),
(59, 60, 1, 12000, 0, '0.00', 12000, 'Sale', 'Sale', 7, '2022-02-23 08:35:38', '2022-02-23 08:35:38'),
(60, 61, 1, 14400, 14400, '0.00', 0, 'Sale', 'Sale', 7, '2022-02-24 07:46:51', '2022-02-24 07:46:51'),
(61, 17, 1, 10000, 8000, '0.00', 2000, 'Direct', 'Installment', 7, '2022-02-25 07:40:26', '2022-02-25 07:40:26'),
(62, 17, 1, 2000, 2000, '0.00', 0, 'Direct', 'Installment', 7, '2022-02-25 07:41:05', '2022-02-25 07:41:05'),
(63, 62, 1, 0, 0, '0.00', 0, 'Sale', 'Sale', 7, '2022-03-16 08:00:43', '2022-03-16 08:00:43'),
(64, 63, 1, 2160, 2160, '0.00', 0, 'Sale', 'Sale', 7, '2022-03-16 10:24:18', '2022-03-16 10:24:18'),
(65, 64, 1, 2400, 2400, '0.00', 0, 'Sale', 'Sale', 7, '2022-03-18 09:29:00', '2022-03-18 09:29:00'),
(66, 65, 1, 255, 255, '0.00', 0, 'Sale', 'Sale', 7, '2022-03-18 13:48:37', '2022-03-18 13:48:37'),
(67, 66, 1, 15350, 15350, '0.00', 0, 'Sale', 'Sale', 7, '2022-03-18 13:54:43', '2022-03-18 13:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `payment_categories`
--

CREATE TABLE `payment_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_categories`
--

INSERT INTO `payment_categories` (`id`, `payment_category`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'capital', 1, '2022-01-28 22:34:12', '2022-01-28 22:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'kilimo point', 'web', '2022-01-28 21:43:34', '2022-01-28 21:43:34'),
(2, 'ukerewe', 'web', '2022-01-31 16:02:54', '2022-01-31 16:02:54'),
(3, 'Masawee', 'web', '2022-02-11 15:45:53', '2022-02-11 15:45:53'),
(4, 'Oryx depot', 'web', '2022-02-19 16:08:41', '2022-02-19 16:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `metaname_id` int(11) NOT NULL,
  `property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_serial_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_tag_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `site_id`, `location_id`, `metaname_id`, `property_name`, `property_serial_no`, `property_barcode`, `property_tag_no`, `property_type`, `property_description`, `photo`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5, 0, 1, 'room no 899', '7777722', '432342', 'xcv3423', '', 'Roox 3 *4', NULL, 'Active', 1, '2022-04-21 10:38:04', '2022-04-21 10:38:04'),
(2, 6, 0, 12, 'kkh', NULL, NULL, 'hgfg', NULL, NULL, NULL, 'Active', 1, '2022-04-22 09:58:37', '2022-04-22 09:58:37'),
(3, 8, 0, 9, 'Kirua', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-22 09:59:34', '2022-04-22 09:59:34'),
(4, 10, 0, 5, 'wawa', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-22 10:00:02', '2022-04-22 10:00:02'),
(5, 5, 0, 0, '5', '5', '5', NULL, NULL, '5', NULL, 'Active', 1, '2022-04-22 10:00:44', '2022-04-22 10:00:44'),
(6, 13, 0, 11, NULL, 'g', 'g', 'g', NULL, NULL, NULL, 'Active', 1, '2022-04-22 10:01:51', '2022-04-22 10:01:51'),
(7, 6, 0, 0, '9000', '85995', '676', NULL, NULL, 'hjk', NULL, 'Active', 1, '2022-04-22 10:03:06', '2022-04-22 10:03:06'),
(8, 12, 0, 3, 'hh', 'hh', 'hh', 'hh', 'hh', 'hff', NULL, 'Active', 1, '2022-04-22 10:03:48', '2022-04-22 10:03:48'),
(9, 6, 0, 12, 'lop', NULL, NULL, 'lop', NULL, NULL, NULL, 'Active', 1, '2022-04-22 10:09:18', '2022-04-22 10:09:18'),
(10, 3, 0, 12, 'k', NULL, NULL, 'k', NULL, NULL, NULL, 'Active', 1, '2022-04-22 10:14:22', '2022-04-22 10:14:22'),
(11, 10, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-22 11:18:43', '2022-04-22 11:18:43'),
(12, 3, 0, 12, 's', NULL, NULL, 's', NULL, NULL, NULL, 'Active', 1, '2022-04-22 11:20:31', '2022-04-22 11:20:31'),
(13, 12, 0, 12, 'sa', NULL, NULL, 'sas', NULL, NULL, NULL, 'Active', 1, '2022-04-22 11:21:24', '2022-04-22 11:21:24'),
(14, 6, 0, 12, 'ss', NULL, NULL, 'ss', NULL, NULL, NULL, 'Active', 1, '2022-04-22 11:23:11', '2022-04-22 11:23:11'),
(15, 5, 0, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-22 11:28:42', '2022-04-22 11:29:24'),
(16, 27, 0, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-22 11:29:50', '2022-04-22 11:29:50'),
(17, 30, 0, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-22 11:30:27', '2022-04-22 11:30:27'),
(18, 29, 0, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-22 11:31:02', '2022-04-22 11:31:16'),
(19, 8, 0, 18, NULL, NULL, NULL, NULL, NULL, 'ttrt', NULL, 'Active', 1, '2022-04-22 11:40:17', '2022-04-22 11:40:17'),
(20, 6, 0, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-22 11:40:33', '2022-04-22 11:40:33'),
(21, 6, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-23 10:33:49', '2022-04-23 10:33:49'),
(22, 8, 0, 5, 'klop', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-23 10:34:33', '2022-04-23 10:34:33'),
(23, 20, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-23 11:19:53', '2022-04-23 11:19:53'),
(24, 3, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-23 12:05:41', '2022-05-31 14:56:08'),
(25, 3, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-23 12:05:50', '2022-04-23 12:05:50'),
(26, 6, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-23 12:09:20', '2022-04-23 12:09:20'),
(27, 10, 0, 0, '66', '666', '666', NULL, NULL, 'yy', NULL, 'Active', 1, '2022-04-23 12:10:25', '2022-04-23 12:10:25'),
(28, 5, 0, 11, NULL, '77', '77', '66', NULL, NULL, NULL, 'Active', 1, '2022-04-25 08:27:15', '2022-04-25 08:27:15'),
(29, 1, 0, 3, 'Samsung', '555', '8855', 'nill', 'Sumsung', '4*6', NULL, 'Active', 1, '2022-04-25 08:49:50', '2022-04-25 08:49:50'),
(30, 5, 21, 21, '22', NULL, 'popo', NULL, NULL, 'po', NULL, 'Active', 1, '2022-04-25 08:51:43', '2022-04-25 08:51:43'),
(31, 1, 13, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-25 10:30:11', '2022-04-25 10:30:11'),
(32, 1, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-04-26 10:29:25', '2022-04-26 10:29:25'),
(33, 5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-05-02 14:14:49', '2022-05-02 14:14:49'),
(34, 1, 21, 21, 'R002', NULL, '0001', NULL, NULL, 'Self contain', NULL, 'Active', 1, '2022-05-17 22:06:55', '2022-05-17 22:06:55'),
(35, 1, 21, 21, 'R001', NULL, '0001', NULL, NULL, 'Self contain', NULL, 'Active', 1, '2022-05-17 22:07:47', '2022-05-17 22:07:47'),
(36, 1, 1, 1, '33klp', 'Rooma', '0001', '222', NULL, '2323', NULL, 'Active', 1, '2022-05-31 14:54:46', '2022-05-31 14:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL,
  `balance` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `purchase_id`, `amount`, `paid`, `balance`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 165000, 165000, 0, 'Final Payment', 1, '2022-01-28 22:36:00', '2022-01-28 22:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `width` decimal(10,2) DEFAULT 0.00,
  `height` decimal(10,2) DEFAULT 0.00,
  `qty` decimal(10,3) UNSIGNED DEFAULT NULL,
  `buying_price` decimal(10,2) UNSIGNED DEFAULT NULL,
  `cost` decimal(12,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `order_id`, `item_id`, `width`, `height`, `qty`, `buying_price`, `cost`, `created_at`, `updated_at`) VALUES
(1, 22, 3, '24.74', '23.87', '590.544', '1500.00', '885815.70', '2022-05-10 16:37:41', '2022-05-10 17:16:15'),
(2, 22, 12, '0.20', '0.96', '0.192', '8000.00', '1536.00', '2022-05-10 17:00:33', '2022-05-10 17:16:15'),
(3, 21, 3, NULL, NULL, '1.000', NULL, '0.00', '2022-05-26 16:20:13', '2022-05-26 16:20:13'),
(4, 21, 4, NULL, NULL, '1.000', NULL, '0.00', '2022-05-26 16:20:39', '2022-05-26 16:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `paid` int(11) NOT NULL DEFAULT 0,
  `balance` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `supplier_id`, `warehouse_id`, `discount`, `amount`, `paid`, `balance`, `status`, `payment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 165000, 165000, 0, 'Final Payment', 'Purchased', 1, '2022-01-28 22:22:09', '2022-01-28 22:36:00'),
(2, 2, 1, 0, 1500, 1500, 0, 'Cash', 'Purchased', 1, '2022-01-29 01:53:03', '2022-01-29 02:08:08'),
(3, 2, 1, 0, 75000, 75000, 0, 'Cash', 'Purchased', 1, '2022-01-29 02:09:56', '2022-01-29 02:11:44'),
(4, 1, 1, 0, 22500, 22500, 0, 'Cash', 'Purchased', 1, '2022-01-31 15:46:27', '2022-01-31 15:49:02'),
(5, 3, 1, 0, 100000, 100000, 0, 'Cash', 'Purchased', 1, '2022-01-31 16:26:29', '2022-01-31 16:28:20'),
(6, 2, 1, 0, 150000, 150000, 0, 'Cash', 'Purchased', 1, '2022-02-08 19:34:07', '2022-02-08 19:34:50'),
(7, 3, 1, 0, 22000, 22000, 0, 'Cash', 'Purchased', 1, '2022-02-08 21:30:03', '2022-02-09 18:26:53'),
(8, 2, 1, 0, 700000, 350000, 350000, 'Installment', 'Purchased', 1, '2022-02-08 21:34:09', '2022-02-08 21:36:11'),
(9, 2, 1, 0, 3850000, 0, 3850000, 'Credit', 'Purchased', 1, '2022-02-12 19:28:51', '2022-02-12 19:29:26'),
(10, 3, 1, 0, 37000, 37000, 0, 'Cash', 'Purchased', 8, '2022-02-14 00:39:50', '2022-02-14 00:40:34'),
(11, 3, 1, 0, 11000, 11000, 0, 'Cash', 'Purchased', 1, '2022-02-19 15:58:50', '2022-02-19 16:00:20'),
(12, 3, 1, 0, 180000, 0, 180000, 'Credit', 'Purchased', 1, '2022-02-20 22:44:04', '2022-02-20 22:47:03'),
(13, 1, 1, 0, 100000000, 0, 100000000, 'Credit', 'Purchased', 1, '2022-02-21 09:04:15', '2022-02-21 09:04:51'),
(14, 2, 1, 0, 8000, 0, 8000, 'Credit', 'Purchased', 1, '2022-02-21 09:15:45', '2022-02-21 09:16:04'),
(15, 2, 1, 0, 2800000, 0, 2800000, 'Credit', 'Purchased', 1, '2022-02-21 09:17:40', '2022-02-21 09:18:08'),
(16, 1, 1, 0, 22400000, 0, 22400000, 'Credit', 'Purchased', 7, '2022-02-24 08:17:32', '2022-02-24 08:20:54'),
(17, 2, 1, 0, 0, 0, 0, 'Pending', NULL, 11, '2022-03-16 08:29:22', '2022-03-16 08:29:22'),
(18, 3, 1, 0, 0, 0, 0, 'Pending', NULL, 7, '2022-03-16 08:31:55', '2022-03-16 08:31:55'),
(19, 3, 1, 0, 50000, 50000, 0, 'Cash', 'Purchased', 11, '2022-03-16 09:15:11', '2022-03-16 09:15:41'),
(20, 3, 1, 0, 0, 0, 0, 'Pending', NULL, 11, '2022-03-16 10:29:07', '2022-03-16 10:29:07'),
(21, 2, 1, 0, 0, 0, 0, 'Pending', NULL, 1, '2022-05-10 05:47:21', '2022-05-10 05:47:21'),
(22, 1, 1, 0, 0, 0, 0, 'Pending', NULL, 1, '2022-05-10 07:16:52', '2022-05-10 07:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `qns_appliedtos`
--

CREATE TABLE `qns_appliedtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metaname_id` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicator_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qns_appliedtos`
--

INSERT INTO `qns_appliedtos` (`id`, `metaname_id`, `indicator_id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', 20, 'Active', 1, '2022-05-17 23:17:05', '2022-05-17 23:17:05'),
(2, '1', 21, 'Active', 1, '2022-05-17 23:17:05', '2022-05-17 23:17:05'),
(3, '9', 22, 'Active', 1, '2022-05-17 23:17:05', '2022-05-17 23:17:05'),
(4, '21', 20, 'Active', 1, '2022-05-17 23:17:05', '2022-05-17 23:17:05'),
(5, '21', 21, 'Active', 1, '2022-05-17 23:17:06', '2022-05-17 23:17:06'),
(6, '21', 22, 'Active', 1, '2022-05-17 23:17:06', '2022-05-17 23:17:06'),
(7, '5', 20, 'Active', 1, '2022-05-30 21:45:32', '2022-05-30 21:45:32'),
(8, '5', 21, 'Active', 1, '2022-05-30 21:45:32', '2022-05-30 21:45:32'),
(9, '6', 20, 'Active', 1, '2022-05-30 21:45:32', '2022-05-30 21:45:32'),
(10, '6', 21, 'Active', 1, '2022-05-30 21:45:32', '2022-05-30 21:45:32'),
(11, '5', 22, 'Active', 1, '2022-05-30 21:45:55', '2022-05-30 21:45:55'),
(12, '6', 22, 'Active', 1, '2022-05-30 21:45:55', '2022-05-30 21:45:55'),
(13, '11', 22, 'Active', 1, '2022-05-30 21:45:55', '2022-05-30 21:45:55'),
(14, '12', 22, 'Active', 1, '2022-05-30 21:45:55', '2022-05-30 21:45:55'),
(15, '1', 22, 'Active', 1, '2022-06-01 10:30:33', '2022-06-01 10:30:33'),
(16, '1', 27, 'Active', 1, '2022-06-11 19:04:46', '2022-06-11 19:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL,
  `balance` int(10) UNSIGNED NOT NULL,
  `wallet` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental_items`
--

CREATE TABLE `rental_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` int(10) UNSIGNED NOT NULL,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental_orders`
--

CREATE TABLE `rental_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rental_orders`
--

INSERT INTO `rental_orders` (`id`, `customer_id`, `start_date`, `end_date`, `amount`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '0000-00-00', '0000-00-00', 0, 'Pending', 7, '2022-03-16 13:27:46', '2022-03-16 13:27:46'),
(2, 1, '0000-00-00', '0000-00-00', 0, 'Pending', 1, '2022-05-06 08:54:12', '2022-05-06 08:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `rental_order_items`
--

CREATE TABLE `rental_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `fee` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `total_fee` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Account', 'web', 'Active', NULL, '2022-02-12 20:40:04', '2022-02-12 20:40:04'),
(2, 'Admin', 'web', 'Active', NULL, '2022-01-28 16:55:25', '2022-01-28 16:55:25'),
(3, 'Sales', 'web', 'Active', NULL, '2022-01-28 16:55:25', '2022-01-28 16:55:25'),
(4, 'Store', 'web', 'Active', NULL, '2022-02-11 16:00:37', '2022-02-11 16:00:37'),
(5, 'SuperAdmin', 'web', 'Active', NULL, '2022-04-14 10:24:58', '2022-04-14 10:24:58'),
(6, 'GeneralAdmin', 'web', 'Active', 1, '2022-05-21 17:45:42', '2022-05-21 19:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `discount` int(10) UNSIGNED NOT NULL,
  `vat` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL,
  `wallet` decimal(8,2) NOT NULL DEFAULT 0.00,
  `balance` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `customer_id`, `discount`, `vat`, `amount`, `paid`, `wallet`, `balance`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 0, 7000, 7000, '0.00', 0, 'Cash', 2, '2022-01-28 22:31:19', '2022-01-28 22:31:19'),
(2, 2, 1, 0, 0, 35000, 35000, '0.00', 0, 'Cash', 2, '2022-01-29 01:41:23', '2022-01-29 01:41:23'),
(3, 3, 1, 0, 0, 22000, 22000, '0.00', 0, 'Cash', 2, '2022-01-29 02:14:55', '2022-01-29 02:14:55'),
(4, 4, 1, 0, 0, 28000, 28000, '0.00', 0, 'Cash', 2, '2022-01-29 02:26:09', '2022-01-29 02:26:09'),
(5, 5, 1, 0, 0, 105000, 105000, '0.00', 0, 'Cash', 2, '2022-01-29 02:49:14', '2022-01-29 02:49:14'),
(6, 6, 1, 0, 0, 80000, 80000, '0.00', 0, 'Cash', 2, '2022-01-29 02:51:11', '2022-01-29 02:51:11'),
(7, 7, 1, 0, 0, 6000, 6000, '0.00', 0, 'Cash', 2, '2022-01-31 15:55:32', '2022-01-31 15:55:32'),
(8, 8, 1, 0, 0, 10000, 10000, '0.00', 0, 'Cash', 7, '2022-01-31 16:16:12', '2022-01-31 16:16:12'),
(9, 9, 2, 0, 0, 62500, 62500, '0.00', 0, 'Cash', 7, '2022-01-31 16:46:16', '2022-01-31 16:46:16'),
(10, 11, 2, 0, 0, 14000, 14000, '0.00', 0, 'Cash', 2, '2022-02-08 19:33:30', '2022-02-08 19:33:30'),
(11, 12, 1, 0, 0, 42500, 42500, '0.00', 0, 'Cash', 2, '2022-02-08 19:37:45', '2022-02-08 19:37:45'),
(12, 13, 2, 0, 0, 100000, 100000, '0.00', 0, 'Cash', 2, '2022-02-08 19:47:40', '2022-02-08 19:47:40'),
(13, 14, 2, 0, 0, 900000, 900000, '0.00', 0, 'Cash', 2, '2022-02-08 21:41:04', '2022-02-08 21:41:04'),
(14, 15, 3, 0, 0, 6000, 6000, '0.00', 0, 'Cash', 2, '2022-02-09 18:47:44', '2022-02-09 18:47:44'),
(15, 16, 3, 0, 0, 4000, 4000, '0.00', 0, 'Cash', 9, '2022-02-11 15:53:53', '2022-02-11 15:53:53'),
(16, 19, 1, 0, 0, 4500, 4500, '0.00', 0, 'Cash', 8, '2022-02-12 19:27:37', '2022-02-12 19:27:37'),
(17, 22, 1, 0, 0, 10000, 10000, '0.00', 0, 'Cash', 7, '2022-02-20 11:46:58', '2022-02-25 07:41:05'),
(18, 23, 2, 0, 0, 12000, 0, '0.00', 12000, 'Credit', 7, '2022-02-20 11:47:42', '2022-02-20 11:47:42'),
(19, 24, 1, 0, 0, 8000, 0, '0.00', 8000, 'Credit', 7, '2022-02-20 11:48:49', '2022-02-20 11:48:49'),
(20, 25, 2, 0, 0, 2500, 0, '0.00', 2500, 'Credit', 7, '2022-02-20 22:38:26', '2022-02-20 22:38:26'),
(21, 29, 2, 0, 0, 2000, 0, '0.00', 2000, 'Credit', 7, '2022-02-20 22:39:25', '2022-02-20 22:39:25'),
(22, 30, 2, 0, 0, 2000, 0, '0.00', 2000, 'Credit', 7, '2022-02-20 22:53:23', '2022-02-20 22:53:23'),
(23, 31, 2, 0, 0, 4000, 0, '0.00', 4000, 'Credit', 7, '2022-02-20 22:59:16', '2022-02-20 22:59:16'),
(24, 32, 2, 0, 0, 2000, 0, '0.00', 2000, 'Credit', 7, '2022-02-20 23:05:40', '2022-02-20 23:05:40'),
(25, 33, 2, 0, 0, 12000, 0, '0.00', 12000, 'Credit', 7, '2022-02-21 08:03:50', '2022-02-21 08:03:50'),
(26, 34, 2, 0, 0, 15600, 0, '0.00', 15600, 'Credit', 7, '2022-02-21 08:32:41', '2022-02-21 08:32:41'),
(27, 35, 2, 0, 0, 9000, 0, '0.00', 9000, 'Credit', 7, '2022-02-21 08:48:16', '2022-02-21 08:48:16'),
(28, 36, 2, 0, 0, 5000, 0, '0.00', 5000, 'Credit', 7, '2022-02-21 08:56:08', '2022-02-21 08:56:08'),
(29, 37, 2, 0, 0, 13000, 0, '0.00', 13000, 'Credit', 7, '2022-02-21 09:00:52', '2022-02-21 09:00:52'),
(30, 38, 2, 0, 0, 24480, 0, '0.00', 24480, 'Credit', 7, '2022-02-21 09:19:59', '2022-02-21 09:19:59'),
(31, 40, 2, 0, 0, 52800, 0, '0.00', 52800, 'Credit', 7, '2022-02-21 09:33:18', '2022-02-21 09:33:18'),
(32, 41, 2, 0, 0, 14400, 0, '0.00', 14400, 'Credit', 7, '2022-02-21 09:35:37', '2022-02-21 09:35:37'),
(33, 42, 2, 0, 0, 31200, 0, '0.00', 31200, 'Credit', 7, '2022-02-21 09:36:38', '2022-02-21 09:36:38'),
(34, 43, 2, 0, 0, 12000, 0, '0.00', 12000, 'Credit', 7, '2022-02-21 09:37:44', '2022-02-21 09:37:44'),
(35, 44, 2, 0, 0, 24000, 0, '0.00', 24000, 'Credit', 7, '2022-02-21 09:41:46', '2022-02-21 09:41:46'),
(36, 45, 2, 0, 0, 24000, 0, '0.00', 24000, 'Credit', 7, '2022-02-21 09:42:59', '2022-02-21 09:42:59'),
(37, 46, 2, 0, 0, 24000, 0, '0.00', 24000, 'Credit', 7, '2022-02-21 09:47:43', '2022-02-21 09:47:43'),
(38, 47, 2, 0, 0, 48000, 0, '0.00', 48000, 'Credit', 7, '2022-02-21 09:48:28', '2022-02-21 09:48:28'),
(39, 48, 2, 0, 0, 24000, 0, '0.00', 24000, 'Credit', 7, '2022-02-21 09:51:13', '2022-02-21 09:51:13'),
(40, 49, 2, 0, 0, 48000, 0, '0.00', 48000, 'Credit', 7, '2022-02-21 09:53:11', '2022-02-21 09:53:11'),
(41, 50, 2, 0, 0, 12000, 0, '0.00', 12000, 'Credit', 7, '2022-02-21 09:54:52', '2022-02-21 09:54:52'),
(42, 51, 2, 0, 0, 12000, 0, '0.00', 12000, 'Credit', 7, '2022-02-21 09:55:48', '2022-02-21 09:55:48'),
(43, 52, 2, 0, 0, 24000, 0, '0.00', 24000, 'Credit', 7, '2022-02-21 09:58:19', '2022-02-21 09:58:19'),
(44, 53, 2, 0, 0, 48000, 0, '0.00', 48000, 'Credit', 7, '2022-02-21 09:59:57', '2022-02-21 09:59:57'),
(45, 54, 2, 0, 0, 24000, 0, '0.00', 24000, 'Credit', 7, '2022-02-21 10:01:26', '2022-02-21 10:01:26'),
(46, 55, 2, 0, 0, 48000, 0, '0.00', 48000, 'Credit', 7, '2022-02-21 10:02:12', '2022-02-21 10:02:12'),
(47, 56, 2, 0, 0, 48000, 0, '0.00', 48000, 'Credit', 7, '2022-02-21 10:02:28', '2022-02-21 10:02:28'),
(48, 57, 2, 0, 0, 68000, 0, '0.00', 68000, 'Credit', 7, '2022-02-21 10:26:06', '2022-02-21 10:26:06'),
(49, 58, 2, 0, 0, 33120, 0, '0.00', 33120, 'Credit', 7, '2022-02-21 10:27:16', '2022-02-21 10:27:16'),
(50, 59, 2, 0, 0, 38320, 0, '0.00', 38320, 'Credit', 7, '2022-02-21 10:29:21', '2022-02-21 10:29:21'),
(51, 60, 2, 0, 0, 34320, 0, '0.00', 34320, 'Credit', 7, '2022-02-21 10:31:14', '2022-02-21 10:31:14'),
(52, 61, 2, 0, 0, 34320, 0, '0.00', 34320, 'Credit', 7, '2022-02-21 10:32:20', '2022-02-21 10:32:20'),
(53, 62, 2, 0, 0, 37440, 0, '0.00', 37440, 'Credit', 7, '2022-02-21 11:04:50', '2022-02-21 11:04:50'),
(54, 63, 2, 0, 0, 60000, 0, '0.00', 60000, 'Credit', 7, '2022-02-21 11:32:57', '2022-02-21 11:32:57'),
(55, 39, 1, 0, 0, 72040, 72040, '0.00', 0, 'Cash', 7, '2022-02-22 07:40:29', '2022-02-22 07:40:29'),
(56, 64, 2, 0, 0, 303170, 303170, '0.00', 0, 'Installment', 7, '2022-02-22 07:40:45', '2022-02-22 07:40:45'),
(57, 67, 4, 0, 0, 12000, 12000, '0.00', 0, 'Cash', 7, '2022-02-23 08:20:58', '2022-02-23 08:20:58'),
(58, 66, 3, 0, 0, 12000, 12000, '0.00', 0, 'Cash', 7, '2022-02-23 08:21:14', '2022-02-23 08:21:14'),
(59, 65, 1, 0, 0, 2000, 2000, '0.00', 0, 'Cash', 7, '2022-02-23 08:28:42', '2022-02-23 08:28:42'),
(60, 68, 3, 0, 0, 12000, 0, '0.00', 12000, 'Credit', 7, '2022-02-23 08:35:38', '2022-02-23 08:35:38'),
(61, 69, 4, 0, 0, 14400, 14400, '0.00', 0, 'Cash', 7, '2022-02-24 07:46:51', '2022-02-24 07:46:51'),
(62, 75, 5, 0, 0, 0, 0, '0.00', 0, 'Pay via E-wallet', 7, '2022-03-16 08:00:43', '2022-03-16 08:00:43'),
(63, 80, 3, 0, 0, 2160, 2160, '0.00', 0, 'Cash', 7, '2022-03-16 10:24:17', '2022-03-16 10:24:17'),
(64, 78, 1, 0, 0, 2400, 2400, '0.00', 0, 'Cash', 7, '2022-03-18 09:29:00', '2022-03-18 09:29:00'),
(65, 81, 1, 0, 0, 255, 255, '0.00', 0, 'Cash', 7, '2022-03-18 13:48:36', '2022-03-18 13:48:36'),
(66, 83, 3, 0, 0, 15350, 15350, '0.00', 0, 'Cash', 7, '2022-03-18 13:54:43', '2022-03-18 13:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CPEt8hZwH3ZVKuhHD8ZPClZNtmk22AIeILHJOLUw', 1, '192.168.43.42', 'Mozilla/5.0 (Linux; Android 10; SM-A013G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Mobile Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZ1lkQWtDbnJhVVNjRWdQbTJaOWtaZ0RmT3lGbUVLN0l4YW9oQ282SSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwOi8vMTkyLjE2OC40My4yMzM6ODAwMC91c2VyLXJlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEVJRGhjb1VTSjQ4NFlwbWJsOU5tQy55NFVPU1BTNHoyelRMVlVjdnplTGk0VS44TDd0TDRTIjt9', 1655163269),
('GBvogDzztp90StP0qVD8Ic6bOK4jnUh0f7P6XdQq', NULL, '192.168.43.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWElpelZiS05xdGUwRktpekNVM3BlUnFtSHd2MXlrelB0TDlDd0VSVyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMjoiaHR0cDovLzE5Mi4xNjguNDMuMjMzOjgwMDAvdXNlcnMiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cDovLzE5Mi4xNjguNDMuMjMzOjgwMDAvdXNlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1655156281),
('U4F6qjdg0zo1p91CRwxoKvpjx10fpEAqxr5qSlvb', NULL, '192.168.43.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzlsVE5wQUtCNFBVbkpWNFk0UjJOQ1NrMWNDOVFHQ0NrSnY3RWRPMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xOTIuMTY4LjQzLjIzMzo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1655162565),
('uBwHScrsGWHnBT0ElBeZCxxLIU0ZSpi5Ivq8cTKy', 1, '192.168.43.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibjU3SFRNcG9DQmFHUXZJTjdlOUpFbVR2ckN3MkN3aktKOGZURUtuTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMyOiJodHRwOi8vMTkyLjE2OC40My4yMzM6ODAwMC9hZG1pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRFSURoY29VU0o0ODRZcG1ibDlObUMueTRVT1NQUzR6MnpUTFZVY3Z6ZUxpNFUuOEw3dEw0UyI7fQ==', 1655163286),
('vo9vDtkOlaJipNeC6rQnZQo2QJBtmXuNNbrtlj6r', NULL, '192.168.43.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSjJLQnlxUXhwZWpMMlYwVldHRURxWldFT283UFRCSnRTUldUWjVQNCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MDoiaHR0cDovLzE5Mi4xNjguNDMuMjMzOjgwMDAvdXNlci1yZWdpc3RlciI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwOi8vMTkyLjE2OC40My4yMzM6ODAwMC91c2VyLXJlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1655156428);

-- --------------------------------------------------------

--
-- Table structure for table `set_indicators`
--

CREATE TABLE `set_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qns` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `set_indicators`
--

INSERT INTO `set_indicators` (`id`, `qns`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(20, 'Qn1', 'Active', 1, '2022-05-06 08:45:23', '2022-05-06 08:45:23'),
(21, 'Qn2', 'Active', 1, '2022-05-06 12:41:44', '2022-05-06 12:41:44'),
(22, 'Qn3', 'Active', 1, '2022-05-07 11:39:21', '2022-05-07 11:39:21'),
(27, 'Sweeping room', 'Active', 1, '2022-06-11 19:04:46', '2022-06-11 19:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_rank` int(10) UNSIGNED NOT NULL,
  `room_no` int(10) UNSIGNED NOT NULL,
  `location_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `site_name`, `site_category`, `site_rank`, `room_no`, `location_name`, `phone`, `email`, `site_description`, `photo`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Hakuna Matata', 'Hakuna Matata', 4, 73, 'Cameron Harrington', '18', 'pomicu@mailinator.com', NULL, NULL, 'Active', 1, '2022-04-14 19:37:40', '2022-06-05 10:18:57'),
(2, 'Serengeti Camp site', 'Camp Site', 3, 98, 'Fletcher Dotson', '84', 'kotasu@mailinator.com', NULL, NULL, 'Active', 1, '2022-04-14 19:41:50', '2022-04-16 14:13:28'),
(3, 'xx', 'Hotel', 3, 8888, 's', '222', NULL, NULL, NULL, 'Active', 1, '2022-06-07 11:20:46', '2022-06-07 11:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `stockings`
--

CREATE TABLE `stockings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `current_qty` decimal(10,2) UNSIGNED NOT NULL,
  `from` decimal(10,2) UNSIGNED NOT NULL,
  `to` decimal(10,2) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stockings`
--

INSERT INTO `stockings` (`id`, `item_id`, `qty`, `current_qty`, `from`, `to`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 12, '-8.00', '10.00', '0.00', '5.00', 'Issue', 11, '2022-03-05 00:47:49', '2022-03-05 00:47:49'),
(7, 3, '-3.00', '56.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 00:48:25', '2022-03-05 00:48:25'),
(8, 12, '-2.00', '12.00', '0.00', '5.00', 'Issue', 11, '2022-03-05 00:49:03', '2022-03-05 00:49:03'),
(9, 3, '-2.00', '58.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 00:49:28', '2022-03-05 00:49:28'),
(10, 3, '-3.00', '61.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 00:50:22', '2022-03-05 00:50:22'),
(11, 3, '-4.00', '65.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 00:51:09', '2022-03-05 00:51:09'),
(12, 3, '-2.00', '67.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 00:51:50', '2022-03-05 00:51:50'),
(13, 3, '-2.00', '69.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 00:52:29', '2022-03-05 00:52:29'),
(14, 3, '-2.00', '71.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 00:52:51', '2022-03-05 00:52:51'),
(15, 3, '-3.00', '74.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 00:53:18', '2022-03-05 00:53:18'),
(16, 12, '-7.00', '19.00', '0.00', '5.00', 'Issue', 11, '2022-03-05 00:53:55', '2022-03-05 00:53:55'),
(17, 3, '-3.00', '77.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 00:54:31', '2022-03-05 00:54:31'),
(18, 12, '-6.00', '6.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 01:09:48', '2022-03-05 01:09:48'),
(19, 12, '-3.00', '9.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 01:09:55', '2022-03-05 01:09:55'),
(20, 12, '-2.00', '11.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 01:29:48', '2022-03-05 01:29:48'),
(21, 12, '-2.00', '13.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 01:30:20', '2022-03-05 01:30:20'),
(22, 12, '-2.00', '15.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 01:38:25', '2022-03-05 01:38:25'),
(23, 12, '-2.00', '17.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 01:38:25', '2022-03-05 01:38:25'),
(24, 12, '-3.00', '20.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 01:38:44', '2022-03-05 01:38:44'),
(25, 12, '-6.00', '26.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 01:40:17', '2022-03-05 01:40:17'),
(26, 12, '-5.00', '31.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 01:47:12', '2022-03-05 01:47:12'),
(27, 12, '-9.00', '121.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 01:48:44', '2022-03-05 01:48:44'),
(28, 12, '-4.00', '125.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 01:49:58', '2022-03-05 01:49:58'),
(29, 12, '5.00', '225.00', '3.00', '24.00', 'Returned', 7, '2022-03-05 02:00:34', '2022-03-05 02:00:34'),
(30, 12, '5.00', '220.00', '3.00', '24.00', 'Returned', 7, '2022-03-05 02:01:07', '2022-03-05 02:01:07'),
(31, 12, '5.00', '215.00', '3.00', '24.00', 'Returned', 7, '2022-03-05 02:01:54', '2022-03-05 02:01:54'),
(32, 12, '-5.00', '210.00', '0.00', '1.00', 'Issue', 7, '2022-03-05 02:32:26', '2022-03-05 02:32:26'),
(33, 12, '-9.00', '225.00', '0.00', '3.00', 'Issue', 7, '2022-03-05 02:35:43', '2022-03-05 02:35:43'),
(34, 12, '-5.00', '200.00', '0.00', '1.00', 'Issue', 7, '2022-03-05 02:37:31', '2022-03-05 02:37:31'),
(35, 12, '-4.00', '199.00', '0.00', '1.00', 'Issue', 7, '2022-03-05 02:39:47', '2022-03-05 02:39:47'),
(36, 12, '-4.00', '199.00', '0.00', '1.00', 'Issue', 7, '2022-03-05 02:47:57', '2022-03-05 02:47:57'),
(37, 12, '-5.00', '130.00', '0.00', '2.00', 'Issue', 7, '2022-03-05 02:49:52', '2022-03-05 02:49:52'),
(38, 12, '-5.00', '230.00', '0.00', '3.00', 'Issue', 7, '2022-03-05 02:51:17', '2022-03-05 02:51:17'),
(39, 12, '-1.00', '1.00', '0.00', '2.00', 'Issue', 11, '2022-03-05 12:01:26', '2022-03-05 12:01:26'),
(40, 8, '-2.00', '2.00', '0.00', '37.00', 'Issue', 11, '2022-03-06 08:51:45', '2022-03-06 08:51:45'),
(41, 3, '-2.00', '2.00', '0.00', '33.00', 'Issue', 11, '2022-03-06 08:52:26', '2022-03-06 08:52:26'),
(42, 3, '-2.00', '2.00', '0.00', '33.00', 'Issue', 11, '2022-03-06 08:53:54', '2022-03-06 08:53:54'),
(43, 3, '-2.00', '2.00', '0.00', '33.00', 'Issue', 11, '2022-03-06 09:00:43', '2022-03-06 09:00:43'),
(44, 7, '-2.00', '2.00', '0.00', '39.00', 'Issue', 11, '2022-03-06 09:03:56', '2022-03-06 09:03:56'),
(45, 7, '-2.00', '2.00', '0.00', '40.00', 'Issue', 11, '2022-03-06 09:05:26', '2022-03-06 09:05:26'),
(46, 7, '-1.00', '1.00', '0.00', '41.00', 'Issue', 11, '2022-03-06 09:09:53', '2022-03-06 09:09:53'),
(47, 8, '-1.00', '1.00', '0.00', '42.00', 'Issue', 11, '2022-03-06 09:10:34', '2022-03-06 09:10:34'),
(48, 8, '-1.00', '1.00', '0.00', '43.00', 'Issue', 11, '2022-03-06 09:11:14', '2022-03-06 09:11:14'),
(49, 7, '-2.00', '2.00', '0.00', '44.00', 'Issue', 11, '2022-03-06 09:18:40', '2022-03-06 09:18:40'),
(50, 7, '-1.00', '1.00', '0.00', '45.00', 'Issue', 11, '2022-03-06 09:19:25', '2022-03-06 09:19:25'),
(51, 7, '-1.00', '1.00', '0.00', '46.00', 'Issue', 11, '2022-03-06 09:23:43', '2022-03-06 09:23:43'),
(52, 7, '-1.00', '1.00', '0.00', '46.00', 'Issue', 11, '2022-03-06 09:24:11', '2022-03-06 09:24:11'),
(53, 7, '-1.00', '1.00', '0.00', '46.00', 'Issue', 11, '2022-03-06 09:24:23', '2022-03-06 09:24:23'),
(54, 8, '-2.00', '2.00', '0.00', '48.00', 'Issue', 11, '2022-03-06 09:25:34', '2022-03-06 09:25:34'),
(55, 8, '-2.00', '2.00', '0.00', '48.00', 'Issue', 11, '2022-03-06 09:25:53', '2022-03-06 09:25:53'),
(56, 7, '-1.00', '1.00', '0.00', '47.00', 'Issue', 11, '2022-03-06 09:26:05', '2022-03-06 09:26:05'),
(57, 8, '-1.00', '1.00', '0.00', '49.00', 'Issue', 11, '2022-03-06 09:27:26', '2022-03-06 09:27:26'),
(58, 7, '-1.00', '1.00', '0.00', '50.00', 'Issue', 11, '2022-03-06 09:28:00', '2022-03-06 09:28:00'),
(59, 7, '-2.00', '2.00', '0.00', '2.00', 'Issue', 11, '2022-03-06 09:31:52', '2022-03-06 09:31:52'),
(60, 7, '-4.00', '4.00', '0.00', '2.00', 'Issue', 11, '2022-03-06 09:33:20', '2022-03-06 09:33:20'),
(61, 10, '-2.00', '2.00', '0.00', '1.00', 'Issue', 11, '2022-03-06 09:34:33', '2022-03-06 09:34:33'),
(62, 3, '-1.00', '1.00', '0.00', '1.00', 'Issue', 11, '2022-03-06 09:34:45', '2022-03-06 09:34:45'),
(63, 12, '-5.00', '5.00', '0.00', '1.00', 'Issue', 7, '2022-03-06 09:36:08', '2022-03-06 09:36:08'),
(64, 7, '-1.00', '1.00', '0.00', '2.00', 'Issue', 11, '2022-03-06 09:55:47', '2022-03-06 09:55:47'),
(65, 7, '-2.00', '2.00', '0.00', '2.00', 'Issue', 11, '2022-03-06 09:59:08', '2022-03-06 09:59:08'),
(66, 7, '-1.00', '1.00', '0.00', '2.00', 'Issue', 11, '2022-03-06 09:59:48', '2022-03-06 09:59:48'),
(67, 7, '-1.00', '1.00', '0.00', '2.00', 'Issue', 7, '2022-03-06 11:42:33', '2022-03-06 11:42:33'),
(68, 10, '8.00', '119.00', '10.00', '18.00', 'Returned', 7, '2022-03-06 18:16:12', '2022-03-06 18:16:12'),
(69, 10, '9.00', '110.00', '10.00', '18.00', 'Returned', 7, '2022-03-06 18:17:25', '2022-03-06 18:17:25'),
(70, 10, '2.00', '108.00', '10.00', '18.00', 'Returned', 7, '2022-03-06 18:18:08', '2022-03-06 18:18:08'),
(71, 10, '8.00', '100.00', '10.00', '18.00', 'Returned', 7, '2022-03-06 18:19:09', '2022-03-06 18:19:09'),
(72, 10, '8.00', '92.00', '10.00', '18.00', 'Returned', 7, '2022-03-06 18:21:16', '2022-03-06 18:21:16'),
(73, 10, '5.00', '87.00', '10.00', '18.00', 'Returned', 7, '2022-03-06 18:21:56', '2022-03-06 18:21:56'),
(74, 10, '2.00', '85.00', '10.00', '18.00', 'Returned', 7, '2022-03-06 18:26:45', '2022-03-06 18:26:45'),
(75, 10, '3.00', '82.00', '10.00', '18.00', 'Returned', 7, '2022-03-06 18:27:08', '2022-03-06 18:27:08'),
(76, 10, '2.00', '26.00', '3.00', '18.00', 'Returned', 7, '2022-03-06 18:47:49', '2022-03-06 18:47:49'),
(77, 10, '9.00', '16.00', '3.00', '18.00', 'Returned', 7, '2022-03-06 18:51:29', '2022-03-06 18:51:29'),
(78, 12, '5.00', '110.00', '3.00', '24.00', 'Returned', 7, '2022-03-06 18:52:20', '2022-03-06 18:52:20'),
(79, 12, '2.00', '108.00', '3.00', '24.00', 'Returned', 7, '2022-03-06 18:53:18', '2022-03-06 18:53:18'),
(80, 12, '0.00', '108.00', '3.00', '5.00', 'Sold', 7, '2022-03-16 08:00:43', '2022-03-16 08:00:43'),
(81, 13, '5.00', '5.00', '3.00', '1.00', 'Purchsed', 11, '2022-03-16 09:15:41', '2022-03-16 09:15:41'),
(82, 10, '9.00', '7.00', '3.00', '18.00', 'Returned', 7, '2022-03-16 09:32:45', '2022-03-16 09:32:45'),
(83, 13, '-4.00', '4.00', '0.00', '3.00', 'Issue', 7, '2022-03-16 09:34:23', '2022-03-16 09:34:23'),
(84, 3, '0.00', '19.00', '3.00', '3.00', 'Sold', 7, '2022-03-16 10:24:17', '2022-03-16 10:24:17'),
(85, 3, '1.00', '18.00', '3.00', '3.00', 'Sold', 7, '2022-03-16 10:24:18', '2022-03-16 10:24:18'),
(86, 3, '0.10', '17.98', '3.00', '1.00', 'Sold', 7, '2022-03-18 09:29:00', '2022-03-18 09:29:00'),
(87, 3, '0.42', '17.56', '3.00', '1.00', 'Sold', 7, '2022-03-18 09:29:00', '2022-03-18 09:29:00'),
(88, 3, '0.58', '16.98', '3.00', '1.00', 'Sold', 7, '2022-03-18 09:29:00', '2022-03-18 09:29:00'),
(89, 3, '0.10', '16.88', '3.00', '1.00', 'Sold', 7, '2022-03-18 09:29:00', '2022-03-18 09:29:00'),
(90, 3, '0.04', '16.84', '3.00', '1.00', 'Sold', 7, '2022-03-18 13:48:37', '2022-03-18 13:48:37'),
(91, 3, '0.05', '16.79', '3.00', '1.00', 'Sold', 7, '2022-03-18 13:48:37', '2022-03-18 13:48:37'),
(92, 4, '0.03', '0.97', '3.00', '1.00', 'Sold', 7, '2022-03-18 13:48:37', '2022-03-18 13:48:37'),
(93, 11, '0.05', '24.23', '3.00', '3.00', 'Sold', 7, '2022-03-18 13:54:43', '2022-03-18 13:54:43'),
(94, 13, '0.99', '3.01', '3.00', '3.00', 'Sold', 7, '2022-03-18 13:54:43', '2022-03-18 13:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `selling_price` int(10) UNSIGNED NOT NULL,
  `stock_alert` int(11) NOT NULL DEFAULT 0,
  `vat` double(8,2) NOT NULL DEFAULT 0.00,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `item`, `unit`, `material_code`, `price`, `selling_price`, `stock_alert`, `vat`, `descriptions`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'winner', 'pcs', '01', 3300, 3500, 10, 0.00, NULL, 1, '2022-01-28 22:15:53', '2022-01-28 22:15:53'),
(3, 'kitunguu', 'pcs', '02', 1500, 2000, 5, 0.00, NULL, 1, '2022-01-29 02:06:28', '2022-01-29 02:06:28'),
(4, 'TEstingnbv', NULL, NULL, 0, 0, 0, 0.00, NULL, 1, '2022-01-31 16:22:30', '2022-04-14 11:47:07'),
(5, 'maji0', 'pcs', '03', 2000, 2500, 10, 0.00, NULL, 1, '2022-01-31 16:22:30', '2022-01-31 16:22:30'),
(6, 'maji0', 'pcs', '03', 2000, 2500, 10, 0.00, NULL, 1, '2022-01-31 16:22:31', '2022-01-31 16:22:31'),
(7, 'oryx', 'pcs', '04', 35000, 45000, 5, 0.00, NULL, 1, '2022-02-08 21:33:51', '2022-02-08 21:33:51'),
(9, 'Keki', 'pcs', 'Tamu', 500, 600, 1000, 0.00, NULL, 1, '2022-02-19 15:50:17', '2022-02-19 15:50:17'),
(10, 'Juice', 'pcs', 'Azam', 600, 1000, 100, 0.00, NULL, 1, '2022-02-19 15:51:28', '2022-02-20 22:47:43'),
(11, 'Bunner', 'meter', '003', 200000, 10000, 5, 0.00, NULL, 1, '2022-02-21 09:03:41', '2022-02-21 09:03:41'),
(12, 'Bunner2', 'meter', '0004', 8000, 12000, 5, 0.00, NULL, 1, '2022-02-21 09:15:32', '2022-02-21 09:15:32'),
(13, 'Sticker 127', 'lt', '000', 10000, 15000, 2, 0.00, 'dd', 11, '2022-03-16 08:28:36', '2022-04-14 10:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `sub_stores`
--

CREATE TABLE `sub_stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse` int(10) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `current_qty` decimal(10,2) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_stores`
--

INSERT INTO `sub_stores` (`id`, `warehouse`, `warehouse_name`, `item_id`, `current_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 'Main warehouse', 1, '0.00', '2022-01-28 19:27:26', '2022-01-28 23:46:40'),
(2, 2, 'kilimo point', 1, '0.00', '2022-01-28 19:28:49', '2022-01-28 23:49:14'),
(3, 1, 'Main warehouse', 3, '44.00', '2022-01-28 23:08:08', '2022-03-06 09:34:45'),
(4, 2, 'kilimo point', 3, '50.00', '2022-01-28 23:12:39', '2022-02-12 16:29:50'),
(5, 3, 'ukerewe', 3, '16.79', '2022-01-31 13:13:25', '2022-03-18 13:48:37'),
(6, 1, 'Main warehouse', 4, '1.00', '2022-01-31 13:28:20', '2022-02-13 21:40:34'),
(7, 3, 'ukerewe', 4, '0.97', '2022-01-31 13:33:29', '2022-03-18 13:48:37'),
(8, 2, 'kilimo point', 4, '0.00', '2022-02-08 16:36:00', '2022-02-08 16:37:45'),
(9, 1, 'Main warehouse', 7, '77.00', '2022-02-08 18:36:11', '2022-03-06 11:42:33'),
(10, 2, 'kilimo point', 7, '11.00', '2022-02-08 18:36:54', '2022-03-06 11:42:33'),
(11, 1, 'Main warehouse', 8, '12.00', '2022-02-09 15:26:53', '2022-03-06 09:27:26'),
(12, 2, 'kilimo point', 8, '4.00', '2022-02-09 15:27:37', '2022-02-12 16:27:37'),
(13, 4, 'Masawee', 8, '1.00', '2022-02-11 12:52:01', '2022-02-11 12:55:05'),
(14, 4, 'Masawee', 4, '0.00', '2022-02-11 12:52:20', '2022-02-11 12:53:53'),
(15, 1, 'Main warehouse', 6, '40.00', '2022-02-12 16:29:26', '2022-02-12 16:29:59'),
(16, 2, 'kilimo point', 6, '60.00', '2022-02-12 16:29:59', '2022-02-12 16:29:59'),
(17, 1, 'Main warehouse', 9, '8.00', '2022-02-19 13:00:20', '2022-02-19 13:01:52'),
(18, 1, 'Main warehouse', 10, '210.00', '2022-02-19 13:00:20', '2022-03-16 09:32:45'),
(19, 2, 'kilimo point', 9, '2.00', '2022-02-19 13:01:52', '2022-02-19 13:01:52'),
(20, 3, 'ukerewe', 10, '6.87', '2022-02-20 19:48:34', '2022-03-16 09:32:45'),
(21, 1, 'Main warehouse', 11, '10.00', '2022-02-21 06:04:51', '2022-02-21 06:06:44'),
(22, 2, 'kilimo point', 11, '450.00', '2022-02-21 06:05:49', '2022-02-21 06:05:49'),
(23, 3, 'ukerewe', 11, '24.23', '2022-02-21 06:06:44', '2022-03-18 13:54:43'),
(24, 1, 'Main warehouse', 12, '157.00', '2022-02-21 06:16:04', '2022-03-06 18:53:18'),
(25, 3, 'ukerewe', 12, '107.65', '2022-02-21 06:18:39', '2022-03-16 08:00:43'),
(26, 2, 'kilimo point', 12, '1.00', '2022-03-05 12:01:26', '2022-03-05 12:01:26'),
(27, 39, 'Main warehouse', 7, '2.00', '2022-03-06 09:03:56', '2022-03-06 09:03:56'),
(28, 40, 'Main warehouse', 7, '2.00', '2022-03-06 09:05:27', '2022-03-06 09:05:27'),
(29, 41, 'Main warehouse', 7, '1.00', '2022-03-06 09:09:53', '2022-03-06 09:09:53'),
(30, 42, 'Main warehouse', 8, '1.00', '2022-03-06 09:10:35', '2022-03-06 09:10:35'),
(31, 43, 'Main warehouse', 8, '1.00', '2022-03-06 09:11:14', '2022-03-06 09:11:14'),
(32, 44, 'Main warehouse', 7, '2.00', '2022-03-06 09:18:40', '2022-03-06 09:18:40'),
(33, 45, 'Main warehouse', 7, '1.00', '2022-03-06 09:19:25', '2022-03-06 09:19:25'),
(34, 1, 'Main warehouse', 13, '1.00', '2022-03-16 09:15:41', '2022-03-16 09:34:23'),
(35, 3, 'Main warehouse', 13, '3.01', '2022-03-16 09:34:23', '2022-03-18 13:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(10) UNSIGNED NOT NULL,
  `tin` int(10) UNSIGNED NOT NULL,
  `vrn` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `contact_person`, `position`, `phone`, `tin`, `vrn`, `email`, `address`, `from`, `to`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'deka', 'jovin', 'Sales manager', 762937751, 117371212, 0, 'samoraklaisy@yahoo.com', 'Simanjiro', -100000000, -122400000, 1, '2022-01-28 22:20:47', '2022-02-24 08:20:54'),
(2, 'Race', 'Gracy', 'manager', 4294967295, 123123123, 0, 'grace@mooxa.om', 'Arusha', -4208000, -7008000, 1, '2022-01-29 01:51:55', '2022-02-21 09:18:08'),
(3, 'Coke', 'tadei', 'Sales manager', 98765442, 123123123, 0, 'singida@moxa.co.tz', 'null', -180000, -180000, 1, '2022-01-31 16:25:11', '2022-03-16 09:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_accounts`
--

CREATE TABLE `supplier_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_account_summaries`
--

CREATE TABLE `supplier_account_summaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_account_summaries`
--

INSERT INTO `supplier_account_summaries` (`id`, `supplier_id`, `from`, `to`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 0, -165000, 'Purchase', 1, '2022-01-28 22:27:26', '2022-01-28 22:27:26'),
(2, 1, -165000, 0, 'Final Payment', 1, '2022-01-28 22:36:00', '2022-01-28 22:36:00'),
(3, 2, 0, 0, 'Purchase', 1, '2022-01-29 02:08:08', '2022-01-29 02:08:08'),
(4, 2, 0, 0, 'Purchase', 1, '2022-01-29 02:11:44', '2022-01-29 02:11:44'),
(5, 1, 0, 0, 'Purchase', 1, '2022-01-31 15:49:02', '2022-01-31 15:49:02'),
(6, 3, 0, 0, 'Purchase', 1, '2022-01-31 16:28:20', '2022-01-31 16:28:20'),
(7, 2, 0, 0, 'Purchase', 1, '2022-02-08 19:34:50', '2022-02-08 19:34:50'),
(8, 2, 0, -350000, 'Purchase', 1, '2022-02-08 21:36:11', '2022-02-08 21:36:11'),
(9, 3, 0, 0, 'Purchase', 1, '2022-02-09 18:26:53', '2022-02-09 18:26:53'),
(10, 2, -350000, -4200000, 'Purchase', 1, '2022-02-12 19:29:26', '2022-02-12 19:29:26'),
(11, 3, 0, 0, 'Purchase', 8, '2022-02-14 00:40:34', '2022-02-14 00:40:34'),
(12, 3, 0, 0, 'Purchase', 1, '2022-02-19 16:00:20', '2022-02-19 16:00:20'),
(13, 3, 0, -180000, 'Purchase', 1, '2022-02-20 22:47:03', '2022-02-20 22:47:03'),
(14, 1, 0, -100000000, 'Purchase', 1, '2022-02-21 09:04:51', '2022-02-21 09:04:51'),
(15, 2, -4200000, -4208000, 'Purchase', 1, '2022-02-21 09:16:04', '2022-02-21 09:16:04'),
(16, 2, -4208000, -7008000, 'Purchase', 1, '2022-02-21 09:18:09', '2022-02-21 09:18:09'),
(17, 1, -100000000, -122400000, 'Purchase', 7, '2022-02-24 08:20:54', '2022-02-24 08:20:54'),
(18, 3, -180000, -180000, 'Purchase', 11, '2022-03-16 09:15:41', '2022-03-16 09:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_wallets`
--

CREATE TABLE `supplier_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `balance` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_wallets`
--

INSERT INTO `supplier_wallets` (`id`, `supplier_id`, `amount`, `balance`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 1, '2022-01-28 22:20:47', '2022-01-28 22:20:47'),
(2, 2, 0, 0, 1, '2022-01-29 01:51:55', '2022-01-29 01:51:55'),
(3, 3, 0, 0, 1, '2022-01-31 16:25:11', '2022-01-31 16:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_wallet_summuries`
--

CREATE TABLE `supplier_wallet_summuries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `wallet_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `wallet_amount` int(11) NOT NULL DEFAULT 0,
  `wallet_balance` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `department_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `site_id`, `department_id`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin vb', 1, '19', 'admin@moxa.co.tz', NULL, '$2y$10$EIDhcoUSJ484Ypmbl9NmC.y4UOSPS4z2zTLVUcvzeLi4U.8L7tL4S', NULL, NULL, 'TA5t5s56NAMPREAgVcjhA9vd4KKVIuokfz68IG5t18V5NPsAwORbdMjEjn6P', NULL, NULL, 1, 'Active', '2022-01-27 00:48:36', '2022-05-30 06:50:01'),
(2, 'bvcv', NULL, '19', 'admins@moxa.co.tz', NULL, 'sss', NULL, NULL, NULL, NULL, NULL, 1, 'Inactive', '2022-05-14 01:32:26', '2022-05-30 05:49:15'),
(3, 'Buruhani wawa', NULL, NULL, 'buruwawa@gmail.com', NULL, '$2y$10$EIDhcoUSJ484Ypmbl9NmC.y4UOSPS4z2zTLVUcvzeLi4U.8L7tL4S', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2022-02-20 11:06:32', '2022-02-20 11:06:32'),
(4, 'sale', 1, '21', 'buruwawa@yahoo.com', NULL, '$2y$10$EIDhcoUSJ484Ypmbl9NmC.y4UOSPS4z2zTLVUcvzeLi4U.8L7tL4S', NULL, NULL, NULL, NULL, NULL, 1, 'Active', '2022-01-31 16:07:21', '2022-05-30 07:02:36'),
(5, 'Shopkeeper', NULL, NULL, 'demo@moxa.co.tz', NULL, '$2y$10$EIDhcoUSJ484Ypmbl9NmC.y4UOSPS4z2zTLVUcvzeLi4U.8L7tL4S', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2022-02-03 14:53:04', '2022-02-03 14:53:04'),
(6, 'Thomas Ole Kiroya', 3, '18', 'olekiroya@gmail.com', NULL, '$2y$10$EIDhcoUSJ484Ypmbl9NmC.y4UOSPS4z2zTLVUcvzeLi4U.8L7tL4S', NULL, NULL, NULL, NULL, NULL, 1, 'Active', '2022-02-13 13:45:27', '2022-05-30 07:01:30'),
(11, 'vvv', 1, '21', 'adminv@moxa.co.tzs', NULL, '$2y$10$44iqdWs16L2Mn/3lTq3I8umXogKkS4nr.8ARAnOYPS1Ts9knE8X/K', NULL, NULL, NULL, NULL, NULL, 1, 'Active', '2022-05-14 04:48:41', '2022-05-30 06:55:43'),
(21, 'vbb', 3, '21', 'admivn@moxa.co.tz', NULL, '$2y$10$Cmm1QJuTdLkSqVmyLF898OzDUd53ZTdjl7KpCNuenHXNxAiA67tVK', NULL, NULL, NULL, NULL, NULL, 1, 'Active', '2022-05-29 18:45:30', '2022-05-30 06:48:36'),
(22, 'Aisha Mohamed', 1, '21', 'buru@gmail.com', NULL, '$2y$10$hG6VHuKMYzPoh7edsWxmXeFXBwq9qkODN5bu3W2Up9tH1DQMBnAe2', NULL, NULL, NULL, NULL, NULL, 1, 'Active', '2022-05-30 04:43:31', '2022-05-30 06:52:02'),
(23, 'Swedi Mohamedi', 3, '19', 'swedi@gmail.com', NULL, '$2y$10$rk9TMUxkv/VI8ndzn8RpxOA21TSoocQXtCHiwzYI5kyEitZFTZqG6', NULL, NULL, NULL, NULL, NULL, 1, 'Active', '2022-06-04 08:30:35', '2022-06-06 09:27:12'),
(24, 'dada', 1, '19', 'admin@gmail.comx', NULL, '$2y$10$YcZBP7Bw20BXsciGQNb7/OLwtPcc3VrXH1lbh.dyPeCA3uPcug6Rm', NULL, NULL, NULL, NULL, NULL, 1, 'Active', '2022-06-10 07:02:57', '2022-06-10 07:02:57'),
(27, 'baba', 1, '19', 'admin@mo.com', NULL, '$2y$10$zhtqZ0dCalYaQdaXFEO5/uPfgwK0VlhDyJdX97W5xL3Wv8.hrMAee', NULL, NULL, NULL, NULL, NULL, 1, 'Active', '2022-06-10 07:04:48', '2022-06-10 07:04:48'),
(28, 'bn', 1, '20', 'admin@nm.com', NULL, '$2y$10$izkVEDVlqKMfV0z4GCN5nOI3M2KMmCyAhyM0PQbivc8.QzMtA7ywC', NULL, NULL, NULL, NULL, NULL, 1, 'Active', '2022-06-10 07:22:00', '2022-06-10 07:22:00'),
(29, 'Nurain', 1, '20', 'vb@gmail.com', NULL, '$2y$10$Ep1jAoXe4m/luNmThPWnuOL5rZLzGuBiKGJ/IHyBaGLHlKR//.sjy', NULL, NULL, NULL, NULL, NULL, 1, 'Active', '2022-06-11 09:28:15', '2022-06-11 09:28:15'),
(30, 'Testing', 2, '20', 'test@moxa.co.tz', NULL, '$2y$10$agoLHpYVfqaeTV60YthB9uIYghUsO3L36DNqV.Rp.2PjaFRjlu1Ci', NULL, NULL, NULL, NULL, NULL, 1, 'Active', '2022-06-13 12:48:52', '2022-06-13 12:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_activities`
--

CREATE TABLE `user_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sys_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activities`
--

INSERT INTO `user_activities` (`id`, `sys_user_id`, `activity_id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2', '1', 'Active', 1, '2022-05-22 19:26:32', '2022-05-22 19:26:32'),
(2, '1', '5', 'Active', 1, '2022-05-22 19:26:51', '2022-05-22 19:26:51'),
(3, '1', '6', 'Active', 1, '2022-05-22 19:26:51', '2022-05-22 19:26:51'),
(4, '2', '5', 'Active', 1, '2022-05-22 19:26:51', '2022-05-22 19:26:51'),
(5, '2', '6', 'Active', 1, '2022-05-22 19:26:52', '2022-05-22 19:26:52'),
(6, '5', '1', 'Active', 1, '2022-05-27 04:59:50', '2022-05-27 04:59:50'),
(7, '5', '3', 'Active', 1, '2022-05-27 04:59:50', '2022-05-27 04:59:50'),
(8, '5', '5', 'Active', 1, '2022-05-27 04:59:50', '2022-05-27 04:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_registers`
--

CREATE TABLE `user_registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sys_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `sys_user_id`, `role_id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Active', 1, '2022-05-27 08:36:39', '2022-05-27 08:36:39'),
(2, '1', '2', 'Active', 1, '2022-05-27 08:36:39', '2022-05-27 08:36:39'),
(3, '5', '1', 'Active', 1, '2022-05-27 08:37:04', '2022-05-27 08:37:04'),
(4, '5', '3', 'Active', 1, '2022-05-27 08:37:04', '2022-05-27 08:37:04'),
(5, '5', '5', 'Active', 1, '2022-05-27 08:37:04', '2022-05-27 08:37:04'),
(6, '5', '9', 'Active', 1, '2022-05-27 08:37:04', '2022-05-27 08:37:04'),
(7, '11', '1', 'Active', 1, '2022-05-27 08:37:04', '2022-05-27 08:37:04'),
(8, '11', '3', 'Active', 1, '2022-05-27 08:37:04', '2022-06-06 22:08:37'),
(9, '11', '5', 'Inactive', 1, '2022-05-27 08:37:04', '2022-06-06 21:07:42'),
(10, '11', '4', 'Inactive', 1, '2022-05-27 08:37:04', '2022-06-06 21:07:26'),
(11, '2', '1', 'Inactive', 1, '2022-05-27 08:50:23', '2022-06-06 20:54:38'),
(12, '2', '2', 'Active', 1, '2022-05-27 08:50:23', '2022-05-27 08:50:23'),
(13, '2', '3', 'Active', 1, '2022-05-27 08:50:23', '2022-05-27 08:50:23'),
(14, '2', '4', 'Active', 1, '2022-05-27 08:50:23', '2022-05-27 08:50:23'),
(15, '3', '1', 'Active', 1, '2022-05-27 08:50:23', '2022-05-27 08:50:23'),
(16, '3', '2', 'Active', 1, '2022-05-27 08:50:24', '2022-05-27 08:50:24'),
(17, '3', '3', 'Active', 1, '2022-05-27 08:50:24', '2022-05-27 08:50:24'),
(18, '3', '4', 'Active', 1, '2022-05-27 08:50:24', '2022-05-27 08:50:24'),
(19, '21', '3', 'Active', 1, '2022-06-06 20:34:11', '2022-06-06 20:34:11'),
(20, '21', '6', 'Active', 1, '2022-06-06 20:34:11', '2022-06-06 20:34:11'),
(21, '11', '2', 'Active', 1, '2022-06-06 22:11:16', '2022-06-06 22:11:16'),
(22, '23', '2', 'Active', 1, '2022-06-12 21:20:43', '2022-06-12 21:20:43'),
(23, '23', '5', 'Active', 1, '2022-06-12 21:21:21', '2022-06-12 21:21:21'),
(24, '23', '6', 'Active', 1, '2022-06-12 22:08:43', '2022-06-12 22:08:43'),
(25, '30', '5', 'Active', 1, '2022-06-13 12:51:54', '2022-06-13 12:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_sites`
--

CREATE TABLE `user_sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sys_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_sites`
--

INSERT INTO `user_sites` (`id`, `sys_user_id`, `site_id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '28', '2', 'Active', 1, '2022-06-10 07:04:48', '2022-06-10 07:04:48'),
(2, '28', '1', 'Active', 1, '2022-06-10 07:22:00', '2022-06-10 07:22:00'),
(3, '29', '1', 'Active', 1, '2022-06-11 09:28:15', '2022-06-11 09:28:15'),
(5, '11', '1', 'Inactive', 1, '2022-06-11 17:05:43', '2022-06-13 23:26:02'),
(6, '11', '2', 'Active', 1, '2022-06-11 17:06:13', '2022-06-11 18:57:18'),
(7, '11', '3', 'Inactive', 1, '2022-06-11 17:06:22', '2022-06-11 18:48:02'),
(8, '21', '2', 'Active', 1, '2022-06-11 17:46:03', '2022-06-11 17:46:03'),
(9, '1', '1', 'Active', 1, '2022-06-11 17:59:16', '2022-06-11 17:59:16'),
(10, '23', '2', 'Active', 1, '2022-06-11 18:50:45', '2022-06-12 21:25:37'),
(11, '23', '1', 'Active', 1, '2022-06-12 21:21:49', '2022-06-12 21:21:49'),
(12, '30', '2', 'Active', 1, '2022-06-13 12:48:52', '2022-06-13 12:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_warehouse` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `warehouse`, `location`, `descriptions`, `main_warehouse`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Main warehouse', 'HQ', 'All items from supplier is stored here before issuing to the shop', 1, 1, '2022-01-28 16:55:25', '2022-01-28 16:55:25'),
(2, 'kilimo point', 'sokoni', 'null', 0, 1, '2022-01-28 21:43:34', '2022-01-28 21:43:34'),
(3, 'ukerewe', 'Olacity', 'Computers', 0, 1, '2022-01-31 16:02:54', '2022-02-20 22:45:20'),
(5, 'Oryx depot', 'Posta', 'null', 0, 1, '2022-02-19 16:08:41', '2022-02-19 16:08:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_roles`
--
ALTER TABLE `activity_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_update_photos`
--
ALTER TABLE `answer_update_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_values`
--
ALTER TABLE `asset_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_ins`
--
ALTER TABLE `cash_ins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_account_summaries`
--
ALTER TABLE `customer_account_summaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallet_summuries`
--
ALTER TABLE `customer_wallet_summuries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datatypes`
--
ALTER TABLE `datatypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `datatypes_datatype_name_unique` (`datatype_name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_department_name_unique` (`department_name`);

--
-- Indexes for table `department_roles`
--
ALTER TABLE `department_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `direct_expenses`
--
ALTER TABLE `direct_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `liablity_values`
--
ALTER TABLE `liablity_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `metadata_metadata_name_unique` (`metadata_name`);

--
-- Indexes for table `metanames`
--
ALTER TABLE `metanames`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `metanames_metaname_name_unique` (`metaname_name`);

--
-- Indexes for table `metaname_datatypes`
--
ALTER TABLE `metaname_datatypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `my_companies`
--
ALTER TABLE `my_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_payments`
--
ALTER TABLE `my_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `optional_answers`
--
ALTER TABLE `optional_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_categories`
--
ALTER TABLE `payment_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qns_appliedtos`
--
ALTER TABLE `qns_appliedtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_items`
--
ALTER TABLE `rental_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_orders`
--
ALTER TABLE `rental_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_order_items`
--
ALTER TABLE `rental_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `set_indicators`
--
ALTER TABLE `set_indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sites_site_name_unique` (`site_name`);

--
-- Indexes for table `stockings`
--
ALTER TABLE `stockings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_stores`
--
ALTER TABLE `sub_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`);

--
-- Indexes for table `supplier_accounts`
--
ALTER TABLE `supplier_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_account_summaries`
--
ALTER TABLE `supplier_account_summaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_wallets`
--
ALTER TABLE `supplier_wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplier_wallets_supplier_id_unique` (`supplier_id`);

--
-- Indexes for table `supplier_wallet_summuries`
--
ALTER TABLE `supplier_wallet_summuries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registers`
--
ALTER TABLE `user_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sites`
--
ALTER TABLE `user_sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activity_roles`
--
ALTER TABLE `activity_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `answer_update_photos`
--
ALTER TABLE `answer_update_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_values`
--
ALTER TABLE `asset_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundles`
--
ALTER TABLE `bundles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cash_ins`
--
ALTER TABLE `cash_ins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_account_summaries`
--
ALTER TABLE `customer_account_summaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_wallet_summuries`
--
ALTER TABLE `customer_wallet_summuries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `datatypes`
--
ALTER TABLE `datatypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `department_roles`
--
ALTER TABLE `department_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `direct_expenses`
--
ALTER TABLE `direct_expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `liablity_values`
--
ALTER TABLE `liablity_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `metanames`
--
ALTER TABLE `metanames`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `metaname_datatypes`
--
ALTER TABLE `metaname_datatypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `my_companies`
--
ALTER TABLE `my_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_payments`
--
ALTER TABLE `my_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `optional_answers`
--
ALTER TABLE `optional_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `payment_categories`
--
ALTER TABLE `payment_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `qns_appliedtos`
--
ALTER TABLE `qns_appliedtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_items`
--
ALTER TABLE `rental_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_orders`
--
ALTER TABLE `rental_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rental_order_items`
--
ALTER TABLE `rental_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `set_indicators`
--
ALTER TABLE `set_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sub_stores`
--
ALTER TABLE `sub_stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_activities`
--
ALTER TABLE `user_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_registers`
--
ALTER TABLE `user_registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_sites`
--
ALTER TABLE `user_sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
