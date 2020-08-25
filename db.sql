-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 25, 2020 at 10:23 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `dev_bga`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` datetime NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Santri', '2020-08-04 15:33:17', '2020-08-04 15:33:17'),
(2, 'Billing', '2020-08-04 15:33:17', '2020-08-04 15:33:17'),
(3, 'Admin', '2020-08-04 15:33:17', '2020-08-04 15:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_period` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `name`, `plan_period`, `price`, `created_at`, `updated_at`) VALUES
(4, 'Infaq', 2, 30000, '2020-08-08 21:42:20', '2020-08-25 03:15:51'),
(5, 'Khusus', 2, 0, '2020-08-09 14:32:24', '2020-08-25 03:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` int(11) NOT NULL,
  `paid` int(11) DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_payment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_has_subscription_id` int(10) UNSIGNED NOT NULL,
  `transaction_has_modified_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `notes`, `expired_date`, `status`, `price`, `paid`, `file`, `type_payment`, `user_has_subscription_id`, `transaction_has_modified_id`, `created_at`, `updated_at`) VALUES
(154, '-', '2020-09-25 11:11:37', 0, 30000, 0, NULL, NULL, 141, 1, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(155, '-', '2020-09-25 11:11:37', 0, 30000, 0, NULL, NULL, 142, 1, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(156, '-', '2020-09-25 11:11:37', 0, 30000, 0, NULL, NULL, 143, 1, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(157, '-', '2020-09-25 11:11:37', 0, 30000, 0, NULL, NULL, 144, 1, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(158, '-', '2020-09-25 11:11:38', 0, 30000, 0, NULL, NULL, 145, 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(159, '-', '2020-09-25 11:11:38', 0, 30000, 0, NULL, NULL, 146, 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(160, '-', '2020-09-25 11:11:38', 0, 30000, 0, NULL, NULL, 147, 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(161, '-', '2020-09-25 11:11:38', 0, 30000, 0, NULL, NULL, 148, 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(162, '-', '2020-09-25 11:11:38', 0, 30000, 0, NULL, NULL, 149, 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(163, '-', '2020-09-25 11:11:38', 0, 30000, 0, NULL, NULL, 150, 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(164, '-', '2020-09-25 11:11:38', 0, 30000, 0, NULL, NULL, 151, 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(165, '-', '2020-09-25 11:11:38', 0, 30000, 0, NULL, NULL, 152, 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(166, '-', '2020-09-25 11:11:38', 0, 30000, 0, NULL, NULL, 153, 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(167, '-', '2020-09-25 11:11:38', 0, 30000, 0, NULL, NULL, 154, 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(168, '-', '2020-09-25 11:11:39', 0, 30000, 0, NULL, NULL, 155, 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(169, '-', '2020-09-25 11:11:39', 0, 30000, 0, NULL, NULL, 156, 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(170, '-', '2020-09-25 11:11:39', 0, 30000, 0, NULL, NULL, 157, 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(171, '-', '2020-09-25 11:11:39', 0, 30000, 0, NULL, NULL, 158, 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(172, '-', '2020-09-25 11:11:39', 0, 30000, 0, NULL, NULL, 159, 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(173, '-', '2020-09-25 11:11:39', 0, 30000, 0, NULL, NULL, 160, 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(174, '-', '2020-09-25 11:11:39', 0, 30000, 0, NULL, NULL, 161, 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(175, '-', '2020-09-25 11:11:39', 0, 30000, 0, NULL, NULL, 162, 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(176, '-', '2020-09-25 11:11:39', 0, 30000, 0, NULL, NULL, 163, 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(177, '-', '2020-09-25 11:11:39', 0, 30000, 0, NULL, NULL, 164, 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(178, '-', '2020-09-25 11:11:39', 0, 30000, 0, NULL, NULL, 165, 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(179, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 166, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(180, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 167, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(181, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 168, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(182, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 169, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(183, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 170, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(184, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 171, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(185, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 172, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(186, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 173, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(187, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 174, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(188, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 175, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(189, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 176, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(190, '-', '2020-09-25 11:11:40', 0, 30000, 0, NULL, NULL, 177, 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(191, '-', '2020-09-25 11:11:41', 0, 30000, 0, NULL, NULL, 178, 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(192, '-', '2020-09-25 11:11:41', 0, 30000, 0, NULL, NULL, 179, 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(193, '-', '2020-09-25 11:11:41', 0, 30000, 0, NULL, NULL, 180, 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(194, '-', '2020-09-25 11:11:41', 0, 30000, 0, NULL, NULL, 181, 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(195, '-', '2020-09-25 11:11:41', 0, 30000, 0, NULL, NULL, 182, 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(196, '-', '2020-09-25 11:11:41', 0, 30000, 0, NULL, NULL, 183, 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(197, '-', '2020-09-25 11:11:41', 0, 30000, 0, NULL, NULL, 184, 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(198, '-', '2020-09-25 11:11:41', 0, 30000, 0, NULL, NULL, 185, 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(199, '-', '2020-09-25 11:11:41', 0, 30000, 0, NULL, NULL, 186, 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(200, '-', '2020-09-25 11:11:42', 0, 30000, 0, NULL, NULL, 187, 1, '2020-08-25 04:11:42', '2020-08-25 04:11:42'),
(201, '-', '2020-09-25 11:11:42', 0, 30000, 0, NULL, NULL, 188, 1, '2020-08-25 04:11:42', '2020-08-25 04:11:42'),
(202, '-', '2020-09-25 11:11:42', 0, 30000, 0, NULL, NULL, 189, 1, '2020-08-25 04:11:42', '2020-08-25 04:11:42'),
(203, '-', '2020-09-25 11:11:42', 0, 30000, 0, NULL, NULL, 190, 1, '2020-08-25 04:11:42', '2020-08-25 04:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_has_modified`
--

CREATE TABLE `transaction_has_modified` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `action` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_has_modified`
--

INSERT INTO `transaction_has_modified` (`id`, `user_id`, `transaction_id`, `action`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 1, NULL, NULL),
(2, 1, 1, 1, NULL, NULL),
(3, 2, 2, 1, NULL, NULL),
(4, 3, 3, 1, NULL, NULL),
(5, 4, 4, 1, NULL, NULL),
(6, 5, 5, 1, NULL, NULL),
(7, 6, 6, 1, NULL, NULL),
(8, 7, 7, 1, NULL, NULL),
(9, 8, 8, 1, NULL, NULL),
(10, 9, 9, 1, NULL, NULL),
(11, 10, 10, 1, NULL, NULL),
(12, 11, 11, 1, NULL, NULL),
(13, 12, 12, 1, NULL, NULL),
(14, 13, 13, 1, NULL, NULL),
(15, 14, 14, 1, NULL, NULL),
(16, 15, 15, 1, NULL, NULL),
(17, 16, 16, 1, NULL, NULL),
(18, 17, 17, 1, NULL, NULL),
(19, 18, 18, 1, NULL, NULL),
(20, 19, 19, 1, NULL, NULL),
(21, 20, 20, 1, NULL, NULL),
(22, 21, 21, 1, NULL, NULL),
(23, 22, 22, 1, NULL, NULL),
(24, 23, 23, 1, NULL, NULL),
(25, 24, 24, 1, NULL, NULL),
(26, 25, 25, 1, NULL, NULL),
(27, 26, 26, 1, NULL, NULL),
(28, 27, 27, 1, NULL, NULL),
(29, 28, 28, 1, NULL, NULL),
(30, 29, 29, 1, NULL, NULL),
(31, 30, 30, 1, NULL, NULL),
(32, 31, 31, 1, NULL, NULL),
(33, 32, 32, 1, NULL, NULL),
(34, 33, 33, 1, NULL, NULL),
(35, 34, 34, 1, NULL, NULL),
(36, 35, 35, 1, NULL, NULL),
(37, 36, 36, 1, NULL, NULL),
(38, 37, 37, 1, NULL, NULL),
(39, 38, 38, 1, NULL, NULL),
(40, 39, 39, 1, NULL, NULL),
(41, 40, 40, 1, NULL, NULL),
(42, 41, 41, 1, NULL, NULL),
(43, 42, 42, 1, NULL, NULL),
(44, 43, 43, 1, NULL, NULL),
(45, 44, 44, 1, NULL, NULL),
(46, 45, 45, 1, NULL, NULL),
(47, 46, 46, 1, NULL, NULL),
(48, 47, 47, 1, NULL, NULL),
(49, 48, 48, 1, NULL, NULL),
(50, 49, 49, 1, NULL, NULL),
(51, 50, 50, 1, NULL, NULL),
(52, 51, 51, 1, NULL, NULL),
(53, 52, 52, 1, NULL, NULL),
(54, 53, 53, 1, NULL, NULL),
(55, 54, 54, 1, NULL, NULL),
(56, 55, 55, 1, NULL, NULL),
(57, 56, 56, 1, NULL, NULL),
(58, 57, 57, 1, NULL, NULL),
(59, 58, 58, 1, NULL, NULL),
(60, 59, 59, 1, NULL, NULL),
(61, 60, 60, 1, NULL, NULL),
(62, 61, 61, 1, NULL, NULL),
(63, 62, 62, 1, NULL, NULL),
(64, 63, 63, 1, NULL, NULL),
(65, 64, 64, 1, NULL, NULL),
(66, 65, 65, 1, NULL, NULL),
(67, 66, 66, 1, NULL, NULL),
(68, 67, 67, 1, NULL, NULL),
(69, 68, 68, 1, NULL, NULL),
(70, 69, 69, 1, NULL, NULL),
(71, 70, 70, 1, NULL, NULL),
(72, 71, 71, 1, NULL, NULL),
(73, 72, 72, 1, NULL, NULL),
(74, 73, 73, 1, NULL, NULL),
(75, 74, 74, 1, NULL, NULL),
(76, 75, 75, 1, NULL, NULL),
(77, 76, 76, 1, NULL, NULL),
(78, 77, 77, 1, NULL, NULL),
(79, 78, 78, 1, NULL, NULL),
(80, 79, 79, 1, NULL, NULL),
(81, 80, 80, 1, NULL, NULL),
(82, 81, 81, 1, NULL, NULL),
(83, 82, 82, 1, NULL, NULL),
(84, 83, 83, 1, NULL, NULL),
(85, 84, 84, 1, NULL, NULL),
(86, 85, 85, 1, NULL, NULL),
(87, 86, 86, 1, NULL, NULL),
(88, 87, 87, 1, NULL, NULL),
(89, 88, 88, 1, NULL, NULL),
(90, 89, 89, 1, NULL, NULL),
(91, 90, 90, 1, NULL, NULL),
(92, 91, 91, 1, NULL, NULL),
(93, 92, 92, 1, NULL, NULL),
(94, 93, 93, 1, NULL, NULL),
(95, 94, 94, 1, NULL, NULL),
(96, 95, 95, 1, NULL, NULL),
(97, 96, 96, 1, NULL, NULL),
(98, 97, 97, 1, NULL, NULL),
(99, 98, 98, 1, NULL, NULL),
(100, 99, 99, 1, NULL, NULL),
(101, 100, 100, 1, NULL, NULL),
(102, 203, 107, 0, '2020-08-05 16:01:07', '2020-08-05 16:01:07'),
(103, 203, 108, 0, '2020-08-05 16:32:37', '2020-08-05 16:32:37'),
(104, 203, 109, 0, '2020-08-05 16:39:28', '2020-08-05 16:39:28'),
(105, 203, 107, 1, '2020-08-05 16:39:28', '2020-08-05 16:39:28'),
(106, 203, 110, 0, '2020-08-05 16:42:20', '2020-08-05 16:42:20'),
(107, 203, 108, 1, '2020-08-05 16:42:20', '2020-08-05 16:42:20'),
(108, 203, 111, 0, '2020-08-05 16:55:31', '2020-08-05 16:55:31'),
(109, 203, 109, 1, '2020-08-05 16:55:31', '2020-08-05 16:55:31'),
(110, 203, 110, 1, '2020-08-05 18:06:19', '2020-08-05 18:06:19'),
(111, 203, 118, 0, '2020-08-06 16:40:26', '2020-08-06 16:40:26'),
(112, 203, 117, 1, '2020-08-06 16:40:26', '2020-08-06 16:40:26'),
(113, 203, 119, 0, '2020-08-06 16:40:32', '2020-08-06 16:40:32'),
(114, 203, 116, 1, '2020-08-06 16:40:32', '2020-08-06 16:40:32'),
(115, 203, 120, 0, '2020-08-06 16:40:35', '2020-08-06 16:40:35'),
(116, 203, 113, 1, '2020-08-06 16:40:35', '2020-08-06 16:40:35'),
(117, 203, 121, 0, '2020-08-06 16:40:40', '2020-08-06 16:40:40'),
(118, 203, 114, 1, '2020-08-06 16:40:40', '2020-08-06 16:40:40'),
(119, 205, 123, 1, '2020-08-08 22:24:26', '2020-08-08 22:24:26'),
(120, 205, 0, 0, '2020-08-08 22:26:04', '2020-08-08 22:26:04'),
(121, 205, 126, 1, '2020-08-08 22:26:04', '2020-08-08 22:26:04'),
(122, 205, 0, 0, '2020-08-08 22:30:23', '2020-08-08 22:30:23'),
(123, 205, 0, 0, '2020-08-08 22:30:31', '2020-08-08 22:30:31'),
(124, 205, 126, 1, '2020-08-08 22:30:31', '2020-08-08 22:30:31'),
(125, 205, 126, 1, '2020-08-08 22:33:25', '2020-08-08 22:33:25'),
(126, 205, 0, 0, '2020-08-08 22:33:25', '2020-08-08 22:33:25'),
(127, 205, 126, 1, '2020-08-08 22:34:09', '2020-08-08 22:34:09'),
(128, 205, 126, 1, '2020-08-08 22:36:52', '2020-08-08 22:36:52'),
(129, 205, 126, 1, '2020-08-08 22:37:18', '2020-08-08 22:37:18'),
(130, 205, 0, 0, '2020-08-08 22:37:18', '2020-08-08 22:37:18'),
(131, 205, 126, 1, '2020-08-08 22:38:32', '2020-08-08 22:38:32'),
(132, 205, 126, 1, '2020-08-08 22:39:08', '2020-08-08 22:39:08'),
(133, 205, 127, 1, '2020-08-08 22:42:05', '2020-08-08 22:42:05'),
(134, 205, 128, 1, '2020-08-08 22:46:53', '2020-08-08 22:46:53'),
(135, 205, 128, 1, '2020-08-08 22:47:34', '2020-08-08 22:47:34'),
(136, 205, 129, 0, '2020-08-08 22:47:34', '2020-08-08 22:47:34'),
(137, 205, 129, 1, '2020-08-08 22:47:50', '2020-08-08 22:47:50'),
(138, 205, 0, 0, '2020-08-08 22:47:50', '2020-08-08 22:47:50'),
(139, 205, 127, 1, '2020-08-08 22:57:02', '2020-08-08 22:57:02'),
(140, 205, 0, 0, '2020-08-08 22:57:02', '2020-08-08 22:57:02'),
(141, 205, 127, 1, '2020-08-08 22:57:43', '2020-08-08 22:57:43'),
(142, 205, 0, 0, '2020-08-08 22:57:43', '2020-08-08 22:57:43'),
(143, 205, 127, 1, '2020-08-08 22:59:01', '2020-08-08 22:59:01'),
(144, 205, 127, 1, '2020-08-08 22:59:26', '2020-08-08 22:59:26'),
(145, 205, 130, 1, '2020-08-08 23:00:09', '2020-08-08 23:00:09'),
(146, 205, 130, 1, '2020-08-08 23:01:26', '2020-08-08 23:01:26'),
(147, 205, 131, 0, '2020-08-08 23:03:15', '2020-08-08 23:03:15'),
(148, 205, 130, 1, '2020-08-08 23:03:15', '2020-08-08 23:03:15'),
(149, 205, 0, 0, '2020-08-08 23:03:52', '2020-08-08 23:03:52'),
(150, 205, 129, 1, '2020-08-08 23:03:52', '2020-08-08 23:03:52'),
(151, 205, 0, 0, '2020-08-08 23:13:52', '2020-08-08 23:13:52'),
(152, 205, 130, 1, '2020-08-08 23:13:52', '2020-08-08 23:13:52'),
(153, 205, 0, 0, '2020-08-08 23:14:59', '2020-08-08 23:14:59'),
(154, 205, 134, 1, '2020-08-08 23:14:59', '2020-08-08 23:14:59'),
(155, 205, 0, 0, '2020-08-09 03:42:06', '2020-08-09 03:42:06'),
(156, 205, 130, 1, '2020-08-09 03:42:06', '2020-08-09 03:42:06'),
(157, 205, 0, 0, '2020-08-09 03:46:53', '2020-08-09 03:46:53'),
(158, 205, 0, 0, '2020-08-09 03:51:07', '2020-08-09 03:51:07'),
(159, 205, 130, 1, '2020-08-09 03:51:07', '2020-08-09 03:51:07'),
(160, 205, 0, 0, '2020-08-09 03:54:11', '2020-08-09 03:54:11'),
(161, 205, 130, 1, '2020-08-09 03:54:11', '2020-08-09 03:54:11'),
(162, 205, 0, 0, '2020-08-09 03:55:05', '2020-08-09 03:55:05'),
(163, 205, 130, 1, '2020-08-09 03:55:05', '2020-08-09 03:55:05'),
(164, 205, 0, 0, '2020-08-09 03:55:12', '2020-08-09 03:55:12'),
(165, 205, 130, 1, '2020-08-09 03:55:12', '2020-08-09 03:55:12'),
(166, 205, 0, 0, '2020-08-09 06:09:10', '2020-08-09 06:09:10'),
(167, 205, 130, 1, '2020-08-09 06:09:10', '2020-08-09 06:09:10'),
(168, 205, 0, 0, '2020-08-09 06:10:06', '2020-08-09 06:10:06'),
(169, 205, 130, 1, '2020-08-09 06:10:06', '2020-08-09 06:10:06'),
(170, 205, 0, 0, '2020-08-09 06:12:08', '2020-08-09 06:12:08'),
(171, 205, 134, 1, '2020-08-09 06:12:08', '2020-08-09 06:12:08'),
(172, 205, 0, 0, '2020-08-09 06:13:01', '2020-08-09 06:13:01'),
(173, 205, 0, 0, '2020-08-09 06:15:36', '2020-08-09 06:15:36'),
(174, 205, 134, 1, '2020-08-09 06:15:36', '2020-08-09 06:15:36'),
(175, 205, 0, 0, '2020-08-09 06:16:53', '2020-08-09 06:16:53'),
(176, 205, 134, 1, '2020-08-09 06:16:53', '2020-08-09 06:16:53'),
(177, 205, 0, 0, '2020-08-09 06:17:13', '2020-08-09 06:17:13'),
(178, 205, 127, 1, '2020-08-09 06:17:13', '2020-08-09 06:17:13'),
(179, 205, 0, 0, '2020-08-09 06:17:42', '2020-08-09 06:17:42'),
(180, 205, 136, 1, '2020-08-09 06:17:42', '2020-08-09 06:17:42'),
(181, 205, 0, 0, '2020-08-09 06:18:05', '2020-08-09 06:18:05'),
(182, 205, 136, 1, '2020-08-09 06:18:05', '2020-08-09 06:18:05'),
(183, 205, 0, 0, '2020-08-09 06:18:36', '2020-08-09 06:18:36'),
(184, 205, 0, 0, '2020-08-09 06:18:43', '2020-08-09 06:18:43'),
(185, 205, 134, 1, '2020-08-09 06:18:43', '2020-08-09 06:18:43'),
(186, 205, 0, 0, '2020-08-09 06:19:29', '2020-08-09 06:19:29'),
(187, 205, 134, 1, '2020-08-09 06:19:29', '2020-08-09 06:19:29'),
(188, 205, 0, 0, '2020-08-09 06:20:20', '2020-08-09 06:20:20'),
(189, 205, 134, 1, '2020-08-09 06:20:20', '2020-08-09 06:20:20'),
(190, 205, 0, 0, '2020-08-09 14:00:27', '2020-08-09 14:00:27'),
(191, 205, 134, 1, '2020-08-09 14:00:27', '2020-08-09 14:00:27'),
(192, 205, 0, 0, '2020-08-09 14:04:44', '2020-08-09 14:04:44'),
(193, 205, 129, 1, '2020-08-09 14:04:44', '2020-08-09 14:04:44'),
(194, 205, 0, 0, '2020-08-09 14:05:21', '2020-08-09 14:05:21'),
(195, 205, 0, 0, '2020-08-09 14:05:27', '2020-08-09 14:05:27'),
(196, 205, 129, 1, '2020-08-09 14:05:27', '2020-08-09 14:05:27'),
(197, 205, 0, 0, '2020-08-09 14:05:57', '2020-08-09 14:05:57'),
(198, 205, 137, 1, '2020-08-09 14:05:57', '2020-08-09 14:05:57'),
(199, 205, 0, 0, '2020-08-09 14:15:39', '2020-08-09 14:15:39'),
(200, 205, 138, 1, '2020-08-09 14:15:40', '2020-08-09 14:15:40'),
(201, 205, 0, 0, '2020-08-09 14:32:51', '2020-08-09 14:32:51'),
(202, 205, 140, 1, '2020-08-09 14:32:51', '2020-08-09 14:32:51'),
(203, 205, 0, 0, '2020-08-09 14:39:22', '2020-08-09 14:39:22'),
(204, 205, 142, 1, '2020-08-09 14:39:22', '2020-08-09 14:39:22'),
(205, 205, 0, 0, '2020-08-09 14:39:33', '2020-08-09 14:39:33'),
(206, 205, 143, 1, '2020-08-09 14:39:33', '2020-08-09 14:39:33'),
(207, 205, 0, 0, '2020-08-09 14:41:46', '2020-08-09 14:41:46'),
(208, 205, 144, 1, '2020-08-09 14:41:46', '2020-08-09 14:41:46'),
(209, 205, 0, 0, '2020-08-09 14:43:32', '2020-08-09 14:43:32'),
(210, 205, 140, 1, '2020-08-09 14:43:32', '2020-08-09 14:43:32'),
(211, 205, 0, 0, '2020-08-09 14:44:16', '2020-08-09 14:44:16'),
(212, 205, 139, 1, '2020-08-09 14:44:16', '2020-08-09 14:44:16'),
(213, 205, 0, 0, '2020-08-09 14:44:26', '2020-08-09 14:44:26'),
(214, 205, 145, 1, '2020-08-09 14:44:26', '2020-08-09 14:44:26'),
(215, 205, 0, 0, '2020-08-09 14:45:08', '2020-08-09 14:45:08'),
(216, 205, 144, 1, '2020-08-09 14:45:08', '2020-08-09 14:45:08'),
(217, 205, 0, 0, '2020-08-09 14:45:13', '2020-08-09 14:45:13'),
(218, 205, 147, 1, '2020-08-09 14:45:13', '2020-08-09 14:45:13'),
(219, 205, 0, 0, '2020-08-09 14:45:22', '2020-08-09 14:45:22'),
(220, 205, 147, 1, '2020-08-09 14:45:22', '2020-08-09 14:45:22'),
(221, 205, 0, 0, '2020-08-09 14:45:31', '2020-08-09 14:45:31'),
(222, 205, 129, 1, '2020-08-09 14:45:31', '2020-08-09 14:45:31'),
(223, 205, 0, 0, '2020-08-09 14:45:43', '2020-08-09 14:45:43'),
(224, 205, 148, 1, '2020-08-09 14:45:43', '2020-08-09 14:45:43'),
(225, 205, 0, 0, '2020-08-09 14:46:03', '2020-08-09 14:46:03'),
(226, 205, 151, 1, '2020-08-09 14:46:03', '2020-08-09 14:46:03'),
(227, 205, 0, 0, '2020-08-25 02:58:46', '2020-08-25 02:58:46'),
(228, 205, 151, 1, '2020-08-25 02:58:46', '2020-08-25 02:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nis`, `name`, `father_name`, `gender`, `email`, `contact_person`, `password`, `address`, `role_id`, `created_at`, `updated_at`) VALUES
(207, 'BGA-0000', 'Admin', 'bot', NULL, 'me@adhityarp.com', '087787878', '$2y$10$kMBDIenHYi68SFzjMn01luEGvzq/uWYZShDYTPsjqr40YbgZuZGzC', 'Vilmut', 3, '2020-08-25 02:22:52', '2020-08-25 02:22:52'),
(208, 'BGA - 100', 'Acelin Najmatul Haya', 'Ace sulaeman', 'Perempuan', 'santri@bga.or.id', '81717756124', '$2y$10$nOfL4J7tE.FlYJvuuvKX1u1N8jAl/GzoFZ3frvJ2t/msPjy3MNzO.', 'Selang Nangka', 1, '2020-08-25 04:09:28', '2020-08-25 04:11:37'),
(209, 'BGA - 102', 'Agam Fathul Halim', 'M. Gudang', 'Laki laki', 'santri@bga.or.id', '85607262765', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(210, 'BGA - 103', 'Ahmad Jabbar Dinejad', 'Siwanto', 'Laki laki', 'santri@bga.or.id', '81281185982', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(211, 'BGA - 104', 'Adinda Juwita', 'Salim', 'Perempuan', 'santri@bga.or.id', '8784646746', 'PasswordSantri', 'Selang Nang', 1, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(212, 'BGA - 105', 'Alfiah k', 'Sarman', 'Perempuan', 'santri@bga.or.id', '8571770790', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(213, 'BGA - 106', 'Alifa  Maulida', 'Rusmin S', 'Perempuan', 'santri@bga.or.id', '8979888346', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(214, 'BGA - 107', 'Alvian Dzulhikam', 'Nurjaya', 'Laki laki', 'santri@bga.or.id', '85776813977', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(215, 'BGA - 108', 'Alya Fatimah Azahra', 'Sadih', 'Perempuan', 'santri@bga.or.id', '81285732566', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(216, 'BGA - 109', 'Aqila Khumaero', 'Jalaludin', 'Perempuan', 'santri@bga.or.id', '87775690084', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(217, 'BGA - 110', 'Arimbi Qurotaini', 'Androfid', 'Perempuan', 'santri@bga.or.id', '89530439106', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(218, 'BGA - 112', 'Aldiansyah', 'Wawan Setiawan', 'Laki laki', 'santri@bga.or.id', '0', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(219, 'BGA - 113', 'Andika Ramadhan', 'Asih', 'Laki laki', 'santri@bga.or.id', '81297074663', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(220, 'BGA - 114', 'Bilqis ufairah', 'Abdul halim', 'Perempuan', 'santri@bga.or.id', '81296639496', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(221, 'BGA - 117', 'Earlyta Arsyfa Salsabila', 'Ibnu Salim', 'Perempuan', 'santri@bga.or.id', '87736578925', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(222, 'BGA - 118', 'Fatir Surya Kencana', 'Saryadi', 'Laki laki', 'santri@bga.or.id', '8136465237', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(223, 'BGA - 119', 'Ferry Fermana', 'Jayadih', 'Laki laki', 'santri@bga.or.id', '81292506522', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(224, 'BGA - 120', 'Galih ferdiansyah putra', 'Firmansyah', 'Laki laki', 'santri@bga.or.id', '89623303369', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(225, 'BGA - 123', 'Haura Sifa Salsabila', 'Siti Masripah', 'Perempuan', 'santri@bga.or.id', '81299348195', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(226, 'BGA - 124', 'Hesti Nurfajriah', 'Jumhari', 'Perempuan', 'santri@bga.or.id', '85216330759', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(227, 'BGA - 125', 'Ismail Alfauzani', 'Wawan Setiawan', 'Laki laki', 'santri@bga.or.id', '0', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(228, 'BGA - 126', 'Jian Raditia', 'Nurwidiana', 'Laki laki', 'santri@bga.or.id', '81212218546', 'PasswordSantri', 'Selang cau', 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(229, 'BGA - 127', 'Khaira Rizkia Safitri', 'Nurdin rohendi', 'Perempuan', 'santri@bga.or.id', '81586300758', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(230, 'BGA - 128', 'Kiran Aulia Nazwa', 'Nenti', 'Perempuan', 'santri@bga.or.id', '89697576170', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(231, 'BGA - 129', 'Kayla Sadara Santoso', 'Mira', 'Perempuan', 'santri@bga.or.id', '81291203887', 'PasswordSantri', 'Perum Mustika wanasari', 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(232, 'BGA - 130', 'M.Azka Taufikurrohman', 'Dedi iskandar', 'Laki laki', 'santri@bga.or.id', '85785172873', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(233, 'BGA - 131', 'Muhammad Daris Nazeef', 'Fauziah Astuti', 'Laki laki', 'santri@bga.or.id', '89671606053', 'PasswordSantri', 'Telaga Asih', 1, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(234, 'BGA - 133', 'Muh Ghaftan Dzulhikam', 'Lukman', 'Laki laki', 'santri@bga.or.id', '82111063801', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(235, 'BGA - 134', 'Muhamad  Alif Ramadhan', 'Aji nurullah', 'Laki laki', 'santri@bga.or.id', '895358980713', 'PasswordSantri', 'Cirebon', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(236, 'BGA - 135', 'Muhamad  Riski', 'Heriyadi', 'Laki laki', 'santri@bga.or.id', '0', 'PasswordSantri', 'Brebes', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(237, 'BGA - 137', 'Muhamad Raihan Akbar', 'Arnih', 'Laki laki', 'santri@bga.or.id', '89665172191', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(238, 'BGA - 140', 'Nurul Humairoh', 'Rojali', 'Perempuan', 'santri@bga.or.id', '81290400767', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(239, 'BGA - 141', 'Raja Dzaki Ibadurrahman', 'Widiastuti', 'Laki laki', 'santri@bga.or.id', '81313050402', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(240, 'BGA - 142', 'Razita Diana Putri', 'Suhadi', 'Perempuan', 'santri@bga.or.id', '8128086272', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(241, 'BGA - 145', 'Salwa Putri Mahira', 'Sukandi', 'Perempuan', 'santri@bga.or.id', '0', 'PasswordSantri', 'Kp Tanah merdeka', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(242, 'BGA - 146', 'Sanggi Dwi Septiyanti', 'Jejen', 'Perempuan', 'santri@bga.or.id', '81298483602', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(243, 'BGA - 148', 'Shella Fuspitasari', 'Suhendrik', 'Perempuan', 'santri@bga.or.id', '81317366413', 'PasswordSantri', 'Muara gembong', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(244, 'BGA - 150', 'Syaqila Azzahra', 'Hermawan Susanto', 'Perempuan', 'santri@bga.or.id', '85777846141', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(245, 'BGA - 151', 'Tabah Mursalat', 'Ade irwansyah', 'Laki laki', 'santri@bga.or.id', '81284574239', 'PasswordSantri', 'Perum Mustika wanasari', 1, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(246, 'BGA - 152', 'Tamara Nur Azizah', 'Carman Radiana', 'Perempuan', 'santri@bga.or.id', '85215028845', 'PasswordSantri', 'Wanasari', 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(247, 'BGA - 153', 'Umaika Sibha Tahrir al Hamza', 'Muhammad Nur', 'Laki laki', 'santri@bga.or.id', '8111906570', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(248, 'BGA - 154', 'Violita syakira jaelani', 'Jaelani', 'Perempuan', 'santri@bga.or.id', '85770763622', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(249, 'BGA - 155', 'Virzha Jayadih Labarhain', 'Jayadih', 'Laki laki', 'santri@bga.or.id', '81292506522', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(250, 'BGA- 157', 'Devin Ganendra Alfarizi', 'Irna Antono', 'Laki-Laki', 'santri@bga.or.id', '895604149323', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(251, 'BGA- 158', 'Faiq Hibban Ar-Rasyid', 'Solakhudin ', 'Laki-Laki', 'santri@bga.or.id', '8814151848', 'PasswordSantri', 'Brebes', 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(252, 'BGA- 159', 'Cintiya Nurhasifah', 'Masnuri', 'Perempuan', 'santri@bga.or.id', '87878630290', 'PasswordSantri', 'Indramayu', 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(253, 'BGA- 160 ', 'Prasta Rizki Wibawa', 'Sigit Prasetyo', 'Laki-Laki', 'santri@bga.or.id', '81927775758', 'PasswordSantri', 'Selang Nangka ', 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(254, 'BGA- 161', 'Diyah Nur Fitri', 'Nur Akbar Jaya', 'Perempuan ', 'santri@bga.or.id', '81386690913', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(255, 'BGA- 162', 'Aira Muthmainnah', 'Aminudin', 'Perempuan', 'santri@bga.or.id', '87788518198', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:42', '2020-08-25 04:11:42'),
(256, 'BGA - 163', 'Ahmad Fazri', 'Hodijah\\Alm Yakub', 'Laki-Laki', 'santri@bga.or.id', '895406301700', 'PasswordSantri', 'Cibitung\\Nona Merah', 1, '2020-08-25 04:11:42', '2020-08-25 04:11:42'),
(257, 'BGA - 164', 'Moh Haikal Sidiq', 'Julaiha', 'Laki-Laki', 'santri@bga.or.id', '85813177006', 'PasswordSantri', 'Selang Nangka', 1, '2020-08-25 04:11:42', '2020-08-25 04:11:42'),
(258, 'BGA - 165', 'Muhammah Dastan Khale', 'Fauziah Astuti', 'Laki-Laki', 'santri@bga.or.id', '89671606053', 'PasswordSantri', 'Telaga Asih', 1, '2020-08-25 04:11:42', '2020-08-25 04:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_subscription`
--

CREATE TABLE `user_has_subscription` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_has_subscription`
--

INSERT INTO `user_has_subscription` (`id`, `user_id`, `subscription_id`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(140, '208', '4', 'active', NULL, '2020-08-25 04:09:28', '2020-08-25 04:11:37'),
(141, '209', '4', 'active', NULL, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(142, '210', '4', 'active', NULL, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(143, '211', '4', 'active', NULL, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(144, '212', '4', 'active', NULL, '2020-08-25 04:11:37', '2020-08-25 04:11:37'),
(145, '213', '4', 'active', NULL, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(146, '214', '4', 'active', NULL, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(147, '215', '4', 'active', NULL, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(148, '216', '4', 'active', NULL, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(149, '217', '4', 'active', NULL, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(150, '218', '4', 'active', NULL, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(151, '219', '4', 'active', NULL, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(152, '220', '4', 'active', NULL, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(153, '221', '4', 'active', NULL, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(154, '222', '4', 'active', NULL, '2020-08-25 04:11:38', '2020-08-25 04:11:38'),
(155, '223', '4', 'active', NULL, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(156, '224', '4', 'active', NULL, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(157, '225', '4', 'active', NULL, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(158, '226', '4', 'active', NULL, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(159, '227', '4', 'active', NULL, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(160, '228', '4', 'active', NULL, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(161, '229', '4', 'active', NULL, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(162, '230', '4', 'active', NULL, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(163, '231', '4', 'active', NULL, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(164, '232', '4', 'active', NULL, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(165, '233', '4', 'active', NULL, '2020-08-25 04:11:39', '2020-08-25 04:11:39'),
(166, '234', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(167, '235', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(168, '236', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(169, '237', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(170, '238', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(171, '239', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(172, '240', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(173, '241', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(174, '242', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(175, '243', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(176, '244', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(177, '245', '4', 'active', NULL, '2020-08-25 04:11:40', '2020-08-25 04:11:40'),
(178, '246', '4', 'active', NULL, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(179, '247', '4', 'active', NULL, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(180, '248', '4', 'active', NULL, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(181, '249', '4', 'active', NULL, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(182, '250', '4', 'active', NULL, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(183, '251', '4', 'active', NULL, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(184, '252', '4', 'active', NULL, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(185, '253', '4', 'active', NULL, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(186, '254', '4', 'active', NULL, '2020-08-25 04:11:41', '2020-08-25 04:11:41'),
(187, '255', '4', 'active', NULL, '2020-08-25 04:11:42', '2020-08-25 04:11:42'),
(188, '256', '4', 'active', NULL, '2020-08-25 04:11:42', '2020-08-25 04:11:42'),
(189, '257', '4', 'active', NULL, '2020-08-25 04:11:42', '2020-08-25 04:11:42'),
(190, '258', '4', 'active', NULL, '2020-08-25 04:11:42', '2020-08-25 04:11:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_role_unique` (`role`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_has_modified`
--
ALTER TABLE `transaction_has_modified`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nis_unique` (`nis`);

--
-- Indexes for table `user_has_subscription`
--
ALTER TABLE `user_has_subscription`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `transaction_has_modified`
--
ALTER TABLE `transaction_has_modified`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `user_has_subscription`
--
ALTER TABLE `user_has_subscription`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
