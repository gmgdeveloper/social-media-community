-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2024 at 12:54 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sociopro`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` int NOT NULL,
  `activity_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `title` int DEFAULT NULL,
  `icon` int DEFAULT NULL,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `version` float DEFAULT NULL,
  `unique_identifier` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sub_title` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `privacy` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `album_images`
--

CREATE TABLE `album_images` (
  `id` int NOT NULL,
  `album_id` int NOT NULL,
  `user_id` int NOT NULL,
  `page_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `image` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `blogcategories`
--

CREATE TABLE `blogcategories` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `view` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int NOT NULL,
  `name` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int NOT NULL,
  `message_thrade` int DEFAULT NULL,
  `reciver_id` int DEFAULT NULL,
  `sender_id` int DEFAULT NULL,
  `message` text,
  `thumbsup` tinyint(1) NOT NULL DEFAULT '0',
  `file` text,
  `react` text,
  `reply_id` int DEFAULT NULL,
  `chatcenter` text,
  `read_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `is_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'post, event, any other type post''s comment',
  `id_of_type` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `user_reacts` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `parent_id`, `user_id`, `is_type`, `id_of_type`, `description`, `user_reacts`, `created_at`, `updated_at`) VALUES
(1, 0, 23, 'post', 28, 'hi', '[]', '1709299157', '1709299157'),
(2, 1, 23, 'post', 28, 'ye', '[]', '1709299171', '1709299171'),
(3, 0, 25, 'post', 38, 'test', '[]', '1709546985', '1709546985');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int DEFAULT NULL,
  `stripe_supported` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 1, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0),
(113, 'Taka', 'BDT', '৳', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `publisher` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `event_date` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `event_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `location` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `going_users_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `interested_users_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `privacy` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feeling_and_activities`
--

CREATE TABLE `feeling_and_activities` (
  `feeling_and_activity_id` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `follow_id` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `friendships`
--

CREATE TABLE `friendships` (
  `id` int NOT NULL,
  `requester` int DEFAULT NULL,
  `accepter` int DEFAULT NULL,
  `importance` int DEFAULT NULL,
  `is_accepted` int DEFAULT NULL,
  `accepted_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int NOT NULL,
  `user_id` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `subtitle` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `privacy` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `group_type` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `about` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `is_accepted` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE `invites` (
  `id` bigint NOT NULL,
  `invite_sender_id` int DEFAULT NULL,
  `invite_reciver_id` int DEFAULT NULL,
  `is_accepted` int NOT NULL DEFAULT '0',
  `event_id` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phrase` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `translated` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(1, 'english', 'English', 'English', '2023-04-05 11:34:21', '2023-04-05 11:34:21'),
(2, 'english', 'Login', 'Login', '2024-02-29 11:09:02', '2024-02-29 11:09:02'),
(3, 'english', 'Email', 'Email', '2024-02-29 11:09:02', '2024-02-29 11:09:02'),
(4, 'english', 'Enter your email address', 'Enter your email address', '2024-02-29 11:09:02', '2024-02-29 11:09:02'),
(5, 'english', 'Password', 'Password', '2024-02-29 11:09:02', '2024-02-29 11:09:02'),
(6, 'english', 'Your password', 'Your password', '2024-02-29 11:09:03', '2024-02-29 11:09:03'),
(7, 'english', 'Remember me', 'Remember me', '2024-02-29 11:09:03', '2024-02-29 11:09:03'),
(8, 'english', 'Forgot your password?', 'Forgot your password?', '2024-02-29 11:09:03', '2024-02-29 11:09:03'),
(9, 'english', '404 page not found', '404 page not found', '2024-02-29 11:09:04', '2024-02-29 11:09:04'),
(10, 'english', 'This page is not available, please provide a valid URL', 'This page is not available, please provide a valid URL', '2024-02-29 11:09:04', '2024-02-29 11:09:04'),
(11, 'english', 'Back', 'Back', '2024-02-29 11:09:04', '2024-02-29 11:09:04'),
(12, 'english', 'Sign Up', 'Sign Up', '2024-02-29 11:11:15', '2024-02-29 11:11:15'),
(13, 'english', 'Full Name', 'Full Name', '2024-02-29 11:11:15', '2024-02-29 11:11:15'),
(14, 'english', 'Your full name', 'Your full name', '2024-02-29 11:11:15', '2024-02-29 11:11:15'),
(15, 'english', 'Confirm Password', 'Confirm Password', '2024-02-29 11:11:15', '2024-02-29 11:11:15'),
(16, 'english', 'I accept the', 'I accept the', '2024-02-29 11:11:15', '2024-02-29 11:11:15'),
(17, 'english', 'Terms and Conditions', 'Terms and Conditions', '2024-02-29 11:11:15', '2024-02-29 11:11:15'),
(18, 'english', 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', '2024-02-29 12:39:15', '2024-02-29 12:39:15'),
(19, 'english', 'Resend Verification Email', 'Resend Verification Email', '2024-02-29 12:39:15', '2024-02-29 12:39:15'),
(20, 'english', 'Log Out', 'Log Out', '2024-02-29 12:39:15', '2024-02-29 12:39:15'),
(21, 'english', 'Congratulations', 'Congratulations', '2024-02-29 12:45:08', '2024-02-29 12:45:08'),
(22, 'english', 'Your Verification is Done', 'Your Verification is Done', '2024-02-29 12:45:08', '2024-02-29 12:45:08'),
(23, 'english', 'Now Explore', 'Now Explore', '2024-02-29 12:45:08', '2024-02-29 12:45:08'),
(24, 'english', 'Dashboard', 'Dashboard', '2024-02-29 13:21:23', '2024-02-29 13:21:23'),
(25, 'english', 'Ads', 'Ads', '2024-02-29 13:21:23', '2024-02-29 13:21:23'),
(26, 'english', 'Ad List', 'Ad List', '2024-02-29 13:21:23', '2024-02-29 13:21:23'),
(27, 'english', 'Create Ad', 'Create Ad', '2024-02-29 13:21:23', '2024-02-29 13:21:23'),
(28, 'english', 'Payment history', 'Payment history', '2024-02-29 13:21:23', '2024-02-29 13:21:23'),
(29, 'english', 'Visit Website', 'Visit Website', '2024-02-29 13:29:36', '2024-02-29 13:29:36'),
(30, 'english', 'My Account', 'My Account', '2024-02-29 13:29:36', '2024-02-29 13:29:36'),
(31, 'english', 'Change Password', 'Change Password', '2024-02-29 13:29:36', '2024-02-29 13:29:36'),
(32, 'english', 'Settings', 'Settings', '2024-02-29 13:29:36', '2024-02-29 13:29:36'),
(33, 'english', 'My friends', 'My friends', '2024-02-29 13:29:37', '2024-02-29 13:29:37'),
(34, 'english', 'Your total friends', 'Your total friends', '2024-02-29 13:29:37', '2024-02-29 13:29:37'),
(35, 'english', 'My Post', 'My Post', '2024-02-29 13:29:37', '2024-02-29 13:29:37'),
(36, 'english', 'Your total posts', 'Your total posts', '2024-02-29 13:29:37', '2024-02-29 13:29:37'),
(37, 'english', 'My Page', 'My Page', '2024-02-29 13:29:37', '2024-02-29 13:29:37'),
(38, 'english', 'Your total pages', 'Your total pages', '2024-02-29 13:29:37', '2024-02-29 13:29:37'),
(39, 'english', 'My Blog', 'My Blog', '2024-02-29 13:29:37', '2024-02-29 13:29:37'),
(40, 'english', 'Your total Blogs', 'Your total Blogs', '2024-02-29 13:29:38', '2024-02-29 13:29:38'),
(41, 'english', 'My Ad', 'My Ad', '2024-02-29 13:29:38', '2024-02-29 13:29:38'),
(42, 'english', 'Your total ads', 'Your total ads', '2024-02-29 13:29:38', '2024-02-29 13:29:38'),
(43, 'english', 'Marketplace Products', 'Marketplace Products', '2024-02-29 13:29:38', '2024-02-29 13:29:38'),
(44, 'english', 'Your total products', 'Your total products', '2024-02-29 13:29:38', '2024-02-29 13:29:38'),
(45, 'english', 'Loading...', 'Loading...', '2024-02-29 13:29:39', '2024-02-29 13:29:39'),
(46, 'english', 'My Profile', 'My Profile', '2024-02-29 13:44:17', '2024-02-29 13:44:17'),
(47, 'english', 'Timeline', 'Timeline', '2024-02-29 13:45:16', '2024-02-29 13:45:16'),
(48, 'english', 'Profile', 'Profile', '2024-02-29 13:45:17', '2024-02-29 13:45:17'),
(49, 'english', 'Group', 'Group', '2024-02-29 13:45:17', '2024-02-29 13:45:17'),
(50, 'english', 'Page', 'Page', '2024-02-29 13:45:17', '2024-02-29 13:45:17'),
(51, 'english', 'Marketplace', 'Marketplace', '2024-02-29 13:45:17', '2024-02-29 13:45:17'),
(52, 'english', 'Video and Shorts', 'Video and Shorts', '2024-02-29 13:45:17', '2024-02-29 13:45:17'),
(53, 'english', 'Event', 'Event', '2024-02-29 13:45:17', '2024-02-29 13:45:17'),
(54, 'english', 'Blog', 'Blog', '2024-02-29 13:45:17', '2024-02-29 13:45:17'),
(55, 'english', 'About', 'About', '2024-02-29 13:45:17', '2024-02-29 13:45:17'),
(56, 'english', 'Privacy Policy', 'Privacy Policy', '2024-02-29 13:45:17', '2024-02-29 13:45:17'),
(57, 'english', 'Create story', 'Create story', '2024-02-29 13:45:18', '2024-02-29 13:45:18'),
(58, 'english', 'What\'s on your mind ____', 'What\'s on your mind ____', '2024-02-29 13:45:18', '2024-02-29 13:45:18'),
(59, 'english', 'Create Post', 'Create Post', '2024-02-29 13:45:18', '2024-02-29 13:45:18'),
(60, 'english', 'Public', 'Public', '2024-02-29 13:45:18', '2024-02-29 13:45:18'),
(61, 'english', 'Only Me', 'Only Me', '2024-02-29 13:45:18', '2024-02-29 13:45:18'),
(62, 'english', 'Friends', 'Friends', '2024-02-29 13:45:18', '2024-02-29 13:45:18'),
(63, 'english', 'Click to browse', 'Click to browse', '2024-02-29 13:45:19', '2024-02-29 13:45:19'),
(64, 'english', 'Tag People', 'Tag People', '2024-02-29 13:45:19', '2024-02-29 13:45:19'),
(65, 'english', 'Tagged', 'Tagged', '2024-02-29 13:45:19', '2024-02-29 13:45:19'),
(66, 'english', 'Search more peoples', 'Search more peoples', '2024-02-29 13:45:19', '2024-02-29 13:45:19'),
(67, 'english', 'Suggestions', 'Suggestions', '2024-02-29 13:45:19', '2024-02-29 13:45:19'),
(68, 'english', 'What are you doing', 'What are you doing', '2024-02-29 13:45:19', '2024-02-29 13:45:19'),
(69, 'english', 'Activities', 'Activities', '2024-02-29 13:45:19', '2024-02-29 13:45:19'),
(70, 'english', 'How are you feeling', 'How are you feeling', '2024-02-29 13:45:19', '2024-02-29 13:45:19'),
(71, 'english', 'Feelings', 'Feelings', '2024-02-29 13:45:19', '2024-02-29 13:45:19'),
(72, 'english', 'Search for location', 'Search for location', '2024-02-29 13:45:20', '2024-02-29 13:45:20'),
(73, 'english', 'Determine your location', 'Determine your location', '2024-02-29 13:45:20', '2024-02-29 13:45:20'),
(74, 'english', 'Photo', 'Photo', '2024-02-29 13:45:20', '2024-02-29 13:45:20'),
(75, 'english', 'Video', 'Video', '2024-02-29 13:45:20', '2024-02-29 13:45:20'),
(76, 'english', 'Activity', 'Activity', '2024-02-29 13:45:20', '2024-02-29 13:45:20'),
(77, 'english', 'Location', 'Location', '2024-02-29 13:45:20', '2024-02-29 13:45:20'),
(78, 'english', 'Live Video', 'Live Video', '2024-02-29 13:45:20', '2024-02-29 13:45:20'),
(79, 'english', 'Publish', 'Publish', '2024-02-29 13:45:20', '2024-02-29 13:45:20'),
(80, 'english', 'Processing', 'Processing', '2024-02-29 13:45:21', '2024-02-29 13:45:21'),
(81, 'english', 'Uploading', 'Uploading', '2024-02-29 13:45:21', '2024-02-29 13:45:21'),
(82, 'english', 'Link Copied', 'Link Copied', '2024-02-29 13:45:21', '2024-02-29 13:45:21'),
(83, 'english', 'Hi', 'Hi', '2024-02-29 13:45:21', '2024-02-29 13:45:21'),
(84, 'english', 'Good Morning', 'Good Morning', '2024-02-29 13:45:22', '2024-02-29 13:45:22'),
(85, 'english', 'Sponsored', 'Sponsored', '2024-02-29 13:45:22', '2024-02-29 13:45:22'),
(86, 'english', 'Active users', 'Active users', '2024-02-29 13:45:22', '2024-02-29 13:45:22'),
(87, 'english', 'Create new story', 'Create new story', '2024-02-29 13:45:22', '2024-02-29 13:45:22'),
(88, 'english', 'Stories', 'Stories', '2024-02-29 13:45:22', '2024-02-29 13:45:22'),
(89, 'english', 'Confirmation', 'Confirmation', '2024-02-29 13:45:22', '2024-02-29 13:45:22'),
(90, 'english', 'Are you sure', 'Are you sure', '2024-02-29 13:45:22', '2024-02-29 13:45:22'),
(91, 'english', 'Cancel', 'Cancel', '2024-02-29 13:45:22', '2024-02-29 13:45:22'),
(92, 'english', 'Continue', 'Continue', '2024-02-29 13:45:22', '2024-02-29 13:45:22'),
(93, 'english', 'Your post has been published', 'Your post has been published', '2024-02-29 14:45:06', '2024-02-29 14:45:06'),
(94, 'english', 'Just now', 'Just now', '2024-02-29 14:45:15', '2024-02-29 14:45:15'),
(95, 'english', 'Copy Link', 'Copy Link', '2024-02-29 14:45:16', '2024-02-29 14:45:16'),
(96, 'english', 'Edit post', 'Edit post', '2024-02-29 14:45:16', '2024-02-29 14:45:16'),
(97, 'english', 'Edit', 'Edit', '2024-02-29 14:45:16', '2024-02-29 14:45:16'),
(98, 'english', 'Delete', 'Delete', '2024-02-29 14:45:16', '2024-02-29 14:45:16'),
(99, 'english', 'Report Post', 'Report Post', '2024-02-29 14:45:16', '2024-02-29 14:45:16'),
(100, 'english', 'Report', 'Report', '2024-02-29 14:45:16', '2024-02-29 14:45:16'),
(101, 'english', 'Like', 'Like', '2024-02-29 14:45:18', '2024-02-29 14:45:18'),
(102, 'english', 'Comments', 'Comments', '2024-02-29 14:45:18', '2024-02-29 14:45:18'),
(103, 'english', 'Share', 'Share', '2024-02-29 14:45:18', '2024-02-29 14:45:18'),
(104, 'english', 'Share post', 'Share post', '2024-02-29 14:45:18', '2024-02-29 14:45:18'),
(105, 'english', 'year', 'year', '2024-02-29 14:48:50', '2024-02-29 14:48:50'),
(106, 'english', 'month', 'month', '2024-02-29 14:48:50', '2024-02-29 14:48:50'),
(107, 'english', 'day', 'day', '2024-02-29 14:48:50', '2024-02-29 14:48:50'),
(108, 'english', 'ago', 'ago', '2024-02-29 14:48:51', '2024-02-29 14:48:51'),
(109, 'english', 'Preview', 'Preview', '2024-02-29 15:31:49', '2024-02-29 15:31:49'),
(110, 'english', 'Create Photo / Video Story', 'Create Photo / Video Story', '2024-02-29 15:39:46', '2024-02-29 15:39:46'),
(111, 'english', 'Create a Text Story', 'Create a Text Story', '2024-02-29 15:39:46', '2024-02-29 15:39:46'),
(112, 'english', 'Share to story', 'Share to story', '2024-02-29 15:39:46', '2024-02-29 15:39:46'),
(113, 'english', 'Discard', 'Discard', '2024-02-29 15:39:46', '2024-02-29 15:39:46'),
(114, 'english', 'Update your cover photo', 'Update your cover photo', '2024-02-29 15:40:24', '2024-02-29 15:40:24'),
(115, 'english', 'Edit Cover Photo', 'Edit Cover Photo', '2024-02-29 15:40:24', '2024-02-29 15:40:24'),
(116, 'english', 'Edit your profile', 'Edit your profile', '2024-02-29 15:40:24', '2024-02-29 15:40:24'),
(117, 'english', 'Edit Profile', 'Edit Profile', '2024-02-29 15:40:24', '2024-02-29 15:40:24'),
(118, 'english', 'Intro', 'Intro', '2024-02-29 15:40:25', '2024-02-29 15:40:25'),
(119, 'english', 'Edit Bio', 'Edit Bio', '2024-02-29 15:40:25', '2024-02-29 15:40:25'),
(120, 'english', 'Save Bio', 'Save Bio', '2024-02-29 15:40:25', '2024-02-29 15:40:25'),
(121, 'english', 'Info', 'Info', '2024-02-29 15:40:25', '2024-02-29 15:40:25'),
(122, 'english', 'Stadied at', 'Stadied at', '2024-02-29 15:40:25', '2024-02-29 15:40:25'),
(123, 'english', 'From', 'From', '2024-02-29 15:40:25', '2024-02-29 15:40:25'),
(124, 'english', NULL, NULL, '2024-02-29 15:40:25', '2024-02-29 15:40:25'),
(125, 'english', 'Joined', 'Joined', '2024-02-29 15:40:25', '2024-02-29 15:40:25'),
(126, 'english', 'Edit info', 'Edit info', '2024-02-29 15:40:25', '2024-02-29 15:40:25'),
(127, 'english', 'See More', 'See More', '2024-02-29 15:40:25', '2024-02-29 15:40:25'),
(128, 'english', 'See All', 'See All', '2024-02-29 15:40:25', '2024-02-29 15:40:25'),
(129, 'english', 'Profile Picture', 'Profile Picture', '2024-02-29 15:40:39', '2024-02-29 15:40:39'),
(130, 'english', 'Name', 'Name', '2024-02-29 15:40:39', '2024-02-29 15:40:39'),
(131, 'english', 'Enter your name', 'Enter your name', '2024-02-29 15:40:39', '2024-02-29 15:40:39'),
(132, 'english', 'Nickname', 'Nickname', '2024-02-29 15:40:39', '2024-02-29 15:40:39'),
(133, 'english', 'Enter your nickname name', 'Enter your nickname name', '2024-02-29 15:40:39', '2024-02-29 15:40:39'),
(134, 'english', 'Marital status', 'Marital status', '2024-02-29 15:40:40', '2024-02-29 15:40:40'),
(135, 'english', 'Enter your marital status', 'Enter your marital status', '2024-02-29 15:40:40', '2024-02-29 15:40:40'),
(136, 'english', 'Phone', 'Phone', '2024-02-29 15:40:40', '2024-02-29 15:40:40'),
(137, 'english', 'Enter your phone number', 'Enter your phone number', '2024-02-29 15:40:40', '2024-02-29 15:40:40'),
(138, 'english', 'Date of birth', 'Date of birth', '2024-02-29 15:40:40', '2024-02-29 15:40:40'),
(139, 'english', 'Your date of birth', 'Your date of birth', '2024-02-29 15:40:40', '2024-02-29 15:40:40'),
(140, 'english', 'Update Profile', 'Update Profile', '2024-02-29 15:40:40', '2024-02-29 15:40:40'),
(141, 'english', 'Watch', 'Watch', '2024-02-29 15:41:55', '2024-02-29 15:41:55'),
(142, 'english', 'Create Video & Shorts ', 'Create Video & Shorts ', '2024-02-29 15:41:55', '2024-02-29 15:41:55'),
(143, 'english', 'Create', 'Create', '2024-02-29 15:41:55', '2024-02-29 15:41:55'),
(144, 'english', 'Shorts', 'Shorts', '2024-02-29 15:41:55', '2024-02-29 15:41:55'),
(145, 'english', 'Videos', 'Videos', '2024-02-29 15:41:55', '2024-02-29 15:41:55'),
(146, 'english', 'User', 'User', '2024-02-29 15:49:50', '2024-02-29 15:49:50'),
(147, 'english', 'Users', 'Users', '2024-02-29 15:49:50', '2024-02-29 15:49:50'),
(148, 'english', 'Create new user', 'Create new user', '2024-02-29 15:49:50', '2024-02-29 15:49:50'),
(149, 'english', 'Pages', 'Pages', '2024-02-29 15:49:50', '2024-02-29 15:49:50'),
(150, 'english', 'Create Page', 'Create Page', '2024-02-29 15:49:50', '2024-02-29 15:49:50'),
(151, 'english', 'Category', 'Category', '2024-02-29 15:49:50', '2024-02-29 15:49:50'),
(152, 'english', 'Create Category', 'Create Category', '2024-02-29 15:49:50', '2024-02-29 15:49:50'),
(153, 'english', 'Brand', 'Brand', '2024-02-29 15:49:50', '2024-02-29 15:49:50'),
(154, 'english', 'Blogs', 'Blogs', '2024-02-29 15:49:50', '2024-02-29 15:49:50'),
(155, 'english', 'Create Blog', 'Create Blog', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(156, 'english', 'Sponsored Post', 'Sponsored Post', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(157, 'english', 'Reported Post', 'Reported Post', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(158, 'english', 'System Setting', 'System Setting', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(159, 'english', 'Amazon s3 settings', 'Amazon s3 settings', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(160, 'english', 'Custom Pages', 'Custom Pages', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(161, 'english', 'Payment Setting', 'Payment Setting', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(162, 'english', 'Language Setting', 'Language Setting', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(163, 'english', 'SMTP Setting', 'SMTP Setting', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(164, 'english', 'Total Users', 'Total Users', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(165, 'english', 'Post', 'Post', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(166, 'english', 'Total Posts', 'Total Posts', '2024-02-29 15:49:51', '2024-02-29 15:49:51'),
(167, 'english', 'Total Pages', 'Total Pages', '2024-02-29 15:49:52', '2024-02-29 15:49:52'),
(168, 'english', 'Total Blogs', 'Total Blogs', '2024-02-29 15:49:52', '2024-02-29 15:49:52'),
(169, 'english', 'Ad', 'Ad', '2024-02-29 15:49:52', '2024-02-29 15:49:52'),
(170, 'english', 'Total Sponsored Posts', 'Total Sponsored Posts', '2024-02-29 15:49:52', '2024-02-29 15:49:52'),
(171, 'english', 'Total Products', 'Total Products', '2024-02-29 15:49:52', '2024-02-29 15:49:52'),
(172, 'english', 'By ____', 'By ____', '2024-02-29 15:49:52', '2024-02-29 15:49:52'),
(173, 'english', 'Number of user', 'Number of user', '2024-02-29 15:49:52', '2024-02-29 15:49:52'),
(174, 'english', 'Go to admin panel', 'Go to admin panel', '2024-02-29 15:50:06', '2024-02-29 15:50:06'),
(175, 'english', 'Update zoom api keys', 'Update zoom api keys', '2024-02-29 15:52:40', '2024-02-29 15:52:40'),
(176, 'english', 'API key', 'API key', '2024-02-29 15:52:40', '2024-02-29 15:52:40'),
(177, 'english', 'API secret', 'API secret', '2024-02-29 15:52:40', '2024-02-29 15:52:40'),
(178, 'english', 'Save', 'Save', '2024-02-29 15:52:40', '2024-02-29 15:52:40'),
(179, 'english', 'My Pages', 'My Pages', '2024-02-29 15:59:56', '2024-02-29 15:59:56'),
(180, 'english', 'Suggested Pages', 'Suggested Pages', '2024-02-29 15:59:56', '2024-02-29 15:59:56'),
(181, 'english', 'Liked Pages', 'Liked Pages', '2024-02-29 15:59:56', '2024-02-29 15:59:56'),
(182, 'english', 'Create Product', 'Create Product', '2024-02-29 15:59:58', '2024-02-29 15:59:58'),
(183, 'english', 'My Products', 'My Products', '2024-02-29 15:59:58', '2024-02-29 15:59:58'),
(184, 'english', 'Saved Product', 'Saved Product', '2024-02-29 15:59:58', '2024-02-29 15:59:58'),
(185, 'english', 'Saved', 'Saved', '2024-02-29 15:59:58', '2024-02-29 15:59:58'),
(186, 'english', 'Filters', 'Filters', '2024-02-29 15:59:58', '2024-02-29 15:59:58'),
(187, 'english', 'Condition', 'Condition', '2024-02-29 15:59:58', '2024-02-29 15:59:58'),
(188, 'english', 'Used', 'Used', '2024-02-29 15:59:58', '2024-02-29 15:59:58'),
(189, 'english', 'New', 'New', '2024-02-29 15:59:58', '2024-02-29 15:59:58'),
(190, 'english', 'Select Brand', 'Select Brand', '2024-02-29 15:59:58', '2024-02-29 15:59:58'),
(191, 'english', 'Verified', 'Verified', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(192, 'english', 'Details info', 'Details info', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(193, 'english', 'Phone Number', 'Phone Number', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(194, 'english', 'Address', 'Address', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(195, 'english', 'Your name', 'Your name', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(196, 'english', 'Profession', 'Profession', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(197, 'english', 'Enter your Profession', 'Enter your Profession', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(198, 'english', 'Birthday', 'Birthday', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(199, 'english', 'Gender', 'Gender', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(200, 'english', 'Male', 'Male', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(201, 'english', 'Female', 'Female', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(202, 'english', 'Your address', 'Your address', '2024-02-29 16:08:15', '2024-02-29 16:08:15'),
(203, 'english', 'Save Changes', 'Save Changes', '2024-02-29 16:08:16', '2024-02-29 16:08:16'),
(204, 'english', 'All Groups', 'All Groups', '2024-02-29 16:15:22', '2024-02-29 16:15:22'),
(205, 'english', ' Create New Group', ' Create New Group', '2024-02-29 16:15:23', '2024-02-29 16:15:23'),
(206, 'english', 'Groups', 'Groups', '2024-02-29 16:15:23', '2024-02-29 16:15:23'),
(207, 'english', 'Group you Manage', 'Group you Manage', '2024-02-29 16:15:23', '2024-02-29 16:15:23'),
(208, 'english', 'Group you Joined', 'Group you Joined', '2024-02-29 16:15:23', '2024-02-29 16:15:23'),
(209, 'english', 'Events', 'Events', '2024-02-29 16:15:53', '2024-02-29 16:15:53'),
(210, 'english', 'Create Event', 'Create Event', '2024-02-29 16:15:53', '2024-02-29 16:15:53'),
(211, 'english', 'My Event', 'My Event', '2024-02-29 16:15:53', '2024-02-29 16:15:53'),
(212, 'english', 'Discover new articles', 'Discover new articles', '2024-02-29 16:15:56', '2024-02-29 16:15:56'),
(213, 'english', 'My articles', 'My articles', '2024-02-29 16:15:57', '2024-02-29 16:15:57'),
(214, 'english', 'All Users', 'All Users', '2024-02-29 16:16:26', '2024-02-29 16:16:26'),
(215, 'english', 'Create user', 'Create user', '2024-02-29 16:16:26', '2024-02-29 16:16:26'),
(216, 'english', 'Create a new user', 'Create a new user', '2024-02-29 16:16:27', '2024-02-29 16:16:27'),
(217, 'english', 'Status', 'Status', '2024-02-29 16:16:27', '2024-02-29 16:16:27'),
(218, 'english', 'Actions', 'Actions', '2024-02-29 16:16:27', '2024-02-29 16:16:27'),
(219, 'english', 'Unverified', 'Unverified', '2024-02-29 16:16:29', '2024-02-29 16:16:29'),
(220, 'english', 'Active', 'Active', '2024-02-29 16:16:29', '2024-02-29 16:16:29'),
(221, 'english', 'Deactive', 'Deactive', '2024-02-29 16:16:29', '2024-02-29 16:16:29'),
(222, 'english', 'Are You Sure Want To Delete', 'Are You Sure Want To Delete', '2024-02-29 16:16:30', '2024-02-29 16:16:30'),
(223, 'english', 'Disabled', 'Disabled', '2024-02-29 16:16:30', '2024-02-29 16:16:30'),
(224, 'english', 'Edit user profile', 'Edit user profile', '2024-02-29 16:16:39', '2024-02-29 16:16:39'),
(225, 'english', 'Email address', 'Email address', '2024-02-29 16:16:39', '2024-02-29 16:16:39'),
(226, 'english', 'Bio', 'Bio', '2024-02-29 16:16:39', '2024-02-29 16:16:39'),
(227, 'english', 'Submit', 'Submit', '2024-02-29 16:16:39', '2024-02-29 16:16:39'),
(228, 'english', 'Payment histories', 'Payment histories', '2024-02-29 16:17:16', '2024-02-29 16:17:16'),
(229, 'english', 'Amount', 'Amount', '2024-02-29 16:17:16', '2024-02-29 16:17:16'),
(230, 'english', 'Payment date', 'Payment date', '2024-02-29 16:17:16', '2024-02-29 16:17:16'),
(231, 'english', 'Configure amazon s3 settings', 'Configure amazon s3 settings', '2024-02-29 16:17:23', '2024-02-29 16:17:23'),
(232, 'english', 'Access key id', 'Access key id', '2024-02-29 16:17:23', '2024-02-29 16:17:23'),
(233, 'english', 'Secret access key', 'Secret access key', '2024-02-29 16:17:23', '2024-02-29 16:17:23'),
(234, 'english', 'Default region', 'Default region', '2024-02-29 16:17:23', '2024-02-29 16:17:23'),
(235, 'english', 'AWS bucket', 'AWS bucket', '2024-02-29 16:17:24', '2024-02-29 16:17:24'),
(236, 'english', 'Heads up', 'Heads up', '2024-02-29 16:17:24', '2024-02-29 16:17:24'),
(237, 'english', 'Friend Requests', 'Friend Requests', '2024-02-29 16:23:33', '2024-02-29 16:23:33'),
(238, 'english', 'Page Name', 'Page Name', '2024-02-29 16:23:59', '2024-02-29 16:23:59'),
(239, 'english', 'Page Category', 'Page Category', '2024-02-29 16:23:59', '2024-02-29 16:23:59'),
(240, 'english', 'Select Category', 'Select Category', '2024-02-29 16:23:59', '2024-02-29 16:23:59'),
(241, 'english', 'Page BIO', 'Page BIO', '2024-02-29 16:23:59', '2024-02-29 16:23:59'),
(242, 'english', 'Profile Photo', 'Profile Photo', '2024-02-29 16:23:59', '2024-02-29 16:23:59'),
(243, 'english', 'All Pages', 'All Pages', '2024-02-29 16:24:28', '2024-02-29 16:24:28'),
(244, 'english', 'Sl No', 'Sl No', '2024-02-29 16:24:29', '2024-02-29 16:24:29'),
(245, 'english', 'Page owner', 'Page owner', '2024-02-29 16:24:29', '2024-02-29 16:24:29'),
(246, 'english', 'Action', 'Action', '2024-02-29 16:24:29', '2024-02-29 16:24:29'),
(247, 'english', 'All Product Categories', 'All Product Categories', '2024-02-29 16:24:34', '2024-02-29 16:24:34'),
(248, 'english', 'Category Name', 'Category Name', '2024-02-29 16:24:34', '2024-02-29 16:24:34'),
(249, 'english', 'DATE', 'DATE', '2024-02-29 16:24:34', '2024-02-29 16:24:34'),
(250, 'english', 'All Blogs', 'All Blogs', '2024-02-29 16:24:39', '2024-02-29 16:24:39'),
(251, 'english', 'Blog owner', 'Blog owner', '2024-02-29 16:24:39', '2024-02-29 16:24:39'),
(252, 'english', 'System Settings', 'System Settings', '2024-02-29 16:24:50', '2024-02-29 16:24:50'),
(253, 'english', 'System Name', 'System Name', '2024-02-29 16:24:50', '2024-02-29 16:24:50'),
(254, 'english', 'System Title', 'System Title', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(255, 'english', 'System Email', 'System Email', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(256, 'english', 'System Phone', 'System Phone', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(257, 'english', 'System Fax', 'System Fax', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(258, 'english', 'System currency', 'System currency', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(259, 'english', 'System language', 'System language', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(260, 'english', 'Public signup', 'Public signup', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(261, 'english', 'enabled', 'enabled', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(262, 'english', 'Ad charge per day', 'Ad charge per day', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(263, 'english', 'Footer', 'Footer', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(264, 'english', 'Footer Link', 'Footer Link', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(265, 'english', 'Update', 'Update', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(266, 'english', 'Product Update', 'Product Update', '2024-02-29 16:24:51', '2024-02-29 16:24:51'),
(267, 'english', 'SYSTEM LOGO', 'SYSTEM LOGO', '2024-02-29 16:24:52', '2024-02-29 16:24:52'),
(268, 'english', 'Dark logo', 'Dark logo', '2024-02-29 16:24:52', '2024-02-29 16:24:52'),
(269, 'english', 'Light logo', 'Light logo', '2024-02-29 16:24:52', '2024-02-29 16:24:52'),
(270, 'english', 'Favicon', 'Favicon', '2024-02-29 16:24:52', '2024-02-29 16:24:52'),
(271, 'english', 'Update Logo', 'Update Logo', '2024-02-29 16:24:52', '2024-02-29 16:24:52'),
(272, 'english', 'All Reported Post List', 'All Reported Post List', '2024-02-29 16:24:55', '2024-02-29 16:24:55'),
(273, 'english', 'Report Reason', 'Report Reason', '2024-02-29 16:24:55', '2024-02-29 16:24:55'),
(274, 'english', 'Reported By', 'Reported By', '2024-02-29 16:24:55', '2024-02-29 16:24:55'),
(275, 'english', 'All Page Categories', 'All Page Categories', '2024-02-29 16:25:02', '2024-02-29 16:25:02'),
(276, 'english', 'View', 'View', '2024-02-29 16:25:02', '2024-02-29 16:25:02'),
(277, 'english', 'Good Evening', 'Good Evening', '2024-03-01 08:40:16', '2024-03-01 08:40:16'),
(278, 'english', 'Reason of Report', 'Reason of Report', '2024-03-01 13:01:22', '2024-03-01 13:01:22'),
(279, 'english', 'Description', 'Description', '2024-03-01 13:01:22', '2024-03-01 13:01:22'),
(280, 'english', 'Post Deleted Successfully', 'Post Deleted Successfully', '2024-03-01 13:01:27', '2024-03-01 13:01:27'),
(281, 'english', 'Your post has been updated', 'Your post has been updated', '2024-03-01 13:02:59', '2024-03-01 13:02:59'),
(282, 'english', 'Image deleted successfully', 'Image deleted successfully', '2024-03-01 13:09:01', '2024-03-01 13:09:01'),
(283, 'english', 'Liked', 'Liked', '2024-03-01 13:19:04', '2024-03-01 13:19:04'),
(284, 'english', 'Delete Comment', 'Delete Comment', '2024-03-01 13:19:18', '2024-03-01 13:19:18'),
(285, 'english', 'Reply', 'Reply', '2024-03-01 13:19:18', '2024-03-01 13:19:18'),
(286, 'english', 'View more', 'View more', '2024-03-01 13:19:45', '2024-03-01 13:19:45'),
(287, 'english', 'Private', 'Private', '2024-03-01 14:09:34', '2024-03-01 14:09:34'),
(288, 'english', 'Group Title', 'Group Title', '2024-03-01 14:09:34', '2024-03-01 14:09:34'),
(289, 'english', 'Group Sub Title', 'Group Sub Title', '2024-03-01 14:09:34', '2024-03-01 14:09:34'),
(290, 'english', 'Update Profile Photo', 'Update Profile Photo', '2024-03-01 14:09:34', '2024-03-01 14:09:34'),
(291, 'english', 'Create Group', 'Create Group', '2024-03-01 14:09:34', '2024-03-01 14:09:34'),
(292, 'english', 'Profile updated successfully', 'Profile updated successfully', '2024-03-01 14:38:10', '2024-03-01 14:38:10'),
(293, 'english', 'Media', 'Media', '2024-03-01 15:19:49', '2024-03-01 15:19:49'),
(294, 'english', 'Add Photo To Album', 'Add Photo To Album', '2024-03-01 15:19:49', '2024-03-01 15:19:49'),
(295, 'english', 'Add Photo/Album', 'Add Photo/Album', '2024-03-01 15:19:49', '2024-03-01 15:19:49'),
(296, 'english', 'Your Photos', 'Your Photos', '2024-03-01 15:19:49', '2024-03-01 15:19:49'),
(297, 'english', 'Album', 'Album', '2024-03-01 15:19:50', '2024-03-01 15:19:50'),
(298, 'english', 'Create Album', 'Create Album', '2024-03-01 15:19:50', '2024-03-01 15:19:50'),
(299, 'english', 'Select Album', 'Select Album', '2024-03-01 15:20:04', '2024-03-01 15:20:04'),
(300, 'english', 'Album Images', 'Album Images', '2024-03-01 15:20:05', '2024-03-01 15:20:05'),
(301, 'english', 'Cover Photo', 'Cover Photo', '2024-03-01 15:34:36', '2024-03-01 15:34:36'),
(302, 'english', 'Upload', 'Upload', '2024-03-01 15:34:36', '2024-03-01 15:34:36'),
(303, 'english', 'Cover photo updated', 'Cover photo updated', '2024-03-01 15:39:34', '2024-03-01 15:39:34'),
(304, 'english', 'Community', 'Community', '2024-03-01 16:24:35', '2024-03-01 16:24:35'),
(305, 'english', 'Good Afternoon', 'Good Afternoon', '2024-03-04 09:30:50', '2024-03-04 09:30:50'),
(306, 'english', 'Notifications', 'Notifications', '2024-03-04 09:57:45', '2024-03-04 09:57:45'),
(307, 'english', 'All Communities', 'All Communities', '2024-03-04 13:47:23', '2024-03-04 13:47:23'),
(308, 'english', ' Create New Community', ' Create New Community', '2024-03-04 13:48:06', '2024-03-04 13:48:06'),
(309, 'english', 'Communities', 'Communities', '2024-03-04 13:48:06', '2024-03-04 13:48:06'),
(310, 'english', 'Community you Manage', 'Community you Manage', '2024-03-04 13:48:06', '2024-03-04 13:48:06'),
(311, 'english', 'Community you Joined', 'Community you Joined', '2024-03-04 13:48:06', '2024-03-04 13:48:06'),
(312, 'english', 'Create Post dd', 'Create Post dd', '2024-03-04 14:08:20', '2024-03-04 14:08:20'),
(313, 'english', 'Please Register Or Login First ', 'Please Register Or Login First ', '2024-03-04 14:16:08', '2024-03-04 14:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `live_streamings`
--

CREATE TABLE `live_streamings` (
  `streaming_id` int NOT NULL,
  `publisher` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketplaces`
--

CREATE TABLE `marketplaces` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `price` varchar(15) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `category` text,
  `status` varchar(250) DEFAULT NULL,
  `condition` text,
  `brand` varchar(250) DEFAULT NULL,
  `buy_link` varchar(300) DEFAULT NULL,
  `description` text,
  `image` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `story_id` int DEFAULT NULL,
  `album_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `chat_id` int DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `privacy` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `post_id`, `story_id`, `album_id`, `product_id`, `page_id`, `group_id`, `chat_id`, `file_name`, `file_type`, `privacy`, `created_at`, `updated_at`) VALUES
(1, 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'P9Vcs3jb1NhBJi5tlqyR6AEMTZpa24Udv7WwkCuI.jpg', 'image', 'public', '1709220707', '1709220707'),
(2, 21, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'wVpisNg0lCqGuZ1r5YHAfbdamQvMKO4Pc6o9FRXW.jpg', 'image', 'public', '1709222937', '1709222937'),
(3, 23, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'zLrUJS7NI2FOdyZ0aE1nv6VxthGgfkCbHuAQp3cs.jpg', 'image', 'public', '1709291828', '1709291828'),
(4, 23, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'Eu7N6bnY9iolXyOSHIFRVf3hdLKpe0r8sgamwcJB.jpg', 'image', 'public', '1709292662', '1709292662'),
(5, 23, 13, NULL, NULL, NULL, NULL, NULL, NULL, '2evWED34qMA1nkFcCT8QuSxojXPaHwI7z5bOg9tJ.jpg', 'image', 'public', '1709292843', '1709292843'),
(6, 23, 15, NULL, NULL, NULL, NULL, NULL, NULL, '65e1bf0aedace.jpg', 'image', 'public', '2024-03-01 17:42:02', '2024-03-01 17:42:02'),
(7, 23, 16, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c06731a23.jpg', 'image', 'public', '2024-03-01 17:47:51', '2024-03-01 17:47:51'),
(8, 23, 17, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c10306d1b.jpg', 'image', 'public', '2024-03-01 17:50:27', '2024-03-01 17:50:27'),
(9, 23, 18, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c17dae659.jpg', 'image', 'public', '2024-03-01 17:52:29', '2024-03-01 17:52:29'),
(10, 23, 19, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c2099e085.jpeg', 'image', 'public', '2024-03-01 17:54:49', '2024-03-01 17:54:49'),
(11, 23, 20, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c28b61a8d.jpg', 'image', 'public', '2024-03-01 17:56:59', '2024-03-01 17:56:59'),
(12, 23, 20, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c28b7588e.jpg', 'image', 'public', '2024-03-01 17:56:59', '2024-03-01 17:56:59'),
(13, 23, 20, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c28babe92.jpg', 'image', 'public', '2024-03-01 17:56:59', '2024-03-01 17:56:59'),
(14, 23, 21, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c441e7d13.jpg', 'image', 'public', '2024-03-01 18:04:17', '2024-03-01 18:04:17'),
(15, 23, 21, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c441f3ddd.jpg', 'image', 'public', '2024-03-01 18:04:18', '2024-03-01 18:04:18'),
(16, 23, 21, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c44204cbb.jpg', 'image', 'public', '2024-03-01 18:04:18', '2024-03-01 18:04:18'),
(17, 23, 21, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c4420d834.jpg', 'image', 'public', '2024-03-01 18:04:18', '2024-03-01 18:04:18'),
(18, 23, 22, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c4b155400.mp4', 'video', 'public', '2024-03-01 18:06:09', '2024-03-01 18:06:09'),
(19, 23, 23, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c805f1d6a.jpg', 'image', 'public', '2024-03-01 18:20:22', '2024-03-01 18:20:22'),
(20, 23, 23, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c8060df13.jpg', 'image', 'public', '2024-03-01 18:20:22', '2024-03-01 18:20:22'),
(21, 23, 24, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c8ffac7f8.mp4', 'video', 'public', '2024-03-01 18:24:31', '2024-03-01 18:24:31'),
(22, 23, 25, NULL, NULL, NULL, NULL, NULL, NULL, '65e1c910d3b8e.jpg', 'image', 'public', '2024-03-01 18:24:48', '2024-03-01 18:24:48'),
(23, 23, 26, NULL, NULL, NULL, NULL, NULL, NULL, '65e1d07670677.mp4', 'unknown', 'public', '2024-03-01 18:56:22', '2024-03-01 18:56:22'),
(24, 23, 27, NULL, NULL, NULL, NULL, NULL, NULL, '65e1d0d774d2c.mp4', 'video', 'public', '2024-03-01 18:57:59', '2024-03-01 18:57:59'),
(25, 23, 28, NULL, NULL, NULL, NULL, NULL, NULL, '65e1d185ec8b0.jpg', 'image', 'public', '2024-03-01 19:00:53', '2024-03-01 19:00:53'),
(26, 23, 24, NULL, NULL, NULL, NULL, NULL, NULL, '39NiFqfKXeuO6HgGp70C2VmYLJ1M8dQvkct5ojnZ.jpg', 'image', 'public', '1709298179', '1709298179'),
(29, 23, 27, NULL, NULL, NULL, NULL, NULL, NULL, 'EYITqMBA1UFW6bop8K3caRkgNzjLme7QDSl20JOX.jpg', 'image', 'public', '1709298885', '1709298885'),
(30, 23, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'This path doesn\'t exist!', 'image', 'public', '1709299325', '1709299325'),
(31, 23, NULL, 3, NULL, NULL, NULL, NULL, NULL, '65e1d7d4a4121.jpg', 'image', 'public', '1709299668', '1709299668'),
(32, 23, NULL, 4, NULL, NULL, NULL, NULL, NULL, '65e1d801c8c38.jpg', 'image', 'public', '1709299713', '1709299713'),
(33, 23, NULL, 5, NULL, NULL, NULL, NULL, NULL, '65e1d8aded93f.jpg', 'image', 'public', '1709299885', '1709299885'),
(34, 23, NULL, 6, NULL, NULL, NULL, NULL, NULL, '65e1d9ad7c575.jpg', 'image', 'public', '1709300141', '1709300141'),
(35, 23, NULL, 7, NULL, NULL, NULL, NULL, NULL, '65e1d9edf2b8c.jpg', 'image', 'public', '1709300206', '1709300206'),
(36, 23, NULL, 8, NULL, NULL, NULL, NULL, NULL, '65e1da41899ca.jpg', 'image', 'public', '1709300289', '1709300289'),
(37, 23, NULL, 15, NULL, NULL, NULL, NULL, NULL, '65e1db6ba669a.jpg', 'image', 'public', '1709300587', '1709300587'),
(38, 23, NULL, 16, NULL, NULL, NULL, NULL, NULL, '65e1e6de363c6.jpg', 'image', 'public', '1709303518', '1709303518'),
(39, 23, 29, NULL, NULL, NULL, NULL, NULL, NULL, 'This path doesn\'t exist!', 'image', 'public', '1709303890', '1709303890'),
(40, 23, 30, NULL, NULL, NULL, NULL, NULL, NULL, 'This path doesn\'t exist!', 'image', 'public', '1709304141', '1709304141'),
(41, 23, 31, NULL, NULL, NULL, NULL, NULL, NULL, 'The upload directory doesn\'t exist.', 'image', 'public', '1709304364', '1709304364'),
(42, 23, 32, NULL, NULL, NULL, NULL, NULL, NULL, 'The upload directory doesn\'t exist.', 'image', 'public', '1709304553', '1709304553'),
(43, 23, 33, NULL, NULL, NULL, NULL, NULL, NULL, 'The upload directory doesn\'t exist.', 'image', 'public', '1709305771', '1709305771'),
(44, 23, 34, NULL, NULL, NULL, NULL, NULL, NULL, '1709306240-65e1f180a2e93.jpg', 'image', 'public', '1709306243', '1709306243'),
(45, 23, 35, NULL, NULL, NULL, NULL, NULL, NULL, '1709306335-65e1f1dfb8959.jpg', 'image', 'public', '1709306335', '1709306335'),
(46, 23, 36, NULL, NULL, NULL, NULL, NULL, NULL, '1709306646-65e1f316e5f6f.jpg', 'image', 'public', '1709306647', '1709306647'),
(47, 23, 37, NULL, NULL, NULL, NULL, NULL, NULL, '65e1f51dbcc16.jpeg', 'image', 'public', '2024-03-01 21:32:45', '2024-03-01 21:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `message_thrades`
--

CREATE TABLE `message_thrades` (
  `id` int NOT NULL,
  `reciver_id` int DEFAULT NULL,
  `sender_id` int DEFAULT NULL,
  `chatcenter` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `sender_user_id` int DEFAULT NULL,
  `reciver_user_id` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `event_id` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `status` int DEFAULT '0',
  `view` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `pagecategories`
--

CREATE TABLE `pagecategories` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `subtitle` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `page_type` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `logo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `coverphoto` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `job` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `lifestyle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `location` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_likes`
--

CREATE TABLE `page_likes` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int NOT NULL,
  `identifier` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `currency` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `keys` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `model_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `test_mode` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `is_addon` int DEFAULT NULL,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'USD', 'Paypal', '', '{\"sandbox_client_id\":\"\",\"sandbox_secret_key\":\"\",\"production_client_id\":\"\",\"production_secret_key\":\"\"}', 'Paypal', 1, 1, 0, '', '2023-03-15 06:55:21'),
(2, 'stripe', 'USD', 'Stripe', '', '{\"public_key\":\"\",\"secret_key\":\"\",\"public_live_key\":\"\",\"secret_live_key\":\"\"}', 'StripePay', 1, 1, 0, '', '2023-03-15 06:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `payment_histories`
--

CREATE TABLE `payment_histories` (
  `id` bigint NOT NULL,
  `item_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `currency` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `publisher` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `post_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `privacy` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tagged_user_ids` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `activity_id` int DEFAULT NULL,
  `location` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `report_status` tinyint(1) NOT NULL DEFAULT '0',
  `user_reacts` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `shared_user` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `publisher`, `publisher_id`, `post_type`, `privacy`, `tagged_user_ids`, `activity_id`, `location`, `description`, `status`, `report_status`, `user_reacts`, `shared_user`, `created_at`, `updated_at`) VALUES
(1, 21, 'post', 21, 'general', 'public', '[]', 0, '', 'tests', 'active', 0, '[]', '[]', '1709217906', '1709217906'),
(2, 21, 'post', 21, 'general', 'public', '[]', 0, '', '', 'active', 0, '[]', '[]', '1709220706', '1709220706'),
(3, 21, 'post', 21, 'general', 'public', '[]', 0, '', 'helo Khadim', 'active', 0, '[]', '[]', '1709222922', '1709222922'),
(4, 21, 'post', 21, 'general', 'public', '[]', 0, '', '', 'active', 0, '[]', '[]', '1709222937', '1709222937'),
(5, 21, 'post', 21, 'general', 'public', '[]', 0, '', 'tsetr', 'active', 0, '[]', '[]', '1709223796', '1709223796'),
(6, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'azan', 'active', 0, '[]', '[]', '1709291827', '1709291827'),
(7, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'tst', 'active', 0, '[]', '[]', '1709291858', '1709291858'),
(8, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'test', 'active', 0, '[]', '[]', '1709291886', '1709291886'),
(9, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'fasdf', 'active', 0, '[]', '[]', '1709292379', '1709292379'),
(10, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'Test', 'active', 0, '[]', '[]', '1709292583', '1709292583'),
(11, 23, 'post', 23, 'general', 'public', '[]', 0, '', '', 'active', 0, '[]', '[]', '1709292647', '1709292647'),
(12, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'jk g', 'active', 0, '[]', '[]', '1709292662', '1709292662'),
(13, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'ttug', 'active', 0, '[]', '[]', '1709292843', '1709292843'),
(14, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'fgasd', 'active', 0, '[]', '[]', '1709292987', '1709292987'),
(15, 23, 'post', 23, 'general', 'public', '[]', 0, '', '1', 'active', 0, '[]', '[]', '1709293322', '1709293322'),
(16, 23, 'post', 23, 'general', 'public', '[]', 0, '', '', 'active', 0, '[]', '[]', '1709293671', '1709293671'),
(17, 23, 'post', 23, 'general', 'public', '[]', 0, '', '2', 'active', 0, '[]', '[]', '1709293826', '1709293826'),
(18, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'f', 'active', 0, '[]', '[]', '1709293949', '1709293949'),
(19, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'test', 'active', 0, '[]', '[]', '1709294089', '1709294089'),
(20, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'MoterCycle Bike', 'active', 0, '[]', '[]', '1709294219', '1709294219'),
(21, 23, 'post', 23, 'general', 'public', '[]', 0, '', '', 'active', 0, '[]', '[]', '1709294657', '1709294657'),
(22, 23, 'post', 23, 'general', 'public', '[]', 0, '', '', 'active', 0, '[]', '[]', '1709294769', '1709294769'),
(25, 23, 'post', 23, 'general', 'public', '[]', 0, '', '', 'active', 0, '[]', '[]', '1709295888', '1709295888'),
(27, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'AD', 'active', 0, '{\"23\":\"like\"}', '[]', '1709297879', '1709298885'),
(28, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'd', 'active', 0, '{\"23\":\"like\"}', '[]', '1709298053', '1709298053'),
(35, 23, 'post', 23, 'profile_picture', 'public', '[]', 0, '', '', 'active', 0, '[]', NULL, '1709306335', '1709306335'),
(37, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'new tset', 'active', 0, '[]', '[]', '1709307165', '1709307165'),
(38, 25, 'post', 25, 'general', 'public', '[]', 0, '', 'Test', 'active', 0, '{\"25\":\"like\"}', '[]', '1709544798', '1709544798'),
(39, 23, 'post', 23, 'general', 'public', '[]', 0, '', 'Guest User for login karo', 'active', 0, '[]', '[]', '1709548066', '1709548066');

-- --------------------------------------------------------

--
-- Table structure for table `post_shares`
--

CREATE TABLE `post_shares` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `shared_on` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `report` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `saved_products`
--

CREATE TABLE `saved_products` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `saveforlaters`
--

CREATE TABLE `saveforlaters` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `video_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `marketplace_id` int DEFAULT NULL,
  `event_id` int DEFAULT NULL,
  `blog_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'zoom_configuration', '{\"api_key\":\"qPUL7G44QC2-oyq7IiD8iw\",\"api_secret\":\"cQCNr1qq4mhGgO0QYCNrY3gMBvk31HuVLVJV\"}', '2022-09-07 06:07:09', '2022-09-07 06:07:09'),
(2, 'about', '<h2 style=\"font-style:italic;\">What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2022-09-07 06:07:09', '2022-09-10 23:07:33'),
(3, 'policy', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2022-09-07 06:07:09', '2022-09-07 00:12:27'),
(4, 'term', '<p>Welcome to the University of Dhaka&rsquo;s website, featuring the oldest, largest and the premier multidisciplinary university of Bangladesh!&nbsp;</p>\r\n\r\n<p>Founded in 1921, The University of Dhaka has always had the mission of uplifting the educational standards of the people of the region. It was initially meant to provide tertiary education to people who didn&rsquo;t have access to higher studies till then. Subsequently, it has contributed significantly to the socio-cultural and political development of what was once East Bengal and then East Pakistan, and is now Bangladesh.</p>\r\n\r\n<p>Since its establishment, the university has been fulfilling the hopes and aspirations of its students and their parents. It has, of course, not only been a lighthouse of learning, but has also acted as a torch-bearer of the people of the region in issues such as democracy, freedom of expression, and the need for a just and equitable society. It has always been associated with high quality education and research in which students as well as faculty members and alumni have played their parts. The University of Dhaka&rsquo;s role has expanded beyond its classrooms and research labs during different crises the country has had to face since 1947. In many ways, thus, the university is unique, for it has played a major role in the creation of the independent nation-state of Bangladesh in 1971.</p>\r\n\r\n<p>Writing at this time, I am proud to note that the University of Dhaka has not only fulfilled but also exceeded the aspirations of those who set it up. It has been acclaimed as the best educational institution of the region, and one of the leading universities of the subcontinent. It is an incubator of ideas and has nurtured renowned scientists and academicians, great leaders, administrative and business officials, and entrepreneurs. Its proud alumni include the Father of the Nation Bangabandhu Sheikh Mujibur Rahman, and the incumbent Prime Minister, Sheikh Hasina, his august daughter. Most of the country&rsquo;s presidents, prime ministers, policymakers, politicians and CEOs of leading organizations, researchers and activists have been products of this institution.</p>\r\n\r\n<p>The University of Dhaka&rsquo;s doors are open for people from all classes, religions and parts of the country, and, indeed, also for international students. Its campus, too, regularly hosts different national and international events and festivals where people from every corner can and do participate. It is a hub, for breeding and nourishing liberal, secular and humanistics values.</p>\r\n\r\n<p>At the time when our country is dreaming to become a developed nation by 2041 and has made a firm commitment to achieve the Sustainable Development Goals (SDGs) by 2030, and in an age when we are witnessing the emergence of spirited youths all set to participate in the Fourth Industrial Revolution (4IR), I can affirm that the University of Dhaka is well prepared to meet all future challenges and is ready to lead the nation once again with its acquired experience, available resources, dedicated administrators, experienced faculty members and talented students and employees.</p>\r\n\r\n<p>Having been associated with the university for almost 40 years, first as a student, then as a faculty member, and later in various administrative capacities, it is a great honor and proud privilege for me to be here to not only witness but also to contribute to its centenary celebrations from where I am. Let me emphasize too that it is the singular privilege of all of us at the University of Dhaka to be celebrating its centenary in the year that Bangladesh is celebrating its golden jubilee of independence.</p>\r\n\r\n<p>I would like to request you all to explore the legacy, beauty, and history of this great institution of national, regional and international importance through this website. I hope it will be of use to you as you venture into the knowledge network of the university and acquaint yourself with its history, achievements, centers of learning, residential facilities and other attributes. My office staff and I will be more than happy to listen to you in case you want to visit us in person at a mutually convenient time.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '2022-09-07 06:07:09', '2022-09-07 00:19:02'),
(5, 'smtp', '{\"smtp_protocol\":\"smtp\",\"smtp_crypto\":\"tls\",\"smtp_host\":\"smtp.gmail.com\",\"smtp_port\":\"587\",\"smtp_user\":\"your-email\",\"smtp_pass\":\"Email-password\"}', '2022-09-11 04:36:29', '2022-09-10 23:06:38'),
(6, 'about', 'about us', '2022-09-20 03:45:06', '2022-09-20 03:45:06'),
(7, 'policy', 'policy page', '2022-09-20 03:45:06', '2022-09-20 03:45:06'),
(8, 'term', 'term c', '2022-09-20 03:50:51', '2022-09-20 03:50:51'),
(10, 'system_name', 'Sociopro Private Social Network', '2022-09-20 03:52:50', '2023-03-30 09:52:44'),
(11, 'system_title', 'Our private social platform', '2022-09-20 03:53:27', '2023-03-30 09:52:44'),
(12, 'system_email', 'admin@example.com', '2022-09-20 03:53:27', '2023-03-30 09:52:44'),
(13, 'system_phone', '236423625746', '2022-09-20 03:53:57', '2023-03-30 09:52:44'),
(14, 'system_fax', '555-123-4567', '2022-09-20 03:53:57', '2023-03-30 09:52:44'),
(15, 'system_address', 'New York, USA', '2022-09-20 03:54:41', '2023-03-30 09:52:44'),
(16, 'system_footer', 'Creativeitem', '2022-09-20 03:54:41', '2023-03-30 09:52:44'),
(17, 'system_footer_link', 'https://creativeitem.com', '2022-09-20 03:55:08', '2023-03-30 09:52:44'),
(18, 'system_dark_logo', '623.png', '2022-09-20 03:55:08', '2022-09-19 21:10:00'),
(19, 'system_light_logo', '727.jpeg', '2022-09-20 03:55:27', '2022-09-19 21:10:00'),
(20, 'system_fav_icon', '450.png', '2022-09-20 03:55:27', '2022-09-19 20:39:06'),
(21, 'version', '1.2', '2022-09-20 03:55:27', '2022-09-19 20:39:06'),
(22, 'language', 'english', '2022-09-20 03:55:27', '2022-09-19 20:39:06'),
(23, 'public_signup', '1', '2022-09-20 03:55:27', '2023-03-30 09:52:44'),
(24, 'amazon_s3', '{\"active\":\"0\",\"AWS_ACCESS_KEY_ID\":\"\",\"AWS_SECRET_ACCESS_KEY\":\"\",\"AWS_DEFAULT_REGION\":\"\",\"AWS_BUCKET\":\"\"}', '2022-09-20 03:55:27', '2023-03-29 09:34:49'),
(25, 'ad_charge_per_day', '0.1', '2022-09-20 03:55:27', '2023-03-30 09:52:44'),
(26, 'system_currency', 'USD', '2022-09-07 06:07:09', '2023-03-30 09:52:44'),
(27, 'system_language', 'english', '2022-09-07 06:07:09', '2023-03-30 09:52:44'),
(28, 'purchase_code', 'Enter-your-valid-purchase-code', '2022-09-07 06:07:09', '2023-03-30 09:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` bigint NOT NULL,
  `share_user_id` text,
  `event_id` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `url` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` text,
  `description` text,
  `ext_url` text,
  `image` varchar(255) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `status` int DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `story_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `publisher` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `privacy` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `media_files` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`story_id`, `user_id`, `publisher`, `publisher_id`, `privacy`, `content_type`, `media_files`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 23, 'user', 23, 'public', 'text', NULL, '{\"color\":\"fff\",\"bg-color\":\"f00\",\"text\":\"Axan  is the wwwwo man\"}', 'active', '1709299248', '1709299248'),
(2, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709299325', '1709299325'),
(3, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709299668', '1709299668'),
(4, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709299713', '1709299713'),
(5, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709299885', '1709299885'),
(6, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709300141', '1709300141'),
(7, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709300205', '1709300205'),
(8, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709300289', '1709300289'),
(9, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709300375', '1709300375'),
(10, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709300398', '1709300398'),
(11, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709300416', '1709300416'),
(12, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709300461', '1709300461'),
(13, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709300478', '1709300478'),
(14, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709300574', '1709300574'),
(15, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709300587', '1709300587'),
(16, 23, 'user', 23, 'public', 'file', NULL, NULL, 'active', '1709303518', '1709303518');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friends` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `followers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `studied_at` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastActive` timestamp NULL DEFAULT NULL,
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_role`, `username`, `email`, `password`, `name`, `nickname`, `friends`, `followers`, `gender`, `studied_at`, `address`, `profession`, `job`, `marital_status`, `phone`, `date_of_birth`, `about`, `photo`, `cover_photo`, `status`, `lastActive`, `timezone`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'general', '952667', 'Khadim@gmail.com', '$2y$10$RHba5EAURIly26uUF6TX6utCah9.IDgYiV4QJu2SphwEhbdr6qaQy', 'admin', NULL, '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-02 01:11:58', 'America/Los_Angeles', '2024-03-01 02:40:57', NULL, '2024-03-01 01:59:40', '2024-03-02 01:11:58'),
(18, 'admin', '849093', '123Khadimhussain@gmail.com', '$2y$10$D.M6RXsEn8pMX8.QYVGYeumCC6da6iUOgLYL5jdMA1Ha.sHEN2gPK', 'admin', NULL, '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-01 02:40:27', 'America/Los_Angeles', '2024-03-01 02:40:57', NULL, '2024-03-01 02:40:27', '2024-03-01 02:40:57'),
(21, 'admin', '967433', '123Khadimhussain786@gmail.com', '$2y$10$Jyvv5gzuTtvCLCR5PPyghOEElX956mbyqw8zcKcdFv4z.7oKfdXja', 'admin', NULL, '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-01 23:46:25', 'America/Los_Angeles', '2024-03-01 02:40:57', NULL, '2024-03-01 03:09:10', '2024-03-01 23:46:25'),
(22, 'general', '435076', 'azantest@gmail.com', '$2y$10$ZJgM6aQJVbNBuMvJrrX5nu4N5HDl1OiFvjVjqT0A9lOR5sS2NLwku', 'admin', NULL, '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-01 04:19:37', 'America/Los_Angeles', '2024-03-01 02:40:57', NULL, '2024-03-01 04:19:37', '2024-03-01 04:19:37'),
(23, 'admin', '103107', 'admin@gmail.com', '$2y$10$Jyvv5gzuTtvCLCR5PPyghOEElX956mbyqw8zcKcdFv4z.7oKfdXja', 'admin', NULL, '[]', '[]', NULL, NULL, NULL, NULL, NULL, 'Yes', '342', '1709229600', NULL, '1709306646-65e1f316e5f6f.jpg', '1709307574-65e1f6b6a9b91.png', '1', '2024-03-05 05:04:24', 'America/Los_Angeles', '2024-03-13 10:15:34', NULL, '2024-03-01 22:36:18', '2024-03-05 05:04:24'),
(24, 'Guest', '484', 'GUEST1@gmail.com', NULL, 'GUEST1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-04 23:26:36', '2024-03-04 23:26:36'),
(25, 'Guest', '343', 'GUEST3@gmail.com', NULL, 'GUEST3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-05 00:22:04', NULL, '2024-03-05 09:32:04', NULL, '2024-03-04 23:30:26', '2024-03-05 00:22:04'),
(26, 'Guest', '276', 'GUEST4@gmail.com', NULL, 'GUEST4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 00:05:37', NULL, '2024-03-05 00:05:37', '2024-03-05 00:05:37'),
(27, 'Guest', '319', 'GUEST5@gmail.com', NULL, 'GUEST5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 00:05:44', NULL, '2024-03-05 00:05:44', '2024-03-05 00:05:44'),
(30, 'Guest', '486', 'HHhonndiZh@gmail.com', NULL, 'GUEST4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 00:07:14', NULL, '2024-03-05 00:07:14', '2024-03-05 00:07:14'),
(31, 'Guest', '477', 'S1jxOuPsg8@gmail.com', NULL, 'GUEST1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 00:07:20', NULL, '2024-03-05 00:07:20', '2024-03-05 00:07:20'),
(32, 'Guest', '357', 'GUEST7@gmail.com', NULL, 'GUEST7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-05 00:08:47', NULL, '2024-03-05 00:07:26', NULL, '2024-03-05 00:07:26', '2024-03-05 00:08:47'),
(33, 'Guest', '412', 'GUEST9@gmail.com', NULL, 'GUEST9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-05 00:47:23', NULL, '2024-03-05 00:33:13', NULL, '2024-03-05 00:33:13', '2024-03-05 00:47:23'),
(34, 'Guest', '272', 'E4OI24eAiB@gmail.com', NULL, 'GUEST4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 00:50:34', NULL, '2024-03-05 00:50:34', '2024-03-05 00:50:34'),
(35, 'Guest', '378', 'GUEST6@gmail.com', NULL, 'GUEST6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 00:51:12', NULL, '2024-03-05 00:51:12', '2024-03-05 00:51:12'),
(36, 'Guest', '346', 'TMKjVFUlI3@gmail.com', NULL, 'GUEST7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 00:52:18', NULL, '2024-03-05 00:52:18', '2024-03-05 00:52:18'),
(37, 'Guest', '419', '1ClhDaSUGN@gmail.com', NULL, 'GUEST4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 01:09:49', NULL, '2024-03-05 01:09:49', '2024-03-05 01:09:49'),
(38, 'Guest', '118', 'zBLNnrN8sT@gmail.com', NULL, 'GUEST5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-05 03:23:24', NULL, '2024-03-05 03:16:50', NULL, '2024-03-05 03:16:50', '2024-03-05 03:23:24'),
(39, 'Guest', '153', 'N7QtYUT6C7@gmail.com', NULL, 'GUEST7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-05 03:19:45', NULL, '2024-03-05 03:18:47', NULL, '2024-03-05 03:18:47', '2024-03-05 03:19:45'),
(40, 'Guest', '335', '9tSnusm5bL@gmail.com', NULL, 'GUEST6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 03:26:42', NULL, '2024-03-05 03:26:42', '2024-03-05 03:26:42'),
(41, 'Guest', '184', 'VJHVORj2aE@gmail.com', NULL, 'GUEST6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-05 04:01:55', NULL, '2024-03-05 03:26:50', NULL, '2024-03-05 03:26:50', '2024-03-05 04:01:55'),
(42, 'Guest', '264', 'i74qgyzuA5@gmail.com', NULL, 'GUEST9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 04:17:30', NULL, '2024-03-05 04:17:30', '2024-03-05 04:17:30'),
(43, 'Guest', '132', 'A9KKqPx67F@gmail.com', NULL, 'GUEST7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 04:19:01', NULL, '2024-03-05 04:19:01', '2024-03-05 04:19:01'),
(44, 'Guest', '218', '1lNYYWyVjE@gmail.com', NULL, 'GUEST3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-05 04:39:01', NULL, '2024-03-05 04:19:08', NULL, '2024-03-05 04:19:08', '2024-03-05 04:39:01'),
(45, 'Guest', '156', 'xg6yp0NFps@gmail.com', NULL, 'GUEST5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-05 04:54:59', NULL, '2024-03-05 04:49:36', NULL, '2024-03-05 04:49:36', '2024-03-05 04:54:59'),
(46, 'Guest', '180', 'GUEST2@gmail.com', NULL, 'GUEST2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 05:04:38', NULL, '2024-03-05 05:04:38', '2024-03-05 05:04:38'),
(47, 'Guest', '153', '4dxEXQjZKk@gmail.com', NULL, 'GUEST4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2024-03-05 05:04:39', NULL, '2024-03-05 05:04:39', '2024-03-05 05:04:39'),
(48, 'Guest', '293', 'GUEST10@gmail.com', NULL, 'GUEST10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-05 05:14:39', NULL, '2024-03-05 05:14:31', NULL, '2024-03-05 05:14:31', '2024-03-05 05:14:39'),
(49, 'Guest', '480', 'l3iLYZXOWp@gmail.com', NULL, 'GUEST3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-03-05 05:16:21', NULL, '2024-03-05 05:16:16', NULL, '2024-03-05 05:16:16', '2024-03-05 05:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` text,
  `privacy` text,
  `file` text,
  `view` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album_images`
--
ALTER TABLE `album_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcategories`
--
ALTER TABLE `blogcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feeling_and_activities`
--
ALTER TABLE `feeling_and_activities`
  ADD PRIMARY KEY (`feeling_and_activity_id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friendships`
--
ALTER TABLE `friendships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_streamings`
--
ALTER TABLE `live_streamings`
  ADD PRIMARY KEY (`streaming_id`);

--
-- Indexes for table `marketplaces`
--
ALTER TABLE `marketplaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_thrades`
--
ALTER TABLE `message_thrades`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagecategories`
--
ALTER TABLE `pagecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_likes`
--
ALTER TABLE `page_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_shares`
--
ALTER TABLE `post_shares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved_products`
--
ALTER TABLE `saved_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saveforlaters`
--
ALTER TABLE `saveforlaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`story_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `album_images`
--
ALTER TABLE `album_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogcategories`
--
ALTER TABLE `blogcategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeling_and_activities`
--
ALTER TABLE `feeling_and_activities`
  MODIFY `feeling_and_activity_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friendships`
--
ALTER TABLE `friendships`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `live_streamings`
--
ALTER TABLE `live_streamings`
  MODIFY `streaming_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketplaces`
--
ALTER TABLE `marketplaces`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `message_thrades`
--
ALTER TABLE `message_thrades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagecategories`
--
ALTER TABLE `pagecategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_likes`
--
ALTER TABLE `page_likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_histories`
--
ALTER TABLE `payment_histories`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `post_shares`
--
ALTER TABLE `post_shares`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_products`
--
ALTER TABLE `saved_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saveforlaters`
--
ALTER TABLE `saveforlaters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `story_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
