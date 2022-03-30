-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 04:56 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tradeindia`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyorders`
--

CREATE TABLE `buyorders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buyorders`
--

INSERT INTO `buyorders` (`id`, `user_id`, `name`, `price`, `qty`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'test1', 50, 400, 20000, 1, '2022-03-29 19:01:51', '2022-03-29 19:01:51'),
(2, 2, 'test1', 50, 400, 20000, 1, '2022-03-29 19:02:20', '2022-03-29 19:02:20'),
(3, 2, 'test1', 50, 1000, 50000, 1, '2022-03-29 19:03:13', '2022-03-29 19:03:13'),
(4, 2, 'test1', 50, 100000, 5000000, 1, '2022-03-29 19:03:56', '2022-03-29 19:03:56'),
(5, 2, 'test123', 50, 400, 20000, 1, '2022-03-29 19:06:03', '2022-03-29 19:06:03'),
(6, 2, 'test123', 50, 50, 2500, 1, '2022-03-29 19:09:00', '2022-03-29 19:09:00'),
(7, 2, 'test123', 50, 25, 1250, 1, '2022-03-29 19:09:18', '2022-03-29 19:09:18'),
(8, 8, 'test123', 50, 1, 50, 1, '2022-03-29 19:32:12', '2022-03-29 19:32:12'),
(9, 8, 'test123', 50, 1, 50, 1, '2022-03-29 19:33:16', '2022-03-29 19:33:16'),
(10, 8, 'test123', 50, 1, 50, 1, '2022-03-29 19:34:30', '2022-03-29 19:34:30'),
(11, 8, 'test123', 50, 1, 50, 1, '2022-03-29 19:34:47', '2022-03-29 19:34:47'),
(12, 8, 'test1', 50, 1, 50, 1, '2022-03-29 19:59:18', '2022-03-29 19:59:18'),
(13, 8, 'test1', 50, 400, 20000, 1, '2022-03-29 20:40:55', '2022-03-29 20:40:55');

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
-- Table structure for table `laravel2step`
--

CREATE TABLE `laravel2step` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT 0,
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker`
--

CREATE TABLE `laravel_blocker` (
  `id` int(10) UNSIGNED NOT NULL,
  `typeId` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_blocker`
--

INSERT INTO `laravel_blocker` (`id`, `typeId`, `value`, `note`, `userId`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'test.com', 'Block all domains/emails @test.com', NULL, '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(2, 3, 'test.ca', 'Block all domains/emails @test.ca', NULL, '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(3, 3, 'fake.com', 'Block all domains/emails @fake.com', NULL, '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(4, 3, 'example.com', 'Block all domains/emails @example.com', NULL, '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(5, 3, 'mailinator.com', 'Block all domains/emails @mailinator.com', NULL, '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker_types`
--

CREATE TABLE `laravel_blocker_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_blocker_types`
--

INSERT INTO `laravel_blocker_types` (`id`, `slug`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'email', 'E-mail', '2022-03-29 06:57:42', '2022-03-29 06:57:42', NULL),
(2, 'ipAddress', 'IP Address', '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(3, 'domain', 'Domain Name', '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(4, 'user', 'User', '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(5, 'city', 'City', '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(6, 'state', 'State', '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(7, 'country', 'Country', '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(8, 'countryCode', 'Country Code', '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(9, 'continent', 'Continent', '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(10, 'region', 'Region', '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 07:01:20', '2022-03-29 07:01:20', NULL),
(2, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-03-29 07:01:20', '2022-03-29 07:01:20', NULL),
(3, 'Viewed profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-03-29 07:01:43', '2022-03-29 07:01:43', NULL),
(4, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/profile/Admin', 'POST', '2022-03-29 07:01:50', '2022-03-29 07:01:50', NULL),
(5, 'Logged In', 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 07:02:08', '2022-03-29 07:02:08', NULL),
(6, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-03-29 07:02:08', '2022-03-29 07:02:08', NULL),
(7, 'Logged Out', 'Registered', 2, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/home', 'POST', '2022-03-29 07:02:43', '2022-03-29 07:02:43', NULL),
(8, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 07:02:58', '2022-03-29 07:02:58', NULL),
(9, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-03-29 07:02:58', '2022-03-29 07:02:58', NULL),
(10, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:03:02', '2022-03-29 07:03:02', NULL),
(11, 'Viewed users/2/edit', 'Registered', 1, 'http://127.0.0.1:8000/users/2/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 07:03:13', '2022-03-29 07:03:13', NULL),
(12, 'Viewed users/2', 'Registered', 1, 'http://127.0.0.1:8000/users/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/2/edit', 'GET', '2022-03-29 07:03:21', '2022-03-29 07:03:21', NULL),
(13, 'Viewed profile/User', 'Registered', 1, 'http://127.0.0.1:8000/profile/User', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/2', 'GET', '2022-03-29 07:03:26', '2022-03-29 07:03:26', NULL),
(14, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/2/edit', 'GET', '2022-03-29 07:30:25', '2022-03-29 07:30:25', NULL),
(15, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 07:30:32', '2022-03-29 07:30:32', NULL),
(16, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 07:34:02', '2022-03-29 07:34:02', NULL),
(17, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 07:35:38', '2022-03-29 07:35:38', NULL),
(18, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 07:37:12', '2022-03-29 07:37:12', NULL),
(19, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-03-29 07:37:14', '2022-03-29 07:37:14', NULL),
(20, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 07:37:27', '2022-03-29 07:37:27', NULL),
(21, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-03-29 07:37:28', '2022-03-29 07:37:28', NULL),
(22, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 07:37:42', '2022-03-29 07:37:42', NULL),
(23, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 07:38:13', '2022-03-29 07:38:13', NULL),
(24, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-03-29 07:38:14', '2022-03-29 07:38:14', NULL),
(25, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 07:38:30', '2022-03-29 07:38:30', NULL),
(26, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:41:28', '2022-03-29 07:41:28', NULL),
(27, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 07:41:59', '2022-03-29 07:41:59', NULL),
(28, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-03-29 07:42:01', '2022-03-29 07:42:01', NULL),
(29, 'Viewed users/1', 'Registered', 1, 'http://127.0.0.1:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 07:42:21', '2022-03-29 07:42:21', NULL),
(30, 'Viewed profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/1', 'GET', '2022-03-29 07:42:32', '2022-03-29 07:42:32', NULL),
(31, 'Viewed profile/Admin', 'Registered', 1, 'http://127.0.0.1:8000/profile/Admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/1', 'GET', '2022-03-29 07:42:52', '2022-03-29 07:42:52', NULL),
(32, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/profile/Admin', 'GET', '2022-03-29 07:43:00', '2022-03-29 07:43:00', NULL),
(33, 'Viewed users/5', 'Registered', 1, 'http://127.0.0.1:8000/users/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 07:43:03', '2022-03-29 07:43:03', NULL),
(34, 'Viewed profile/test8', 'Registered', 1, 'http://127.0.0.1:8000/profile/test8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/5', 'GET', '2022-03-29 07:43:07', '2022-03-29 07:43:07', NULL),
(35, 'Viewed users/1', 'Registered', 1, 'http://127.0.0.1:8000/users/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 07:44:56', '2022-03-29 07:44:56', NULL),
(36, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/profile/Admin', 'GET', '2022-03-29 07:47:40', '2022-03-29 07:47:40', NULL),
(37, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:48:08', '2022-03-29 07:48:08', NULL),
(38, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:49:20', '2022-03-29 07:49:20', NULL),
(39, 'Deleted users/3', 'Registered', 1, 'http://127.0.0.1:8000/users/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'DELETE', '2022-03-29 07:49:35', '2022-03-29 07:49:35', NULL),
(40, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 07:49:36', '2022-03-29 07:49:36', NULL),
(41, 'Deleted users/6', 'Registered', 1, 'http://127.0.0.1:8000/users/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'DELETE', '2022-03-29 07:49:40', '2022-03-29 07:49:40', NULL),
(42, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:49:59', '2022-03-29 07:49:59', NULL),
(43, 'Deleted users/5', 'Registered', 1, 'http://127.0.0.1:8000/users/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'DELETE', '2022-03-29 07:50:03', '2022-03-29 07:50:03', NULL),
(44, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 07:50:04', '2022-03-29 07:50:04', NULL),
(45, 'Deleted users/4', 'Registered', 1, 'http://127.0.0.1:8000/users/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'DELETE', '2022-03-29 07:50:09', '2022-03-29 07:50:09', NULL),
(46, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 07:50:10', '2022-03-29 07:50:10', NULL),
(47, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 07:51:34', '2022-03-29 07:51:34', NULL),
(48, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:52:15', '2022-03-29 07:52:15', NULL),
(49, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/', 'GET', '2022-03-29 07:52:26', '2022-03-29 07:52:26', NULL),
(50, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 07:52:53', '2022-03-29 07:52:53', NULL),
(51, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-03-29 07:52:54', '2022-03-29 07:52:54', NULL),
(52, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 07:53:10', '2022-03-29 07:53:10', NULL),
(53, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-03-29 07:53:12', '2022-03-29 07:53:12', NULL),
(54, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 07:53:22', '2022-03-29 07:53:22', NULL),
(55, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-03-29 07:53:24', '2022-03-29 07:53:24', NULL),
(56, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:53:49', '2022-03-29 07:53:49', NULL),
(57, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:55:16', '2022-03-29 07:55:16', NULL),
(58, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:55:59', '2022-03-29 07:55:59', NULL),
(59, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:56:19', '2022-03-29 07:56:19', NULL),
(60, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:57:22', '2022-03-29 07:57:22', NULL),
(61, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:57:49', '2022-03-29 07:57:49', NULL),
(62, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 07:59:38', '2022-03-29 07:59:38', NULL),
(63, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:02:28', '2022-03-29 08:02:28', NULL),
(64, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:03:07', '2022-03-29 08:03:07', NULL),
(65, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:04:38', '2022-03-29 08:04:38', NULL),
(66, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:05:05', '2022-03-29 08:05:05', NULL),
(67, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:05:30', '2022-03-29 08:05:30', NULL),
(68, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:05:51', '2022-03-29 08:05:51', NULL),
(69, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:06:17', '2022-03-29 08:06:17', NULL),
(70, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:06:36', '2022-03-29 08:06:36', NULL),
(71, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:07:09', '2022-03-29 08:07:09', NULL),
(72, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:07:48', '2022-03-29 08:07:48', NULL),
(73, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:08:23', '2022-03-29 08:08:23', NULL),
(74, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:08:46', '2022-03-29 08:08:46', NULL),
(75, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:09:02', '2022-03-29 08:09:02', NULL),
(76, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:09:11', '2022-03-29 08:09:11', NULL),
(77, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:09:24', '2022-03-29 08:09:24', NULL),
(78, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:09:40', '2022-03-29 08:09:40', NULL),
(79, 'Viewed routes', 'Registered', 1, 'http://127.0.0.1:8000/routes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 08:10:45', '2022-03-29 08:10:45', NULL),
(80, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:48:57', '2022-03-29 08:48:57', NULL),
(81, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:49:59', '2022-03-29 08:49:59', NULL),
(82, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/roles', 'GET', '2022-03-29 08:52:30', '2022-03-29 08:52:30', NULL),
(83, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:53:42', '2022-03-29 08:53:42', NULL),
(84, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:53:46', '2022-03-29 08:53:46', NULL),
(85, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:54:12', '2022-03-29 08:54:12', NULL),
(86, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:54:36', '2022-03-29 08:54:36', NULL),
(87, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:54:50', '2022-03-29 08:54:50', NULL),
(88, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 08:55:38', '2022-03-29 08:55:38', NULL),
(89, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:00:36', '2022-03-29 09:00:36', NULL),
(90, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:01:00', '2022-03-29 09:01:00', NULL),
(91, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:02:38', '2022-03-29 09:02:38', NULL),
(92, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:03:52', '2022-03-29 09:03:52', NULL),
(93, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:29:17', '2022-03-29 09:29:17', NULL),
(94, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:30:24', '2022-03-29 09:30:24', NULL),
(95, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:31:37', '2022-03-29 09:31:37', NULL),
(96, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:31:56', '2022-03-29 09:31:56', NULL),
(97, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:32:30', '2022-03-29 09:32:30', NULL),
(98, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:33:07', '2022-03-29 09:33:07', NULL),
(99, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 09:38:15', '2022-03-29 09:38:15', NULL),
(100, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 09:39:14', '2022-03-29 09:39:14', NULL),
(101, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 09:41:25', '2022-03-29 09:41:25', NULL),
(102, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 09:41:42', '2022-03-29 09:41:42', NULL),
(103, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:48:08', '2022-03-29 09:48:08', NULL),
(104, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:49:19', '2022-03-29 09:49:19', NULL),
(105, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:49:49', '2022-03-29 09:49:49', NULL),
(106, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:51:53', '2022-03-29 09:51:53', NULL),
(107, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:52:08', '2022-03-29 09:52:08', NULL),
(108, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:52:22', '2022-03-29 09:52:22', NULL),
(109, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:54:20', '2022-03-29 09:54:20', NULL),
(110, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:55:13', '2022-03-29 09:55:13', NULL),
(111, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:56:56', '2022-03-29 09:56:56', NULL),
(112, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:58:01', '2022-03-29 09:58:01', NULL),
(113, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 09:59:43', '2022-03-29 09:59:43', NULL),
(114, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 10:00:09', '2022-03-29 10:00:09', NULL),
(115, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 13:20:13', '2022-03-29 13:20:13', NULL),
(116, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-03-29 13:20:13', '2022-03-29 13:20:13', NULL),
(117, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:20:25', '2022-03-29 13:20:25', NULL),
(118, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 13:20:31', '2022-03-29 13:20:31', NULL),
(119, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 13:21:26', '2022-03-29 13:21:26', NULL),
(120, 'Created sellorders/store', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/create', 'POST', '2022-03-29 13:21:41', '2022-03-29 13:21:41', NULL),
(121, 'Created sellorders/store', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/create', 'POST', '2022-03-29 13:23:06', '2022-03-29 13:23:06', NULL),
(122, 'Created sellorders/store', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/create', 'POST', '2022-03-29 13:23:50', '2022-03-29 13:23:50', NULL),
(123, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:24:00', '2022-03-29 13:24:00', NULL),
(124, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 13:24:37', '2022-03-29 13:24:37', NULL),
(125, 'Created sellorders/store', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/create', 'POST', '2022-03-29 13:24:50', '2022-03-29 13:24:50', NULL),
(126, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/create', 'GET', '2022-03-29 13:24:52', '2022-03-29 13:24:52', NULL),
(127, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:25:20', '2022-03-29 13:25:20', NULL),
(128, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 13:25:22', '2022-03-29 13:25:22', NULL),
(129, 'Viewed sellorders/create', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:26:05', '2022-03-29 13:26:05', NULL),
(130, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:26:32', '2022-03-29 13:26:32', NULL),
(131, 'Viewed themes', 'Registered', 1, 'http://127.0.0.1:8000/themes', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 13:28:15', '2022-03-29 13:28:15', NULL),
(132, 'Viewed themes/5/edit', 'Registered', 1, 'http://127.0.0.1:8000/themes/5/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/themes', 'GET', '2022-03-29 13:28:19', '2022-03-29 13:28:19', NULL),
(133, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:35:39', '2022-03-29 13:35:39', NULL),
(134, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 13:35:43', '2022-03-29 13:35:43', NULL),
(135, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 13:36:16', '2022-03-29 13:36:16', NULL),
(136, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:37:28', '2022-03-29 13:37:28', NULL),
(137, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:37:47', '2022-03-29 13:37:47', NULL),
(138, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:39:28', '2022-03-29 13:39:28', NULL),
(139, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:40:17', '2022-03-29 13:40:17', NULL),
(140, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:40:31', '2022-03-29 13:40:31', NULL),
(141, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:43:50', '2022-03-29 13:43:50', NULL),
(142, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:44:46', '2022-03-29 13:44:46', NULL),
(143, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:45:20', '2022-03-29 13:45:20', NULL),
(144, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:45:56', '2022-03-29 13:45:56', NULL),
(145, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:46:08', '2022-03-29 13:46:08', NULL),
(146, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:46:32', '2022-03-29 13:46:32', NULL),
(147, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:47:00', '2022-03-29 13:47:00', NULL),
(148, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:47:23', '2022-03-29 13:47:23', NULL),
(149, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:47:59', '2022-03-29 13:47:59', NULL),
(150, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:48:19', '2022-03-29 13:48:19', NULL),
(151, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:48:45', '2022-03-29 13:48:45', NULL),
(152, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:48:58', '2022-03-29 13:48:58', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(153, 'Edited sellorders/update', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update?3=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/3/edit', 'PUT', '2022-03-29 13:49:39', '2022-03-29 13:49:39', NULL),
(154, 'Edited sellorders/update', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update?3=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/3/edit', 'PUT', '2022-03-29 13:50:02', '2022-03-29 13:50:02', NULL),
(155, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:50:10', '2022-03-29 13:50:10', NULL),
(156, 'Viewed sellorders/5/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/5/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 13:50:19', '2022-03-29 13:50:19', NULL),
(157, 'Edited sellorders/update', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update?5=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/5/edit', 'PUT', '2022-03-29 13:50:27', '2022-03-29 13:50:27', NULL),
(158, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:50:38', '2022-03-29 13:50:38', NULL),
(159, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:51:46', '2022-03-29 13:51:46', NULL),
(160, 'Viewed sellorders/5/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/5/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 13:51:50', '2022-03-29 13:51:50', NULL),
(161, 'Edited sellorders/update', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update?5=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/5/edit', 'PATCH', '2022-03-29 13:51:55', '2022-03-29 13:51:55', NULL),
(162, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/5/edit', 'GET', '2022-03-29 13:51:56', '2022-03-29 13:51:56', NULL),
(163, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:57:28', '2022-03-29 13:57:28', NULL),
(164, 'Viewed sellorders/5/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/5/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 13:57:32', '2022-03-29 13:57:32', NULL),
(165, 'Edited sellorders/update', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update?5=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/5/edit', 'PUT', '2022-03-29 13:57:38', '2022-03-29 13:57:38', NULL),
(166, 'Edited sellorders/update', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update?5=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/5/edit', 'PUT', '2022-03-29 13:58:24', '2022-03-29 13:58:24', NULL),
(167, 'Edited sellorders/update', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update?5=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/5/edit', 'PUT', '2022-03-29 13:58:47', '2022-03-29 13:58:47', NULL),
(168, 'Viewed sellorders/5/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/5/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 13:59:29', '2022-03-29 13:59:29', NULL),
(169, 'Edited sellorders/update/5', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/5/edit', 'PUT', '2022-03-29 13:59:34', '2022-03-29 13:59:34', NULL),
(170, 'Edited sellorders/update/5', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/5/edit', 'PUT', '2022-03-29 13:59:58', '2022-03-29 13:59:58', NULL),
(171, 'Edited sellorders/update/5', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/5/edit', 'PUT', '2022-03-29 14:00:22', '2022-03-29 14:00:22', NULL),
(172, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/5/edit', 'GET', '2022-03-29 14:00:24', '2022-03-29 14:00:24', NULL),
(173, 'Viewed sellorders/3/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/3/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 14:00:29', '2022-03-29 14:00:29', NULL),
(174, 'Edited sellorders/update/3', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/3/edit', 'PUT', '2022-03-29 14:00:36', '2022-03-29 14:00:36', NULL),
(175, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/3/edit', 'GET', '2022-03-29 14:00:37', '2022-03-29 14:00:37', NULL),
(176, 'Viewed sellorders/2/edit', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/2/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 14:00:42', '2022-03-29 14:00:42', NULL),
(177, 'Edited sellorders/update/2', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/update/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/2/edit', 'PUT', '2022-03-29 14:00:47', '2022-03-29 14:00:47', NULL),
(178, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/2/edit', 'GET', '2022-03-29 14:00:49', '2022-03-29 14:00:49', NULL),
(179, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 14:06:47', '2022-03-29 14:06:47', NULL),
(180, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 14:07:12', '2022-03-29 14:07:12', NULL),
(181, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 14:07:25', '2022-03-29 14:07:25', NULL),
(182, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 14:07:36', '2022-03-29 14:07:36', NULL),
(183, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 14:08:09', '2022-03-29 14:08:09', NULL),
(184, 'Deleted sellorders/4/delete', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/4/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/', 'DELETE', '2022-03-29 14:08:13', '2022-03-29 14:08:13', NULL),
(185, 'Deleted sellorders/4/delete', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/4/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/', 'DELETE', '2022-03-29 14:08:58', '2022-03-29 14:08:58', NULL),
(186, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 14:09:05', '2022-03-29 14:09:05', NULL),
(187, 'Deleted sellorders/2/delete', 'Registered', 1, 'http://127.0.0.1:8000/sellorders/2/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/', 'DELETE', '2022-03-29 14:09:43', '2022-03-29 14:09:43', NULL),
(188, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders/', 'GET', '2022-03-29 14:09:44', '2022-03-29 14:09:44', NULL),
(189, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 14:18:00', '2022-03-29 14:18:00', NULL),
(190, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 14:18:22', '2022-03-29 14:18:22', NULL),
(191, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 14:18:26', '2022-03-29 14:18:26', NULL),
(192, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 14:18:43', '2022-03-29 14:18:43', NULL),
(193, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 14:19:05', '2022-03-29 14:19:05', NULL),
(194, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-03-29 14:19:09', '2022-03-29 14:19:09', NULL),
(195, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'POST', '2022-03-29 14:31:33', '2022-03-29 14:31:33', NULL),
(196, 'Logged In', 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 14:31:49', '2022-03-29 14:31:49', NULL),
(197, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-03-29 14:31:49', '2022-03-29 14:31:49', NULL),
(198, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 14:35:43', '2022-03-29 14:35:43', NULL),
(199, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-03-29 14:36:38', '2022-03-29 14:36:38', NULL),
(200, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 15:00:31', '2022-03-29 15:00:31', NULL),
(201, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 15:00:57', '2022-03-29 15:00:57', NULL),
(202, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 15:02:37', '2022-03-29 15:02:37', NULL),
(203, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 15:03:23', '2022-03-29 15:03:23', NULL),
(204, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 15:03:44', '2022-03-29 15:03:44', NULL),
(205, 'Logged In', 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 18:08:48', '2022-03-29 18:08:48', NULL),
(206, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-03-29 18:08:49', '2022-03-29 18:08:49', NULL),
(207, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-03-29 18:08:52', '2022-03-29 18:08:52', NULL),
(208, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:10:19', '2022-03-29 18:10:19', NULL),
(209, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 18:11:29', '2022-03-29 18:11:29', NULL),
(210, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:28:47', '2022-03-29 18:28:47', NULL),
(211, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:31:24', '2022-03-29 18:31:24', NULL),
(212, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:31:55', '2022-03-29 18:31:55', NULL),
(213, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:32:55', '2022-03-29 18:32:55', NULL),
(214, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:33:25', '2022-03-29 18:33:25', NULL),
(215, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:33:52', '2022-03-29 18:33:52', NULL),
(216, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:34:44', '2022-03-29 18:34:44', NULL),
(217, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 18:34:53', '2022-03-29 18:34:53', NULL),
(218, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:37:31', '2022-03-29 18:37:31', NULL),
(219, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:39:24', '2022-03-29 18:39:24', NULL),
(220, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:41:04', '2022-03-29 18:41:04', NULL),
(221, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:41:41', '2022-03-29 18:41:41', NULL),
(222, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:41:54', '2022-03-29 18:41:54', NULL),
(223, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:42:20', '2022-03-29 18:42:20', NULL),
(224, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 18:42:27', '2022-03-29 18:42:27', NULL),
(225, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:43:24', '2022-03-29 18:43:24', NULL),
(226, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:44:16', '2022-03-29 18:44:16', NULL),
(227, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:45:22', '2022-03-29 18:45:22', NULL),
(228, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:46:13', '2022-03-29 18:46:13', NULL),
(229, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:46:45', '2022-03-29 18:46:45', NULL),
(230, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:47:37', '2022-03-29 18:47:37', NULL),
(231, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:47:54', '2022-03-29 18:47:54', NULL),
(232, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:48:03', '2022-03-29 18:48:03', NULL),
(233, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:48:32', '2022-03-29 18:48:32', NULL),
(234, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:49:24', '2022-03-29 18:49:24', NULL),
(235, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:51:43', '2022-03-29 18:51:43', NULL),
(236, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:53:27', '2022-03-29 18:53:27', NULL),
(237, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:54:06', '2022-03-29 18:54:06', NULL),
(238, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 18:54:23', '2022-03-29 18:54:23', NULL),
(239, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 18:56:19', '2022-03-29 18:56:19', NULL),
(240, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 18:56:26', '2022-03-29 18:56:26', NULL),
(241, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:00:20', '2022-03-29 19:00:20', NULL),
(242, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:00:33', '2022-03-29 19:00:33', NULL),
(243, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:01:30', '2022-03-29 19:01:30', NULL),
(244, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:01:50', '2022-03-29 19:01:50', NULL),
(245, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:02:19', '2022-03-29 19:02:19', NULL),
(246, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:02:33', '2022-03-29 19:02:33', NULL),
(247, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades/', 'POST', '2022-03-29 19:03:12', '2022-03-29 19:03:12', NULL),
(248, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades/', 'GET', '2022-03-29 19:03:13', '2022-03-29 19:03:13', NULL),
(249, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:03:56', '2022-03-29 19:03:56', NULL),
(250, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:03:57', '2022-03-29 19:03:57', NULL),
(251, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:06:02', '2022-03-29 19:06:02', NULL),
(252, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:06:03', '2022-03-29 19:06:03', NULL),
(253, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:07:34', '2022-03-29 19:07:34', NULL),
(254, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:08:16', '2022-03-29 19:08:16', NULL),
(255, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:09:00', '2022-03-29 19:09:00', NULL),
(256, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:09:01', '2022-03-29 19:09:01', NULL),
(257, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:09:03', '2022-03-29 19:09:03', NULL),
(258, 'Created buyorder/store', 'Registered', 2, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:09:18', '2022-03-29 19:09:18', NULL),
(259, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:09:19', '2022-03-29 19:09:19', NULL),
(260, 'Viewed trades', 'Registered', 2, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:09:54', '2022-03-29 19:09:54', NULL),
(261, 'Logged Out', 'Registered', 2, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:11:26', '2022-03-29 19:11:26', NULL),
(262, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 19:11:52', '2022-03-29 19:11:52', NULL),
(263, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-03-29 19:11:52', '2022-03-29 19:11:52', NULL),
(264, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-03-29 19:11:58', '2022-03-29 19:11:58', NULL),
(265, 'Viewed users/create', 'Registered', 1, 'http://127.0.0.1:8000/users/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 19:12:03', '2022-03-29 19:12:03', NULL),
(266, 'Created users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'POST', '2022-03-29 19:15:14', '2022-03-29 19:15:14', NULL),
(267, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/create', 'GET', '2022-03-29 19:15:15', '2022-03-29 19:15:15', NULL),
(268, 'Viewed users/8', 'Registered', 1, 'http://127.0.0.1:8000/users/8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users', 'GET', '2022-03-29 19:15:21', '2022-03-29 19:15:21', NULL),
(269, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/users/8', 'POST', '2022-03-29 19:17:04', '2022-03-29 19:17:04', NULL),
(270, 'Logged In', 'Registered', 8, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 19:17:15', '2022-03-29 19:17:15', NULL),
(271, 'Viewed home', 'Registered', 8, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-03-29 19:17:15', '2022-03-29 19:17:15', NULL),
(272, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-03-29 19:17:18', '2022-03-29 19:17:18', NULL),
(273, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-03-29 19:17:49', '2022-03-29 19:17:49', NULL),
(274, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:18:08', '2022-03-29 19:18:08', NULL),
(275, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:18:31', '2022-03-29 19:18:31', NULL),
(276, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:19:30', '2022-03-29 19:19:30', NULL),
(277, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:19:50', '2022-03-29 19:19:50', NULL),
(278, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:20:29', '2022-03-29 19:20:29', NULL),
(279, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:20:39', '2022-03-29 19:20:39', NULL),
(280, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:21:04', '2022-03-29 19:21:04', NULL),
(281, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:21:17', '2022-03-29 19:21:17', NULL),
(282, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:21:37', '2022-03-29 19:21:37', NULL),
(283, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:21:54', '2022-03-29 19:21:54', NULL),
(284, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:22:37', '2022-03-29 19:22:37', NULL),
(285, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:22:59', '2022-03-29 19:22:59', NULL),
(286, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:23:23', '2022-03-29 19:23:23', NULL),
(287, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:24:02', '2022-03-29 19:24:02', NULL),
(288, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:24:35', '2022-03-29 19:24:35', NULL),
(289, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:25:22', '2022-03-29 19:25:22', NULL),
(290, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:25:37', '2022-03-29 19:25:37', NULL),
(291, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:25:54', '2022-03-29 19:25:54', NULL),
(292, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:26:14', '2022-03-29 19:26:14', NULL),
(293, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:26:36', '2022-03-29 19:26:36', NULL),
(294, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:28:29', '2022-03-29 19:28:29', NULL),
(295, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 19:28:54', '2022-03-29 19:28:54', NULL),
(296, 'Created buyorder/store', 'Registered', 8, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:32:11', '2022-03-29 19:32:11', NULL),
(297, 'Created buyorder/store', 'Registered', 8, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:33:15', '2022-03-29 19:33:15', NULL),
(298, 'Created buyorder/store', 'Registered', 8, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:34:29', '2022-03-29 19:34:29', NULL),
(299, 'Created buyorder/store', 'Registered', 8, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:34:46', '2022-03-29 19:34:46', NULL),
(300, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:34:47', '2022-03-29 19:34:47', NULL),
(301, 'Created buyorder/store', 'Registered', 8, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:39:23', '2022-03-29 19:39:23', NULL),
(302, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:40:25', '2022-03-29 19:40:25', NULL),
(303, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:41:49', '2022-03-29 19:41:49', NULL);
INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(304, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:53:10', '2022-03-29 19:53:10', NULL),
(305, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:55:19', '2022-03-29 19:55:19', NULL),
(306, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:55:40', '2022-03-29 19:55:40', NULL),
(307, 'Logged Out', 'Registered', 8, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:56:31', '2022-03-29 19:56:31', NULL),
(308, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 19:56:39', '2022-03-29 19:56:39', NULL),
(309, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 19:56:45', '2022-03-29 19:56:45', NULL),
(310, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 19:56:59', '2022-03-29 19:56:59', NULL),
(311, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-03-29 19:56:59', '2022-03-29 19:56:59', NULL),
(312, 'Viewed sellorders', 'Registered', 1, 'http://127.0.0.1:8000/sellorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-03-29 19:57:04', '2022-03-29 19:57:04', NULL),
(313, 'Viewed trades', 'Registered', 1, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'GET', '2022-03-29 19:58:05', '2022-03-29 19:58:05', NULL),
(314, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/sellorders', 'POST', '2022-03-29 19:58:28', '2022-03-29 19:58:28', NULL),
(315, 'Failed Login Attempt', 'Guest', NULL, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 19:58:39', '2022-03-29 19:58:39', NULL),
(316, 'Logged In', 'Registered', 8, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'POST', '2022-03-29 19:58:45', '2022-03-29 19:58:45', NULL),
(317, 'Viewed home', 'Registered', 8, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/login', 'GET', '2022-03-29 19:58:46', '2022-03-29 19:58:46', NULL),
(318, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/home', 'GET', '2022-03-29 19:58:50', '2022-03-29 19:58:50', NULL),
(319, 'Created buyorder/store', 'Registered', 8, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 19:59:18', '2022-03-29 19:59:18', NULL),
(320, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 19:59:19', '2022-03-29 19:59:19', NULL),
(321, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 20:36:15', '2022-03-29 20:36:15', NULL),
(322, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', NULL, 'GET', '2022-03-29 20:36:30', '2022-03-29 20:36:30', NULL),
(323, 'Viewed myorders', 'Registered', 8, 'http://127.0.0.1:8000/myorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 20:39:14', '2022-03-29 20:39:14', NULL),
(324, 'Viewed myorders', 'Registered', 8, 'http://127.0.0.1:8000/myorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 20:40:36', '2022-03-29 20:40:36', NULL),
(325, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/myorders', 'GET', '2022-03-29 20:40:47', '2022-03-29 20:40:47', NULL),
(326, 'Created buyorder/store', 'Registered', 8, 'http://127.0.0.1:8000/buyorder/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'POST', '2022-03-29 20:40:54', '2022-03-29 20:40:54', NULL),
(327, 'Viewed trades', 'Registered', 8, 'http://127.0.0.1:8000/trades', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 20:40:55', '2022-03-29 20:40:55', NULL),
(328, 'Viewed myorders', 'Registered', 8, 'http://127.0.0.1:8000/myorders', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,ta;q=0.7', 'http://127.0.0.1:8000/trades', 'GET', '2022-03-29 20:41:00', '2022-03-29 20:41:00', NULL);

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
(3, '2016_01_15_105324_create_roles_table', 1),
(4, '2016_01_15_114412_create_role_user_table', 1),
(5, '2016_01_26_115212_create_permissions_table', 1),
(6, '2016_01_26_115523_create_permission_role_table', 1),
(7, '2016_02_09_132439_create_permission_user_table', 1),
(8, '2017_03_09_082449_create_social_logins_table', 1),
(9, '2017_03_09_082526_create_activations_table', 1),
(10, '2017_03_20_213554_create_themes_table', 1),
(11, '2017_03_21_042918_create_profiles_table', 1),
(12, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(13, '2017_12_09_070937_create_two_step_auth_table', 1),
(14, '2019_02_19_032636_create_laravel_blocker_types_table', 1),
(15, '2019_02_19_045158_create_laravel_blocker_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2022_03_29_125116_create_user_wallets_table', 2),
(18, '2022_03_29_135557_create_sellorders_table', 3),
(19, '2022_03_29_195017_create_buyorders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2022-03-29 06:57:43', '2022-03-29 06:57:43', NULL),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2022-03-29 06:57:44', '2022-03-29 06:57:44', NULL),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2022-03-29 06:57:44', '2022-03-29 06:57:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2022-03-29 06:57:44', '2022-03-29 06:57:44', NULL),
(2, 2, 1, '2022-03-29 06:57:44', '2022-03-29 06:57:44', NULL),
(3, 3, 1, '2022-03-29 06:57:44', '2022-03-29 06:57:44', NULL),
(4, 4, 1, '2022-03-29 06:57:44', '2022-03-29 06:57:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `theme_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-29 06:57:47', '2022-03-29 06:57:47'),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-29 06:57:47', '2022-03-29 06:57:47'),
(8, 8, 1, NULL, NULL, NULL, NULL, NULL, 0, '2022-03-29 19:15:15', '2022-03-29 19:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2022-03-29 06:57:44', '2022-03-29 06:57:44', NULL),
(2, 'User', 'user', 'User Role', 1, '2022-03-29 06:57:44', '2022-03-29 06:57:44', NULL),
(3, 'Unverified', 'unverified', 'Unverified Role', 0, '2022-03-29 06:57:44', '2022-03-29 06:57:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2022-03-29 06:57:47', '2022-03-29 06:57:47', NULL),
(2, 2, 2, '2022-03-29 06:57:47', '2022-03-29 06:57:47', NULL),
(5, 2, 8, '2022-03-29 19:15:15', '2022-03-29 19:15:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sellorders`
--

CREATE TABLE `sellorders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellorders`
--

INSERT INTO `sellorders` (`id`, `name`, `price`, `qty`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bitcoin', 500, 200, 100000, 1, '2022-03-29 14:19:18', '2022-03-29 14:19:18'),
(3, 'testit', 50, 50, 2500, 1, '2022-03-29 13:23:51', '2022-03-29 14:00:36'),
(5, 'test2', 50, 500, 25000, 1, '2022-03-29 13:50:03', '2022-03-29 14:00:23'),
(6, 'test123', 50, 24, 1200, 1, '2022-03-29 13:50:27', '2022-03-29 19:32:12'),
(7, 'test1', 50, 99599, 4979950, 1, '2022-03-29 13:51:56', '2022-03-29 20:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2022-03-29 06:57:44', '2022-03-29 06:57:46', NULL),
(2, 'Darkly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/darkly/bootstrap.min.css', NULL, 1, 'theme', 2, '2022-03-29 06:57:44', '2022-03-29 06:57:46', NULL),
(3, 'Cyborg', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cyborg/bootstrap.min.css', NULL, 1, 'theme', 3, '2022-03-29 06:57:44', '2022-03-29 06:57:46', NULL),
(4, 'Cosmo', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cosmo/bootstrap.min.css', NULL, 1, 'theme', 4, '2022-03-29 06:57:44', '2022-03-29 06:57:46', NULL),
(5, 'Cerulean', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css', NULL, 1, 'theme', 5, '2022-03-29 06:57:44', '2022-03-29 06:57:46', NULL),
(6, 'Flatly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css', NULL, 1, 'theme', 6, '2022-03-29 06:57:44', '2022-03-29 06:57:46', NULL),
(7, 'Journal', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/journal/bootstrap.min.css', NULL, 1, 'theme', 7, '2022-03-29 06:57:44', '2022-03-29 06:57:46', NULL),
(8, 'Lumen', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lumen/bootstrap.min.css', NULL, 1, 'theme', 8, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(9, 'Paper', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/paper/bootstrap.min.css', NULL, 1, 'theme', 9, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(10, 'Readable', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/readable/bootstrap.min.css', NULL, 1, 'theme', 10, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(11, 'Sandstone', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css', NULL, 1, 'theme', 11, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(12, 'Simplex', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/simplex/bootstrap.min.css', NULL, 1, 'theme', 12, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(13, 'Slate', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/slate/bootstrap.min.css', NULL, 1, 'theme', 13, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(14, 'Spacelab', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css', NULL, 1, 'theme', 14, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(15, 'Superhero', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/superhero/bootstrap.min.css', NULL, 1, 'theme', 15, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(16, 'United', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css', NULL, 1, 'theme', 16, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(17, 'Yeti', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css', NULL, 1, 'theme', 17, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(18, 'Bootstrap 4.3.1', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', NULL, 1, 'theme', 18, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(19, 'Materialize', 'https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.css', NULL, 1, 'theme', 19, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(20, 'Material Design for Bootstrap (MDB) 4.8.7', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.7/css/mdb.css', NULL, 1, 'theme', 20, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(21, 'mdbootstrap', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css', NULL, 1, 'theme', 21, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(22, 'Litera', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css', NULL, 1, 'theme', 22, '2022-03-29 06:57:45', '2022-03-29 06:57:46', NULL),
(23, 'Lux', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lux/bootstrap.min.css', NULL, 1, 'theme', 23, '2022-03-29 06:57:45', '2022-03-29 06:57:47', NULL),
(24, 'Materia', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/materia/bootstrap.min.css', NULL, 1, 'theme', 24, '2022-03-29 06:57:46', '2022-03-29 06:57:47', NULL),
(25, 'Minty', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/minty/bootstrap.min.css', NULL, 1, 'theme', 25, '2022-03-29 06:57:46', '2022-03-29 06:57:47', NULL),
(26, 'Pulse', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/pulse/bootstrap.min.css', NULL, 1, 'theme', 26, '2022-03-29 06:57:46', '2022-03-29 06:57:47', NULL),
(27, 'Sketchy', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css', NULL, 1, 'theme', 27, '2022-03-29 06:57:46', '2022-03-29 06:57:47', NULL),
(28, 'Solar', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/solar/bootstrap.min.css', NULL, 1, 'theme', 28, '2022-03-29 06:57:46', '2022-03-29 06:57:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'Harry', 'Potter', 'admin@admin.com', NULL, '$2y$10$akwXz4ufsHn3JBHBxewRducnGk.rgOpB.W2BQXtFWHjniO40czog6', NULL, 1, '162khAuqs0M0s6x8zQW2u8fZzlxG1Ib0FqtQe9XHEVDX455OZwTNW9WN4baDabqN', NULL, '127.0.0.1', NULL, '127.0.0.1', NULL, NULL, '2022-03-29 06:57:47', '2022-03-29 06:57:47', NULL),
(2, 'User', 'Hermione', 'Granger', 'user@user.com', NULL, '$2y$10$mxKm2lgdHejVDCvKJ/ONwuMkzHysJoX/Z1dvwh7pzuvCLWknMyeAe', NULL, 1, 'Keesx1M239Vgq9pfh76Vqn8eI4MDSLVLHvp4mKaOqsDwtP9qb63ie44Id8v08j5r', '127.0.0.1', '127.0.0.1', NULL, NULL, NULL, NULL, '2022-03-29 06:57:47', '2022-03-29 06:57:47', NULL),
(8, 'welcome1', 'welcome1', 'welcome1', 'welcome1@gmail.com', NULL, '$2y$10$p6Z8f2ifJX4yEVAzz.c.W.Pwz.i5mVGc.6AC6UnHFlN0M36BG0/.G', NULL, 1, 'kGj2UgJ5ZmrY90wERJ9pYlXWwb3tQ9TQrivhaohKKsgn221gafeCjYOH5BlQhJE6', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2022-03-29 19:15:15', '2022-03-29 19:15:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_wallets`
--

CREATE TABLE `user_wallets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `wallet` bigint(20) UNSIGNED NOT NULL DEFAULT 50000,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_wallets`
--

INSERT INTO `user_wallets` (`id`, `user_id`, `wallet`, `currency`, `created_at`, `updated_at`) VALUES
(3, 8, 29950, '$', '2022-03-29 19:15:15', '2022-03-29 20:40:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `buyorders`
--
ALTER TABLE `buyorders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyorders_user_id_index` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laravel2step_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_value_unique` (`value`),
  ADD KEY `laravel_blocker_typeid_index` (`typeId`),
  ADD KEY `laravel_blocker_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_types_slug_unique` (`slug`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `sellorders`
--
ALTER TABLE `sellorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_index` (`user_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_link_unique` (`link`),
  ADD KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  ADD KEY `themes_id_index` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_wallets_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyorders`
--
ALTER TABLE `buyorders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel2step`
--
ALTER TABLE `laravel2step`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sellorders`
--
ALTER TABLE `sellorders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_wallets`
--
ALTER TABLE `user_wallets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `buyorders`
--
ALTER TABLE `buyorders`
  ADD CONSTRAINT `buyorders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD CONSTRAINT `laravel_blocker_typeid_foreign` FOREIGN KEY (`typeId`) REFERENCES `laravel_blocker_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD CONSTRAINT `user_wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
