-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2020 at 10:27 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `name`, `start_date`, `end_date`, `notes`, `created_at`, `updated_at`) VALUES
(1, '2014-2015', '2014-09-21', '2015-06-25', NULL, '2020-08-05 08:22:48', '2020-08-25 14:31:00'),
(2, '2015-2016', '2015-09-21', '2016-06-25', 'الـــعـــام الدراسى 2015 - 2016', '2020-08-08 18:40:10', '2020-08-25 14:32:56'),
(4, '2016-2017', '2016-09-21', '2017-06-25', 'لا يوجد ملاحظات', '2020-08-09 20:12:16', '2020-09-19 06:45:01'),
(5, '2017-2018', '2017-08-10', '2018-08-10', NULL, '2020-08-10 19:01:54', '2020-08-25 14:33:50'),
(8, '2018-2019', '2018-09-15', '2019-06-25', NULL, '2020-08-10 19:51:41', '2020-08-25 14:34:17'),
(9, '2019-2020', '2019-09-15', '2020-06-25', NULL, '2020-08-12 00:29:46', '2020-08-25 14:34:43'),
(11, '2020-2021', '2020-09-15', '2021-06-25', NULL, '2020-08-25 14:35:07', '2020-08-25 14:35:26'),
(31, '2020-2020', '2020-09-17', '2020-09-02', NULL, '2020-09-19 11:34:39', '2020-09-19 11:34:39'),
(32, '2020-2070', '2020-09-12', '2070-09-04', NULL, '2020-09-19 11:41:11', '2020-09-19 11:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `account_banks`
--

CREATE TABLE `account_banks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `branche` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `init_balance` float NOT NULL,
  `balance` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_banks`
--

INSERT INTO `account_banks` (`id`, `name`, `account_number`, `branche`, `init_balance`, `balance`, `created_at`, `updated_at`, `notes`) VALUES
(3, 'بنك القاهرة', '15465463131212', 'القاهرة', 10000, 11000, '2020-08-22 19:53:39', '2020-08-25 18:37:55', NULL),
(8, 'بنك التعمير والاسكان', '0125425965565', 'بنى سويف', 500000, 500000, '2020-08-25 16:36:56', '2020-08-25 16:36:56', NULL),
(9, 'بنك الاسكندريه', '214852121297452121', 'بنى سويف', 2000, 0, '2020-08-25 17:24:57', '2020-08-25 21:49:26', NULL),
(10, 'بنك مصر', '016146159631214', 'القاهره', 10000, 12000, '2020-08-29 17:57:06', '2020-08-29 18:16:52', 'بنك مصر فرع القاهره'),
(11, 'الامارات دبى الوطنى', '3255421545212', 'بنى سويف', 1000, 2000, '2020-08-29 21:34:03', '2020-08-29 21:34:27', NULL),
(12, 'بنك QNB', '32345413212315', NULL, 0, 5000, '2020-08-30 13:01:30', '2020-08-30 13:01:58', NULL),
(13, 'بنك الاهلى', '383778678847894', NULL, 1000, 3000, '2020-08-30 13:04:33', '2020-08-30 14:41:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_dailies`
--

CREATE TABLE `account_dailies` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `value` float NOT NULL,
  `tree_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_dailies`
--

INSERT INTO `account_dailies` (`id`, `date`, `value`, `tree_id`, `user_id`, `notes`, `store_id`, `created_at`, `updated_at`, `type`) VALUES
(2, '2020-08-30', 500, 'j1_28', 1, NULL, 5, '2020-08-30 12:10:10', '2020-08-30 12:10:10', NULL),
(3, '2020-08-20', 7000, 'j1_18', 1, NULL, 5, '2020-08-30 12:11:16', '2020-08-30 12:11:16', NULL),
(4, '2020-08-30', 500, 'j1_26', 1, NULL, 6, '2020-08-30 12:14:23', '2020-08-30 12:14:23', NULL),
(5, '2020-08-30', 500, 'j1_14', 1, NULL, 6, '2020-08-30 12:15:25', '2020-08-30 12:15:25', NULL),
(6, '2020-08-17', 200, 'j1_19', 1, NULL, 2, '2020-08-30 12:37:49', '2020-08-30 12:37:49', 'in'),
(7, '2020-08-30', 500, 'j1_19', 1, NULL, 6, '2020-08-30 12:39:08', '2020-08-30 12:39:08', 'in'),
(8, '0200-08-20', 600, 'j1_18', 1, NULL, 6, '2020-08-30 12:39:57', '2020-08-30 12:39:57', 'out'),
(9, '2020-09-20', 1000, 'j1_19', 1, NULL, 6, '2020-08-30 12:47:38', '2020-08-30 12:47:38', 'in'),
(10, '2020-08-30', 500, 'j1_30', 1, NULL, 10, '2020-08-30 14:48:03', '2020-08-30 14:48:03', 'in'),
(11, '2020-08-30', 500, 'j1_14', 1, NULL, 10, '2020-08-30 14:48:55', '2020-08-30 14:48:55', 'out');

-- --------------------------------------------------------

--
-- Table structure for table `account_deposites`
--

CREATE TABLE `account_deposites` (
  `id` int(11) NOT NULL,
  `value` float NOT NULL,
  `date` date NOT NULL,
  `type` enum('store','bank') COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `confirm` enum('1','0') COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_deposites`
--

INSERT INTO `account_deposites` (`id`, `value`, `date`, `type`, `user_id`, `store_id`, `bank_id`, `confirm`, `notes`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 1000, '2020-08-25', 'bank', 1, NULL, 3, '0', NULL, NULL, '2020-08-25 18:37:55', '2020-08-25 18:37:55'),
(2, 1000, '2020-08-25', 'store', 1, 4, NULL, '0', NULL, 'uploads/deposites/159835911172430.gif', '2020-08-25 18:38:31', '2020-08-25 18:38:31'),
(3, 1000, '2020-08-29', 'bank', 1, NULL, 10, '0', NULL, 'uploads/deposites/159870231460672.png', '2020-08-29 17:58:34', '2020-08-29 17:58:34'),
(4, 1000, '2020-08-29', 'store', 1, 5, NULL, '0', NULL, NULL, '2020-08-29 18:09:24', '2020-08-29 18:09:24'),
(5, 2000, '2020-08-29', 'bank', 1, NULL, 10, '0', NULL, NULL, '2020-08-29 18:16:52', '2020-08-29 18:16:52'),
(6, 2000, '2020-08-29', 'store', 1, 5, NULL, '0', NULL, NULL, '2020-08-29 18:17:18', '2020-08-29 18:17:18'),
(7, 1000, '2020-08-29', 'bank', 1, NULL, 11, '0', NULL, NULL, '2020-08-29 21:34:27', '2020-08-29 21:34:27'),
(8, 500, '2020-08-30', 'store', 1, 7, NULL, '0', NULL, NULL, '2020-08-30 12:55:22', '2020-08-30 12:55:22'),
(9, 5000, '2020-08-30', 'bank', 1, NULL, 12, '0', NULL, NULL, '2020-08-30 13:01:58', '2020-08-30 13:01:58'),
(10, 5000, '2020-08-30', 'store', 1, 8, NULL, '0', NULL, NULL, '2020-08-30 13:02:44', '2020-08-30 13:02:44'),
(11, 5000, '2020-08-30', 'bank', 1, NULL, 13, '0', NULL, NULL, '2020-08-30 13:04:56', '2020-08-30 13:04:56'),
(12, 1000, '2020-08-30', 'store', 1, 9, NULL, '0', NULL, NULL, '2020-08-30 13:06:30', '2020-08-30 13:06:30'),
(13, 1000, '2020-08-30', 'store', 1, 10, NULL, '0', NULL, NULL, '2020-08-30 14:42:45', '2020-08-30 14:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `account_expenses_maincategories`
--

CREATE TABLE `account_expenses_maincategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` float NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `academic_year_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_expenses_maincategories`
--

INSERT INTO `account_expenses_maincategories` (`id`, `name`, `value`, `notes`, `priority`, `store_id`, `user_id`, `academic_year_id`, `level_id`, `created_at`, `updated_at`) VALUES
(1, 'تقديم ملف', 100, NULL, 1, 2, 4, 2, 1, '2020-08-22 20:44:38', '2020-08-22 20:44:38'),
(2, 'الارشاد الاكاديمى', 0, NULL, 5, 2, 1, 1, 1, '2020-08-25 17:42:52', '2020-08-25 17:42:52'),
(3, 'الرسوم الدراسيه', 5000, NULL, 4, 2, 1, 11, 1, '2020-08-25 17:45:21', '2020-08-29 18:33:08'),
(4, 'طباعه الكارنيه', 343, 'طباعه الكارنيه', 20, 2, 1, 1, 1, '2020-08-25 18:29:16', '2020-08-29 20:05:13'),
(5, 'رسوم تحويل من معاهد اخرى', 100, NULL, 2, 4, 1, 11, 1, '2020-08-29 18:32:49', '2020-08-29 18:43:40'),
(6, 'رسوم مقاصه', 100, NULL, 3, 4, 1, 11, 1, '2020-08-29 18:45:21', '2020-08-29 18:45:21'),
(7, 'رسوم اشتراك باص (ذهاب فقط)', 1000, NULL, 19, 2, 1, 11, 1, '2020-08-29 20:01:44', '2020-08-29 20:01:44'),
(8, 'رسوم اشتراك باص (ذهاب وعوده)', 1500, NULL, 18, 2, 1, 11, 1, '2020-08-29 20:06:23', '2020-08-29 20:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `account_expenses_subcategories`
--

CREATE TABLE `account_expenses_subcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expenses_maincategory_id` int(11) NOT NULL,
  `value` float NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_expenses_subcategories`
--

INSERT INTO `account_expenses_subcategories` (`id`, `name`, `expenses_maincategory_id`, `value`, `notes`, `priority`, `store_id`, `created_at`, `updated_at`) VALUES
(8, 'رسوم الوزراه', 3, 500, 'رسوم الوزراه', 1, 3, '2020-08-26 18:22:39', '2020-08-29 20:06:53'),
(9, 'خدمات للمعهد', 3, 4000, NULL, 2, 2, '2020-08-29 18:58:07', '2020-08-29 18:58:07'),
(10, 'رسوم كتب', 3, 500, NULL, 3, 5, '2020-08-29 18:58:07', '2020-08-29 18:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `account_fines`
--

CREATE TABLE `account_fines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` float NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_fines`
--

INSERT INTO `account_fines` (`id`, `name`, `value`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'غرامه تاخير سداد مصروف', 200, NULL, '2020-08-29 19:31:38', '2020-08-29 19:31:38'),
(2, 'غرامه تاخير تسجيل ارشاد', 300, NULL, '2020-08-29 19:31:59', '2020-08-29 19:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `account_installments`
--

CREATE TABLE `account_installments` (
  `id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `value` float NOT NULL,
  `student_id` int(11) NOT NULL,
  `type` enum('main','sub') COLLATE utf8_unicode_ci NOT NULL,
  `target` enum('madunia') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `installment_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `paid` enum('1','0') COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_installments`
--

INSERT INTO `account_installments` (`id`, `date_from`, `date_to`, `value`, `student_id`, `type`, `target`, `created_at`, `updated_at`, `installment_id`, `user_id`, `paid`, `notes`) VALUES
(1, '2020-08-25', '2020-08-26', 2000, 10, 'main', 'madunia', '2020-08-25 13:02:56', '2020-08-25 13:02:56', NULL, 1, NULL, NULL),
(2, '2020-08-25', '2020-08-26', 2000, 10, 'sub', 'madunia', '2020-08-25 13:03:32', '2020-08-25 13:03:32', 1, 1, NULL, NULL),
(3, '2020-09-15', '2021-06-15', 6000, 10, 'main', 'madunia', '2020-08-25 16:47:18', '2020-08-25 16:47:18', NULL, 1, NULL, NULL),
(4, '2020-09-20', '2020-10-21', 4000, 10, 'sub', 'madunia', '2020-08-25 16:50:04', '2020-08-25 16:53:33', 3, 1, '1', NULL),
(5, '2021-05-20', '2021-04-15', 1000, 10, 'sub', 'madunia', '2020-08-25 16:50:04', '2020-08-25 16:50:04', 3, 1, NULL, NULL),
(6, '2021-05-01', '2021-06-10', 1000, 10, 'sub', 'madunia', '2020-08-25 16:50:04', '2020-08-25 16:50:04', 3, 1, NULL, NULL),
(7, '2020-09-15', '2021-09-15', 5000, 26, 'main', 'madunia', '2020-08-29 19:18:26', '2020-08-29 19:18:26', NULL, 1, NULL, NULL),
(8, '2020-09-15', '2020-09-30', 500, 26, 'main', 'madunia', '2020-08-29 19:22:12', '2020-08-29 19:24:26', 7, 1, NULL, NULL),
(9, '2020-10-01', '2020-11-01', 2000, 26, 'sub', 'madunia', '2020-08-29 19:22:12', '2020-08-29 19:22:12', 7, 1, NULL, NULL),
(10, '2021-01-01', '2021-02-10', 2000, 26, 'sub', 'madunia', '2020-08-29 19:22:12', '2020-08-29 19:22:12', 7, 1, NULL, NULL),
(11, '2020-08-01', '2020-12-01', 4000, 25, 'main', 'madunia', '2020-08-29 20:14:14', '2020-08-29 20:14:14', NULL, 1, NULL, NULL),
(12, '2020-10-01', '2020-11-01', 1000, 25, 'sub', 'madunia', '2020-08-29 21:05:33', '2020-08-29 21:28:01', 11, 1, '1', NULL),
(13, '2020-11-15', '2020-12-01', 500, 25, 'sub', 'madunia', '2020-08-29 21:05:33', '2020-08-29 21:05:33', 11, 1, NULL, NULL),
(14, '2020-09-15', '2021-06-25', 6000, 25, 'main', 'madunia', '2020-08-30 15:19:11', '2020-08-30 15:19:11', NULL, 1, NULL, NULL),
(15, '2020-09-15', '2020-10-15', 2000, 25, 'sub', 'madunia', '2020-08-30 15:24:57', '2020-08-30 15:24:57', 14, 1, NULL, NULL),
(16, '2020-10-15', '2020-12-15', 4000, 25, 'sub', 'madunia', '2020-08-30 15:24:57', '2020-08-30 15:24:57', 14, 1, NULL, NULL),
(17, '2020-09-29', '2021-12-01', 4000, 25, 'main', 'madunia', '2020-08-30 16:54:17', '2020-08-30 16:54:17', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_payments`
--

CREATE TABLE `account_payments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `installment_id` int(11) DEFAULT NULL,
  `value` float NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `payment_type` enum('store','check') COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `check_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expenses_main_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reword_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_payments`
--

INSERT INTO `account_payments` (`id`, `student_id`, `installment_id`, `value`, `user_id`, `date`, `attachment`, `notes`, `discount`, `payment_type`, `store_id`, `check_number`, `account_number`, `bank_name`, `branch`, `expenses_main_id`, `created_at`, `updated_at`, `reword_id`) VALUES
(1, 10, 4, 3500, 1, '2020-09-30', 'uploads/payments/159835281336336.png', 'من رئيس مجلس الاداره', 500, 'store', 2, NULL, NULL, NULL, NULL, NULL, '2020-08-25 16:53:33', '2020-08-25 16:53:33', NULL),
(2, NULL, 11, 2000, NULL, '2020-08-28', NULL, NULL, 0, 'store', 5, NULL, NULL, NULL, NULL, NULL, '2020-08-29 20:48:19', '2020-08-29 20:48:19', 3),
(3, NULL, 11, 500, NULL, '2020-08-29', NULL, NULL, NULL, 'store', 5, NULL, NULL, NULL, NULL, NULL, '2020-08-29 20:56:02', '2020-08-29 20:56:02', NULL),
(4, NULL, 12, 500, NULL, '2020-11-02', NULL, NULL, NULL, 'store', 5, NULL, NULL, NULL, NULL, NULL, '2020-08-29 21:06:53', '2020-08-29 21:06:53', NULL),
(5, NULL, 12, 500, NULL, '2020-08-29', NULL, NULL, NULL, 'store', 5, NULL, NULL, NULL, NULL, NULL, '2020-08-29 21:28:01', '2020-08-29 21:28:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_plans`
--

CREATE TABLE `account_plans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expense_maincategory_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `value` float NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_plans`
--

INSERT INTO `account_plans` (`id`, `name`, `expense_maincategory_id`, `level_id`, `value`, `academic_year_id`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'plan1', 3, 1, 4000, 8, NULL, '2020-08-25 13:16:59', '2020-08-25 13:16:59'),
(3, 'خطة الترم الاول', 3, 1, 4000, 4, 'ملاحظات', '2020-08-25 13:47:14', '2020-08-25 13:47:14'),
(4, 'خطه الاقساط 3', 3, 1, 5000, 11, NULL, '2020-08-29 19:28:36', '2020-08-29 19:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `account_plan_case_constraints`
--

CREATE TABLE `account_plan_case_constraints` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `case_constraint_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_plan_case_constraints`
--

INSERT INTO `account_plan_case_constraints` (`id`, `plan_id`, `case_constraint_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2020-08-25 13:17:00', '2020-08-25 13:17:00'),
(2, 2, 2, '2020-08-25 13:17:00', '2020-08-25 13:17:00'),
(3, 3, 1, '2020-08-25 13:47:15', '2020-08-25 13:47:15'),
(4, 3, 2, '2020-08-25 13:47:15', '2020-08-25 13:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `account_plan_details`
--

CREATE TABLE `account_plan_details` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `value` float NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fine_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_plan_details`
--

INSERT INTO `account_plan_details` (`id`, `plan_id`, `date_from`, `date_to`, `value`, `notes`, `fine_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2020-08-06', '2020-08-14', 2000, NULL, NULL, '2020-08-25 13:16:59', '2020-08-25 13:16:59'),
(2, 2, '2020-08-04', '2020-08-27', 2000, NULL, NULL, '2020-08-25 13:17:00', '2020-08-25 13:17:00'),
(3, 3, '2020-08-01', '2020-08-13', 1000, '1', NULL, '2020-08-25 13:47:14', '2020-08-25 13:47:14'),
(4, 3, '2020-08-19', '2020-08-28', 3000, '2', NULL, '2020-08-25 13:47:15', '2020-08-25 13:47:15'),
(5, 4, '2020-09-15', '2020-09-30', 1000, NULL, NULL, '2020-08-29 19:28:36', '2020-08-29 19:28:36'),
(6, 4, '2020-10-15', '2020-12-01', 2000, NULL, NULL, '2020-08-29 19:28:36', '2020-08-29 19:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `account_plan_expense_maincategories`
--

CREATE TABLE `account_plan_expense_maincategories` (
  `id` int(11) NOT NULL,
  `plan_detail_id` int(11) NOT NULL,
  `expense_maincategory_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_plan_expense_maincategories`
--

INSERT INTO `account_plan_expense_maincategories` (`id`, `plan_detail_id`, `expense_maincategory_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-08-25 13:16:59', '2020-08-25 13:16:59'),
(2, 2, 2, '2020-08-25 13:17:00', '2020-08-25 13:17:00'),
(3, 2, 3, '2020-08-25 13:17:00', '2020-08-25 13:17:00'),
(4, 3, 1, '2020-08-25 13:47:15', '2020-08-25 13:47:15'),
(5, 3, 2, '2020-08-25 13:47:15', '2020-08-25 13:47:15'),
(6, 4, 3, '2020-08-25 13:47:15', '2020-08-25 13:47:15'),
(7, 5, 2, '2020-08-29 19:28:36', '2020-08-29 19:28:36'),
(8, 5, 4, '2020-08-29 19:28:36', '2020-08-29 19:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `account_registeration_status_expenses`
--

CREATE TABLE `account_registeration_status_expenses` (
  `id` int(11) NOT NULL,
  `registeration_status_id` int(11) NOT NULL,
  `expenses_maincategory_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_rewords`
--

CREATE TABLE `account_rewords` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` float NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_rewords`
--

INSERT INTO `account_rewords` (`id`, `name`, `value`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'مكافاه تفوق رياضى', 300, NULL, '2020-08-29 19:30:39', '2020-08-29 19:30:39'),
(2, 'مكافاه تفوق علمى', 500, NULL, '2020-08-29 19:31:01', '2020-08-29 19:31:01'),
(3, 'اخرى', 0, NULL, '2020-08-29 19:31:12', '2020-08-29 19:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `account_stores`
--

CREATE TABLE `account_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `init_balance` float NOT NULL,
  `balance` float NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_stores`
--

INSERT INTO `account_stores` (`id`, `name`, `address`, `init_balance`, `balance`, `notes`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'خزنة شؤن الطلاب', NULL, 1000, 4800, NULL, 1, '2020-08-22 18:18:23', '2020-08-30 12:37:49'),
(3, 'خزنه وزاره التربيه والتعليم', 'الوزاره', 0, 100009, NULL, 1, '2020-08-23 20:16:47', '2020-08-23 20:20:36'),
(4, 'خزنه التحويلات والمقاصه', 'المعهد', 1000, 4000, NULL, 1, '2020-08-25 17:26:11', '2020-08-25 21:49:26'),
(5, 'الخزنه الرئيسيه', 'خزنه فى المعهد', 1000, 1000, NULL, 1, '2020-08-29 18:06:42', '2020-08-30 12:11:16'),
(6, 'خزنه التعاملات اليوميه', NULL, 1000, 900, NULL, 1, '2020-08-30 12:13:27', '2020-08-30 12:47:38'),
(7, 'خزنه تجربه', NULL, 0, 500, NULL, 1, '2020-08-30 12:51:48', '2020-08-30 12:55:22'),
(8, 'خزنه تجربه 2', NULL, 0, 5000, NULL, 1, '2020-08-30 12:53:22', '2020-08-30 13:02:44'),
(9, 'خزنه المصروفات', NULL, 0, 1000, NULL, 1, '2020-08-30 13:05:39', '2020-08-30 13:06:30'),
(10, 'خزنه رئيسيه 2', NULL, 0, 4000, NULL, 1, '2020-08-30 14:38:56', '2020-08-30 14:48:55');

-- --------------------------------------------------------

--
-- Table structure for table `account_transformations`
--

CREATE TABLE `account_transformations` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `bank_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `value` float NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('bank_to_store','store_to_bank') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_transformations`
--

INSERT INTO `account_transformations` (`id`, `date`, `bank_id`, `store_id`, `value`, `notes`, `attachment`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(3, '2020-08-22', 3, 2, 500, NULL, NULL, 1, 'bank_to_store', '2020-08-22 19:58:40', '2020-08-22 19:58:40'),
(4, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:00:06', '2020-08-22 20:00:06'),
(5, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:00:50', '2020-08-22 20:00:50'),
(6, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:01:26', '2020-08-22 20:01:26'),
(7, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:02:44', '2020-08-22 20:02:44'),
(8, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:03:25', '2020-08-22 20:03:25'),
(9, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:06:33', '2020-08-22 20:06:33'),
(10, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:07:16', '2020-08-22 20:07:16'),
(11, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'store_to_bank', '2020-08-22 20:07:32', '2020-08-22 20:07:32'),
(12, '2020-08-23', 6, 3, 100000, NULL, '2231.png', 1, 'bank_to_store', '2020-08-23 20:18:34', '2020-08-23 20:18:34'),
(13, '2020-08-23', 6, 3, 9, NULL, NULL, 1, 'bank_to_store', '2020-08-23 20:20:36', '2020-08-23 20:20:36'),
(14, '2020-08-25', 9, 4, 1000, NULL, 'uploads/transformations/159835486378901.png', 1, 'bank_to_store', '2020-08-25 11:27:43', '2020-08-25 17:27:43'),
(15, '2020-08-25', 9, 4, 1000, NULL, NULL, 1, 'bank_to_store', '2020-08-25 21:49:26', '2020-08-25 21:49:26'),
(16, '2020-08-29', 10, 5, 1000, NULL, NULL, 1, 'bank_to_store', '2020-08-29 18:15:58', '2020-08-29 18:15:58'),
(17, '2020-08-30', 13, 10, 3000, NULL, NULL, 1, 'bank_to_store', '2020-08-30 14:41:16', '2020-08-30 14:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `account_trees`
--

CREATE TABLE `account_trees` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_trees`
--

INSERT INTO `account_trees` (`id`, `parent`, `icon`, `type`, `text`, `created_at`, `updated_at`) VALUES
('j1_1', '#', 'fa  fa-folder-o', 'default', 'ايرادات', '2018-09-10 16:50:19', '2018-09-10 16:50:19'),
('j1_2', '#', 'fa  fa-folder-o', 'default', 'مصروفات', '2018-09-10 16:50:20', '2018-09-10 16:50:20'),
('j1_6', 'j1_2', 'fa  fa-folder-o', 'default', 'عربيه', '2019-01-30 21:08:34', '2019-01-30 21:08:38'),
('j1_8', 'j1_2', 'fa  fa-folder-o', 'default', 'سلفه', '2019-02-05 23:09:51', '2019-02-05 23:09:55'),
('j1_9', 'j1_2', 'fa  fa-folder-o', 'default', 'شهريه', '2019-02-05 23:09:58', '2019-02-05 23:10:11'),
('j1_14', 'j1_2', 'fa  fa-folder-o', 'default', 'ادوات مكتبيه', '2019-02-12 23:38:50', '2019-02-12 23:39:06'),
('j1_15', 'j1_2', 'fa  fa-folder-o', 'default', 'مواصلات', '2019-02-12 23:58:51', '2019-02-12 23:58:56'),
('j1_16', 'j1_2', 'fa  fa-folder-o', 'default', 'عمله', '2019-02-23 17:27:17', '2019-02-23 17:27:21'),
('j1_17', 'j1_2', 'fa  fa-folder-o', 'default', 'صنفره', '2019-02-23 17:27:24', '2019-02-23 17:27:28'),
('j1_18', 'j1_2', 'fa  fa-folder-o', 'default', 'مصروفات عامة', '2019-02-23 23:54:26', '2019-02-23 23:54:54'),
('j1_19', 'j1_1', 'fa  fa-folder-o', 'default', 'صرافه', '2019-02-24 17:49:07', '2019-02-24 17:49:12'),
('j1_5', 'j1_2', 'fa  fa-folder-o', 'default', 'مرتبات', '2019-02-28 22:05:24', '2019-02-28 22:05:35'),
('j1_21', 'j1_2', 'fa  fa-folder-o', 'default', 'اكراميات', '2019-02-28 22:33:22', '2019-02-28 22:33:35'),
('j1_24', 'j1_2', 'fa  fa-folder-o', 'default', 'ايجار', '2019-03-03 22:47:50', '2019-03-03 22:48:01'),
('j1_25', 'j1_1', 'fa  fa-folder-o', 'default', 'خرده', '2019-03-03 23:34:32', '2019-03-03 23:34:36'),
('j1_29', 'j1_2', 'fa  fa-folder-o', 'default', 'تصنيع', '2019-03-07 21:41:39', '2019-03-07 21:41:49'),
('j1_7', 'j1_2', 'fa  fa-folder-o', 'default', 'تامينات', '2019-03-09 20:28:29', '2019-03-09 20:28:35'),
('j1_27', 'j1_2', 'fa  fa-folder-o', 'default', 'كلارك', '2019-03-09 23:13:41', '2019-03-09 23:14:14'),
('j1_32', 'j1_1', 'fa  fa-folder-o', 'default', 'عربيه', '2019-03-14 23:18:22', '2019-03-14 23:18:27'),
('j1_34', 'j1_2', 'fa  fa-folder-o', 'default', 'حديد اكتوبر/الرحاب', '2019-03-17 22:52:41', '2019-03-17 22:53:22'),
('j1_35', 'j1_1', 'fa  fa-folder-o', 'default', 'مردود نقديه', '2019-03-17 23:41:16', '2019-03-17 23:41:36'),
('j1_20', 'j1_2', 'fa  fa-folder-o', 'default', 'منظفات', '2019-03-27 17:24:13', '2019-03-27 17:24:59'),
('j1_4', 'j1_2', 'fa  fa-folder-o', 'default', 'ضرائب', '2019-09-05 01:15:28', '2019-09-05 01:15:39'),
('j1_11', 'j1_2', 'fa  fa-folder-o', 'default', 'صيانة', '2019-10-28 22:08:37', '2019-10-28 22:08:45'),
('j1_3', 'j1_2', 'fa  fa-folder-o', 'default', 'ارض اكتوبر', '2019-12-17 22:25:18', '2019-12-17 22:25:24'),
('j1_12', 'j1_2', 'fa  fa-folder-o', 'default', 'نقل', '2020-02-11 22:46:26', '2020-02-11 22:46:31'),
('j1_13', 'j1_2', 'fa  fa-folder-o', 'default', 'ضرائب', '2020-07-28 20:38:10', '2020-07-28 20:38:20'),
('j1_22', 'j1_2', 'fa  fa-folder-o', 'default', 'New node', '2020-08-30 12:07:50', '2020-08-30 12:07:50'),
('j1_23', 'j1_1', 'fa  fa-folder-o', 'default', 'ايجار كافتريا', '2020-08-30 12:08:19', '2020-08-30 12:08:37'),
('j1_26', 'j1_23', 'fa  fa-folder-o', 'default', 'ايراد مشروبات', '2020-08-30 12:08:45', '2020-08-30 12:08:55'),
('j1_28', 'j1_23', 'fa  fa-folder-o', 'default', 'ايراد تاجير الجنينه', '2020-08-30 12:09:09', '2020-08-30 12:09:23'),
('j1_10', 'j1_1', 'fa  fa-folder-o', 'default', 'تاجير باص', '2020-08-30 14:44:06', '2020-08-30 14:44:32'),
('j1_30', 'j1_10', 'fa  fa-folder-o', 'default', 'تاجير باص ذهاب', '2020-08-30 14:44:38', '2020-08-30 14:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality_id` int(10) UNSIGNED DEFAULT NULL,
  `gender` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_years_id` int(10) UNSIGNED DEFAULT NULL,
  `registeration_date` date DEFAULT NULL,
  `qualification_types_id` int(10) UNSIGNED DEFAULT NULL,
  `qualification_id` int(11) DEFAULT NULL,
  `qualification_date` date DEFAULT NULL,
  `qualification_set_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_1_id` int(10) UNSIGNED DEFAULT NULL,
  `language_2_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `government_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `religion` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `military_status_id` int(10) UNSIGNED DEFAULT NULL,
  `military_area_id` int(10) UNSIGNED DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` float DEFAULT NULL,
  `triple_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_status_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_method_id` int(10) UNSIGNED DEFAULT NULL,
  `national_id_date` date DEFAULT NULL,
  `national_id_place` int(10) UNSIGNED DEFAULT NULL,
  `parent_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_job_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relative_relation_id` int(10) UNSIGNED DEFAULT NULL,
  `personal_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance_date` date DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writen_by` int(10) UNSIGNED NOT NULL,
  `case_constraint_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `name`, `code`, `email`, `nationality_id`, `gender`, `academic_years_id`, `registeration_date`, `qualification_types_id`, `qualification_id`, `qualification_date`, `qualification_set_number`, `language_1_id`, `language_2_id`, `city_id`, `government_id`, `country_id`, `religion`, `military_status_id`, `military_area_id`, `national_id`, `password`, `grade`, `triple_number`, `address`, `birth_address`, `phone_1`, `registration_status_id`, `registration_method_id`, `national_id_date`, `national_id_place`, `parent_name`, `parent_national_id`, `parent_job_id`, `parent_address`, `parent_phone`, `relative_relation_id`, `personal_photo`, `acceptance_code`, `acceptance_date`, `level_id`, `status`, `writen_by`, `case_constraint_id`, `created_at`, `updated_at`) VALUES
(10, 'محمد رفعت', '2020-08-25-07:46:59-79440', '', 1, '1', 11, '2020-08-08', 7, 1, '2020-08-01', '1250', 1, 2, 6, 3, 1, '1', 1, 1, '58742251232444', '1250', 400, '123456789', 'Cairo - Giza', 'Cairo', '01100968182', 3, 3, '2013-08-12', 1, 'رفعت', '45871254782', 2, 'القاهرة', '01100968184', NULL, '/uploads/applications/10/159834161944785.jpeg', '2540', '2020-08-27', 2, '1', 1, NULL, '2020-08-25 13:46:59', '2020-08-25 21:23:55'),
(11, 'مريم محمد ابوالخير محمد عبدالصمد', '2020-08-26-12:39:51-72712', 'mariam@fa-hists.edu.eg', NULL, '0', 11, '2020-09-21', 16, 1, '2020-07-21', '20845', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29908200103123', '20845', 541, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/applications/11/159834639690951.png', '2540', '2020-08-27', 1, '0', 1, 4, '2020-08-25 15:06:36', '2020-08-26 18:39:51'),
(12, 'على ماهر معوض محمد', '2020-08-26-13:23:50-28643', 'ee@email.com', NULL, '0', 11, '2020-09-05', 16, 1, '2020-07-15', '20565', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29905022201974', '20565', 420, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/applications/12/159836533221237.jpeg', '2540', '2020-08-27', 1, '0', 1, 2, '2020-08-25 15:16:01', '2020-08-26 19:23:50'),
(14, 'وسام جيد نجاح توفيق', '2020-08-29-11:48:43-34080', 'wessam@email.com', 1, '0', 11, '2020-08-22', 16, 1, '2020-08-01', '5050', 1, 2, 4, 3, 1, '0', 2, 1, '20000501805019', '102030', 440, '123456789', 'بنى سويف - الواسطى', 'بنى سويف - الواسطى', '011542541211', 3, 2, '2018-08-01', 3, 'جيد', '19640805214566', 6, 'بنى سويف - الواسطى', '01245789632', NULL, '/uploads/applications/14/159870172398851.jpeg', '44404', '2020-08-27', 1, NULL, 1, 11, '2020-08-29 16:31:12', '2020-08-29 17:48:43'),
(15, 'على ابراهيم على', '2020-08-29-10:41:58-55841', 'ali@gmail.com', 1, '0', 11, '2020-08-08', 16, 1, '2020-08-22', '2101400', 1, 2, 9, 3, 1, '0', NULL, NULL, '19990201055855', '2012325', 500, NULL, 'بنى سويف - الفشن', 'بنى سويف - الفشن', '01020305060', 2, 2, '2020-08-20', 3, 'ابراهيم على صابر', '1969020506666', 4, 'بنى سويف - الفشن', '012548774410', NULL, '/uploads/applications/15/159869751816476.jpeg', '102020', '2020-08-21', NULL, NULL, 1, 2, '2020-08-29 16:38:38', '2020-08-29 16:41:58'),
(16, 'امال ماهر عباس', '2020-08-29-10:46:51-35673', 'amal@gmail.com', 1, '0', 11, '2020-08-21', 16, 1, '2020-08-13', '102030', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '23232323232323', '255587', 6000, NULL, 'اى كلام', 'اى كلام', NULL, 2, 2, '2020-08-20', 8, 'اى كلام', '223234343242424', 3, 'اى كلام', 'اى كلام', NULL, NULL, '34343434', '2020-08-21', 1, NULL, 1, 10, '2020-08-29 16:46:51', '2020-08-29 16:46:51'),
(17, 'هالة فهمى', '2020-08-29-11:43:47-29473', 'hala@gmail.com', 1, '0', 11, '2020-08-28', 16, 1, '2020-08-27', '3210', 1, 2, 8, 3, 1, '0', NULL, NULL, '322333323344343', '123112132', 500, NULL, 'بنى سويف - الفشن', 'بنى سويف - الفشن', '2323', 2, 8, '2020-08-16', 6, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/applications/17/159870142798562.jpg', '2323', '2020-08-11', 1, NULL, 1, 12, '2020-08-29 17:43:47', '2020-08-29 17:43:47'),
(19, 'محمد طارق محمد اسماعيل', '2020-08-29-11:59:54-86411', 'touriq@email.com', NULL, '0', 11, '2020-09-04', 16, 1, '2020-08-01', '741852', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '741852963789123', '45689', 450, NULL, 'بنى سويف', 'بنى سويف', NULL, 3, 2, '2020-08-07', 3, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/applications/19/159870239429792.png', '7441852963', '2020-08-06', 1, '1', 1, 9, '2020-08-29 17:59:54', '2020-08-29 19:16:22'),
(20, 'مختار عبد الله محمد', '2020-09-01-09:44:57-67354', 'admin@adamin.com', NULL, '0', 11, '2020-08-21', 19, 4, '2020-08-16', '222222000', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '858453564365', '25550', 710, NULL, '22458', NULL, NULL, 4, 8, '2020-08-01', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8080', '2020-08-14', 1, NULL, 1, 12, '2020-08-29 21:14:41', '2020-09-01 15:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `application_attachment`
--

CREATE TABLE `application_attachment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_required`
--

CREATE TABLE `application_required` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_required`
--

INSERT INTO `application_required` (`id`, `name`, `display_name`, `required`, `created_at`, `updated_at`) VALUES
(2, 'address', 'عنوان الطالب', '0', '2020-08-05 06:53:19', '2020-08-11 14:25:59'),
(4, 'national_id', ' رقم البطاقة الشخصية ', '0', '2020-08-05 06:53:19', '2020-08-11 14:25:59'),
(5, 'national_id_date', ' تاريخ اصدار البطاقة الشخصية  ', '0', '2020-08-05 06:53:19', '2020-08-11 14:25:59'),
(6, 'national_id_place', ' مكان اصدار البطاقة الشخصية', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(7, 'triple_number', ' الرقم الثلاثى ', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(8, 'registeration_date', ' تاريخ تقديم طلب الالتحاق ', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(9, 'military_area_id', 'جهة التجنيد', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(10, 'military_status_id', 'حالة التجنيد ', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(14, 'qualification_date', ' تاريخ الحصول على شهادة المؤهل ', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(15, 'qualification_set_number', '  رقم الجلوس  ', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(16, 'nationality_id', 'الجنسية', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(17, 'religion', 'الديانة', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(18, 'gender', 'الجنس', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(19, 'country_id', 'الدولة', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(20, 'government_id', 'المحافظة', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(21, 'city_id', 'المدينة', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(22, 'language_1_id', ' لغة اجنبية اولى ', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(23, 'language_2_id', ' لغة اجنبية ثانية ', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(25, 'phone_1', ' تليفون الطالب المتقدم ', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(26, 'parent_name', 'اسم ولى الامر ', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(27, 'parent_national_id', 'رقم البطاقة الشخصية لولى الامر', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(28, 'parent_job_id', 'وظيفة ولى الامر', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(29, 'parent_address', 'عنوان ولى الامر', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(30, 'parent_phone', ' تليفون ولى الامر ', '0', '2020-08-05 06:53:19', '2020-08-10 19:01:58'),
(31, 'email', 'البريد الالكترونى', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_constraints`
--

CREATE TABLE `case_constraints` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `case_constraints`
--

INSERT INTO `case_constraints` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'مستجد مباشر', NULL, '2020-08-26 13:24:27', '2020-08-26 17:26:26'),
(3, 'باقى للاعادة', NULL, '2020-08-26 13:24:50', '2020-08-26 13:24:50'),
(4, 'مستجد بفرصه', NULL, '2020-08-26 17:23:12', '2020-08-26 17:23:12'),
(5, 'عذر مستجد تيرم 1', NULL, '2020-08-26 17:24:17', '2020-08-26 17:24:17'),
(6, 'عذر مستجد تيرم 2', NULL, '2020-08-26 17:24:44', '2020-08-26 17:24:44'),
(7, 'عذر مستجد عام كامل', NULL, '2020-08-26 17:25:05', '2020-08-26 17:25:05'),
(8, 'عذر غير مستجد تحويل', NULL, '2020-08-26 17:25:28', '2020-08-26 17:25:28'),
(9, 'عذر مستجد بفرصه', NULL, '2020-08-26 17:25:56', '2020-08-26 17:25:56'),
(10, 'عذر مستجد مباشر', NULL, '2020-08-26 17:26:12', '2020-08-26 17:26:12'),
(11, 'غير مستجد تحويل', NULL, '2020-08-26 17:26:44', '2020-08-26 17:26:44'),
(12, 'ايقاف قيد مستجد', NULL, '2020-08-26 17:27:03', '2020-08-26 17:27:03'),
(13, 'ايقاف قيد', NULL, '2020-09-13 11:57:15', '2020-09-13 12:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `government_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `government_id`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'الخرطوم', 2, NULL, '2020-08-05 08:17:08', '2020-08-05 08:17:08'),
(4, 'مركز الواسطى', 3, NULL, '2020-08-08 21:04:26', '2020-08-15 18:18:25'),
(5, 'مركز ناصر', 3, NULL, '2020-08-08 21:04:42', '2020-08-11 14:14:22'),
(6, 'مركز اهناسيا', 3, NULL, '2020-08-08 21:05:40', '2020-08-11 14:14:50'),
(7, 'مركز ببا', 3, NULL, '2020-08-08 21:07:13', '2020-08-11 14:15:17'),
(8, 'مركز سمسطا', 3, NULL, '2020-08-08 21:07:37', '2020-08-11 14:18:42'),
(9, 'مركز الفشن', 3, NULL, '2020-08-09 12:37:26', '2020-08-11 14:19:06'),
(10, 'مركز ابشواي', 4, NULL, '2020-08-11 14:25:32', '2020-08-11 19:08:52'),
(11, 'مركز اطسا', 4, NULL, '2020-08-11 14:26:15', '2020-08-11 19:08:31'),
(12, 'مركز الفيوم', 4, NULL, '2020-08-11 14:26:44', '2020-08-11 14:26:44'),
(13, 'مركز سنورس', 4, NULL, '2020-08-11 14:27:08', '2020-08-11 14:27:08'),
(14, 'مركز طامية', 4, NULL, '2020-08-11 14:27:46', '2020-08-11 14:27:46'),
(15, 'مركز كرداسة', 7, NULL, '2020-08-11 19:09:15', '2020-08-11 19:09:15'),
(16, 'مركز الحوامدية', 7, NULL, '2020-08-11 19:09:32', '2020-08-11 19:09:32'),
(17, 'مركز الواحات', 7, NULL, '2020-08-11 19:09:52', '2020-08-11 19:09:52'),
(18, 'مركز أطفيح', 7, NULL, '2020-08-11 19:10:19', '2020-08-11 19:10:19'),
(19, 'مركز أبو النمرس', 7, NULL, '2020-08-11 19:10:43', '2020-08-11 19:10:43'),
(20, 'مركز البدرشين', 7, NULL, '2020-08-11 19:10:59', '2020-08-11 19:10:59'),
(21, 'مركز القناطر', 7, NULL, '2020-08-11 19:11:18', '2020-08-11 19:11:18'),
(22, 'بنها العسل', 8, NULL, '2020-08-15 16:10:48', '2020-08-15 16:10:48'),
(23, 'قليوب', 8, NULL, '2020-08-15 16:57:07', '2020-08-15 16:57:07'),
(24, 'القناطر الخيرية', 8, NULL, '2020-08-15 16:58:52', '2020-08-15 16:58:52'),
(25, 'شبرا الخيمة', 8, NULL, '2020-08-15 17:33:46', '2020-08-15 17:33:46'),
(26, 'الخانكة', 8, NULL, '2020-08-15 17:35:44', '2020-08-15 17:35:44'),
(27, 'كفر شكر', 8, NULL, '2020-08-15 17:36:28', '2020-08-15 17:36:28'),
(28, 'شبين القناطر', 8, NULL, '2020-08-15 17:36:48', '2020-08-15 17:36:48'),
(29, 'طوخ', 8, NULL, '2020-08-15 17:37:30', '2020-08-15 17:37:30'),
(30, 'عين حلوان', 9, NULL, '2020-08-15 17:55:01', '2020-08-15 17:55:01'),
(31, 'وادي حوف', 9, NULL, '2020-08-15 17:55:23', '2020-08-15 17:55:23'),
(32, 'حدائق حلوان', 9, NULL, '2020-08-15 17:56:35', '2020-08-15 17:56:35'),
(33, 'حي المعصرة', 9, NULL, '2020-08-15 17:56:58', '2020-08-15 17:57:26'),
(34, 'مدينة 15 مايو', 9, NULL, '2020-08-15 17:58:16', '2020-08-15 17:58:16'),
(35, 'مدينة المعادي', 9, NULL, '2020-08-15 18:09:06', '2020-08-15 18:09:06'),
(36, 'مدينة الصف', 9, NULL, '2020-08-15 18:10:42', '2020-08-15 18:10:42'),
(37, 'مركز أطفيح', 9, NULL, '2020-08-15 18:11:28', '2020-08-15 18:11:28'),
(38, 'حي النهضة والهايكستب', 9, NULL, '2020-08-15 18:12:11', '2020-08-15 18:12:11'),
(39, 'حي المرج', 1, NULL, '2020-08-15 18:22:36', '2020-08-15 18:22:36'),
(40, 'حي المطرية', 1, NULL, '2020-08-15 18:24:44', '2020-08-15 18:24:44'),
(41, 'حي عين شمس', 1, NULL, '2020-08-15 18:25:22', '2020-08-15 18:25:22'),
(42, 'حي عين شمس', 1, NULL, '2020-08-15 18:27:57', '2020-08-15 18:27:57'),
(43, 'حي السلام أول', 1, NULL, '2020-08-15 18:28:24', '2020-08-15 18:28:24'),
(44, 'حي السلام ثان', 1, NULL, '2020-08-15 18:28:42', '2020-08-15 18:28:42'),
(45, 'حي النزهة', 1, NULL, '2020-08-15 18:29:08', '2020-08-15 18:29:08'),
(46, 'حي مصر الجديدة', 1, NULL, '2020-08-15 18:29:25', '2020-08-15 18:29:25'),
(47, 'حي شرق مدينة نصر', 1, NULL, '2020-08-15 18:29:47', '2020-08-15 18:29:47'),
(48, 'حي غرب مدينة نصر', 1, NULL, '2020-08-15 18:30:06', '2020-08-15 18:30:06'),
(49, 'حي منشأة ناصر', 1, NULL, '2020-08-15 18:30:27', '2020-08-15 18:30:27'),
(50, 'حى الوايلي', 1, NULL, '2020-08-15 18:31:08', '2020-08-15 18:31:08'),
(51, 'حى باب الشعرية', 1, NULL, '2020-08-15 18:31:31', '2020-08-15 18:31:31'),
(52, 'حي وسط', 1, NULL, '2020-08-15 18:32:14', '2020-08-15 18:32:14'),
(53, 'حي الموسكى', 1, NULL, '2020-08-15 18:32:28', '2020-08-15 18:32:28'),
(54, 'حي الأزبكية', 1, NULL, '2020-08-15 18:32:51', '2020-08-15 18:32:51'),
(55, 'حي عابدين', 1, NULL, '2020-08-15 18:33:08', '2020-08-15 18:33:27'),
(56, 'حي بولاق', 1, NULL, '2020-08-15 18:33:57', '2020-08-15 18:33:57'),
(57, 'حي غرب', 1, NULL, '2020-08-15 18:34:25', '2020-08-15 18:34:25'),
(58, 'حي الزيتون', 1, NULL, '2020-08-15 18:40:06', '2020-08-15 18:40:06'),
(59, 'حي حدائق القبة', 1, NULL, '2020-08-15 18:40:37', '2020-08-15 18:40:37'),
(60, 'حي الزاوية الحمراء', 1, NULL, '2020-08-15 18:41:01', '2020-08-15 18:41:01'),
(61, 'حي الشرابية', 1, NULL, '2020-08-15 18:41:34', '2020-08-15 18:41:34'),
(62, 'حي الساحل', 1, NULL, '2020-08-15 18:42:06', '2020-08-15 18:42:06'),
(63, 'حي شبرا', 1, NULL, '2020-08-15 18:42:27', '2020-08-15 18:42:27'),
(64, 'حي روض الفرج', 1, NULL, '2020-08-15 18:42:58', '2020-08-15 18:42:58'),
(65, 'حي السيدة زينب', 1, NULL, '2020-08-15 18:43:44', '2020-08-15 18:43:44'),
(66, 'حي مصر القديمة', 1, NULL, '2020-08-15 18:44:31', '2020-08-15 18:44:31'),
(67, 'حي الخليفة', 1, NULL, '2020-08-15 18:45:04', '2020-08-15 18:45:04'),
(68, 'حي المقطم', 1, NULL, '2020-08-15 18:45:47', '2020-08-15 18:45:47'),
(69, 'حي البساتين', 1, NULL, '2020-08-15 19:12:43', '2020-08-15 19:12:43'),
(70, 'حي دار السلام', 1, NULL, '2020-08-15 19:13:05', '2020-08-15 19:13:05'),
(71, 'حي المعادي', 1, NULL, '2020-08-15 19:13:47', '2020-08-15 19:13:47'),
(72, 'حي طرة', 1, NULL, '2020-08-15 19:14:28', '2020-08-15 19:14:28'),
(73, 'حي حلوان', 1, NULL, '2020-08-15 19:14:55', '2020-08-15 19:14:55'),
(77, 'طهطا', 19, NULL, '2020-09-18 14:50:40', '2020-09-18 16:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `constraint_status`
--

CREATE TABLE `constraint_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `constraint_status`
--

INSERT INTO `constraint_status` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'مازال متقدم', NULL, '2020-08-26 18:10:51', '2020-08-26 18:10:51'),
(2, 'مقيد', NULL, '2020-08-26 18:11:10', '2020-08-26 18:11:10'),
(3, 'بالارشيف', 'بالارشيف بالارشيف', '2020-08-26 18:11:25', '2020-09-23 10:24:53'),
(6, 'rgawrgawrgawrg', NULL, '2020-09-23 10:27:37', '2020-09-23 10:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'جمهورية مصر العربية', NULL, '2020-08-05 08:16:16', '2020-08-05 08:16:16'),
(2, 'جمهورية السودان', NULL, '2020-08-05 08:16:24', '2020-08-05 08:16:24'),
(4, 'جمهوريه ليبيا', NULL, '2020-08-11 13:54:07', '2020-08-11 18:14:25'),
(6, 'فلسطين', NULL, '2020-09-12 11:27:49', '2020-09-12 11:27:49'),
(10, 'السودان', NULL, '2020-09-15 09:46:54', '2020-09-15 09:46:54'),
(12, 'تونس', NULL, '2020-09-15 10:08:29', '2020-09-15 10:08:29'),
(13, 'الكويت', NULL, '2020-09-15 10:11:59', '2020-09-15 10:11:59'),
(23, 'الامارات العربية المتحدة', NULL, '2020-09-15 10:52:48', '2020-09-17 16:00:32'),
(24, 'اليمن', 'اليمن', '2020-09-15 10:55:57', '2020-09-23 07:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `level_id`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'عام', 1, NULL, NULL, NULL),
(4, 'عام', 2, 'sdwwergwrg', '2020-08-09 20:51:07', '2020-09-22 05:18:07'),
(5, 'عام', 3, NULL, '2020-08-09 20:51:27', '2020-08-09 20:51:27'),
(6, 'عام', 4, NULL, '2020-08-09 20:51:45', '2020-08-09 20:51:45'),
(7, 'إداره الأعمال', 3, NULL, '2020-08-09 20:52:44', '2020-08-09 20:52:44'),
(8, 'إداره الأعمال', 4, NULL, '2020-08-09 20:53:07', '2020-08-09 20:53:07'),
(9, 'المحاسبه', 3, NULL, '2020-08-09 20:53:59', '2020-08-09 20:53:59'),
(10, 'المحاسبه', 4, NULL, '2020-08-09 20:54:48', '2020-08-09 20:54:48'),
(11, 'عام', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments_levels`
--

CREATE TABLE `departments_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `department_id`, `notes`, `created_at`, `updated_at`) VALUES
(13, 'عام', 11, NULL, '2020-08-11 18:48:33', '2020-08-11 18:48:33'),
(14, 'عام', 4, NULL, '2020-08-11 18:48:53', '2020-08-11 18:48:53'),
(15, 'تمويل', 7, NULL, '2020-08-11 18:50:11', '2020-08-11 18:50:11'),
(16, 'اداره', 7, NULL, '2020-08-11 18:51:05', '2020-08-11 18:51:05'),
(18, 'تمويل', 8, NULL, '2020-08-11 18:52:15', '2020-08-11 18:52:15'),
(19, 'اداره', 8, NULL, '2020-08-11 18:52:43', '2020-08-11 18:52:43'),
(20, 'محاسبه', 10, NULL, '2020-08-11 18:53:14', '2020-08-11 18:53:14'),
(22, 'محاسبه', 9, NULL, '2020-08-11 18:55:25', '2020-08-12 14:44:19');

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
-- Table structure for table `globale_settings`
--

CREATE TABLE `globale_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `globale_settings`
--

INSERT INTO `globale_settings` (`id`, `name`, `value`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'عميد المعهد', 'ا.د / احمد ابو القمصان', NULL, '2020-08-09 19:02:05', '2020-08-09 19:02:05'),
(2, 'institute name', 'المعهد العالى للعلوم الادارية', NULL, '2020-08-09 19:02:05', '2020-08-09 19:02:05'),
(3, 'institute address', 'بنى سويف', NULL, '2020-08-09 19:02:05', '2020-08-09 19:02:05'),
(4, '-', '2020-08-11', NULL, '2020-08-11 20:01:02', '2020-08-11 20:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `governments`
--

CREATE TABLE `governments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `governments`
--

INSERT INTO `governments` (`id`, `name`, `country_id`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'القاهرة', 1, NULL, '2020-08-05 08:16:36', '2020-08-05 08:16:36'),
(2, 'الخرطوم', 2, NULL, '2020-08-05 08:16:44', '2020-08-05 08:16:44'),
(3, 'بنى سويف', 1, NULL, '2020-08-11 14:07:08', '2020-08-11 14:07:08'),
(4, 'الفيوم', 1, NULL, '2020-08-11 14:07:47', '2020-08-11 14:07:47'),
(6, 'المنيا', 1, NULL, '2020-08-11 14:10:55', '2020-08-11 14:10:55'),
(7, 'الجيزه', 1, NULL, '2020-08-11 19:07:15', '2020-08-11 19:07:15'),
(8, 'القليوبيه', 1, NULL, '2020-08-15 16:08:31', '2020-08-15 16:08:31'),
(9, 'حلوان', 1, NULL, '2020-08-15 16:08:44', '2020-08-15 16:08:44'),
(11, 'حضرموت العمودى', 24, NULL, '2020-09-17 18:54:27', '2020-09-18 11:14:06'),
(12, 'الداون تاون', 13, NULL, '2020-09-17 19:07:14', '2020-09-17 19:07:14'),
(13, 'قنا', 1, NULL, '2020-09-17 19:21:58', '2020-09-17 19:21:58'),
(19, 'سوهاج', 1, NULL, '2020-09-17 20:41:36', '2020-09-23 08:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'اللغة الانجليزية', NULL, '2020-08-05 08:26:16', '2020-08-05 08:26:16'),
(2, 'اللغة الفرنسية', 'aswrgerg', '2020-08-05 08:26:26', '2020-09-21 11:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'الاول', NULL, '2020-08-05 08:24:02', '2020-08-31 15:48:29'),
(2, 'الثانى', NULL, '2020-08-05 08:24:02', '2020-08-05 08:24:02'),
(3, 'الثالث', NULL, '2020-08-09 20:49:09', '2020-08-09 20:49:09'),
(4, 'الرابع', NULL, '2020-08-09 20:49:57', '2020-08-09 20:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `login_histories`
--

CREATE TABLE `login_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_histories`
--

INSERT INTO `login_histories` (`id`, `created_at`, `updated_at`, `phone_details`, `user_id`, `ip`) VALUES
(2, '2020-05-29 16:36:05', '2020-05-29 16:36:05', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36</li>\n            </ul>\n        ', 1, '102.41.121.15'),
(3, '2020-05-29 16:37:20', '2020-05-29 16:37:20', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Windows NT 6.1; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Windows NT 6.1; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36</li>\n            </ul>\n        ', 1, '197.37.234.87'),
(4, '2020-05-29 17:17:56', '2020-05-29 17:17:56', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n            </ul>\n        ', 1, '196.154.143.204'),
(5, '2020-05-29 17:19:18', '2020-05-29 17:19:18', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n            </ul>\n        ', 6, '196.154.143.204'),
(6, '2020-05-29 17:20:24', '2020-05-29 17:20:24', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n            </ul>\n        ', 1, '196.154.143.204'),
(7, '2020-05-29 17:25:28', '2020-05-29 17:25:28', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n            </ul>\n        ', 1, '196.154.143.204'),
(8, '2020-09-23 06:43:53', '2020-09-23 06:43:53', 'Safari/537.36', 1, '127.0.0.1'),
(9, '2020-09-23 10:21:02', '2020-09-23 10:21:02', 'Safari/537.36', 1, '127.0.0.1');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_17_173338_create_academic_years_table', 1),
(5, '2020_07_18_201114_create_applications_table', 1),
(6, '2020_07_18_205107_create_team_work_control_tabl', 1),
(7, '2020_07_18_205312_create_parent_relation_type_tabl', 1),
(8, '2020_07_18_205445_create_globale_settings_table', 1),
(9, '2020_07_18_205734_create_military_areas_table', 1),
(10, '2020_07_18_205935_create_military_status_table', 1),
(11, '2020_07_18_210053_create_military_settings_table', 1),
(12, '2020_07_18_210320_create_nationalities_table', 1),
(13, '2020_07_18_210403_create_parent_jobs_table', 1),
(14, '2020_07_18_210440_create_countries_table', 1),
(15, '2020_07_18_210504_create_governments_table', 1),
(16, '2020_07_18_210655_create_cities_table', 1),
(17, '2020_07_18_210851_create_registeration_status_table', 1),
(18, '2020_07_18_211348_create_qualifications_table', 1),
(19, '2020_07_18_211440_create_qualification_years_table', 1),
(20, '2020_07_18_211859_create_departments_table', 1),
(21, '2020_07_18_212029_create_levels_table', 1),
(22, '2020_07_18_212229_create_languages_table', 1),
(23, '2020_07_18_212330_create_specializations_table', 1),
(24, '2020_07_19_063008_create_students_table', 1),
(25, '2020_07_19_063315_create_parents_table', 1),
(26, '2020_07_19_065711_create_attributes_table', 1),
(27, '2020_07_19_065835_create_student_attributes_table', 1),
(28, '2020_07_19_070059_create_student_military_history_table', 1),
(29, '2020_07_19_075825_create_qualification_types_table', 1),
(30, '2020_07_19_083616_create_required_documents_table', 1),
(31, '2020_07_19_105519_create_registration_methods_table', 1),
(32, '2020_07_19_111658_create_student_required_documents_table', 1),
(33, '2020_07_19_112201_create_terms_table', 1),
(34, '2020_07_19_112243_create_schools_table', 1),
(35, '2020_07_19_112703_create_student_logs_table', 1),
(36, '2020_07_19_113313_create_student_status_table', 1),
(37, '2020_07_25_072834_laratrust_setup_tables', 1),
(38, '2020_07_27_111504_create_table_departments_levels', 1),
(39, '2020_07_27_114107_create_divisions_table', 1),
(40, '2020_07_29_110101_add_column_phone_to_users', 1),
(41, '2020_07_29_125315_create_login_histories_table', 1),
(42, '2020_08_04_080915_add_coloumn_level_id_to_qualification_types', 1),
(43, '2020_08_04_103631_create_application_required_table', 1),
(44, '2020_08_08_072657_create_relative_relation_table', 2),
(45, '2020_08_08_081617_create_translations_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `military_areas`
--

CREATE TABLE `military_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `government_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `military_areas`
--

INSERT INTO `military_areas` (`id`, `name`, `government_id`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'الهايكستب', 1, NULL, '2020-08-05 08:21:57', '2020-08-05 08:21:57'),
(2, 'الجيزة الجيزة', 7, NULL, '2020-08-11 19:11:40', '2020-09-20 16:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `military_area_submision`
--

CREATE TABLE `military_area_submision` (
  `id` int(11) NOT NULL,
  `military_area_id` int(10) UNSIGNED NOT NULL,
  `government_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `military_area_submision`
--

INSERT INTO `military_area_submision` (`id`, `military_area_id`, `government_id`, `city_id`, `notes`, `created_at`, `updated_at`) VALUES
(4, 2, 7, 21, NULL, '2020-08-11 19:12:23', '2020-08-11 19:12:23'),
(2, 1, 1, 8, NULL, '2020-08-09 20:53:33', '2020-08-09 20:53:33'),
(3, 1, 2, 9, NULL, '2020-08-10 03:11:33', '2020-08-10 14:48:30'),
(5, 2, 3, 3, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(6, 2, 3, 4, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(7, 2, 3, 5, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(8, 2, 3, 7, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(9, 2, 3, 9, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(10, 2, 3, 10, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(11, 2, 3, 11, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(12, 1, 4, 12, NULL, '2020-08-11 19:42:46', '2020-08-11 19:42:46'),
(13, 1, 4, 13, NULL, '2020-08-11 19:42:46', '2020-08-11 19:42:46'),
(14, 1, 4, 14, NULL, '2020-08-11 19:42:46', '2020-08-11 19:42:46'),
(15, 1, 4, 18, NULL, '2020-08-11 19:42:46', '2020-08-11 19:42:46'),
(16, 2, 3, 3, NULL, '2020-08-11 19:46:06', '2020-08-11 19:46:06'),
(17, 2, 3, 4, NULL, '2020-08-11 19:46:06', '2020-08-11 19:46:06'),
(18, 2, 3, 5, NULL, '2020-08-11 19:46:06', '2020-08-11 19:46:06'),
(19, 2, 1, 6, NULL, '2020-08-11 19:46:06', '2020-08-11 19:48:22'),
(20, 1, 1, 2, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(21, 1, 1, 3, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(22, 1, 1, 4, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(23, 1, 1, 5, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(24, 1, 1, 6, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(25, 1, 1, 7, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(26, 1, 3, 3, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(27, 1, 3, 4, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(28, 1, 3, 5, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(29, 1, 3, 6, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(30, 1, 3, 7, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(31, 1, 3, 8, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(32, 1, 3, 9, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `military_course`
--

CREATE TABLE `military_course` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `military_course`
--

INSERT INTO `military_course` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'الدورة التدريبية العسكرية', NULL, '2020-08-15 07:38:13', '2020-08-15 07:38:13'),
(5, 'دوره حقوق الإنسان', NULL, '2020-08-18 18:59:49', '2020-08-18 18:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `military_course_collection`
--

CREATE TABLE `military_course_collection` (
  `id` bigint(20) NOT NULL,
  `military_course_id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `code` bigint(20) NOT NULL,
  `starts_in` date NOT NULL,
  `ends_in` date NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `military_course_collection`
--

INSERT INTO `military_course_collection` (`id`, `military_course_id`, `academic_year_id`, `code`, `starts_in`, `ends_in`, `notes`, `created_at`, `updated_at`) VALUES
(4, 2, 8, 12, '2020-08-04', '2020-08-08', NULL, '2020-08-17 12:53:08', '2020-08-17 19:01:49'),
(6, 2, 2, 15, '2020-08-21', '2020-08-25', NULL, '2020-08-18 14:00:35', '2020-08-18 14:00:35'),
(7, 2, 5, 37, '2021-01-01', '2021-01-14', NULL, '2020-08-18 19:17:02', '2020-08-18 19:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `military_course_collection_student`
--

CREATE TABLE `military_course_collection_student` (
  `id` int(11) NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `military_course_collection_id` int(10) UNSIGNED NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `military_settings`
--

CREATE TABLE `military_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `condition_age` int(11) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `military_status_id` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `military_settings`
--

INSERT INTO `military_settings` (`id`, `condition_age`, `reason`, `military_status_id`, `notes`, `created_at`, `updated_at`) VALUES
(2, 20, 'اعفاء مؤقت', 2, NULL, '2020-08-11 19:12:54', '2020-08-11 19:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `military_status`
--

CREATE TABLE `military_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `military_status`
--

INSERT INTO `military_status` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'اعفاء نهائى من اداء الخدمة العسكرية', NULL, '2020-08-05 08:22:21', '2020-08-05 08:22:21'),
(2, 'اعفاء مؤقت', NULL, '2020-08-05 08:22:28', '2020-08-05 08:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'مصرى', NULL, '2020-08-05 08:25:24', '2020-08-05 08:25:24'),
(2, 'سودانى', NULL, '2020-08-05 08:25:32', '2020-08-05 08:25:32'),
(4, 'ليبى', NULL, '2020-08-11 14:30:31', '2020-08-11 14:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `user_id`, `body`, `seen`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-23 20:10:52', '2020-08-23 20:10:52'),
(2, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-23 20:11:27', '2020-08-23 20:11:27'),
(3, 'اضافة بنك', 1, 'اضافة بنك', 0, 'fa fa-bank', '2020-08-23 20:12:11', '2020-08-23 20:12:11'),
(4, 'تعديل بنك', 1, 'تعديل بنك', 0, 'fa fa-bank', '2020-08-23 20:12:35', '2020-08-23 20:12:35'),
(5, 'حذف بنك', 1, 'حذف بنكالاسكان والتعمير', 0, 'fa fa-bank', '2020-08-23 20:13:58', '2020-08-23 20:13:58'),
(6, 'تعديل بنك', 1, 'تعديل بنك', 0, 'fa fa-bank', '2020-08-23 20:14:16', '2020-08-23 20:14:16'),
(7, 'حذف بنك', 1, 'حذف بنكالاهلى', 0, 'fa fa-bank', '2020-08-23 20:14:24', '2020-08-23 20:14:24'),
(8, 'اضافة بنك', 1, 'اضافة بنك', 0, 'fa fa-bank', '2020-08-23 20:14:57', '2020-08-23 20:14:57'),
(9, 'تعديل بنك', 1, 'تعديل بنك', 0, 'fa fa-bank', '2020-08-23 20:15:19', '2020-08-23 20:15:19'),
(10, 'تعديل بنك', 1, 'تعديل بنك', 0, 'fa fa-bank', '2020-08-23 20:15:37', '2020-08-23 20:15:37'),
(11, 'اضافة خزنه', 1, 'اضافة خزنه', 0, 'fa fa-money', '2020-08-23 20:16:47', '2020-08-23 20:16:47'),
(12, 'اضافة تحويل مالى', 1, 'اضافة تحويل مالى', 0, 'fa fa-transformation', '2020-08-23 20:18:35', '2020-08-23 20:18:35'),
(13, 'اضافة تحويل مالى', 1, 'اضافة تحويل مالى', 0, 'fa fa-transformation', '2020-08-23 20:20:36', '2020-08-23 20:20:36'),
(14, 'حذف بنك', 1, 'حذف بنكالاسكان والتعمير', 0, 'fa fa-bank', '2020-08-23 20:24:35', '2020-08-23 20:24:35'),
(15, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-24 17:37:31', '2020-08-24 17:37:31'),
(16, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-24 17:38:16', '2020-08-24 17:38:16'),
(17, 'اضافة بنك', 1, 'اضافة بنك', 0, 'fa fa-bank', '2020-08-24 17:40:07', '2020-08-24 17:40:07'),
(18, 'تعديل بنك', 1, 'تعديل بنك', 0, 'fa fa-bank', '2020-08-24 17:40:30', '2020-08-24 17:40:30'),
(19, 'حذف بنك', 1, 'حذف بنكfdds', 0, 'fa fa-bank', '2020-08-24 17:40:39', '2020-08-24 17:40:39'),
(20, 'تم إضافه الطلاب الى المقرر بنجاح', 1, 'تعديل مقرر التربيه العسكريه', 0, 'fa fa-users', '2020-08-24 17:44:37', '2020-08-24 17:44:37'),
(21, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-24 18:05:29', '2020-08-24 18:05:29'),
(22, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-24 18:29:58', '2020-08-24 18:29:58'),
(23, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 12:59:45', '2020-08-25 12:59:45'),
(24, 'أضافة قسط', 1, 'أضافة قسط', 0, 'fa fa-calendar', '2020-08-25 13:02:56', '2020-08-25 13:02:56'),
(25, 'install installment', 1, 'install installment 1', 0, 'fa fa-circle', '2020-08-25 13:03:32', '2020-08-25 13:03:32'),
(26, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 13:04:55', '2020-08-25 13:04:55'),
(27, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمحمد رفعت', 0, 'fa fa-file-o', '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(28, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 14:06:18', '2020-08-25 14:06:18'),
(29, 'اضافة مسلسل كود', 1, 'اضافة مسلسل كود20200001', 0, 'fa fa-barcode', '2020-08-25 14:44:03', '2020-08-25 14:44:03'),
(30, 'اضافة مسلسل كود', 1, 'اضافة مسلسل كود202010001', 0, 'fa fa-barcode', '2020-08-25 14:44:24', '2020-08-25 14:44:24'),
(31, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمريم محمد ابوالخير محمد عبدالصمد', 0, 'fa fa-file-o', '2020-08-25 15:06:36', '2020-08-25 15:06:36'),
(32, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ماهر معوض محمد', 0, 'fa fa-file-o', '2020-08-25 15:16:01', '2020-08-25 15:16:01'),
(33, 'ملف تقديم جديد', 1, 'ملف تقديم جديداحمد رمضان شعبان عبدالحميد', 0, 'fa fa-file-o', '2020-08-25 15:19:07', '2020-08-25 15:19:07'),
(34, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 16:17:48', '2020-08-25 16:17:48'),
(35, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 16:33:55', '2020-08-25 16:33:55'),
(36, 'اضافة بنك', 1, 'اضافة بنك', 0, 'fa fa-bank', '2020-08-25 16:36:56', '2020-08-25 16:36:56'),
(37, 'أضافة قسط', 1, 'أضافة قسط', 0, 'fa fa-calendar', '2020-08-25 16:47:18', '2020-08-25 16:47:18'),
(38, 'تقسيط القسط رقم ', 1, 'تقسيط القسط رقم 3', 0, 'fa fa-circle', '2020-08-25 16:50:04', '2020-08-25 16:50:04'),
(39, 'pay installment', 1, 'pay installment 4', 0, 'fa fa-circle', '2020-08-25 16:53:33', '2020-08-25 16:53:33'),
(40, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 17:23:29', '2020-08-25 17:23:29'),
(41, 'اضافة بنك', 1, 'اضافة بنك', 0, 'fa fa-bank', '2020-08-25 17:24:57', '2020-08-25 17:24:57'),
(42, 'اضافة خزنه', 1, 'اضافة خزنه', 0, 'fa fa-money', '2020-08-25 17:26:11', '2020-08-25 17:26:11'),
(43, 'اضافة تحويل مالى', 1, 'اضافة تحويل مالى', 0, 'fa fa-transformation', '2020-08-25 17:27:43', '2020-08-25 17:27:43'),
(44, 'اضافه طال', 1, 'اضافه طالاحمد رمضان شعبان عبدالحميد', 0, 'fa fa-building-o', '2020-08-25 17:31:08', '2020-08-25 17:31:08'),
(45, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 17:34:08', '2020-08-25 17:34:08'),
(46, 'اضافه طال', 1, 'اضافه طالعلى ماهر معوض محمد', 0, 'fa fa-building-o', '2020-08-25 17:39:28', '2020-08-25 17:39:28'),
(47, 'اضافه طال', 1, 'اضافه طالعلى ماهر معوض محمد', 0, 'fa fa-building-o', '2020-08-25 17:41:03', '2020-08-25 17:41:03'),
(48, 'اضافه مصروف رئيسى', 1, 'اضافه مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-25 17:42:52', '2020-08-25 17:42:52'),
(49, 'اضافه طال', 1, 'اضافه طالمحمد رفعت', 0, 'fa fa-building-o', '2020-08-25 17:43:14', '2020-08-25 17:43:14'),
(50, 'اضافه طال', 1, 'اضافه طالمحمد رفعت', 0, 'fa fa-building-o', '2020-08-25 17:45:00', '2020-08-25 17:45:00'),
(51, 'اضافه مصروف رئيسى', 1, 'اضافه مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-25 17:45:21', '2020-08-25 17:45:21'),
(52, 'add expense_subcategory', 1, 'add expense_subcategory', 0, 'fa fa-list-o', '2020-08-25 17:47:21', '2020-08-25 17:47:21'),
(53, 'اضافه طال', 1, 'اضافه طالعلى ماهر معوض محمد', 0, 'fa fa-building-o', '2020-08-25 17:53:27', '2020-08-25 17:53:27'),
(54, 'اضافه طال', 1, 'اضافه طالمحمد رفعت', 0, 'fa fa-building-o', '2020-08-25 18:00:17', '2020-08-25 18:00:17'),
(55, 'اضافه طال', 1, 'اضافه طالمريم محمد ابوالخير محمد عبدالصمد', 0, 'fa fa-building-o', '2020-08-25 18:05:07', '2020-08-25 18:05:07'),
(56, 'add deposite', 1, 'add deposite', 0, 'fa fa-handshake-o', '2020-08-25 18:27:19', '2020-08-25 18:27:19'),
(57, 'اضافه مصروف رئيسى', 1, 'اضافه مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-25 18:29:16', '2020-08-25 18:29:16'),
(58, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 18:29:35', '2020-08-25 18:29:35'),
(59, 'تعديل مصروف رئيسى', 1, 'تعديل مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-25 18:30:54', '2020-08-25 18:30:54'),
(60, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-25 18:31:05', '2020-08-25 18:31:05'),
(61, 'تعديل مصروف رئيسى', 1, 'تعديل مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-25 18:31:43', '2020-08-25 18:31:43'),
(62, 'تعديل مصروف رئيسى', 1, 'تعديل مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-25 18:31:57', '2020-08-25 18:31:57'),
(63, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-25 18:35:42', '2020-08-25 18:35:42'),
(64, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-25 18:37:55', '2020-08-25 18:37:55'),
(65, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-25 18:38:31', '2020-08-25 18:38:31'),
(66, 'اضافه طال', 1, 'اضافه طالعلى ماهر معوض محمد', 0, 'fa fa-building-o', '2020-08-25 19:18:00', '2020-08-25 19:18:00'),
(67, 'اضافه طال', 1, 'اضافه طالمريم محمد ابوالخير محمد عبدالصمد', 0, 'fa fa-building-o', '2020-08-25 19:30:23', '2020-08-25 19:30:23'),
(68, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمريم محمد ابوالخير محمد عبدالصمد', 0, 'fa fa-file-o', '2020-08-25 19:32:56', '2020-08-25 19:32:56'),
(69, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 19:33:44', '2020-08-25 19:33:44'),
(70, 'اضافه طال', 1, 'اضافه طالمحمد رفعت', 0, 'fa fa-building-o', '2020-08-25 19:46:08', '2020-08-25 19:46:08'),
(71, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ماهر معوض محمد', 0, 'fa fa-file-o', '2020-08-25 20:04:52', '2020-08-25 20:04:52'),
(72, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ماهر معوض محمد', 0, 'fa fa-file-o', '2020-08-25 20:07:23', '2020-08-25 20:07:23'),
(73, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ماهر معوض محمد', 0, 'fa fa-file-o', '2020-08-25 20:08:00', '2020-08-25 20:08:00'),
(74, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ماهر معوض محمد', 0, 'fa fa-file-o', '2020-08-25 20:17:41', '2020-08-25 20:17:41'),
(75, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ماهر معوض محمد', 0, 'fa fa-file-o', '2020-08-25 20:20:18', '2020-08-25 20:20:18'),
(76, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ماهر معوض محمد', 0, 'fa fa-file-o', '2020-08-25 20:20:48', '2020-08-25 20:20:48'),
(77, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ماهر معوض محمد', 0, 'fa fa-file-o', '2020-08-25 20:21:03', '2020-08-25 20:21:03'),
(78, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ماهر معوض محمد', 0, 'fa fa-file-o', '2020-08-25 20:21:27', '2020-08-25 20:21:27'),
(79, 'new Student', 1, 'new Studentمحمد رفعت', 0, 'fa fa-user', '2020-08-25 20:56:38', '2020-08-25 20:56:38'),
(80, 'new Student', 1, 'new Studentمحمد رفعت', 0, 'fa fa-user', '2020-08-25 20:56:59', '2020-08-25 20:56:59'),
(81, 'new Student', 1, 'new Studentمحمد رفعت', 0, 'fa fa-user', '2020-08-25 21:01:07', '2020-08-25 21:01:07'),
(82, 'new Student', 1, 'new Studentمحمد رفعت', 0, 'fa fa-user', '2020-08-25 21:03:53', '2020-08-25 21:03:53'),
(83, 'new Student', 1, 'new Studentمحمد رفعت', 0, 'fa fa-user', '2020-08-25 21:04:16', '2020-08-25 21:04:16'),
(84, 'اضافه طال', 1, 'اضافه طالمحمد رفعت', 0, 'fa fa-building-o', '2020-08-25 21:09:07', '2020-08-25 21:09:07'),
(85, 'اضافه طال', 1, 'اضافه طالمحمد رفعت', 0, 'fa fa-building-o', '2020-08-25 21:11:11', '2020-08-25 21:11:11'),
(86, 'اضافه طال', 1, 'اضافه طالمحمد رفعت', 0, 'fa fa-building-o', '2020-08-25 21:23:55', '2020-08-25 21:23:55'),
(87, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 21:44:15', '2020-08-25 21:44:15'),
(88, 'اضافة تحويل مالى', 1, 'اضافة تحويل مالى', 0, 'fa fa-transformation', '2020-08-25 21:49:26', '2020-08-25 21:49:26'),
(89, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 22:00:06', '2020-08-25 22:00:06'),
(90, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-25 22:03:23', '2020-08-25 22:03:23'),
(91, 'تعديل مصروف رئيسى', 1, 'تعديل مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-25 22:06:03', '2020-08-25 22:06:03'),
(92, 'add case constraint', 1, 'add case constraint', 0, 'fa fa-language', '2020-08-26 13:19:52', '2020-08-26 13:19:52'),
(93, 'add case constraint', 1, 'add case constraint', 0, 'fa fa-language', '2020-08-26 13:24:27', '2020-08-26 13:24:27'),
(94, 'add case constraint', 1, 'add case constraint', 0, 'fa fa-language', '2020-08-26 13:24:50', '2020-08-26 13:24:50'),
(95, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-26 15:14:10', '2020-08-26 15:14:10'),
(96, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-26 15:15:29', '2020-08-26 15:15:29'),
(97, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمريم محمد ابوالخير محمد عبدالصمد', 0, 'fa fa-file-o', '2020-08-26 16:00:29', '2020-08-26 16:00:29'),
(98, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-26 16:28:27', '2020-08-26 16:28:27'),
(99, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-26 16:29:47', '2020-08-26 16:29:47'),
(100, 'اضافه حاله قيد', 1, 'اضافه حاله قيد', 0, 'fa fa-language', '2020-08-26 17:23:12', '2020-08-26 17:23:12'),
(101, 'اضافه حاله قيد', 1, 'اضافه حاله قيد', 0, 'fa fa-language', '2020-08-26 17:24:17', '2020-08-26 17:24:17'),
(102, 'اضافه حاله قيد', 1, 'اضافه حاله قيد', 0, 'fa fa-language', '2020-08-26 17:24:44', '2020-08-26 17:24:44'),
(103, 'اضافه حاله قيد', 1, 'اضافه حاله قيد', 0, 'fa fa-language', '2020-08-26 17:25:05', '2020-08-26 17:25:05'),
(104, 'اضافه حاله قيد', 1, 'اضافه حاله قيد', 0, 'fa fa-language', '2020-08-26 17:25:28', '2020-08-26 17:25:28'),
(105, 'اضافه حاله قيد', 1, 'اضافه حاله قيد', 0, 'fa fa-language', '2020-08-26 17:25:56', '2020-08-26 17:25:56'),
(106, 'اضافه حاله قيد', 1, 'اضافه حاله قيد', 0, 'fa fa-language', '2020-08-26 17:26:12', '2020-08-26 17:26:12'),
(107, 'اضافه حاله قيد', 1, 'اضافه حاله قيد', 0, 'fa fa-language', '2020-08-26 17:26:44', '2020-08-26 17:26:44'),
(108, 'اضافه حاله قيد', 1, 'اضافه حاله قيد', 0, 'fa fa-language', '2020-08-26 17:27:03', '2020-08-26 17:27:03'),
(109, 'اضافه فئه نفقات', 1, 'اضافه فئه نفقات', 0, 'fa fa-list-o', '2020-08-26 18:01:24', '2020-08-26 18:01:24'),
(110, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-26 18:04:25', '2020-08-26 18:04:25'),
(111, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-26 18:06:22', '2020-08-26 18:06:22'),
(112, 'add constraint status', 1, 'add constraint status', 0, 'fa fa-language', '2020-08-26 18:10:51', '2020-08-26 18:10:51'),
(113, 'add constraint status', 1, 'add constraint status', 0, 'fa fa-language', '2020-08-26 18:11:11', '2020-08-26 18:11:11'),
(114, 'add constraint status', 1, 'add constraint status', 0, 'fa fa-language', '2020-08-26 18:11:25', '2020-08-26 18:11:25'),
(115, 'اضافه فئه نفقات', 1, 'اضافه فئه نفقات', 0, 'fa fa-list-o', '2020-08-26 18:22:39', '2020-08-26 18:22:39'),
(116, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمريم محمد ابوالخير محمد عبدالصمد', 0, 'fa fa-file-o', '2020-08-26 18:39:19', '2020-08-26 18:39:19'),
(117, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمريم محمد ابوالخير محمد عبدالصمد', 0, 'fa fa-file-o', '2020-08-26 18:39:51', '2020-08-26 18:39:51'),
(118, 'طالب جديد', 1, 'طالب جديدمحمد رفعت', 0, 'fa fa-user', '2020-08-26 18:49:37', '2020-08-26 18:49:37'),
(119, 'طالب جديد', 1, 'طالب جديدمحمد رفعت', 0, 'fa fa-user', '2020-08-26 18:51:19', '2020-08-26 18:51:19'),
(120, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-26 19:17:24', '2020-08-26 19:17:24'),
(121, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ماهر معوض محمد', 0, 'fa fa-file-o', '2020-08-26 19:23:50', '2020-08-26 19:23:50'),
(122, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ابراهيم على', 0, 'fa fa-file-o', '2020-08-29 16:41:58', '2020-08-29 16:41:58'),
(123, 'ملف تقديم جديد', 1, 'ملف تقديم جديدوسام جيد نجاح توفيق', 0, 'fa fa-file-o', '2020-08-29 17:48:43', '2020-08-29 17:48:43'),
(124, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-29 17:55:16', '2020-08-29 17:55:16'),
(125, 'اضافة بنك', 1, 'اضافة بنك', 0, 'fa fa-bank', '2020-08-29 17:57:06', '2020-08-29 17:57:06'),
(126, 'تعديل بنك', 1, 'تعديل بنك', 0, 'fa fa-bank', '2020-08-29 17:57:28', '2020-08-29 17:57:28'),
(127, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-29 17:58:34', '2020-08-29 17:58:34'),
(128, 'اضافة خزنه', 1, 'اضافة خزنه', 0, 'fa fa-money', '2020-08-29 18:06:42', '2020-08-29 18:06:42'),
(129, 'تعديل خزنه', 1, 'تعديل خزنه', 0, 'fa fa-money', '2020-08-29 18:07:12', '2020-08-29 18:07:12'),
(130, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-29 18:09:24', '2020-08-29 18:09:24'),
(131, 'اضافة تحويل مالى', 1, 'اضافة تحويل مالى', 0, 'fa fa-transformation', '2020-08-29 18:15:58', '2020-08-29 18:15:58'),
(132, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-29 18:16:52', '2020-08-29 18:16:52'),
(133, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-29 18:17:18', '2020-08-29 18:17:18'),
(134, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-29 18:20:42', '2020-08-29 18:20:42'),
(135, 'اضافه مصروف رئيسى', 1, 'اضافه مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-29 18:32:49', '2020-08-29 18:32:49'),
(136, 'تعديل مصروف رئيسى', 1, 'تعديل مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-29 18:33:08', '2020-08-29 18:33:08'),
(137, 'تعديل مصروف رئيسى', 1, 'تعديل مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-29 18:43:40', '2020-08-29 18:43:40'),
(138, 'اضافه مصروف رئيسى', 1, 'اضافه مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-29 18:45:21', '2020-08-29 18:45:21'),
(139, 'اضافه فئه نفقات', 1, 'اضافه فئه نفقات', 0, 'fa fa-list-o', '2020-08-29 18:58:07', '2020-08-29 18:58:07'),
(140, 'اضافه فئه نفقات', 1, 'اضافه فئه نفقات', 0, 'fa fa-list-o', '2020-08-29 18:58:26', '2020-08-29 18:58:26'),
(141, 'اضافه طال', 1, 'اضافه طالهالة فهمى', 0, 'fa fa-building-o', '2020-08-29 19:16:06', '2020-08-29 19:16:06'),
(142, 'اضافه طال', 1, 'اضافه طالمحمد طارق محمد اسماعيل', 0, 'fa fa-building-o', '2020-08-29 19:16:22', '2020-08-29 19:16:22'),
(143, 'أضافة قسط', 1, 'أضافة قسط', 0, 'fa fa-calendar', '2020-08-29 19:18:26', '2020-08-29 19:18:26'),
(144, 'تقسيط القسط رقم ', 1, 'تقسيط القسط رقم 7', 0, 'fa fa-circle', '2020-08-29 19:22:12', '2020-08-29 19:22:12'),
(145, 'تعديل القسط', 1, 'تعديل القسط', 0, 'fa fa-calendar', '2020-08-29 19:24:26', '2020-08-29 19:24:26'),
(146, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-29 19:30:17', '2020-08-29 19:30:17'),
(147, 'اضافه مكافاه / خصم', 1, 'اضافه مكافاه / خصم', 0, 'fa fa-money', '2020-08-29 19:30:39', '2020-08-29 19:30:39'),
(148, 'اضافه مكافاه / خصم', 1, 'اضافه مكافاه / خصم', 0, 'fa fa-money', '2020-08-29 19:31:01', '2020-08-29 19:31:01'),
(149, 'اضافه مكافاه / خصم', 1, 'اضافه مكافاه / خصم', 0, 'fa fa-money', '2020-08-29 19:31:12', '2020-08-29 19:31:12'),
(150, 'اضافه نوع غرامه', 1, 'اضافه نوع غرامه', 0, 'fa fa-money', '2020-08-29 19:31:38', '2020-08-29 19:31:38'),
(151, 'اضافه نوع غرامه', 1, 'اضافه نوع غرامه', 0, 'fa fa-money', '2020-08-29 19:31:59', '2020-08-29 19:31:59'),
(152, 'تعديل مصروف رئيسى', 1, 'تعديل مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-29 19:59:43', '2020-08-29 19:59:43'),
(153, 'تعديل مصروف رئيسى', 1, 'تعديل مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-29 20:00:45', '2020-08-29 20:00:45'),
(154, 'اضافه مصروف رئيسى', 1, 'اضافه مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-29 20:01:44', '2020-08-29 20:01:44'),
(155, 'تعديل مصروف رئيسى', 1, 'تعديل مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-29 20:02:53', '2020-08-29 20:02:53'),
(156, 'تعديل مصروف رئيسى', 1, 'تعديل مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-29 20:05:13', '2020-08-29 20:05:13'),
(157, 'اضافه مصروف رئيسى', 1, 'اضافه مصروف رئيسى', 0, 'fa fa-list-o', '2020-08-29 20:06:23', '2020-08-29 20:06:23'),
(158, 'اضافه فئه نفقات', 1, 'اضافه فئه نفقات', 0, 'fa fa-list-o', '2020-08-29 20:06:53', '2020-08-29 20:06:53'),
(159, 'أضافة قسط', 1, 'أضافة قسط', 0, 'fa fa-calendar', '2020-08-29 20:14:14', '2020-08-29 20:14:14'),
(160, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-29 20:16:57', '2020-08-29 20:16:57'),
(161, 'اقساط الدفع', 1, 'دفع الأقساط2', 0, 'fa fa-circle', '2020-08-29 20:48:19', '2020-08-29 20:48:19'),
(162, 'اقساط الدفع', 1, 'دفع الأقساط3', 0, 'fa fa-circle', '2020-08-29 20:56:02', '2020-08-29 20:56:02'),
(163, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-29 21:04:03', '2020-08-29 21:04:03'),
(164, 'تقسيط القسط رقم ', 1, 'تقسيط القسط رقم 11', 0, 'fa fa-circle', '2020-08-29 21:05:33', '2020-08-29 21:05:33'),
(165, 'اقساط الدفع', 1, 'دفع الأقساط4', 0, 'fa fa-circle', '2020-08-29 21:06:53', '2020-08-29 21:06:53'),
(166, 'ملف تقديم جديد', 1, 'ملف تقديم جديدmokhtar', 0, 'fa fa-file-o', '2020-08-29 21:14:41', '2020-08-29 21:14:41'),
(167, 'ملف تقديم جديد', 1, 'ملف تقديم جديدmokhtar', 0, 'fa fa-file-o', '2020-08-29 21:15:05', '2020-08-29 21:15:05'),
(168, 'اقساط الدفع', 1, 'دفع الأقساط5', 0, 'fa fa-circle', '2020-08-29 21:28:01', '2020-08-29 21:28:01'),
(169, 'اضافة بنك', 1, 'اضافة بنك', 0, 'fa fa-bank', '2020-08-29 21:34:03', '2020-08-29 21:34:03'),
(170, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-29 21:34:27', '2020-08-29 21:34:27'),
(171, 'add daily', 1, 'add daily', 0, 'fa fa-daily', '2020-08-30 12:10:10', '2020-08-30 12:10:10'),
(172, 'add daily', 1, 'add daily', 0, 'fa fa-daily', '2020-08-30 12:11:16', '2020-08-30 12:11:16'),
(173, 'اضافة خزنه', 1, 'اضافة خزنه', 0, 'fa fa-money', '2020-08-30 12:13:27', '2020-08-30 12:13:27'),
(174, 'add daily', 1, 'add daily', 0, 'fa fa-daily', '2020-08-30 12:14:23', '2020-08-30 12:14:23'),
(175, 'add daily', 1, 'add daily', 0, 'fa fa-daily', '2020-08-30 12:15:25', '2020-08-30 12:15:25'),
(176, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-30 12:30:28', '2020-08-30 12:30:28'),
(177, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-30 12:31:13', '2020-08-30 12:31:13'),
(178, 'اضف يوميه', 1, 'اضف يوميه', 0, 'fa fa-daily', '2020-08-30 12:37:49', '2020-08-30 12:37:49'),
(179, 'اضف يوميه', 1, 'اضف يوميه', 0, 'fa fa-daily', '2020-08-30 12:39:08', '2020-08-30 12:39:08'),
(180, 'اضف يوميه', 1, 'اضف يوميه', 0, 'fa fa-daily', '2020-08-30 12:39:57', '2020-08-30 12:39:57'),
(181, 'اضف يوميه', 1, 'اضف يوميه', 0, 'fa fa-daily', '2020-08-30 12:47:38', '2020-08-30 12:47:38'),
(182, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-30 12:51:14', '2020-08-30 12:51:14'),
(183, 'اضافة خزنه', 1, 'اضافة خزنه', 0, 'fa fa-money', '2020-08-30 12:51:48', '2020-08-30 12:51:48'),
(184, 'اضافة خزنه', 1, 'اضافة خزنه', 0, 'fa fa-money', '2020-08-30 12:53:22', '2020-08-30 12:53:22'),
(185, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-30 12:53:34', '2020-08-30 12:53:34'),
(186, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-30 12:55:22', '2020-08-30 12:55:22'),
(187, 'اضافة بنك', 1, 'اضافة بنك', 0, 'fa fa-bank', '2020-08-30 13:01:30', '2020-08-30 13:01:30'),
(188, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-30 13:01:58', '2020-08-30 13:01:58'),
(189, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-30 13:02:44', '2020-08-30 13:02:44'),
(190, 'اضافة بنك', 1, 'اضافة بنك', 0, 'fa fa-bank', '2020-08-30 13:04:33', '2020-08-30 13:04:33'),
(191, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-30 13:04:56', '2020-08-30 13:04:56'),
(192, 'اضافة خزنه', 1, 'اضافة خزنه', 0, 'fa fa-money', '2020-08-30 13:05:39', '2020-08-30 13:05:39'),
(193, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-30 13:06:30', '2020-08-30 13:06:30'),
(194, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-08-30 14:33:42', '2020-08-30 14:33:42'),
(195, 'اضافة خزينه', 1, 'اضافة خزينه', 0, 'fa fa-money', '2020-08-30 14:38:56', '2020-08-30 14:38:56'),
(196, 'اضافة تحويل مالى', 1, 'اضافة تحويل مالى', 0, 'fa fa-transformation', '2020-08-30 14:41:16', '2020-08-30 14:41:16'),
(197, 'اضافه ايداع', 1, 'اضافه ايداع', 0, 'fa fa-handshake-o', '2020-08-30 14:42:45', '2020-08-30 14:42:45'),
(198, 'اضف يوميه', 1, 'اضف يوميه', 0, 'fa fa-daily', '2020-08-30 14:48:03', '2020-08-30 14:48:03'),
(199, 'اضف يوميه', 1, 'اضف يوميه', 0, 'fa fa-daily', '2020-08-30 14:48:55', '2020-08-30 14:48:55'),
(200, 'أضافة قسط', 1, 'أضافة قسط', 0, 'fa fa-calendar', '2020-08-30 15:19:11', '2020-08-30 15:19:11'),
(201, 'تقسيط القسط رقم ', 1, 'تقسيط القسط رقم 14', 0, 'fa fa-circle', '2020-08-30 15:24:57', '2020-08-30 15:24:57'),
(202, 'أضافة قسط', 1, 'أضافة قسط', 0, 'fa fa-calendar', '2020-08-30 16:54:17', '2020-08-30 16:54:17'),
(203, 'اضافة مسلسل كود', 1, 'اضافة مسلسل كود20190001', 0, 'fa fa-barcode', '2020-08-31 15:10:45', '2020-08-31 15:10:45'),
(204, 'احذف مسلسل اكواد الطلاب', 1, 'حذف رقم مسلسل الطالب9', 0, 'fa fa-barcode', '2020-08-31 15:12:48', '2020-08-31 15:12:48'),
(205, 'تغير الترجمه', 1, 'تغير الترجمه', 0, 'fa fa-language', '2020-09-01 15:40:25', '2020-09-01 15:40:25'),
(206, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمختار عبد الله محمد', 0, 'fa fa-file-o', '2020-09-01 15:44:57', '2020-09-01 15:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_job_id` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_students` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_jobs`
--

CREATE TABLE `parent_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_jobs`
--

INSERT INTO `parent_jobs` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'طبيب بشرى', NULL, '2020-08-05 08:26:56', '2020-08-05 08:26:56'),
(2, 'مهندس مدنى', NULL, '2020-08-05 08:27:04', '2020-08-05 08:27:04'),
(3, 'محامى', NULL, '2020-08-11 13:46:41', '2020-08-11 13:46:41'),
(4, 'اعمال حره', NULL, '2020-08-11 13:46:53', '2020-08-11 13:46:53'),
(5, 'تاجر', NULL, '2020-08-11 13:47:05', '2020-08-11 13:47:05'),
(6, 'رجل اعمال', NULL, '2020-08-11 13:47:19', '2020-08-11 13:47:19'),
(7, 'مدرس', NULL, '2020-08-11 13:47:32', '2020-08-11 13:47:32'),
(8, 'موظف حكومى', NULL, '2020-08-11 13:47:47', '2020-08-11 13:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `parent_relation_type`
--

CREATE TABLE `parent_relation_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users_create', 'Create Users', 'Create Users', NULL, NULL),
(2, 'users_read', 'Read Users', 'Read Users', NULL, NULL),
(3, 'users_update', 'Update Users', 'Update Users', NULL, NULL),
(4, 'users_delete', 'Delete Users', 'Delete Users', NULL, NULL),
(5, 'roles_create', 'Create Roles', 'Create Roles', NULL, NULL),
(6, 'roles_read', 'Read Roles', 'Read Roles', NULL, NULL),
(7, 'roles_update', 'Update Roles', 'Update Roles', NULL, NULL),
(8, 'roles_delete', 'Delete Roles', 'Delete Roles', NULL, NULL),
(9, 'cities_read', NULL, NULL, NULL, NULL),
(10, 'cities_create', NULL, NULL, NULL, NULL),
(11, 'cities_update', NULL, NULL, NULL, NULL),
(12, 'cities_delete', NULL, NULL, NULL, NULL),
(13, 'countries_read', NULL, NULL, NULL, NULL),
(14, 'countries_create', NULL, NULL, NULL, NULL),
(15, 'countries_update', NULL, NULL, NULL, NULL),
(16, 'countries_delete', NULL, NULL, NULL, NULL),
(17, 'settings_read', NULL, NULL, NULL, NULL),
(18, 'settings_create', NULL, NULL, NULL, NULL),
(19, 'settings_update', NULL, NULL, NULL, NULL),
(20, 'settings_delete', NULL, NULL, NULL, NULL),
(21, 'academic-years_read', NULL, NULL, NULL, NULL),
(22, 'academic-years_create', NULL, NULL, NULL, NULL),
(23, 'academic-years_update', NULL, NULL, NULL, NULL),
(24, 'academic-years_delete', NULL, NULL, NULL, NULL),
(25, 'levels_read', NULL, NULL, NULL, NULL),
(26, 'levels_create', NULL, NULL, NULL, NULL),
(27, 'levels_update', NULL, NULL, NULL, NULL),
(28, 'levels_delete', NULL, NULL, NULL, NULL),
(29, 'governments_create', NULL, NULL, NULL, NULL),
(30, 'governments_update', NULL, NULL, NULL, NULL),
(31, 'governments_read', NULL, NULL, NULL, NULL),
(32, 'governments_delete', NULL, NULL, NULL, NULL),
(33, 'languages_read', NULL, NULL, NULL, NULL),
(34, 'languages_create', NULL, NULL, NULL, NULL),
(35, 'languages_update', NULL, NULL, NULL, NULL),
(36, 'languages_delete', NULL, NULL, NULL, NULL),
(37, 'nationalities_read', NULL, NULL, NULL, NULL),
(38, 'nationalities_create', NULL, NULL, NULL, NULL),
(39, 'nationalities_update', NULL, NULL, NULL, NULL),
(40, 'nationalities_delete', NULL, NULL, NULL, NULL),
(41, 'registeration-status_read', NULL, NULL, NULL, NULL),
(42, 'registeration-status_create', NULL, NULL, NULL, NULL),
(43, 'registeration-status_update', NULL, NULL, NULL, NULL),
(44, 'registeration-status_delete', NULL, NULL, NULL, NULL),
(45, 'registeration-methods_read', NULL, NULL, NULL, NULL),
(46, 'registeration-methods_create', NULL, NULL, NULL, NULL),
(47, 'registeration-methods_update', NULL, NULL, NULL, NULL),
(48, 'registeration-methods_delete', NULL, NULL, NULL, NULL),
(49, 'departments_read', NULL, NULL, NULL, NULL),
(50, 'departments_create', NULL, NULL, NULL, NULL),
(51, 'departments_update', NULL, NULL, NULL, NULL),
(52, 'departments_delete', NULL, NULL, NULL, NULL),
(53, 'divisions_read', NULL, NULL, NULL, NULL),
(54, 'divisions_create', NULL, NULL, NULL, NULL),
(55, 'divisions_update', NULL, NULL, NULL, NULL),
(56, 'divisions_delete', NULL, NULL, NULL, NULL),
(57, 'qualifications_read', NULL, NULL, NULL, NULL),
(58, 'qualifications_create', NULL, NULL, NULL, NULL),
(59, 'qualifications_update', NULL, NULL, NULL, NULL),
(60, 'qualifications_delete', NULL, NULL, NULL, NULL),
(61, 'qualification-types_read', NULL, NULL, NULL, NULL),
(62, 'qualification-types_create', NULL, NULL, NULL, NULL),
(63, 'qualification-types_update', NULL, NULL, NULL, NULL),
(64, 'qualification-types_delete', NULL, NULL, NULL, NULL),
(65, 'parent-jobs_read', NULL, NULL, NULL, NULL),
(66, 'parent-jobs_create', NULL, NULL, NULL, NULL),
(67, 'parent-jobs_update', NULL, NULL, NULL, NULL),
(68, 'parent-jobs_delete', NULL, NULL, NULL, NULL),
(69, 'relations_read', NULL, NULL, NULL, NULL),
(70, 'relations_create', NULL, NULL, NULL, NULL),
(71, 'relations_update', NULL, NULL, NULL, NULL),
(72, 'relations_delete', NULL, NULL, NULL, NULL),
(73, 'student-code-series_read', NULL, NULL, NULL, NULL),
(74, 'student-code-series_create', NULL, NULL, NULL, NULL),
(75, 'student-code-series_update', NULL, NULL, NULL, NULL),
(76, 'student-code-series_delete', NULL, NULL, NULL, NULL);

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
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` double(8,2) NOT NULL,
  `is_azhar` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `name`, `grade`, `is_azhar`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'ثانوية عامة وما يعادلها', 410.00, '0', NULL, '2020-08-05 08:23:06', '2020-08-19 19:23:08'),
(2, 'دبلوم صنايع مدرسه بنى سويف', 600.00, '0', NULL, '2020-08-10 17:43:58', '2020-08-10 17:43:58'),
(3, 'دبلوم تجارى خمس سنوات', 700.00, '0', NULL, '2020-08-10 17:44:21', '2020-08-10 17:44:21'),
(4, 'ثانوى ازهرى', 450.00, '1', NULL, '2020-08-11 18:27:54', '2020-08-29 18:28:48'),
(7, 'دبلوم صنايع مدرسة الفشن', 225.00, '0', 'دبلوم صنايع مدرسة الفشن دبلوم صنايع مدرسة الفشن', '2020-09-19 08:41:13', '2020-09-23 10:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `qualification_types`
--

CREATE TABLE `qualification_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qualification_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` double(8,2) NOT NULL,
  `percentage` float DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_year_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualification_types`
--

INSERT INTO `qualification_types` (`id`, `qualification_id`, `name`, `grade`, `percentage`, `notes`, `academic_year_id`, `created_at`, `updated_at`, `level_id`) VALUES
(1, 1, 'ادبى', 220.00, NULL, NULL, 1, '2020-08-05 08:31:04', '2020-08-05 08:31:04', 1),
(2, 1, 'علمى', 380.00, NULL, NULL, 1, '2020-08-09 21:11:50', '2020-08-09 21:11:50', 1),
(3, 4, 'ادبى', 230.00, NULL, NULL, 5, '2020-08-11 18:31:13', '2020-08-11 18:31:13', 1),
(4, 4, 'علمى', 430.00, NULL, NULL, 5, '2020-08-11 18:31:41', '2020-08-11 18:31:41', 1),
(5, 3, 'دبلوم تجاره مدرسه ببا', 630.00, NULL, NULL, 5, '2020-08-11 18:32:38', '2020-08-11 18:32:38', 2),
(6, 1, 'علمى علوم', 300.00, NULL, NULL, 9, '2020-08-12 00:34:51', '2020-08-12 00:34:51', 1),
(8, 1, 'علمى', 400.00, NULL, NULL, 4, '2020-08-12 12:51:38', '2020-08-12 12:51:38', 1),
(9, 3, 'تجاره', 350.00, NULL, NULL, 4, '2020-08-12 12:52:32', '2020-08-12 12:52:32', 2),
(10, 2, 'صنايع', 300.00, NULL, NULL, 4, '2020-08-12 12:53:18', '2020-08-12 12:53:18', 1),
(11, 1, 'ادبى', 250.00, NULL, NULL, 4, '2020-08-12 12:56:13', '2020-08-12 12:56:13', 1),
(12, 2, 'دبلوم صنايعى مدرسة بنى سويف', 350.00, NULL, NULL, 1, '2020-08-12 14:46:01', '2020-08-12 14:46:01', 1),
(15, 2, 'ادبى', 420.00, 60, NULL, 5, '2020-08-25 14:09:37', '2020-08-25 14:09:37', 1),
(16, 1, 'علمى', 410.00, 60, NULL, 11, '2020-08-25 14:45:38', '2020-08-25 14:45:38', 1),
(19, 4, 'علمى', 440.00, 75, NULL, 11, '2020-08-25 14:47:23', '2020-08-25 14:47:23', 1),
(20, 2, 'دبلوم صناعى', 500.00, 50, NULL, 11, '2020-08-25 14:48:25', '2020-08-25 14:48:25', 1),
(22, 1, 'زراعى', 300.00, 50, NULL, 1, '2020-09-13 08:56:25', '2020-09-23 08:08:51', 2);

-- --------------------------------------------------------

--
-- Table structure for table `qualification_years`
--

CREATE TABLE `qualification_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qualification_id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `acceptance_grade` double(8,2) NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registeration_status`
--

CREATE TABLE `registeration_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registeration_status`
--

INSERT INTO `registeration_status` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'تقديم مباشر', NULL, '2020-08-05 07:26:40', '2020-08-08 18:54:39'),
(3, 'تنسيق', NULL, '2020-08-08 18:54:53', '2020-08-08 18:54:53'),
(4, 'مقاصه (معاهد مناظره)', NULL, '2020-08-08 18:55:10', '2020-08-18 20:12:29'),
(8, 'مفصلين من كليات', NULL, '2020-08-12 15:20:56', '2020-08-12 15:20:56'),
(9, 'تحويل (معاهد غير مناظره)', NULL, '2020-08-18 20:14:29', '2020-08-18 20:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `registeration_status_document`
--

CREATE TABLE `registeration_status_document` (
  `id` int(11) NOT NULL,
  `registeration_status_id` int(11) NOT NULL,
  `required_document_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registeration_status_document`
--

INSERT INTO `registeration_status_document` (`id`, `registeration_status_id`, `required_document_id`, `created_at`, `updated_at`) VALUES
(17, 7, 4, '2020-08-17 17:21:36', '2020-08-17 17:21:36'),
(16, 7, 2, '2020-08-17 17:21:36', '2020-08-17 17:21:36'),
(15, 7, 1, '2020-08-17 17:21:36', '2020-08-17 17:21:36'),
(69, 9, 19, '2020-08-18 20:17:17', '2020-08-18 20:17:17'),
(66, 4, 20, '2020-08-18 20:13:29', '2020-08-18 20:13:29'),
(65, 4, 2, '2020-08-18 20:13:29', '2020-08-18 20:13:29'),
(18, 7, 5, '2020-08-17 17:21:36', '2020-08-17 17:21:36'),
(64, 4, 1, '2020-08-18 20:13:29', '2020-08-18 20:13:29'),
(68, 9, 7, '2020-08-18 20:17:17', '2020-08-18 20:17:17'),
(67, 9, 2, '2020-08-18 20:17:17', '2020-08-18 20:17:17'),
(34, 8, 11, '2020-08-17 17:24:24', '2020-08-17 17:24:24'),
(33, 8, 10, '2020-08-17 17:24:24', '2020-08-17 17:24:24'),
(32, 8, 9, '2020-08-17 17:24:24', '2020-08-17 17:24:24'),
(31, 8, 8, '2020-08-17 17:24:24', '2020-08-17 17:24:24'),
(30, 8, 7, '2020-08-17 17:24:24', '2020-08-17 17:24:24'),
(63, 2, 19, '2020-08-18 20:11:33', '2020-08-18 20:11:33'),
(62, 2, 18, '2020-08-18 20:11:33', '2020-08-18 20:11:33'),
(56, 3, 19, '2020-08-18 19:54:08', '2020-08-18 19:54:08'),
(55, 3, 18, '2020-08-18 19:54:08', '2020-08-18 19:54:08'),
(54, 3, 17, '2020-08-18 19:54:08', '2020-08-18 19:54:08'),
(61, 2, 17, '2020-08-18 20:11:33', '2020-08-18 20:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `registration_methods`
--

CREATE TABLE `registration_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_methods`
--

INSERT INTO `registration_methods` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'Facebook reaches', NULL, '2020-08-05 07:51:45', '2020-08-08 19:12:17'),
(3, 'FLayer', NULL, '2020-08-09 20:38:19', '2020-08-09 20:38:19'),
(4, 'Newspapers', NULL, '2020-08-09 20:38:29', '2020-08-09 20:38:29'),
(5, 'Visitor', NULL, '2020-08-09 20:38:44', '2020-08-09 20:38:44'),
(6, 'Youtube', NULL, '2020-08-09 20:38:56', '2020-08-09 20:38:56'),
(7, 'اصداقاء', NULL, '2020-08-09 20:39:10', '2020-08-09 20:39:10'),
(8, 'تسويق', 'zdseheh', '2020-08-09 20:39:57', '2020-09-21 07:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `relative_relation`
--

CREATE TABLE `relative_relation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relative_relation`
--

INSERT INTO `relative_relation` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'اب', NULL, '2020-08-08 05:54:41', '2020-08-11 13:49:06'),
(4, 'ام', NULL, '2020-08-11 13:49:29', '2020-08-11 13:49:29'),
(5, 'جد', NULL, '2020-08-11 13:49:37', '2020-08-11 13:49:37'),
(6, 'عم', NULL, '2020-08-11 13:49:47', '2020-08-11 13:49:47'),
(9, 'خاله', NULL, '2020-08-11 13:50:31', '2020-08-11 13:50:31'),
(11, 'خال', 'خال', '2020-09-22 06:33:18', '2020-09-22 06:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `report_settings`
--

CREATE TABLE `report_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `report_settings`
--

INSERT INTO `report_settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'letter_sending_to_institute', '<h4 style=\"text-align:right;\"><strong>السيد الاستاذ الدكتور عميد / المنزله</strong></h4><p style=\"text-align:center;\"><strong>تحيه طيبه وبعد ...</strong></p><p style=\"text-align:right;\"><br data-cke-filler=\"true\"></p><p style=\"text-align:right;\"><strong>بالاشلره الى خطاب الادارة العامه للمعهد العالى الخاصه المؤرخ فى : 2020/02/02 فى شان</strong></p><p style=\"text-align:right;\"><strong>الموافقة على تحويل الطالب : {student}&nbsp;</strong></p><p style=\"text-align:right;\"><strong>من معهدكم الى معهدنا : المعهد العالى للعلوم الاداريه ببنى سويف</strong></p><p style=\"text-align:right;\"><strong>يرجى التفضل بموافاتنا بملف الطالب المزكور و تسليمه&nbsp;له باليد حتى يمكن الاستفتاء اجراءات القيد بالمعهد&nbsp;</strong></p><p style=\"text-align:center;\"><strong>وتفضلو سيادتكم بقبول وافر الاحترام</strong></p><p><br data-cke-filler=\"true\"></p>', '2020-08-09 18:21:34', '2020-08-11 17:17:16'),
(2, 'letter_sending_from_institute', '<h4 style=\"text-align:right;\"><strong>السيد الاستاذ الدكتور عميد / المنزله</strong></h4><p style=\"text-align:center;\"><strong>تحيه طيبه وبعد ...</strong></p><p><br data-cke-filler=\"true\"></p><p style=\"text-align:right;\"><strong>بالاشلره الى خطاب الادارة العامه للمعهد العالى الخاصه المؤرخ فى : 2020/02/02 فى شان</strong></p><p style=\"text-align:right;\"><strong>طلب ملف الطالب : {student}&nbsp;</strong></p><p style=\"text-align:right;\"><strong>برجاء حضور الطالب الى معهدنا لتسليم الملف له باليد</strong></p><p style=\"text-align:center;\"><strong>وتفضلو سيادتكم بقبول وافر الاحترام</strong></p><p><br data-cke-filler=\"true\"></p>', '2020-08-09 19:21:48', '2020-08-11 17:19:53'),
(3, 'report_header1', '<p style=\"text-align:center;\"><strong>وزارة التعليم العالى &nbsp;</strong></p><p style=\"text-align:center;\"><strong>&nbsp; &nbsp; &nbsp; {logo}&nbsp;</strong></p><p style=\"text-align:center;\"><strong>&nbsp;المعهد العالى للعلوم الاداريه</strong></p><p style=\"text-align:center;\"><strong>بنى سويف&nbsp;</strong></p><p style=\"text-align:right;\"><br data-cke-filler=\"true\"></p>', '2020-08-11 18:45:23', '2020-08-11 18:53:20'),
(4, 'registration_certificate', '<p style=\"text-align:right;\"><strong><u>شهادة قيد</u></strong></p><p style=\"text-align:right;\"><strong>يشهد المعهد العالي للعلوم الاداريه ببنى سويف</strong></p><p style=\"text-align:right;\"><strong>بان الطالب /</strong></p><p style=\"text-align:right;\"><strong>محل الميلاد/&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; وجنسيته/</strong></p><p style=\"text-align:right;\"><strong>تاريخ الميلاد /&nbsp; &nbsp;/&nbsp;/&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;رقم قومي/</strong></p><p style=\"text-align:right;\"><strong>مقيد بالمستوى/&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; الشعبه/</strong></p><p style=\"text-align:right;\"><strong>للعام الدراسي/&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;كود الطالب/</strong></p><p style=\"text-align:right;\"><br data-cke-filler=\"true\"></p><p style=\"text-align:right;\"><strong>علما بان الرسوم الدراسيه و الاضافيه للعام الجامعي الحالي مبلغ / 5980.00</strong></p><p style=\"text-align:right;\"><strong>خمسة الاف و تسعمائة و ثمانون جنيها فقط لا غير</strong></p><p style=\"text-align:right;\"><br data-cke-filler=\"true\"></p><p style=\"text-align:right;\"><strong>و قد اعطيت له هذه الشهاده بناءا على طلبه لتقديمها الى / مجلس حسبي</strong></p><p style=\"text-align:right;\"><strong>دون ادنى مسئوليه على المعهد</strong></p><p style=\"text-align:right;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p><p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</strong></p>', '2020-08-11 19:16:02', '2020-08-11 19:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `required_documents`
--

CREATE TABLE `required_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('original','copy','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `required_documents`
--

INSERT INTO `required_documents` (`id`, `name`, `type`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'بيان تقديرات', 'original', NULL, '2020-08-17 17:17:31', '2020-08-17 17:17:31'),
(2, 'صورة شهادة المؤهل', 'original', NULL, '2020-08-17 17:17:42', '2020-08-17 17:17:42'),
(4, 'صورة تحقيق الشخصيه', 'original', NULL, '2020-08-17 17:18:02', '2020-08-17 17:18:02'),
(5, 'خطاب استلام', 'original', NULL, '2020-08-17 14:02:46', '2020-08-17 14:02:46'),
(7, 'بيان حاله', 'original', NULL, '2020-08-17 14:04:16', '2020-08-17 14:04:16'),
(8, 'بيان درجات', 'original', NULL, '2020-08-17 14:04:30', '2020-08-17 14:04:30'),
(9, 'خطابات معامل المصريين', 'original', NULL, '2020-08-17 14:04:51', '2020-08-17 14:04:51'),
(10, 'إستماره 2 جند', 'original', NULL, '2020-08-17 15:32:56', '2020-08-17 15:32:56'),
(11, 'إستماره 6 جند', 'original', NULL, '2020-08-17 15:34:23', '2020-08-17 15:34:23'),
(17, 'بطاقه الترشيح', 'original', NULL, '2020-08-18 19:37:06', '2020-08-18 19:37:06'),
(18, 'استماره النجاح', 'original', NULL, '2020-08-18 19:38:27', '2020-08-18 19:38:27'),
(19, 'شهاده الميلاد', 'original', NULL, '2020-08-18 19:41:33', '2020-08-18 19:41:33'),
(20, 'المحتوى العلمى (توصيف مقررت المقاصه)', 'original', NULL, '2020-08-18 19:46:38', '2020-08-18 19:46:38'),
(21, 'شهاده فصل', 'original', NULL, '2020-08-18 19:49:59', '2020-08-18 19:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'Super Admin', 'Super Admin', '2020-08-05 06:53:17', '2020-08-05 06:53:17'),
(2, 'hr', NULL, NULL, '2020-08-07 07:30:16', '2020-08-07 07:30:16'),
(3, 'low_roles', NULL, NULL, '2020-08-11 18:11:26', '2020-08-11 18:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(2, 2, 'App\\User'),
(3, 4, 'App\\User'),
(1, 14, 'App\\User'),
(1, 15, 'App\\User'),
(3, 16, 'App\\User'),
(1, 19, 'App\\User'),
(1, 20, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acceptance_grade` double(8,2) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `institute_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `institute_name`, `created_at`, `updated_at`) VALUES
(1, 'المعهد العالى للعوم الادارية', NULL, '2020-08-24 06:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality_id` int(10) UNSIGNED DEFAULT NULL,
  `gender` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_years_id` int(10) UNSIGNED DEFAULT NULL,
  `registeration_date` date DEFAULT NULL,
  `qualification_types_id` int(10) UNSIGNED DEFAULT NULL,
  `qualification_id` int(10) UNSIGNED DEFAULT NULL,
  `qualification_date` date DEFAULT NULL,
  `qualification_set_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `language_1_id` int(10) UNSIGNED DEFAULT NULL,
  `language_2_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `level_id` int(10) UNSIGNED DEFAULT NULL,
  `government_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `religion` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `military_course_status` enum('1','0','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `military_status_id` int(10) UNSIGNED DEFAULT NULL,
  `military_area_id` int(10) UNSIGNED DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` float DEFAULT NULL,
  `triple_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_status_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_method_id` int(10) UNSIGNED DEFAULT NULL,
  `national_id_date` date DEFAULT NULL,
  `national_id_place` int(10) UNSIGNED DEFAULT NULL,
  `parent_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_job_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relative_relation_id` int(10) UNSIGNED DEFAULT NULL,
  `recommendation_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_identification_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_2_jund` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_6_jund` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimates_statement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `case_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `egyptians_lab_speechs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance_date` date DEFAULT NULL,
  `accepted_by` int(10) UNSIGNED NOT NULL,
  `case_constraint_id` int(10) UNSIGNED DEFAULT NULL,
  `constraint_status_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `application_id`, `name`, `code`, `email`, `nationality_id`, `gender`, `academic_years_id`, `registeration_date`, `qualification_types_id`, `qualification_id`, `qualification_date`, `qualification_set_number`, `division_id`, `language_1_id`, `language_2_id`, `city_id`, `level_id`, `government_id`, `country_id`, `religion`, `military_course_status`, `military_status_id`, `military_area_id`, `national_id`, `password`, `grade`, `triple_number`, `address`, `birth_address`, `phone_1`, `registration_status_id`, `registration_method_id`, `national_id_date`, `national_id_place`, `parent_name`, `parent_national_id`, `parent_job_id`, `parent_address`, `parent_phone`, `relative_relation_id`, `recommendation_card`, `qualification_certificate`, `birth_certificate`, `personal_identification_photo`, `personal_photo`, `model_2_jund`, `model_6_jund`, `receipt_letter`, `estimates_statement`, `case_status`, `degree_status`, `egyptians_lab_speechs`, `acceptance_code`, `acceptance_date`, `accepted_by`, `case_constraint_id`, `constraint_status_id`, `created_at`, `updated_at`) VALUES
(24, 10, 'محمد رفعت', '202010001', 'mohamed@gmail.com', 1, '0', 11, '2020-08-08', 16, 1, '2020-08-01', '1250', NULL, 2, NULL, 6, NULL, 3, 1, '0', '0', 1, 1, '58742251232444', '1250', 400, '123456789', 'Cairo - Giza', 'Cairo', '01100968182', 3, 3, '2013-08-12', 1, 'رفعت', '45871254782', 2, 'القاهرة', '01100968184', NULL, NULL, NULL, NULL, NULL, '/uploads/applications/10/159834161944785.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2540', '2020-08-27', 1, 11, 1, '2020-08-25 21:23:55', '2020-08-26 18:51:19'),
(25, 18, 'هالة فهمى', '20200001', 'hala@gmail.com', 1, '0', 11, '2020-08-28', 16, 1, '2020-08-27', '3210', NULL, 2, NULL, 8, 1, 3, 1, '0', '0', NULL, NULL, '322333323344343', '123112132', 500, NULL, 'بنى سويف - الفشن', 'بنى سويف - الفشن', '2323', 2, 8, '2020-08-16', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/applications/18/159870151991099.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2323', '2020-08-11', 1, NULL, NULL, '2020-08-29 19:16:06', '2020-08-29 19:16:06'),
(26, 19, 'محمد طارق محمد اسماعيل', '20200002', 'touriq@email.com', NULL, '0', 11, '2020-09-04', 16, 1, '2020-08-01', '741852', NULL, NULL, NULL, NULL, 1, NULL, NULL, '0', '0', NULL, NULL, '741852963789123', '45689', 450, NULL, 'بنى سويف', 'بنى سويف', NULL, 3, 2, '2020-08-07', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/applications/19/159870239429792.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7441852963', '2020-08-06', 1, NULL, NULL, '2020-08-29 19:16:22', '2020-08-29 19:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `student_attributes`
--

CREATE TABLE `student_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `attributes_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_code_series`
--

CREATE TABLE `student_code_series` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_code_series`
--

INSERT INTO `student_code_series` (`id`, `academic_year_id`, `level_id`, `code`, `created_at`, `updated_at`) VALUES
(3, 1, 1, '20201001', '2020-08-11 16:40:45', '2020-08-11 16:40:45'),
(2, 1, 2, '20202001', '2020-08-11 16:30:10', '2020-08-11 16:33:33'),
(4, 9, 1, '20231001', '2020-08-12 00:30:26', '2020-08-12 00:30:26'),
(5, 4, 1, '20200001', '2020-08-12 13:02:08', '2020-08-12 13:02:08'),
(6, 4, 2, '202010001', '2020-08-12 13:02:29', '2020-08-12 13:02:29'),
(7, 11, 1, '20200001', '2020-08-25 14:44:03', '2020-08-25 14:44:03'),
(8, 11, 2, '202010001', '2020-08-25 14:44:24', '2020-08-25 14:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `student_logs`
--

CREATE TABLE `student_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `student_status_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_military_history`
--

CREATE TABLE `student_military_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `military_status_id` int(11) NOT NULL,
  `military_settings_id` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_required_documents`
--

CREATE TABLE `student_required_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `required_document_id` int(10) UNSIGNED NOT NULL,
  `application_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('original','copy') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_required_documents`
--

INSERT INTO `student_required_documents` (`id`, `required_document_id`, `application_id`, `path`, `notes`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '/uploads/application/application_1/159774743683156.jpg', NULL, NULL, '2020-08-18 16:43:56', '2020-08-18 16:43:56'),
(2, 2, 1, '/uploads/application/application_1/159774743694064.jpg', NULL, NULL, '2020-08-18 16:43:56', '2020-08-18 16:43:56'),
(3, 1, 2, '/uploads/application/application_2/159774761672018.jpg', NULL, NULL, '2020-08-18 16:46:56', '2020-08-18 16:46:56'),
(4, 2, 2, '/uploads/application/application_2/159774761694467.jpg', NULL, NULL, '2020-08-18 16:46:56', '2020-08-18 16:46:56'),
(5, 1, 3, '/uploads/application/application_3/159774866451215.jpg', NULL, NULL, '2020-08-18 17:04:24', '2020-08-18 17:04:24'),
(6, 2, 3, '/uploads/application/application_3/159774866437700.jpg', NULL, NULL, '2020-08-18 17:04:24', '2020-08-18 17:04:24'),
(7, 1, 4, '/uploads/applications/4/159774999854343.png', NULL, NULL, '2020-08-18 17:26:38', '2020-08-18 17:26:38'),
(8, 2, 4, '/uploads/applications/4/159774999824842.png', NULL, NULL, '2020-08-18 17:26:38', '2020-08-18 17:26:38'),
(9, 1, 5, '/uploads/applications/5/159775264580963.png', NULL, NULL, '2020-08-18 18:10:45', '2020-08-18 18:10:45'),
(10, 2, 5, '/uploads/applications/5/159775264519064.jpg', NULL, NULL, '2020-08-18 18:10:45', '2020-08-18 18:10:45'),
(11, 17, 9, '/uploads/applications/9/159776088417072.png', NULL, NULL, '2020-08-18 20:28:04', '2020-08-18 20:28:04'),
(12, 18, 9, '/uploads/applications/9/159776088443630.png', NULL, NULL, '2020-08-18 20:28:04', '2020-08-18 20:28:04'),
(13, 19, 9, '/uploads/applications/9/159776088454000.jpg', NULL, NULL, '2020-08-18 20:28:04', '2020-08-18 20:28:04'),
(14, 1, 10, '/uploads/applications/10/159834161949477.jpg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(15, 2, 10, '/uploads/applications/10/159834161975817.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(16, 4, 10, '/uploads/applications/10/159834161949851.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(17, 5, 10, '/uploads/applications/10/159834161922695.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(18, 7, 10, '/uploads/applications/10/159834161926785.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(19, 8, 10, '/uploads/applications/10/159834161965189.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(20, 9, 10, '/uploads/applications/10/159834161996405.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(21, 10, 10, '/uploads/applications/10/159834161955084.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(22, 11, 10, '/uploads/applications/10/159834161998607.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(23, 17, 10, '/uploads/applications/10/159834161933241.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(24, 18, 10, '/uploads/applications/10/159834161950522.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(25, 19, 10, '/uploads/applications/10/159834161934807.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(26, 20, 10, '/uploads/applications/10/159834161942927.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(27, 21, 10, '/uploads/applications/10/159834161949928.jpeg', NULL, NULL, '2020-08-25 13:46:59', '2020-08-25 13:46:59'),
(28, 17, 11, '/uploads/applications/11/159834639655025.png', NULL, NULL, '2020-08-25 15:06:36', '2020-08-25 15:06:36'),
(29, 18, 11, '/uploads/applications/11/159834639694008.png', NULL, NULL, '2020-08-25 15:06:36', '2020-08-25 15:06:36'),
(30, 19, 11, '/uploads/applications/11/159834639659137.png', NULL, NULL, '2020-08-25 15:06:36', '2020-08-25 15:06:36'),
(31, 17, 12, '/uploads/applications/12/159834696186950.png', NULL, NULL, '2020-08-25 15:16:01', '2020-08-25 15:16:01'),
(32, 18, 12, '/uploads/applications/12/159834696126312.png', NULL, NULL, '2020-08-25 15:16:01', '2020-08-25 15:16:01'),
(33, 19, 12, '/uploads/applications/12/159834696149026.png', NULL, NULL, '2020-08-25 15:16:01', '2020-08-25 15:16:01'),
(34, 1, 13, '/uploads/applications/13/159834714768502.png', NULL, NULL, '2020-08-25 15:19:07', '2020-08-25 15:19:07'),
(35, 2, 13, '/uploads/applications/13/159834714720311.png', NULL, NULL, '2020-08-25 15:19:07', '2020-08-25 15:19:07'),
(36, 20, 13, '/uploads/applications/13/159834714747955.png', NULL, NULL, '2020-08-25 15:19:07', '2020-08-25 15:19:07'),
(37, 11, 12, '/uploads/applications/12/159836521816738.jpeg', NULL, NULL, '2020-08-25 20:20:18', '2020-08-25 20:20:18'),
(38, 11, 12, '/uploads/applications/12/159836524866913.jpeg', NULL, NULL, '2020-08-25 20:20:48', '2020-08-25 20:20:48'),
(39, 11, 12, '/uploads/applications/12/159836526395598.jpeg', NULL, NULL, '2020-08-25 20:21:03', '2020-08-25 20:21:03'),
(40, 10, 12, '/uploads/applications/12/159836559820204.jpeg', NULL, NULL, '2020-08-25 20:26:38', '2020-08-25 20:26:38'),
(41, 1, 10, '/uploads/applications/10/159836739848036.jpeg', NULL, NULL, '2020-08-25 20:56:38', '2020-08-25 20:56:38'),
(42, 1, 10, '/uploads/applications/10/159836741928629.jpeg', NULL, NULL, '2020-08-25 20:56:59', '2020-08-25 20:56:59'),
(43, 1, 10, '/uploads/applications/10/159836766783087.jpeg', NULL, NULL, '2020-08-25 21:01:07', '2020-08-25 21:01:07'),
(44, 1, 14, '/uploads/applications/14/159869707243195.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(45, 2, 14, '/uploads/applications/14/159869707249916.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(46, 4, 14, '/uploads/applications/14/159869707283717.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(47, 5, 14, '/uploads/applications/14/159869707232471.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(48, 7, 14, '/uploads/applications/14/159869707250630.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(49, 8, 14, '/uploads/applications/14/159869707252613.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(50, 9, 14, '/uploads/applications/14/159869707282567.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(51, 10, 14, '/uploads/applications/14/159869707227760.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(52, 11, 14, '/uploads/applications/14/159869707211890.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(53, 17, 14, '/uploads/applications/14/159869707219607.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(54, 18, 14, '/uploads/applications/14/159869707262992.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(55, 19, 14, '/uploads/applications/14/159869707212613.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(56, 20, 14, '/uploads/applications/14/159869707228254.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(57, 21, 14, '/uploads/applications/14/159869707277559.jpeg', NULL, NULL, '2020-08-29 16:31:12', '2020-08-29 16:31:12'),
(58, 1, 15, '/uploads/applications/15/159869751995166.jpeg', NULL, NULL, '2020-08-29 16:38:39', '2020-08-29 16:38:39'),
(59, 2, 15, '/uploads/applications/15/159869751918226.jpeg', NULL, NULL, '2020-08-29 16:38:39', '2020-08-29 16:38:39'),
(60, 4, 15, '/uploads/applications/15/159869751964046.jpeg', NULL, NULL, '2020-08-29 16:38:39', '2020-08-29 16:38:39'),
(61, 5, 15, '/uploads/applications/15/159869751968250.jpeg', NULL, NULL, '2020-08-29 16:38:39', '2020-08-29 16:38:39'),
(62, 7, 15, '/uploads/applications/15/159869751963301.jpeg', NULL, NULL, '2020-08-29 16:38:39', '2020-08-29 16:38:39'),
(63, 8, 15, '/uploads/applications/15/159869751961327.jpeg', NULL, NULL, '2020-08-29 16:38:39', '2020-08-29 16:38:39'),
(64, 9, 15, '/uploads/applications/15/159869751973006.jpeg', NULL, NULL, '2020-08-29 16:38:39', '2020-08-29 16:38:39'),
(65, 10, 15, '/uploads/applications/15/159869751985078.jpeg', NULL, NULL, '2020-08-29 16:38:39', '2020-08-29 16:38:39'),
(66, 17, 15, '/uploads/applications/15/159869751993807.jpeg', NULL, NULL, '2020-08-29 16:38:39', '2020-08-29 16:38:39'),
(67, 18, 15, '/uploads/applications/15/159869751953051.jpeg', NULL, NULL, '2020-08-29 16:38:39', '2020-08-29 16:38:39'),
(68, 19, 15, '/uploads/applications/15/159869751984060.jpeg', NULL, NULL, '2020-08-29 16:38:39', '2020-08-29 16:38:39'),
(69, 17, 16, '/uploads/applications/16/159869801199305.jpeg', NULL, NULL, '2020-08-29 16:46:51', '2020-08-29 16:46:51'),
(70, 18, 16, '/uploads/applications/16/159869801117084.jpeg', NULL, NULL, '2020-08-29 16:46:51', '2020-08-29 16:46:51'),
(71, 19, 16, '/uploads/applications/16/159869801164641.jpeg', NULL, NULL, '2020-08-29 16:46:51', '2020-08-29 16:46:51'),
(72, 2, 17, '/uploads/applications/17/159870142880860.jpg', NULL, NULL, '2020-08-29 17:43:48', '2020-08-29 17:43:48'),
(73, 17, 17, '/uploads/applications/17/159870142879842.jpeg', NULL, NULL, '2020-08-29 17:43:48', '2020-08-29 17:43:48'),
(74, 18, 17, '/uploads/applications/17/159870142881684.jpeg', NULL, NULL, '2020-08-29 17:43:48', '2020-08-29 17:43:48'),
(75, 19, 17, '/uploads/applications/17/159870142880802.jpeg', NULL, NULL, '2020-08-29 17:43:48', '2020-08-29 17:43:48'),
(76, 2, 18, '/uploads/applications/18/159870151932898.jpg', NULL, NULL, '2020-08-29 17:45:19', '2020-08-29 17:45:19'),
(77, 17, 18, '/uploads/applications/18/159870151965058.jpeg', NULL, NULL, '2020-08-29 17:45:19', '2020-08-29 17:45:19'),
(78, 18, 18, '/uploads/applications/18/159870151923833.jpeg', NULL, NULL, '2020-08-29 17:45:19', '2020-08-29 17:45:19'),
(79, 19, 18, '/uploads/applications/18/159870151993290.jpeg', NULL, NULL, '2020-08-29 17:45:19', '2020-08-29 17:45:19'),
(80, 17, 19, '/uploads/applications/19/159870239435785.jpeg', NULL, NULL, '2020-08-29 17:59:54', '2020-08-29 17:59:54'),
(81, 18, 19, '/uploads/applications/19/159870239480113.jpeg', NULL, NULL, '2020-08-29 17:59:54', '2020-08-29 17:59:54'),
(82, 19, 19, '/uploads/applications/19/159870239494833.png', NULL, NULL, '2020-08-29 17:59:54', '2020-08-29 17:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `student_status`
--

CREATE TABLE `student_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_work`
--

CREATE TABLE `team_work` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_work`
--

INSERT INTO `team_work` (`id`, `name`, `sign_image`, `notes`, `created_at`, `updated_at`, `value`) VALUES
(1, 'institute_manager', '', '', NULL, NULL, 'أ.د/ احمد ابو القمصان'),
(2, 'student manager', '', '', NULL, NULL, 'أ.د/ عماد طلعت نجيب ');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `key`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(3, 'main_settings', 'الاعدادات الاساسيه', 'main settings', '2020-08-08 07:36:07', '2020-08-09 13:23:05'),
(4, 'not_found', 'رابط غير موجود', 'Not Found', '2020-08-08 07:36:07', '2020-08-09 13:23:05'),
(5, 'academic_year', 'السنوات الدراسية', 'Academic year', '2020-08-08 07:36:50', '2020-08-09 20:10:07'),
(6, 'adminsion_status', 'نوع التقديم', 'adminsion status', '2020-08-08 18:38:59', '2020-08-09 20:19:23'),
(7, 'global_setting', 'الاعدادات العامه', 'global setting', '2020-08-08 19:41:58', '2020-08-09 14:02:31'),
(8, 'change_password', 'تغيير الرقم السرى', 'change password', '2020-08-08 19:41:58', '2020-08-09 16:48:04'),
(9, 'activities', 'نشط', 'activities', '2020-08-08 19:41:58', '2020-08-09 16:46:03'),
(10, 'login_history', 'سجل النشاطات', 'login history', '2020-08-08 19:41:58', '2020-08-09 16:48:04'),
(11, 'main', 'الرئيسيه', 'main', '2020-08-08 19:56:50', '2020-08-09 16:48:04'),
(12, 'adminsion_metods', 'وسيله التعارف', 'adminsion methods', '2020-08-08 19:56:50', '2020-08-09 20:18:28'),
(13, 'academin_sections', 'المستويات والفرق', 'academin sections', '2020-08-08 19:56:50', '2020-08-09 17:10:04'),
(14, 'levels', 'المستوى الدراسى', 'levels', '2020-08-08 19:56:50', '2020-08-09 16:48:54'),
(15, 'departments', 'الأقسام الدراسيه', 'departments', '2020-08-08 19:56:50', '2020-08-09 17:34:53'),
(16, 'divisions', 'الشعب الدراسيه', 'divisions', '2020-08-08 19:56:50', '2020-08-09 17:34:53'),
(17, 'qualifications', 'المؤهلات', 'qualifications', '2020-08-08 19:56:50', '2020-08-09 17:26:49'),
(18, 'qualification_types', 'نوع المؤهل', 'qualification types', '2020-08-08 19:56:50', '2020-08-09 17:26:49'),
(19, 'roles', 'الصلاحيات', 'roles', '2020-08-08 19:56:50', '2020-08-09 17:11:08'),
(20, 'users', 'المستخدمين', 'users', '2020-08-08 19:56:50', '2020-08-09 17:11:08'),
(21, 'countroies_and_cities', 'الدول والمحافظات', 'countroies and cities', '2020-08-08 19:56:50', '2020-08-09 17:11:08'),
(22, 'countroies', 'الدول', 'countroies', '2020-08-08 19:56:50', '2020-08-09 20:08:43'),
(23, 'governments', 'المحافظات', 'governments', '2020-08-08 19:56:50', '2020-08-09 17:11:08'),
(24, 'cities', 'المدن', 'cities', '2020-08-08 19:56:50', '2020-08-09 17:11:08'),
(25, 'nationalities', 'الجنسيات', 'nationalities', '2020-08-08 19:56:50', '2020-08-09 13:46:16'),
(26, 'relative_relations', 'صله القرابه', 'relative relations', '2020-08-08 19:56:50', '2020-08-09 17:11:08'),
(27, 'languages', 'اللغات', 'languages', '2020-08-08 19:56:50', '2020-08-09 16:58:11'),
(28, 'parent_jobs', 'وظيفه ولى الامر', 'parent jobs', '2020-08-08 19:56:50', '2020-08-09 16:58:11'),
(29, 'applications', 'ملف التقديم', 'applications', '2020-08-08 19:56:50', '2020-08-09 17:13:53'),
(30, 'application_requirments', 'طلبات التقديم', 'application requirments', '2020-08-08 19:56:50', '2020-08-09 17:13:53'),
(31, 'military', 'التجنيد', 'military', '2020-08-08 19:56:50', '2020-08-09 16:58:11'),
(32, 'military_status', 'حالة التجنيد', 'military status', '2020-08-08 19:56:50', '2020-08-11 17:27:27'),
(33, 'military_areas', 'مناطق التجنيد', 'military areas', '2020-08-08 19:56:50', '2020-08-09 16:58:11'),
(34, 'profile', 'الحساب الشخصى', 'profile', '2020-08-08 20:06:14', '2020-08-09 16:58:11'),
(35, 'create', 'إضافه', 'create', '2020-08-08 20:20:59', '2020-08-09 20:08:43'),
(36, 'setting', 'الإعدادات', 'setting', '2020-08-08 20:22:04', '2020-08-09 16:58:11'),
(37, 'user_profile_info', 'الحساب الشخصى للمستخدم', 'user profile info', '2020-08-08 20:23:46', '2020-08-09 16:58:11'),
(38, 'name', 'الاسم', 'name', '2020-08-08 20:23:46', '2020-08-09 16:58:11'),
(39, 'username', 'اسم المستخدم', 'username', '2020-08-08 20:26:02', '2020-08-09 16:58:11'),
(40, 'email', 'البريد الإلكترونى', 'email', '2020-08-08 20:26:02', '2020-08-09 16:58:11'),
(41, 'phone', 'رقم الهاتف', 'phone', '2020-08-08 20:26:02', '2020-08-09 16:58:11'),
(42, 'save', 'حفظ', 'save', '2020-08-08 20:26:08', '2020-08-09 16:54:32'),
(43, 'datetime', 'التاريخ والوقت', 'datetime', '2020-08-08 20:55:32', '2020-08-09 20:08:43'),
(44, 'ip', 'IP', 'IP', '2020-08-08 20:55:32', '2020-08-09 16:58:11'),
(45, 'device_info', 'معلومات الجهاز', 'device info', '2020-08-08 20:55:32', '2020-08-09 16:58:11'),
(46, 'save_changes', 'حفظ التغيرات', 'save changes', '2020-08-08 20:57:37', '2020-08-09 17:13:53'),
(47, 'old_password', 'الرقم السرى القديم', 'old password', '2020-08-08 20:57:37', '2020-08-09 17:13:53'),
(48, 'new_password', 'الرقم السرى الجديد', 'new password', '2020-08-08 20:57:37', '2020-08-09 17:13:53'),
(49, 'confirm_new_password', 'تاكيد الرقم السرى الجديد', 'confirm new password', '2020-08-08 20:57:37', '2020-08-09 17:13:53'),
(50, 'add_city', 'إضافه مدينه', 'add city', '2020-08-08 21:07:13', '2020-08-09 17:28:28'),
(51, 'add_city_', 'إضافه مدينه', 'add city', '2020-08-08 21:07:13', '2020-08-09 19:59:22'),
(52, 'process_has_been_success', 'تمت العمليه  بنجاح', 'process has been success', '2020-08-08 21:07:14', '2020-08-09 20:08:43'),
(53, 'city', 'المدينه', 'city', '2020-08-09 12:44:45', '2020-08-09 17:28:28'),
(54, 'government', 'المحافظه', 'government', '2020-08-09 12:45:53', '2020-08-09 17:28:28'),
(55, 'country', 'الدوله', 'country', '2020-08-09 12:45:53', '2020-08-09 17:28:28'),
(56, 'notes', 'ملاحظات', 'notes', '2020-08-09 12:45:53', '2020-08-09 13:26:30'),
(57, 'are_you_sure_?', 'هل انت متأكد ؟', 'are you sure ?', '2020-08-09 12:50:52', '2020-08-09 13:36:47'),
(58, 'are_you_sure', 'هل انت متأكد ؟', 'are you sure', '2020-08-09 12:54:14', '2020-08-09 13:37:53'),
(59, 'when_deleted,_the_data_cannot_be_recovered', 'عند تاكيد الحذف سيتم فقد البيانات ولا يمكن لك استرجاعها', 'When deleted, the data cannot be recovered', '2020-08-09 12:56:09', '2020-08-09 16:52:33'),
(60, 'yes,_delete', 'نعم , اكد الحذف', 'yes, delete', '2020-08-09 12:56:09', '2020-08-09 16:52:33'),
(61, 'countries', 'الدول', 'countries', '2020-08-09 13:09:16', '2020-08-11 13:50:56'),
(62, 'change_translation', 'تغير الترجمه', 'change translation', '2020-08-09 13:23:05', '2020-08-09 16:52:33'),
(63, 'add', 'اضافه', 'add', '2020-08-09 13:23:14', '2020-08-09 16:52:33'),
(64, 'language', 'اللغه', 'language', '2020-08-09 13:23:14', '2020-08-09 16:52:33'),
(65, 'key', 'مفتاح', 'key', '2020-08-09 13:36:48', '2020-08-09 16:52:33'),
(66, 'name_in_english', 'الكلمة بالانجليزيه', 'Name in English', '2020-08-09 13:36:48', '2020-08-09 13:58:39'),
(67, 'name_in_arabic', 'الكلمة بالعربيه', 'Name in Arabic', '2020-08-09 13:36:48', '2020-08-09 13:58:39'),
(68, 'nationality', 'الجنسية', 'nationality', '2020-08-09 13:46:04', '2020-08-09 13:46:50'),
(69, 'relative_relation', 'صله القرابه', 'relative relation', '2020-08-09 13:58:36', '2020-08-09 16:52:33'),
(70, 'academic_years', 'السنه الدراسيه', 'academic years', '2020-08-09 14:35:46', '2020-08-09 16:52:33'),
(71, 'starts_in', 'بيدا فى', 'starts in', '2020-08-09 14:41:39', '2020-08-09 16:52:33'),
(72, 'ends_in_', 'ينتهى فى', 'ends in', '2020-08-09 14:41:39', '2020-08-09 16:52:33'),
(73, 'new', 'جديد', 'New', '2020-08-09 14:46:02', '2020-08-09 16:52:33'),
(74, 'app_notifications', 'اشعارات النظام', 'App Notifications', '2020-08-09 14:46:02', '2020-08-09 16:52:33'),
(75, '', '-', '-', '2020-08-09 14:46:02', '2020-08-18 15:25:24'),
(76, 'read_all_notifications', 'قرائه كل الاشعارات', 'Read all notifications', '2020-08-09 14:49:03', '2020-08-09 16:58:11'),
(77, 'home', 'الرئيسيه', 'home', '2020-08-09 15:04:56', '2020-08-09 16:58:11'),
(78, 'types_of_submissions', 'نوع التقديم', 'types of submissions', '2020-08-09 15:08:46', '2020-08-09 17:31:28'),
(79, 'submissions_type_name', 'اسم وسيله التعارف', 'submissions type name', '2020-08-09 15:08:46', '2020-08-09 20:27:24'),
(80, 'a_letter_sending_the_file_transferred_to_the_institute', 'خطاب ارسال الملف محول الى المعهد', 'A letter sending the file transferred to the institute', '2020-08-09 15:55:11', '2020-08-09 16:20:22'),
(81, 'translation', 'الترجمه', 'translation', '2020-08-09 15:56:09', '2020-08-09 16:50:36'),
(82, 'translations', 'الترجمه', 'translations', '2020-08-09 15:57:23', '2020-08-09 16:50:36'),
(83, 'print', 'طباعه', 'print', '2020-08-09 16:16:27', '2020-08-09 17:31:28'),
(84, 'division_name', 'اسم الشعبه', 'division name', '2020-08-09 16:17:37', '2020-08-09 16:46:47'),
(85, 'department_name', 'اسم القسم', 'department name', '2020-08-09 16:17:37', '2020-08-09 16:46:47'),
(86, 'level', 'المستوى الدراسى', 'level', '2020-08-09 16:17:37', '2020-08-09 16:46:47'),
(87, 'select_country', 'اسم الدوله', 'select country', '2020-08-09 17:07:32', '2020-08-11 13:53:10'),
(88, 'select_government', 'إختر المحافظه', 'select government', '2020-08-09 17:07:32', '2020-08-09 17:31:28'),
(89, 'submission_type', 'وسيله التعارف', 'submission type', '2020-08-09 17:09:21', '2020-08-09 20:26:10'),
(90, 'submission_status', 'وسيله التعارف', 'submission status', '2020-08-09 17:09:21', '2020-08-09 20:26:10'),
(91, 'student_name', 'اسم الطالب', 'student name', '2020-08-09 17:09:21', '2020-08-09 17:31:28'),
(92, 'student_address', 'العنوان', 'student address', '2020-08-09 17:09:21', '2020-08-09 17:31:28'),
(93, 'birth_place', 'محل الميلاد', 'birth place', '2020-08-09 17:09:21', '2020-08-09 17:31:28'),
(94, 'national_id', 'الرقم القومى', 'national id', '2020-08-09 17:09:21', '2020-08-09 17:31:28'),
(95, 'national_id_date', 'تاريخ اصدار الرقم القومى', 'national id date', '2020-08-09 17:09:21', '2020-08-09 17:31:28'),
(96, 'national_id_place', 'مكان صدور الرقم القومى', 'national id place', '2020-08-09 17:09:21', '2020-08-09 20:08:43'),
(97, 'triple_number', 'الرقم الثلاثى', 'triple number', '2020-08-09 17:09:21', '2020-08-09 17:31:28'),
(98, 'registration_date', 'تاريخ التقديم', 'registration date', '2020-08-09 17:09:21', '2020-08-09 17:31:28'),
(99, 'military_area', 'منطقه التجنيد', 'military area', '2020-08-09 17:09:21', '2020-08-09 17:31:28'),
(100, 'select_military_area', 'إختر منطقه التجنيد', 'select military area', '2020-08-09 17:09:21', '2020-08-09 17:31:28'),
(101, 'select_military_status', 'إختر حاله التجنيد', 'select military status', '2020-08-09 17:09:21', '2020-08-09 17:31:28'),
(102, 'select_academic_year', 'إختر السنه الدراسيه', 'select academic year', '2020-08-09 17:09:21', '2020-08-09 17:31:28'),
(103, 'image', 'صوره', 'image', '2020-08-09 17:35:14', '2020-08-09 17:45:04'),
(104, 'application_code', 'كود ملف التقديم', 'application code', '2020-08-09 17:35:14', '2020-08-09 20:08:43'),
(105, 'student_phone', 'رقم التليفون', 'student phone', '2020-08-09 17:35:14', '2020-08-09 17:45:04'),
(106, 'tanseeq_password', 'رقم السرى للتنسيق', 'tanseeq password', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(107, 'qualification_type', 'نوع المؤهل', 'qualification type', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(108, 'select_qualification_type', 'إختر نوع المؤهل', 'select qualification type', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(109, 'qualification_date', 'تاريخ الحصول على المؤهل', 'qualification date', '2020-08-09 17:35:17', '2020-08-09 20:08:43'),
(110, 'setting_number', 'رقم جلوس المؤهل', 'setting number', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(111, 'select_nationality', 'إختر الجنسيه', 'select nationality', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(112, 'religion', 'الديانه', 'religion', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(113, 'muslim', 'مسلم', 'muslim', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(114, 'christian', 'مسيحى', 'christian', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(115, 'sex', 'النوع', 'sex', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(116, 'male', 'ذكر', 'male', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(117, 'female', 'انثى', 'female', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(118, 'select_city', 'إختر المدينه', 'select city', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(119, 'first_foreign_language', 'اللغه الاجنبيه الاولى', 'first foreign language', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(120, 'select_first_foreign_language', 'إختر اللغه الاجنبيه الاولى', 'select first foreign language', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(121, 'second_foreign_language', 'اللغه الاجنبيه الثانيه', 'second foreign language', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(122, 'select_second_foreign_language', 'إختر اللغه الاجنبيه الثانيه', 'select second foreign language', '2020-08-09 17:35:17', '2020-08-09 17:45:04'),
(123, 'student_grade', 'درجه الطالب', 'student grade', '2020-08-09 17:35:18', '2020-08-09 17:45:04'),
(124, 'parent_name', 'اسم ولى الامر', 'parent name', '2020-08-09 17:35:18', '2020-08-09 17:45:04'),
(125, 'parent_national_id', 'رقم بطاقه ولى الامر', 'parent national id', '2020-08-09 17:35:18', '2020-08-09 17:45:04'),
(126, 'parent_job', 'وظيفه ولى الامر', 'parent job', '2020-08-09 17:35:18', '2020-08-09 17:45:04'),
(127, 'select_parent_job', 'إختر وظيفه ولى الامر', 'select parent job', '2020-08-09 17:35:18', '2020-08-09 17:45:04'),
(128, 'parent_address', 'عنوان اقامه ولى الامر', 'parent address', '2020-08-09 17:35:18', '2020-08-09 17:45:04'),
(129, 'parent_phone', 'رقم تليفون ولى الامر', 'parent phone', '2020-08-09 17:35:18', '2020-08-09 17:45:04'),
(130, 'submissions_status', 'وسيله التعارف', 'submissions status', '2020-08-09 17:48:02', '2020-08-09 20:08:43'),
(131, 'report_setting', 'اعدادات التقرير', 'report setting', '2020-08-09 17:52:39', '2020-08-09 18:24:44'),
(132, 'letter_sending_to_institute', 'خطاب ارسال الملف المحول الى المعهد', 'letter_sending_to_institute', '2020-08-09 17:52:40', '2020-08-09 18:21:55'),
(133, 'change_report_setting', 'تغير اعدادات التقارير', 'change report setting', '2020-08-09 18:07:17', '2020-08-09 20:08:43'),
(134, 'reports', 'التقارير', 'reports', '2020-08-09 18:17:41', '2020-08-09 18:20:56'),
(135, 'settings', 'الاعدادات', 'settings', '2020-08-09 18:17:41', '2020-08-09 18:20:39'),
(136, 'area', 'المنظقه', 'area', '2020-08-09 18:28:07', '2020-08-09 19:47:45'),
(137, 'area_name', 'اسم المنطقه', 'area name', '2020-08-09 18:30:10', '2020-08-09 19:47:45'),
(138, 'pdf', 'pdf', 'pdf', '2020-08-09 18:45:35', '2020-08-25 16:33:55'),
(139, 'countries_and_cities', 'المحافظات والمدن', 'countries and cities', '2020-08-09 19:13:05', '2020-08-09 19:47:45'),
(140, 'letter_sending_from_institute', 'خطاب ارسال الملف المحول من المعهد', 'letter_sending_from_institute', '2020-08-09 19:16:14', '2020-08-09 19:18:53'),
(141, 'a_letter_sending_the_file_transferred_from_the_institute', 'خطاب ارسال ملف طالب محول من المعهد', 'A letter sending the file transferred from the institute', '2020-08-09 19:19:52', '2020-08-09 20:08:43'),
(142, 'responsible_user', 'الموظف المختص', 'responsible user', '2020-08-09 19:34:26', '2020-08-09 19:35:38'),
(143, 'student_manager', 'مدير شئون الطلاب', 'student manager', '2020-08-09 19:34:26', '2020-08-09 19:35:38'),
(144, 'institute_manager', 'عميد المعهد', 'institute_manager', '2020-08-09 19:34:26', '2020-08-09 19:35:38'),
(145, 'header1_of_report', 'عنوان التقارير', 'header1_of_report', '2020-08-09 19:41:25', '2020-08-11 19:47:10'),
(146, 'higher_education', 'وزارة التعليم العالى', 'higher_education', '2020-08-09 20:03:56', '2020-08-11 18:05:58'),
(147, 'ends_is', 'ينتهى فى', 'ends is', '2020-08-09 20:10:58', '2020-08-09 20:11:38'),
(148, 'level_name', 'اسم المستوى الدراسى', 'level name', '2020-08-09 20:40:17', '2020-08-09 20:48:35'),
(149, 'edit', 'تعديل', 'edit', '2020-08-09 20:59:30', '2020-08-09 21:07:24'),
(150, 'qualification', 'اسم المؤهل الدراسى', 'qualification', '2020-08-09 21:07:36', '2020-08-09 21:08:17'),
(151, 'qualification_grade', 'درجه المؤهل', 'qualification grade', '2020-08-09 21:07:36', '2020-08-09 21:08:17'),
(152, 'grade', 'الدرجه', 'grade', '2020-08-09 21:08:31', '2020-08-09 21:08:52'),
(153, 'qualification_type_name', 'اسم نوع المؤهل', 'qualification type name', '2020-08-09 21:09:09', '2020-08-09 21:09:55'),
(154, 'required_grade', 'الدرجه المطلوبه', 'required grade', '2020-08-09 21:09:09', '2020-08-09 21:09:55'),
(155, 'application_requirements', 'الخانات الاساسيه والثانويه', 'application requirements', '2020-08-10 02:37:14', '2020-08-10 19:02:48'),
(156, 'required', 'اساسى', 'required', '2020-08-10 02:37:14', '2020-08-10 19:02:48'),
(157, 'not_required', 'غير اساسى', 'not required', '2020-08-10 02:37:14', '2020-08-10 19:02:48'),
(158, 'qualification_name', 'اسم المؤهل الدراسى', 'qualification name', '2020-08-10 13:29:18', '2020-08-11 18:27:31'),
(159, 'military_area_updated', 'تحديث مناطق التجنيد', 'military area updated', '2020-08-10 14:48:30', '2020-08-10 19:02:48'),
(160, 'military_area_updated_', 'تحديث مناطق التجنيد', 'military area updated', '2020-08-10 14:48:30', '2020-08-10 19:02:48'),
(161, 'deleted_successfully', 'تم الحذف بنجاح', 'deleted successfully', '2020-08-10 14:52:12', '2020-08-10 19:09:16'),
(162, 'military_area_deleted', 'حذف منطقه تجنيد', 'military area deleted', '2020-08-10 14:52:12', '2020-08-10 19:09:16'),
(163, 'military_area_deleted_', 'حذف منطقه تجنيد', 'military area deleted', '2020-08-10 14:52:12', '2020-08-10 19:09:16'),
(164, 'recommendationcard', 'بطاقة الترشيح', 'recommendationcard', '2020-08-10 15:34:42', '2020-08-11 13:41:43'),
(165, 'recommendation_card', 'بطاقة الترشيح', 'recommendation card', '2020-08-10 15:35:40', '2020-08-11 13:41:43'),
(166, 'certificate_of_academic_qualification', 'شهادة المؤهل الدراسى', 'certificate of academic qualification', '2020-08-10 16:16:46', '2020-08-11 13:41:43'),
(167, 'role', 'الصلاحيات', 'role', '2020-08-10 16:22:58', '2020-08-10 19:09:16'),
(168, 'birth_certificate', 'شهادة الميلاد', 'birth certificate', '2020-08-10 16:25:46', '2020-08-11 13:41:43'),
(169, 'bitrh_certificate', 'شهادة الميلاد', 'bitrh certificate', '2020-08-10 16:45:10', '2020-08-11 13:41:43'),
(170, 'dark_mode', 'الوضع المظلم', 'dark mode', '2020-08-10 16:46:17', '2020-08-11 13:41:43'),
(171, 'personal_identification_photo', 'صورة تحقيق الشخصيه', 'personal identification photo', '2020-08-10 16:47:29', '2020-08-11 13:41:43'),
(172, 'personal_photo', 'الصوره الشخصيه', 'personal photo', '2020-08-10 16:51:52', '2020-08-11 13:35:58'),
(173, 'model_2_jund', 'إستماره 2 جند', 'model 2 jund', '2020-08-10 17:04:27', '2020-08-11 13:35:58'),
(174, 'model_6_jund', 'إستماره 6 جند', 'model 6 jund', '2020-08-10 17:04:27', '2020-08-11 13:35:58'),
(175, 'receipt_letter', 'خطاب استلام', 'receipt letter', '2020-08-10 17:04:27', '2020-08-11 13:41:43'),
(176, 'estimates_statement', 'بيان التقديرات', 'estimates statement', '2020-08-10 17:04:27', '2020-08-11 13:41:43'),
(177, 'qualification_certificate', 'صورة شهادة المؤهل', 'qualification certificate', '2020-08-10 17:22:15', '2020-08-11 13:41:43'),
(178, 'full_name', 'الاسم بالكامل', 'full name', '2020-08-10 17:51:04', '2020-08-10 19:10:28'),
(179, 'select_all', 'اختيار الكل', 'select all', '2020-08-10 17:59:31', '2020-08-10 19:10:28'),
(180, 'show', 'عرض', 'show', '2020-08-10 17:59:31', '2020-08-10 19:10:28'),
(181, 'delete', 'حذف', 'delete', '2020-08-10 17:59:31', '2020-08-10 19:10:28'),
(182, 'case_status', 'بيان حاله', 'case status', '2020-08-10 18:07:28', '2020-08-11 13:41:43'),
(183, 'degree_status', 'بيان درجات', 'degree status', '2020-08-10 18:07:28', '2020-08-11 13:41:43'),
(184, 'degree_statement', 'بيان درجات', 'degree statement', '2020-08-10 18:07:28', '2020-08-11 13:42:28'),
(185, 'egyptians_lab_speechs', 'خطابات معامل المصريين', 'egyptians lab speechs', '2020-08-10 18:07:28', '2020-08-11 13:41:43'),
(186, '-_select_academic_year_-', 'إختر السنه الداسيه', '- select academic year -', '2020-08-10 19:16:59', '2020-08-11 13:34:41'),
(187, 'search', 'ابحث', 'search', '2020-08-10 19:50:13', '2020-08-11 13:34:41'),
(188, 'students', 'الطلاب', 'students', '2020-08-11 12:27:14', '2020-08-11 13:34:41'),
(189, 'academic_year_id', 'رقم السنه الدراسيه', 'academic_year_id', '2020-08-11 13:23:30', '2020-08-11 13:34:41'),
(190, 'field_name', 'اسم الحقل', 'field name', '2020-08-11 13:35:41', '2020-08-11 13:42:54'),
(191, 'job_name', 'اسم الوظيفه', 'job name', '2020-08-11 13:45:49', '2020-08-11 13:46:29'),
(192, 'password', 'الرقم السرى', 'password', '2020-08-11 14:30:50', '2020-08-18 15:55:20'),
(193, 'upload_image', 'ارفاق صورة', 'upload image', '2020-08-11 14:30:50', '2020-08-11 16:53:53'),
(194, 'super_admin', 'مدير بصلاحيات اعلى', 'super_admin', '2020-08-11 15:19:51', '2020-08-18 15:55:20'),
(195, 'hr', 'شئون الطلاب', 'hr', '2020-08-11 15:19:51', '2020-08-11 18:06:31'),
(196, 'military_status_reason', 'ادارة مواقف التجنيد', 'military status reason', '2020-08-11 16:11:20', '2020-08-11 17:27:27'),
(197, 'military-area-submission', 'ادارة مناطق التجنيد', 'military area submission', '2020-08-11 16:13:57', '2020-08-11 16:15:24'),
(198, 'student_code_series', 'مسلسل كود الطلاب', 'student_code_series', '2020-08-11 16:19:56', '2020-08-11 16:34:53'),
(199, 'code', 'الكود', 'code', '2020-08-11 16:26:48', '2020-08-11 16:34:53'),
(200, 'add_student_code_series', 'اضافة مسلسل كود', 'add student code series', '2020-08-11 16:27:36', '2020-08-11 16:34:53'),
(201, 'add_student_code_series_2020001', '-', 'add student code series 2020001', '2020-08-11 16:27:36', '2020-08-18 15:25:25'),
(202, 'add_student_code_series_20202001', '-', 'add student code series 20202001', '2020-08-11 16:30:10', '2020-08-18 15:25:25'),
(203, 'edit_student_code_series', 'تعديل مسلسل اكواد الطلاب', 'edit student code series', '2020-08-11 16:33:33', '2020-08-18 15:55:20'),
(204, 'edit_student_code_series_20202001', '-', 'edit student code series 20202001', '2020-08-11 16:33:33', '2020-08-18 15:25:25'),
(205, 'condition_age', 'سن التجنيد', 'condition age', '2020-08-11 16:37:00', '2020-08-11 16:53:53'),
(206, 'remove_student_code_series', 'احذف مسلسل اكواد الطلاب', 'remove student code series', '2020-08-11 16:39:00', '2020-08-18 15:55:20'),
(207, 'remove_student_code_series_of_id_', 'حذف رقم مسلسل الطالب', 'remove student code series of id', '2020-08-11 16:39:00', '2020-08-18 15:55:20'),
(208, 'reasons', 'الاسباب', 'reasons', '2020-08-11 16:39:38', '2020-08-11 16:53:53'),
(209, 'reason', 'السبب', 'reason', '2020-08-11 16:39:38', '2020-08-11 16:53:53'),
(210, 'add_military_status_settings', 'إضافه اعدادات حالات التجنيد', 'add military status settings', '2020-08-11 17:02:12', '2020-08-18 15:55:20'),
(211, 'data_updated_successfully', 'تم تعديل البيانات بنجاح', 'data updated successfully', '2020-08-11 17:18:34', '2020-08-18 15:55:20'),
(212, 'data_deleted_successfully', 'تم حذف البيانات بنجاح', 'data deleted successfully', '2020-08-11 17:22:30', '2020-08-18 15:55:20'),
(213, 'military_status_settings_deleted', 'حذف اعدادات حالات التجنيد', 'military status settings deleted', '2020-08-11 17:22:30', '2020-08-18 15:55:20'),
(214, 'military_status_settings_deleted_', 'حذف اعدادات حالات التجنيد', 'military status settings deleted', '2020-08-11 17:22:30', '2020-08-18 15:55:20'),
(215, 'military_area_submission', 'ادارة مناطق التجنيد', 'military area submission', '2020-08-11 17:25:28', '2020-08-11 17:29:13'),
(216, 'report', 'تقرير', 'report', '2020-08-11 17:31:08', '2020-08-18 15:55:20'),
(217, 'repo', '-', 'repo', '2020-08-11 17:31:08', '2020-08-18 15:25:25'),
(218, 'select_student', 'إختر الطالب', 'select student', '2020-08-11 17:31:08', '2020-08-18 15:55:20'),
(219, 'application', 'ملف التقديم', 'application', '2020-08-11 17:43:05', '2020-08-18 15:55:20'),
(220, 'application_files', 'طالب متقدم (فتح ملف)', 'application files', '2020-08-11 17:43:05', '2020-08-25 19:33:44'),
(221, 'deselect_all', 'الغاء اختيار الكل', 'deselect all', '2020-08-11 17:59:36', '2020-08-11 18:00:23'),
(222, 'low_roles', 'صلاحيات ذات مستوى ضعيف', 'low_roles', '2020-08-11 18:12:51', '2020-08-11 18:27:05'),
(223, 'select_level_name', 'اختر اسم المستوى', 'select level name', '2020-08-11 18:17:06', '2020-08-11 18:27:05'),
(224, 'select_division_name', 'اختر اسم القسم', 'select division name', '2020-08-11 18:22:29', '2020-08-11 18:27:05'),
(225, 'report_header1', 'عنوان التقرير', 'report header1', '2020-08-11 18:41:17', '2020-08-11 19:48:25'),
(226, 'this_item_can_not_be_deleted', 'هذا المدخل لا يمكن الغاءه', 'this item can not be deleted', '2020-08-11 18:57:44', '2020-08-11 19:47:55'),
(227, 'registration_certificate', 'شهاده قيد', 'registration_certificate', '2020-08-11 19:10:59', '2020-08-11 19:47:55'),
(228, 'add_military_area_submission', 'اضافة منطقة تجنيد', 'add military area submission', '2020-08-11 19:46:07', '2020-08-11 20:07:44'),
(229, 'military_setting', 'اعدادات التجنيد', 'military setting', '2020-08-11 20:01:02', '2020-08-11 20:07:44'),
(230, 'date_of_age_calculate', 'تاريخ بدا حساب عمر الطالب', 'date of age calculate', '2020-08-11 20:01:02', '2020-08-11 20:07:44'),
(231, 'change_setting', 'تعديل الاعدادات', 'change setting', '2020-08-11 20:01:28', '2020-08-11 20:07:44'),
(232, 'change_setting_', 'تعديل الاعدادات', 'change setting', '2020-08-11 20:01:28', '2020-08-11 20:07:44'),
(233, 'select_department_name', 'اختر اسم القسم', 'select department name', '2020-08-11 20:39:20', '2020-08-12 13:00:50'),
(234, 'application_added_successfully', 'تم اضافه الملف بنجاح', 'application added successfully', '2020-08-11 21:15:41', '2020-08-12 13:00:50'),
(235, 'add_application', 'اضافه ملف تقديم', 'add application', '2020-08-11 21:15:41', '2020-08-12 13:00:50'),
(236, 'add_application_', 'اضافه ملف تقديم', 'add application', '2020-08-11 21:15:41', '2020-08-12 13:00:50'),
(237, 'student_added_successfully', 'تم اضافه الطالب بنجاح', 'student added successfully', '2020-08-12 02:12:16', '2020-08-12 13:00:50'),
(238, 'add_student', 'اضافه طال', 'add student', '2020-08-12 02:12:16', '2020-08-12 13:00:50'),
(239, 'add_student_', 'اضافه طال', 'add student', '2020-08-12 02:12:16', '2020-08-12 13:00:50'),
(240, 'student_code', 'كود الطالب', 'student code', '2020-08-12 02:41:15', '2020-08-12 13:00:50'),
(241, 'submission_method', 'طرق التقديم', 'submission method', '2020-08-12 03:20:30', '2020-08-12 03:21:31'),
(242, 'page_expired', 'انتهت فتره التحميل', 'Page Expired', '2020-08-12 09:45:18', '2020-08-12 13:00:50'),
(243, 'select_qualification', 'اختر اسم المؤهل الدراسى', 'select qualification', '2020-08-12 11:30:17', '2020-08-12 12:20:47'),
(244, 'not_match', 'غير مطابق للشروط', 'not match', '2020-08-12 12:46:17', '2020-08-12 12:57:39'),
(245, 'add_as_student', 'اضافه كاطالب', 'add as student', '2020-08-12 13:27:06', '2020-08-12 13:34:42'),
(246, 'conditions_not_completed', 'غير مكتملة الشروط', 'conditions not completed', '2020-08-12 14:22:52', '2020-08-12 14:24:33'),
(247, 'auth.failed', '-', 'auth.failed', '2020-08-14 00:18:09', '2020-08-18 15:25:25'),
(248, 'military_course', 'دورات التربية العسكرية', 'military course', '2020-08-16 17:52:48', '2020-08-16 18:01:17'),
(249, 'military_course_collection', 'مجموعات التربية العسكرية', 'military course collection', '2020-08-16 17:52:48', '2020-08-16 17:53:25'),
(250, 'ends_in', 'ينتهى فى', 'ends in', '2020-08-16 17:56:27', '2020-08-16 18:01:17'),
(251, 'students_registration', 'تسجيل الطلاب', 'Students registration', '2020-08-16 17:56:27', '2020-08-16 18:01:17'),
(252, 'military_course_collection_students', 'عرض الطلبة المسجلين', 'military course collection students', '2020-08-16 17:59:10', '2020-08-16 18:01:17'),
(253, 'student_information', 'معلومات الطالب', 'student information', '2020-08-16 18:17:27', '2020-08-18 15:34:34'),
(254, 'military_information', 'معلومات التجنيد', 'military information', '2020-08-16 19:38:10', '2020-08-18 15:34:34'),
(255, 'other_information', 'باقى المعلومات', 'other information', '2020-08-16 19:38:10', '2020-08-18 15:34:34'),
(256, 'parent_information', 'معلومات الاب', 'parent information', '2020-08-16 19:38:10', '2020-08-18 15:34:34'),
(257, 'required_documents', 'الاوراق المطلوبه', 'required documents', '2020-08-16 19:40:23', '2020-08-18 15:29:43'),
(258, 'sorry_no_students_found_on_this_military_collection', 'عفوا لم يتم تسجيل اى طالب فى هذه الدوره', 'sorry no students found on this military collection', '2020-08-16 19:42:57', '2020-08-18 16:14:02'),
(259, 'students_have_been_successfully_added_to_the_military_course', 'تم إضافه الطلاب الى المقرر بنجاح', 'Students have been successfully added to the military course', '2020-08-16 19:48:15', '2020-08-18 16:14:02'),
(260, 'military_course_updated_', 'تعديل مقرر التربيه العسكريه', 'military course updated ', '2020-08-16 19:48:15', '2020-08-18 15:55:20'),
(261, 'registred_students', 'ادخال النتيجة', 'Registred Students', '2020-08-16 19:54:51', '2020-08-18 17:12:41'),
(262, 'add_military_course', 'اضافه مقرر التربيه العسكريه', 'add military course', '2020-08-16 21:07:50', '2020-08-18 15:55:20'),
(263, 'military_course_updated', 'تعديل مقرر التربيه العسكريه', 'military course updated', '2020-08-16 21:08:08', '2020-08-18 15:55:20'),
(264, 'the_data_has_been_modified_successfully', 'تم تعديل البيانات بنجاح', 'The data has been modified successfully', '2020-08-16 21:08:08', '2020-08-18 16:14:02'),
(265, 'please_choose_students', 'من فضلك قم بإختيار الطالب', 'please choose students', '2020-08-17 12:31:26', '2020-08-18 16:14:02'),
(266, 'military_course_collection_code', 'قم بادخال رقم مقرر التربيه العسكريه', 'military course collection code', '2020-08-17 12:48:04', '2020-08-18 16:14:02'),
(267, 'select_military_course', 'قم باختيار مقرر التربيه العسكريه', 'select military course', '2020-08-17 12:48:04', '2020-08-18 16:14:02'),
(268, 'add_military_course_collection', '-', 'add military course collection', '2020-08-17 12:48:27', '2020-08-18 15:25:25'),
(269, 'type', 'النوع', 'type', '2020-08-17 13:29:19', '2020-08-18 16:11:39'),
(270, 'original', 'نسخه اصليه', 'original', '2020-08-17 13:31:20', '2020-08-18 16:07:29'),
(271, 'copy', 'صوره', 'copy', '2020-08-17 13:31:20', '2020-08-18 16:07:29'),
(272, 'both', 'نسخه اصليه و صوره', 'both', '2020-08-17 13:31:20', '2020-08-18 16:07:29'),
(273, 'upload_file', 'قم برفع الملف', 'upload file', '2020-08-17 14:09:27', '2020-08-18 16:07:29'),
(274, 'the_result_has_been_approved_successfully', 'تم حفظ النتيجه بنجاح', 'the result has been approved successfully', '2020-08-17 14:58:06', '2020-08-18 16:11:39'),
(275, 'the_result_of_the_military_course_group_is_entered', 'تم ادخال نتيجه مجموعه التربيه العسكريه', 'The result of the Military Course group is entered', '2020-08-17 14:58:06', '2020-08-18 16:11:39'),
(276, 'id', 'الكود', 'ID', '2020-08-17 15:14:21', '2020-08-18 15:30:49'),
(277, 'successfull', 'ناجح / حاصل', 'successfull', '2020-08-17 16:19:14', '2020-08-18 19:07:13'),
(278, 'precipitate', 'راسب / غير حاصل', 'precipitate', '2020-08-17 16:19:14', '2020-08-18 19:07:13'),
(279, 'assign_required_documents', 'حدد الأوراق المطلوبه', 'assign required documents', '2020-08-17 16:26:11', '2020-08-17 16:26:11'),
(280, 'select_required_documents', 'حدد الأوراق المطلوبه', 'select required documents', '2020-08-17 16:26:35', '2020-08-17 16:26:35'),
(281, 'close', 'أغلاق', 'close', '2020-08-17 16:26:35', '2020-08-17 16:26:35'),
(282, 'military_course_deleted', 'حذف مقرر التربيه العسكريه', 'military course deleted', '2020-08-17 18:46:19', '2020-08-18 15:59:10'),
(283, 'name_is_required', 'حقل الاسم مطلوب', 'name is required', '2020-08-18 12:54:36', '2020-08-18 15:59:10'),
(284, 'qualification_is_required', 'حقل المؤهل مطلوب', 'qualification is required', '2020-08-18 12:54:36', '2020-08-18 15:59:10'),
(285, 'registration_status_is_required', 'حقل نوع التقديم مطلوب', 'registration_status is required', '2020-08-18 12:54:36', '2020-08-18 15:58:05'),
(286, 'national_id_is_required', 'حقل الرقم القومى مطلوب', 'national_id is required', '2020-08-18 12:54:36', '2020-08-18 15:56:46'),
(287, 'academic_years_is_required', 'حقل العام الدراسى مطلوب', 'academic_years is required', '2020-08-18 12:54:36', '2020-08-18 15:56:46'),
(288, 'grade_is_required', 'حقل الدرجه مطلوب', 'grade is required', '2020-08-18 12:54:36', '2020-08-18 15:56:47'),
(289, 'qualification_date_is_required', 'حقل تاريخ الحصول على المؤهل مطلوب', 'qualification_date is required', '2020-08-18 12:54:36', '2020-08-18 15:56:47'),
(290, 'qualification_types_is_required', 'حقل نوع المؤهل مطلوب', 'qualification_types is required', '2020-08-18 12:54:36', '2020-08-18 15:56:47'),
(291, 'new_application', 'ملف تقديم جديد', 'new application', '2020-08-18 14:17:31', '2020-08-18 15:29:43'),
(292, 'proccess_has_been_success', 'تمت العملية بنجاح', 'proccess has been success', '2020-08-18 15:25:26', '2020-08-18 15:28:28'),
(293, 'acceptance_code', 'رقم الموافقه', 'acceptance_code', '2020-08-18 17:16:33', '2020-08-19 15:39:11'),
(294, 'acceptance_date', 'تاريخ الموافقه', 'acceptance_date', '2020-08-18 17:16:33', '2020-08-19 15:39:11'),
(295, 'search_with_application_info', 'بحث بمعلومات ملف التقديم', 'search with application info', '2020-08-18 18:07:25', '2020-08-18 19:25:22'),
(297, 'registration_status', 'طريقة التقديم', 'registration_status', '2020-08-18 18:30:40', '2020-08-18 19:07:13'),
(298, 'add_students_to_military_course', 'اضافة طلاب', 'Add Students to military course', '2020-08-18 18:34:52', '2020-08-18 18:34:52'),
(301, 'cancel', 'تراجع', 'cancel', '2020-08-18 18:43:40', '2020-08-18 22:12:11'),
(302, 'this_item_cannot_be_deleted', 'لا يمكن حذف هذا العنصر', 'This item cannot be deleted', '2020-08-18 19:01:39', '2020-08-18 19:32:07'),
(303, 'military_course_student_collection', '-', 'military course student collection', '2020-08-18 19:30:05', '2020-08-18 19:32:07'),
(304, 'excel', 'اكسيل', 'excel', '2020-08-18 19:35:02', '2020-08-25 16:33:55'),
(305, 'search_here', 'ابحث هنا', 'search here', '2020-08-19 14:11:26', '2020-08-19 14:11:26'),
(306, '0', '', '', '2020-08-19 14:25:57', '2020-08-19 15:39:11'),
(307, 'stores', 'خزينه', 'stores', '2020-08-22 17:33:18', '2020-08-30 14:33:42'),
(308, 'resource_name', '-', 'resource name', '2020-08-22 17:33:18', '2020-08-22 18:22:03'),
(309, 'add_store', 'اضافة خزينه', 'add store', '2020-08-22 17:33:18', '2020-08-30 14:33:42'),
(310, 'init_balance', 'رصيد بداية المده', 'init_balance', '2020-08-22 17:43:36', '2020-08-22 18:22:03'),
(311, 'address', 'العنوان', 'address', '2020-08-22 17:43:36', '2020-08-22 18:22:03'),
(312, 'balance', 'الرصيد الحالى', 'balance', '2020-08-22 18:01:06', '2020-08-22 18:22:03'),
(313, 'user', 'المستخدم', 'user', '2020-08-22 18:01:06', '2020-08-22 18:22:03'),
(314, 'edit_store', 'تعديل خزينه', 'edit store', '2020-08-22 18:12:07', '2020-08-30 14:33:42'),
(315, 'remove_store', 'حذف خزينه', 'remove store', '2020-08-22 18:18:46', '2020-08-30 14:33:42'),
(316, 'remove_store_of_id_', '', 'remove store of id ', '2020-08-22 18:18:46', '2020-08-22 18:22:03'),
(317, 'banks', 'البنوك', 'banks', '2020-08-22 18:29:30', '2020-08-22 19:19:06'),
(318, 'add_bank', 'اضافة بنك', 'add bank', '2020-08-22 18:29:30', '2020-08-22 19:19:06'),
(319, 'account_number', 'رقم الحساب', 'account_number', '2020-08-22 18:30:05', '2020-08-22 19:19:06'),
(320, 'branche', 'الفرع', 'branche', '2020-08-22 18:30:05', '2020-08-22 19:19:06'),
(321, 'edit_bank', 'تعديل بنك', 'edit bank', '2020-08-22 18:35:20', '2020-08-22 19:19:06'),
(322, 'remove_bank', 'حذف بنك', 'remove bank', '2020-08-22 18:39:42', '2020-08-22 19:19:06'),
(323, 'transformations', 'التحويلات الماليه', 'transformations', '2020-08-22 19:13:57', '2020-08-22 19:19:06'),
(324, 'date', 'التاريخ', 'date', '2020-08-22 19:13:57', '2020-08-22 19:19:06'),
(325, 'bank_id', 'البنك', 'bank_id', '2020-08-22 19:13:57', '2020-08-22 19:19:06'),
(326, 'store_id', 'خزينه', 'store_id', '2020-08-22 19:13:57', '2020-08-30 14:33:42'),
(327, 'value', 'المبلغ', 'value', '2020-08-22 19:13:57', '2020-08-22 19:19:06'),
(328, 'attachment', 'مرفق', 'attachment', '2020-08-22 19:13:57', '2020-08-22 19:19:06'),
(329, 'user_id', 'المستخدم', 'user_id', '2020-08-22 19:13:57', '2020-08-22 19:19:06'),
(330, 'add_transformation', 'اضافة تحويل مالى', 'add transformation', '2020-08-22 19:13:57', '2020-08-22 19:19:06'),
(331, 'bank', 'البنك', 'bank', '2020-08-22 19:13:57', '2020-08-22 19:19:06'),
(332, 'bank_to_store', 'من بنك الى خزينه', 'bank_to_store', '2020-08-22 19:13:57', '2020-08-30 14:33:42'),
(333, 'store_to_bank', 'من خزينه الى بنك', 'store_to_bank', '2020-08-22 19:13:57', '2020-08-30 14:33:42'),
(334, 'store', 'خزينه', 'store', '2020-08-22 19:15:13', '2020-08-30 14:33:42'),
(335, 'transformation_id', 'رقم التحويل', 'transformation_id', '2020-08-22 19:52:05', '2020-08-23 20:10:52'),
(336, 'remove_transformation', 'حذف التحويل', 'remove transformation', '2020-08-22 19:52:11', '2020-08-23 20:10:52'),
(337, 'edit_transformation', 'تعديل التحويل', 'edit transformation', '2020-08-22 20:08:02', '2020-08-23 20:10:52'),
(338, 'date_from', 'من تاريخ', 'date_from', '2020-08-22 20:14:51', '2020-08-23 20:10:52'),
(339, 'date_to', 'الى تاريخ', 'date_to', '2020-08-22 20:14:51', '2020-08-23 20:10:52'),
(340, 'expense_maincategorys', 'اقسام المصروفات الرئيسيه', 'expense_maincategorys', '2020-08-22 20:39:51', '2020-08-23 20:10:52'),
(341, 'priority', 'الاولويات', 'priority', '2020-08-22 20:39:51', '2020-08-23 20:10:52'),
(342, 'add_expense_maincategory', 'اضافه مصروف رئيسى', 'add expense_maincategory', '2020-08-22 20:39:51', '2020-08-23 20:10:52'),
(343, 'edit_expense_maincategory', 'تعديل مصروف رئيسى', 'edit expense_maincategory', '2020-08-22 20:44:46', '2020-08-23 20:10:52'),
(344, 'accounting', 'الحسابات', 'accounting', '2020-08-23 18:29:12', '2020-08-23 20:10:52'),
(345, 'expense_subcategorys', 'اقسام المصروفات الفرعيه', 'expense_subcategorys', '2020-08-23 18:29:12', '2020-08-23 20:10:52'),
(346, 'are_you_sure?', 'هل انت متاكد؟', 'Are you sure?', '2020-08-23 18:29:12', '2020-08-23 20:10:52'),
(347, 'search_with_student_info', 'ابحث بمعلومات الطالب', 'search with student info', '2020-08-23 18:30:00', '2020-08-23 20:10:52'),
(348, 'institute_name', 'اسم المعهد', 'institute name', '2020-08-24 16:20:41', '2020-08-24 17:37:31'),
(349, 'signature', 'التوقيع', 'signature', '2020-08-24 18:03:50', '2020-08-24 18:05:29'),
(350, 'course_supervisor', 'مشرف الدورة', 'course Supervisor', '2020-08-24 18:03:50', '2020-08-24 18:05:29'),
(351, 'coordinator_general_of_the_institute', 'المنسق العام للمعهد', 'Coordinator General of the Institute', '2020-08-24 18:03:50', '2020-08-24 18:05:29'),
(352, 'military_education_administration', 'ادارة التربية العسكرية', 'Military Education Administration', '2020-08-24 18:26:24', '2020-08-24 18:29:58'),
(353, 'student_affairs_administration', 'ادارة شئون الطلاب', 'Student Affairs Administration', '2020-08-24 18:26:24', '2020-08-24 18:29:58'),
(354, 'data_not_found', 'لا يوجد بيانات', 'data not found', '2020-08-24 20:04:26', '2020-08-25 12:59:45'),
(355, 'installments', 'الاقساط', 'installments', '2020-08-25 12:56:54', '2020-08-25 12:59:45'),
(356, 'student', 'الطالب', 'student', '2020-08-25 12:56:54', '2020-08-25 12:59:45'),
(357, 'installment', 'الاقساط', 'installment', '2020-08-25 12:56:54', '2020-08-25 12:59:45'),
(358, 'sub_installment', 'الاقساط الفرعيه', 'sub_installment', '2020-08-25 12:56:54', '2020-08-25 12:59:45'),
(359, 'main_installment', 'الاقساط الاساسيه', 'main_installment', '2020-08-25 12:56:54', '2020-08-25 12:59:45'),
(360, 'target', 'البيان', 'target', '2020-08-25 12:56:54', '2020-08-25 12:59:45'),
(361, 'add_installment', 'أضافة قسط', 'add installment', '2020-08-25 12:56:54', '2020-08-25 12:59:45'),
(362, 'madunia', 'مديونيه سابقه', 'madunia', '2020-08-25 12:56:54', '2020-08-25 12:59:45'),
(363, 'install', 'تقسيط', 'install', '2020-08-25 13:02:57', '2020-08-25 13:04:55'),
(364, 'pay', 'دفع', 'pay', '2020-08-25 13:02:57', '2020-08-25 13:04:55'),
(365, 'sum', 'المجموع', 'sum', '2020-08-25 13:03:06', '2020-08-25 13:04:55'),
(366, 'sum_of_values_must_be_equal_to_', 'مجموع المبلغ لا بد ان يساوى ', 'sum of values must be equal to ', '2020-08-25 13:03:25', '2020-08-25 13:04:55'),
(367, 'install_installment', 'تقسيط القسط رقم ', 'install installment', '2020-08-25 13:03:32', '2020-08-25 13:04:55'),
(368, 'install_installment_', 'تقسيط القسط رقم ', 'install installment ', '2020-08-25 13:03:32', '2020-08-25 13:04:55'),
(369, 'edit_installment', 'تعديل القسط', 'edit installment', '2020-08-25 13:03:41', '2020-08-25 13:04:55'),
(370, 'percentage', 'النسبه المئويه', 'percentage', '2020-08-25 14:04:07', '2020-08-25 14:06:18'),
(371, 'this_academic_year_is_already_exists', 'هذه السنة الدراسية موجودة بالفعل', 'this academic year is already exists', '2020-08-25 16:17:14', '2020-08-25 16:17:48'),
(372, 'deposites', 'الايداعات', 'deposites', '2020-08-25 16:32:44', '2020-08-25 16:33:55'),
(373, 'filter', 'فلتر', 'filter', '2020-08-25 16:34:31', '2020-08-25 17:23:28'),
(374, 'pay_installment', 'اقساط الدفع', 'pay installment', '2020-08-25 16:51:16', '2020-08-25 17:23:28'),
(375, 'discount', 'خصم', 'discount', '2020-08-25 16:51:16', '2020-08-25 17:23:28'),
(376, 'payment_type', 'نوع الدفع', 'payment_type', '2020-08-25 16:51:16', '2020-08-25 17:23:28'),
(377, 'for_store', 'الى خزنه', 'for_store', '2020-08-25 16:51:16', '2020-08-25 17:23:29'),
(378, 'for_check', 'شيك', 'for_check', '2020-08-25 16:51:16', '2020-08-25 17:23:29'),
(379, 'check_number', 'رقم الشيك', 'check_number', '2020-08-25 16:51:16', '2020-08-25 17:23:29'),
(380, 'bank_name', 'رقم البنك', 'bank_name', '2020-08-25 16:51:16', '2020-08-25 17:23:29'),
(381, 'branch', 'الفرع', 'branch', '2020-08-25 16:51:16', '2020-08-25 17:23:29'),
(382, 'pay_installment_', 'دفع الأقساط', 'pay installment ', '2020-08-25 16:53:33', '2020-08-25 17:23:29'),
(383, 'paid_value', 'المبلغ المدفوع', 'paid_value', '2020-08-25 17:19:38', '2020-08-25 17:23:29'),
(384, 'remain_value', 'المتبقى', 'remain_value', '2020-08-25 17:19:38', '2020-08-25 17:23:29'),
(385, 'payment_details', 'تفاصيل الدفع', 'payment details', '2020-08-25 17:19:38', '2020-08-25 17:23:29'),
(386, 'payment_details_of_installment', 'تفاصيل الدفع للاقساط', 'payment details of installment', '2020-08-25 17:19:38', '2020-08-25 17:23:29'),
(387, 'installment_value', 'قيمه القسط', 'installment_value', '2020-08-25 17:19:38', '2020-08-25 17:23:29'),
(388, 'payment_value', 'قيمه الدفع', 'payment_value', '2020-08-25 17:19:38', '2020-08-25 17:23:29'),
(389, 'sub', 'فرع', 'sub', '2020-08-25 17:19:38', '2020-08-25 17:23:29'),
(390, 'balance_of_bank_not_enough', 'الرصيد لا يكفى لاتمام التحويل', 'balance of bank not enough', '2020-08-25 17:26:39', '2020-08-25 17:34:08'),
(391, 'select_type', 'اختر نوع التحويل', 'select type', '2020-08-25 17:32:59', '2020-08-25 17:34:08'),
(392, 'priority_already_exist', 'هذه الاولويه محجوزه مسبقا', 'priority already exist', '2020-08-25 17:36:46', '2020-08-25 18:29:35'),
(393, 'value_of_sum_must_be_equal_', 'لابد ان يكون الاجمالى مساوى ل', 'value of sum must be equal ', '2020-08-25 17:47:09', '2020-08-25 18:29:35'),
(394, 'add_expense_subcategory', 'اضافه فئه نفقات', 'add expense_subcategory', '2020-08-25 17:47:21', '2020-08-25 18:29:35'),
(395, 'add_deposite', 'اضافه ايداع', 'add deposite', '2020-08-25 18:26:35', '2020-08-25 18:29:35'),
(396, 'new_student', 'طالب جديد', 'new Student', '2020-08-25 20:49:19', '2020-08-25 21:44:15'),
(397, 'accepted_by', 'تمت الموافقة بواسطة', 'accepted by', '2020-08-25 21:27:44', '2020-08-25 21:44:15'),
(398, 'writen_by', 'كُتب هذا الملف بواسطة', 'writen by', '2020-08-25 21:33:26', '2020-08-25 21:44:15'),
(399, 'plans', 'خطط الدفع الدراسيه', 'plans', '2020-08-25 21:59:13', '2020-08-25 22:00:06'),
(400, 'expense_maincategory', 'القائمه الاساسيه', 'expense_maincategory', '2020-08-25 22:00:44', '2020-08-25 22:03:23'),
(401, 'case_constaints', 'قيود الحاله', 'case_constaints', '2020-08-25 22:00:44', '2020-08-25 22:03:23'),
(402, 'details', 'التفاصيل', 'details', '2020-08-25 22:00:45', '2020-08-25 22:03:23'),
(403, 'expense_maincategories', 'نوع القيد الرئيسى', 'expense_maincategories', '2020-08-25 22:00:51', '2020-08-25 22:03:23'),
(404, '1', '', '1', '2020-08-26 00:47:33', '2020-08-26 15:14:10'),
(405, 'add_plan', 'اضافه خطه', 'add plan', '2020-08-26 12:45:07', '2020-08-26 15:15:28'),
(406, 'select_case_constaints', 'اختر حاله القيد', 'select_case_constaints', '2020-08-26 12:45:07', '2020-08-26 15:15:29'),
(407, 'case_constraint', 'حاله القيد', 'case constraint', '2020-08-26 12:59:23', '2020-08-26 15:15:29'),
(408, 'case_constraint_name', 'اسم حاله القيد', 'case constraint name', '2020-08-26 13:19:20', '2020-08-26 15:15:29'),
(409, 'add_case_constraint', 'اضافه حاله قيد', 'add case constraint', '2020-08-26 13:19:52', '2020-08-26 15:15:29'),
(410, 'data_creadted_successfully', 'تم اتمام العمليه بنجاح', 'data creadted successfully', '2020-08-26 13:19:52', '2020-08-26 15:14:10'),
(411, 'data_has_been_deleted_successfully', 'تم حذف البيانات بنجاح', 'data has been deleted successfully', '2020-08-26 13:24:13', '2020-08-26 15:14:10'),
(412, 'case-constraint', 'حالات القيد', 'case-constraint', '2020-08-26 13:26:53', '2020-08-26 15:15:29'),
(413, 'other_settings', 'اعدادات اضافيه', 'other settings', '2020-08-26 13:29:13', '2020-08-26 15:14:10'),
(414, 'users_and_roles', 'المستخدمين والصلاحيات', 'users and roles', '2020-08-26 13:31:31', '2020-08-26 15:14:10'),
(415, 'rewords', 'المكافات/ الخصومات', 'rewords', '2020-08-26 14:23:09', '2020-08-26 15:14:10'),
(416, 'add_reword', 'اضافه مكافاه / خصم', 'add reword', '2020-08-26 15:12:17', '2020-08-26 15:14:10'),
(417, 'completed_files', 'نوع الملف (مكتمل/ غير مكتمل)', 'completed files', '2020-08-26 15:24:00', '2020-08-26 16:29:47'),
(418, 'completed', 'مكتمل', 'completed', '2020-08-26 15:24:00', '2020-08-26 16:28:27'),
(419, 'not_completed', 'غير مكتمل', 'not completed', '2020-08-26 15:24:00', '2020-08-26 16:28:27'),
(420, 'all', 'اختيار الكل', 'all', '2020-08-26 15:46:36', '2020-08-26 19:17:24'),
(421, 'done_in', 'تحريراً فى', 'done in', '2020-08-26 16:26:03', '2020-08-26 16:28:27'),
(422, 'constraint_status', 'مواقف القيد', 'constraint status', '2020-08-26 17:52:00', '2020-08-26 18:04:25'),
(423, 'constraint_status_name', 'الموقف من القيد', 'constraint status name', '2020-08-26 18:02:18', '2020-08-26 18:04:25'),
(424, 'constraint-status', 'مواقف القيد', 'constraint-status', '2020-08-26 18:05:34', '2020-08-26 18:06:22'),
(425, 'add_constraint_status', 'اضافه موقف قيد', 'add constraint status', '2020-08-26 18:10:51', '2020-08-29 17:55:16'),
(426, 'edit_application', 'تعديل ملف التقديم', 'edit application', '2020-08-26 19:28:39', '2020-08-29 17:55:16'),
(427, 'edit_student_file', 'تعديل ملف الطالب', 'edit student file', '2020-08-26 19:28:55', '2020-08-29 17:55:16'),
(428, 'fines', 'الغرامات', 'fines', '2020-08-29 15:11:22', '2020-08-29 17:55:16'),
(429, 'payments', 'المدفوعات', 'payments', '2020-08-29 16:19:53', '2020-08-29 17:55:16'),
(430, 'add_fine', 'اضافه نوع غرامه', 'add fine', '2020-08-29 17:40:31', '2020-08-29 17:55:16'),
(431, 'student_id', 'رقم الطالب', 'student_id', '2020-08-29 17:46:47', '2020-08-29 17:55:16'),
(432, 'add_payment', 'اضافه مدفوعات', 'add payment', '2020-08-29 17:46:47', '2020-08-29 17:55:16'),
(433, 'select_payment_type', 'اختر نوع الدفع', 'select payment_type', '2020-08-29 17:46:47', '2020-08-29 17:55:16'),
(434, 'reword_id', 'نوع المكافاه', 'reword_id', '2020-08-29 17:46:47', '2020-08-29 20:16:57'),
(435, 'edit_deposite', 'تعديل الايداع', 'edit deposite', '2020-08-29 17:58:54', '2020-08-29 18:20:42'),
(436, 'balance_of_store_not_enough', 'الرصيد لا يكفى لاتمام التحويل', 'balance of store not enough', '2020-08-29 18:18:00', '2020-08-29 18:20:42'),
(437, 'is_azhary', 'طالب اذهرى', 'is azhary', '2020-08-29 18:24:46', '2020-08-29 19:30:17'),
(438, 'total_religious_scores', 'مجموع الدرجات الدينيه', 'total religious scores', '2020-08-29 19:02:57', '2020-08-29 19:30:17'),
(439, 'fine', 'غرامه', 'fine', '2020-08-29 19:25:03', '2020-08-29 19:30:17'),
(440, 'account_setting', 'اعدادات الحسابات', 'account setting', '2020-08-29 20:25:38', '2020-08-29 21:04:03'),
(441, 'trees', 'شجره المصروفات', 'trees', '2020-08-29 20:25:38', '2020-08-29 21:04:03'),
(442, 'dailys', 'التعاملات اليوميه', 'dailys', '2020-08-29 20:25:38', '2020-08-29 21:04:03'),
(443, 'deposite_details', 'تفاصيل الوديعه', 'deposite details', '2020-08-29 20:54:14', '2020-08-29 21:04:03'),
(444, 'student_enrolled_in_level', 'مستوى تسجيل الطالب', 'student enrolled in level', '2020-08-29 21:14:41', '2020-08-30 12:30:28'),
(445, 'tree', 'نوع المصروفات', 'tree', '2020-08-30 11:59:16', '2020-08-30 12:31:13'),
(446, 'add_daily', 'اضف يوميه', 'add daily', '2020-08-30 12:00:56', '2020-08-30 12:30:28'),
(447, 'out', 'مصروفات', 'out', '2020-08-30 12:46:12', '2020-08-30 12:51:14'),
(448, 'in', 'ايرادات', 'in', '2020-08-30 12:46:12', '2020-08-30 12:51:14'),
(449, 'data_created_successfully', 'تم انشاء البيانات بنجاح', 'data created successfully', '2020-08-31 15:21:00', '2020-09-01 15:40:25'),
(450, 'coutries', '', 'coutries', '2020-08-31 17:01:18', '2020-09-01 15:40:25'),
(451, 'select_parent_relationship', 'اختر صلة القرابة', 'select parent relationship', '2020-09-01 15:38:39', '2020-09-01 15:40:25'),
(452, 'parent_relationship', 'صلة القرابة', 'parent relationship', '2020-09-01 15:39:18', '2020-09-01 15:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `image`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'admin', 'admin', 'uploads/users/2020081109344317934-avatar.png', 'admin@admin.com', '2020-08-05 06:53:18', '123456', '1600863661', 'Kw1ONcnMpnNmPCLh6vgzy58mLL4pZ5iUCgx32JWqadqkQ5iGnA1K7nKtOXku', '2020-08-05 06:53:18', '2020-09-23 10:21:01', '01100968183'),
(2, 'مصطفى', 'moustafa', 'uploads/users/2020081109145846107-doctor.png', 'admin@admin.comm', NULL, '$2y$10$I3R3JZ47Gn94qQ7Fz6Y0ueKwjZAChb6sYzDww31e3b0zm4yB7T2qK', '', NULL, '2020-08-05 09:27:47', '2020-08-11 15:21:43', '0110096812'),
(4, 'هاجر محمد رضا', 'hagar', 'uploads/users/2020081112124939928-635.png', 'hagar@admin.com', NULL, '$2y$10$ZAI1L/SfKdq7AcPXKsb76u5bXkHCI/S40hV.4krR6oYAGzz1A0J..', '', NULL, '2020-08-11 18:12:50', '2020-08-11 18:12:50', '01091093981'),
(19, 'mustafa', 'mustafa', 'uploads/users/User_icon_2.svg.png', 'mustafa@email.com', NULL, '$2y$10$KOgIoohCBLaopPtHWjODN.krQEXPKWWjbSpKx.NlhuDBGulSpzray', '123456789', NULL, '2020-09-22 18:53:31', '2020-09-22 18:53:31', '0118587454'),
(20, 'mustafa', 'mustafa', 'uploads/users/User_icon_2.svg.png', 'mustafffa@email.com', NULL, '$2y$10$PHVtpjA30.lVSlv/vNK56OTP/EmBUBUdpOo6OWcXJBetxJjnVEUfm', '123456789', NULL, '2020-09-26 05:45:21', '2020-09-26 05:45:21', '0118587451');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_banks`
--
ALTER TABLE `account_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_dailies`
--
ALTER TABLE `account_dailies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_deposites`
--
ALTER TABLE `account_deposites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_expenses_maincategories`
--
ALTER TABLE `account_expenses_maincategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_expenses_subcategories`
--
ALTER TABLE `account_expenses_subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_fines`
--
ALTER TABLE `account_fines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_installments`
--
ALTER TABLE `account_installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_payments`
--
ALTER TABLE `account_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_plans`
--
ALTER TABLE `account_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_plan_case_constraints`
--
ALTER TABLE `account_plan_case_constraints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_plan_details`
--
ALTER TABLE `account_plan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_plan_expense_maincategories`
--
ALTER TABLE `account_plan_expense_maincategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_registeration_status_expenses`
--
ALTER TABLE `account_registeration_status_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_rewords`
--
ALTER TABLE `account_rewords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_stores`
--
ALTER TABLE `account_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_transformations`
--
ALTER TABLE `account_transformations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_trees`
--
ALTER TABLE `account_trees`
  ADD KEY `trees_id_index` (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_required`
--
ALTER TABLE `application_required`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_constraints`
--
ALTER TABLE `case_constraints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constraint_status`
--
ALTER TABLE `constraint_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments_levels`
--
ALTER TABLE `departments_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `globale_settings`
--
ALTER TABLE `globale_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `governments`
--
ALTER TABLE `governments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_histories`
--
ALTER TABLE `login_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_areas`
--
ALTER TABLE `military_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_area_submision`
--
ALTER TABLE `military_area_submision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_course`
--
ALTER TABLE `military_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_course_collection`
--
ALTER TABLE `military_course_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_course_collection_student`
--
ALTER TABLE `military_course_collection_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_settings`
--
ALTER TABLE `military_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_status`
--
ALTER TABLE `military_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_jobs`
--
ALTER TABLE `parent_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_relation_type`
--
ALTER TABLE `parent_relation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualification_types`
--
ALTER TABLE `qualification_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualification_years`
--
ALTER TABLE `qualification_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registeration_status`
--
ALTER TABLE `registeration_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registeration_status_document`
--
ALTER TABLE `registeration_status_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_methods`
--
ALTER TABLE `registration_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relative_relation`
--
ALTER TABLE `relative_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_settings`
--
ALTER TABLE `report_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `required_documents`
--
ALTER TABLE `required_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attributes`
--
ALTER TABLE `student_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_code_series`
--
ALTER TABLE `student_code_series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_logs`
--
ALTER TABLE `student_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_military_history`
--
ALTER TABLE `student_military_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_required_documents`
--
ALTER TABLE `student_required_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_status`
--
ALTER TABLE `student_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_work`
--
ALTER TABLE `team_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_key_unique` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `account_banks`
--
ALTER TABLE `account_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `account_dailies`
--
ALTER TABLE `account_dailies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `account_deposites`
--
ALTER TABLE `account_deposites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `account_expenses_maincategories`
--
ALTER TABLE `account_expenses_maincategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `account_expenses_subcategories`
--
ALTER TABLE `account_expenses_subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `account_fines`
--
ALTER TABLE `account_fines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_installments`
--
ALTER TABLE `account_installments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `account_payments`
--
ALTER TABLE `account_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `account_plans`
--
ALTER TABLE `account_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_plan_case_constraints`
--
ALTER TABLE `account_plan_case_constraints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_plan_details`
--
ALTER TABLE `account_plan_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `account_plan_expense_maincategories`
--
ALTER TABLE `account_plan_expense_maincategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `account_registeration_status_expenses`
--
ALTER TABLE `account_registeration_status_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_rewords`
--
ALTER TABLE `account_rewords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `account_stores`
--
ALTER TABLE `account_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `account_transformations`
--
ALTER TABLE `account_transformations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `application_required`
--
ALTER TABLE `application_required`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `case_constraints`
--
ALTER TABLE `case_constraints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `constraint_status`
--
ALTER TABLE `constraint_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `governments`
--
ALTER TABLE `governments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_histories`
--
ALTER TABLE `login_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parent_jobs`
--
ALTER TABLE `parent_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `qualification_types`
--
ALTER TABLE `qualification_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `registration_methods`
--
ALTER TABLE `registration_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `relative_relation`
--
ALTER TABLE `relative_relation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `required_documents`
--
ALTER TABLE `required_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
