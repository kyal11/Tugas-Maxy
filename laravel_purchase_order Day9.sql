-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 02:38 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_purchase_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--
CREATE DATABASE laravel_purchase_order;

USE laravel_purchase_order;

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_000000_create_users_table', 1),
(2, '2017_04_10_000001_create_password_resets_table', 1),
(3, '2017_04_10_000002_create_social_accounts_table', 1),
(4, '2017_04_10_000003_create_roles_table', 1),
(5, '2017_04_10_000004_create_users_roles_table', 1),
(6, '2017_06_16_000005_create_protection_validations_table', 1),
(7, '2017_06_16_000006_create_protection_shop_tokens_table', 1),
(8, '2019_10_31_152451_add_last_login_to_users', 1),
(9, '2023_09_18_041509_create_products_table', 2),
(10, '2023_09_18_075801_create_purchase_order_lines_table', 3);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Aut voluptas beatae laboriosam excepturi voluptates perspiciatis culpa est.', 'incidunt', 1537730, '2019-02-15 04:57:25', '2021-08-19 17:47:54'),
(2, 'Ullam autem dolorum numquam voluptatem magnam.', 'odio', 100000, '2023-07-18 00:00:55', '2002-12-19 11:05:46'),
(3, 'Esse deleniti expedita ea tempora voluptas.', 'accusantium', 100000, '1983-08-10 11:36:41', '2011-11-25 09:52:22'),
(4, 'Debitis non laboriosam consequatur aut.', 'quia', 100000, '1974-05-11 05:07:36', '2011-05-23 05:54:04'),
(5, 'Porro est eaque est doloribus enim dolorem odio quis.', 'velit', 100000, '1989-11-10 14:55:23', '1996-04-24 05:58:46'),
(6, 'Atque dolorem nostrum assumenda reiciendis tempore reiciendis mollitia et.', 'libero', 100000, '2023-02-02 11:19:09', '1973-01-15 13:20:01'),
(7, 'Et eligendi vero nobis aut.', 'incidunt', 100000, '1980-04-22 18:55:50', '1987-09-16 14:29:01'),
(8, 'Commodi ut et aut facere modi reiciendis dignissimos temporibus.', 'eligendi', 100000, '1974-06-30 06:07:50', '1986-10-03 09:11:08'),
(9, 'Ipsum repellat quae illo qui dolore.', 'possimus', 100000, '1984-10-06 23:38:46', '1997-12-27 23:15:50'),
(10, 'Quibusdam aut cum tempora ipsa et rem.', 'placeat', 3654810, '2005-12-04 17:47:44', '1991-07-03 08:04:54'),
(11, 'Aperiam aliquam qui et vel suscipit.', 'eligendi', 130218, '1995-01-27 18:08:03', '1988-06-17 16:57:44'),
(12, 'Placeat maiores ad aut sed et aliquid.', 'quisquam', 100000, '1977-09-16 16:40:43', '1992-04-20 13:25:05'),
(13, 'Similique id exercitationem ab ea animi dignissimos.', 'porro', 113737, '1978-01-30 01:50:28', '2005-06-18 02:35:34'),
(14, 'Vero et quasi ipsam incidunt voluptates magni sunt odit.', 'ut', 340074, '2009-09-18 03:08:45', '2018-01-19 04:42:15'),
(15, 'Ex dicta unde nisi maiores voluptas perspiciatis.', 'fugit', 1021520, '1987-01-17 05:35:59', '1983-04-22 04:12:50'),
(16, 'Quo eum libero iusto impedit occaecati distinctio facilis.', 'exercitationem', 100000, '1992-05-18 17:30:28', '1979-03-05 02:40:13'),
(17, 'Ad aut eius ut molestiae quia.', 'ipsa', 80645200, '2006-09-25 04:37:14', '1990-07-31 19:31:38'),
(18, 'Enim omnis quis ut perspiciatis praesentium.', 'perspiciatis', 54491600, '2023-03-08 21:06:39', '2005-12-17 16:21:35'),
(19, 'Sunt vel dolorem aut.', 'aliquam', 100000, '1983-05-09 18:15:13', '1997-08-14 13:37:34'),
(20, 'Blanditiis in est numquam earum repellendus.', 'dolores', 121887, '2018-09-30 04:38:45', '2001-02-25 10:37:01'),
(21, 'Quae saepe consequuntur ut.', 'molestiae', 100000, '2013-10-11 20:52:56', '2005-06-25 08:27:00'),
(22, 'Natus aspernatur accusantium reprehenderit autem aut.', 'impedit', 100000, '2008-03-04 03:03:42', '2014-11-15 01:11:03'),
(23, 'Quidem sit odit libero explicabo est quas velit.', 'sed', 41671300, '2007-02-03 07:20:09', '1998-07-05 17:34:27'),
(24, 'Dolorem maiores cum inventore maiores.', 'et', 1546580, '1985-04-02 21:52:25', '2000-11-08 22:19:17'),
(25, 'Atque optio sint sit soluta minus hic iusto at.', 'laboriosam', 100000, '2023-04-09 17:31:12', '2009-11-10 11:14:47'),
(26, 'Ut culpa cumque aspernatur magnam earum minima qui.', 'consequatur', 100000, '1985-05-30 14:23:40', '2009-01-25 04:48:06'),
(27, 'Est est alias tenetur earum sed amet.', 'ullam', 38308800, '2021-09-19 19:58:22', '1983-10-09 08:41:41'),
(28, 'Dolorem culpa rerum laudantium ea sit occaecati.', 'officiis', 100000, '1971-03-28 01:32:42', '2014-02-13 04:48:46'),
(29, 'Recusandae molestiae aliquam iusto amet ea rerum veritatis.', 'ea', 100000, '1970-09-26 04:50:39', '1994-12-02 23:02:28'),
(30, 'Illum quidem autem itaque voluptatem explicabo.', 'pariatur', 100000, '2002-02-12 05:31:51', '1976-04-20 12:35:47'),
(31, 'Aut sed error odit aliquam id deserunt.', 'nam', 5184860, '2015-11-25 12:52:10', '1988-12-12 19:07:13'),
(32, 'Ex qui et blanditiis.', 'laudantium', 100000, '1989-07-01 05:02:38', '1992-06-28 16:01:06'),
(33, 'Consequatur ipsum blanditiis laudantium sint.', 'quaerat', 199786, '2005-12-05 01:47:37', '2020-02-19 00:29:25'),
(34, 'Qui eveniet exercitationem dolore iure omnis quas.', 'excepturi', 100000, '2006-03-30 21:53:20', '1987-03-26 17:54:47'),
(35, 'Recusandae et sunt est voluptatem.', 'perspiciatis', 105953, '1988-08-07 21:00:09', '1974-09-10 05:58:53'),
(36, 'Expedita sunt tempore earum qui dolore.', 'odio', 2752540, '1996-06-27 09:29:01', '1998-10-02 17:53:02'),
(37, 'Alias qui sit et.', 'dolores', 100000, '2020-01-30 21:11:17', '1994-03-24 01:30:29'),
(38, 'Sapiente id aut cum quaerat est ut.', 'dolorem', 803400, '2010-01-11 00:28:57', '1992-07-06 23:48:03'),
(39, 'A tempore eum autem omnis deserunt deleniti sunt.', 'et', 100000, '1991-12-29 01:57:20', '1986-10-25 13:27:06'),
(40, 'Corrupti cum sunt distinctio aut.', 'labore', 127508, '2017-02-13 10:18:09', '1991-03-11 02:18:33'),
(41, 'Ea necessitatibus aliquam iste deserunt impedit.', 'doloribus', 100000, '1973-10-12 13:55:21', '1971-07-12 15:24:12'),
(42, 'Eius id voluptatum error ea et et dolore accusantium.', 'aperiam', 100000, '2002-03-02 08:21:48', '2018-03-01 10:28:30'),
(43, 'Velit nihil quia vitae quod totam id corporis explicabo.', 'sed', 100000, '1979-03-12 23:36:25', '1976-05-27 23:42:03'),
(44, 'Dolor eos nihil ut inventore repellat.', 'hic', 100000, '1970-05-24 05:59:10', '1984-10-20 09:11:40'),
(45, 'Corrupti in facilis beatae.', 'nemo', 124324, '2000-04-17 00:01:05', '2017-05-25 09:54:24'),
(46, 'Maxime fuga non veritatis magni est.', 'quis', 100000, '2009-01-10 03:27:40', '2016-12-06 01:15:11'),
(47, 'Quas autem ut consequatur ratione veniam aspernatur.', 'voluptas', 100000, '2017-07-17 16:07:13', '2015-06-14 09:24:25'),
(48, 'Sit ut beatae a natus odit magnam dicta aut.', 'est', 100000, '2023-07-23 17:36:42', '1978-09-22 03:13:10'),
(49, 'Rerum quidem quis minus amet.', 'sunt', 1509940, '1976-10-23 10:13:03', '1980-05-21 04:10:50'),
(50, 'Quos exercitationem velit exercitationem.', 'non', 100000, '2002-05-26 01:10:24', '2007-09-25 13:31:20'),
(51, 'Excepturi qui sint recusandae quam.', 'voluptatem', 100000, '1998-10-24 18:04:11', '1985-12-30 02:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `protection_shop_tokens`
--

CREATE TABLE `protection_shop_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `success_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protection_shop_tokens`
--

INSERT INTO `protection_shop_tokens` (`id`, `user_id`, `number`, `expires`, `success_url`, `cancel_url`, `success_url_title`, `cancel_url_title`, `shop_url`) VALUES
(1, 3, '64e5717f-fe0a-4a08-80e1-0291464fc090', '2023-09-25 05:45:46', 'http://localhost:8080/membership/clear-cache?dest=http%3A%2F%2Flocalhost%3A8080%2Fmembership', 'http://localhost:8080/membership', 'Return to Laravel Boilerplate', 'Cancel and return to Laravel Boilerplate', 'https://go.netlicensing.io/shop/v2/?shoptoken=64e5717f-fe0a-4a08-80e1-0291464fc090');

-- --------------------------------------------------------

--
-- Table structure for table `protection_validations`
--

CREATE TABLE `protection_validations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ttl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `validation_result` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protection_validations`
--

INSERT INTO `protection_validations` (`id`, `user_id`, `ttl`, `validation_result`) VALUES
(3, 5, '2023-09-25 07:10:52', '{\"LB-SUBSCRIPTION-PLAN\":{\"productModuleNumber\":\"LB-SUBSCRIPTION-PLAN\",\"valid\":true,\"expires\":\"2023-09-26T14:00:52.280Z\",\"productModuleName\":\"Membership Plan - Subscription\",\"warningLevel\":\"GREEN\",\"licensingModel\":\"Subscription\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_lines`
--

CREATE TABLE `purchase_order_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `discont` float NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_lines`
--

INSERT INTO `purchase_order_lines` (`id`, `product_id`, `qty`, `price`, `discont`, `total`, `created_at`, `updated_at`) VALUES
(2, 1, 10, 1000000, 10, 9900000, '2023-09-19 07:01:39', '2023-09-19 07:01:39'),
(3, 4, 10, 1000000, 10, 9900000, '2023-09-19 07:03:19', '2023-09-19 07:03:19'),
(4, 1, 20, 1000000, 50, 19500000, '2023-09-20 04:46:56', '2023-09-20 04:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `weight`) VALUES
(1, 'administrator', 0),
(2, 'authenticated', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_accounts`
--

INSERT INTO `social_accounts` (`id`, `user_id`, `provider`, `provider_id`, `token`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 3, 'google', '118026418884319343680', 'ya29.a0AfB_byBIhx5HZD9ayAdmJoE7GsjXy2hSX8-9SS6X9Ae6cxtQBe2rkGmNyhxcyeKvGzZ38IJNTDcDq_e7afuLq2w_uyZnAHsKShlujn03mwsSCZr7bRNU6KnITHVs76cinok9MLajoy88AgkwMNK06xkFEpJTcITg32WPaCgYKAeYSARASFQGOcNnCQwKVw0qQinna15I7kKNEFw0171', 'https://lh3.googleusercontent.com/a/ACg8ocIOSl8wz73jy8DHIlYtP2x9GZj1EqcINtsbTjHg2FkeAMw=s96-c', '2023-09-25 03:53:31', '2023-09-27 05:01:12'),
(3, 5, 'google', '101351353343155975544', 'ya29.a0AfB_byCWPSTFOB_-ccQ4N6t3u3yA7KBxP9Ldj5NXT4HkpI_1RdYuCCqSuU1JzXSe3hjeJi9a3HoMgGcNq1p7RcIBV0my6HeUQqg7C04Low4LLtSlsaNHcJJCJPqskFoiKGI9nMmdhI78dHJQGLn-50pXnx6o0i_bJlM_aCgYKAeQSARASFQGOcNnCsjsarKx1rOl38l0r9EzH6w0171', 'https://lh3.googleusercontent.com/a/ACg8ocI9PirxF65O9YZe1vLZF1kh4nkfNn-Q9Q3PecwGtRcCkHw=s96-c', '2023-09-25 05:23:20', '2023-09-25 05:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `google2fa_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `confirmation_code`, `confirmed`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login`, `google2fa_secret`) VALUES
(1, 'Admin', 'admin.laravel@labs64.com', '$2y$10$BtALd5cbYSmxZyyuMwwEVuTIP8dcinGlY8/6xDfpKFf/O.4RZzMzC', 1, '14804cfc-f5c7-42cb-bdc1-166ae0a08c70', 1, NULL, NULL, '2023-09-18 00:07:49', '2023-09-26 01:15:06', NULL, '2023-09-26 08:15:06', NULL),
(2, 'Demo', 'demo.laravel@labs64.com', '$2y$10$3BYDhlppK9aic4zIi2r5UOR2caL2iF/om/zCgdlTmKcQR1rTlblZe', 1, 'b0aba7ef-9bd0-464d-b303-c08796f4f26f', 1, NULL, NULL, '2023-09-18 00:07:49', '2023-09-18 00:07:49', NULL, NULL, NULL),
(3, 'Rizky Al Arief', 'rizkyalarief11@gmail.com', '$2y$10$8uLZx/Ku2bgWV8hkcNr7VueozHfiAUJfxPZ0uNO8.blAUnRfEaFHu', 1, '5d1bbc7d-1530-4d10-806b-e2edf2fd5b2e', 1, NULL, NULL, '2023-09-25 03:48:11', '2023-09-25 03:48:11', NULL, NULL, NULL),
(5, 'Rizky AL arief', 'rizkyalarief12@gmail.com', '$2y$10$ynWgxUaFB0QD2ifO.5Jxruw5w7XhkbhhJujtimh5W.yF.j6r1MfCe', 1, 'e2bd4335-a144-4d58-af42-6ba3b3a1a728', 1, NULL, NULL, '2023-09-25 05:23:20', '2023-09-25 05:23:20', NULL, NULL, NULL),
(9, 'rizkyalarief111@gmail.com', 'rizkyalarief111@gmail.com', '$2y$10$QO5BYR/NUokGqaSe6SDEk.OXuQw265r2pl4dHhaNZdkVroRE94s.m', 1, '2248fdad-af71-46dc-afc0-ee18ea2269e3', 0, NULL, NULL, '2023-09-25 06:41:31', '2023-09-25 06:59:45', '2023-09-25 06:59:45', NULL, NULL),
(12, 'rizkyalarief112@gmail.com', 'rizkyalarief112@gmail.com', '$2y$10$unIAJEQ5HHa6HsOek.CZeOrGZ.xWdDJm6xvckLGcYoKU2x7rIicnq', 1, 'af23f200-2473-42a2-87af-03573bad447b', 0, NULL, NULL, '2023-09-25 07:34:21', '2023-09-25 22:51:00', NULL, '2023-09-26 05:51:00', NULL),
(44, 'rizkyalarief17@gmail.com', 'rizkyalarief17@gmail.com', '$2y$10$TjeXyPiFdbKZ7LmAMMSxPub9MXxIlMgGrdg7SlBFMmHbgawjxu.Aa', 1, 'aba2864d-b8d8-4c5f-a8dc-1b7b9c5ce5bc', 0, NULL, NULL, '2023-09-27 02:37:02', '2023-09-27 02:37:02', NULL, NULL, 'eyJpdiI6ImpMWCtTdlZLTmUrSnU4OSt5bVpSN0E9PSIsInZhbHVlIjoiZmY2QS9BRzhxT3kyczFtNCtwMUZuQVZpNGFPbTFPZTFjU1RieDhnc2hycz0iLCJtYWMiOiJmMTVmYTA2ODk3OWVhMDEzNDU3MWNhOTBlY2RiNmVlNTlhNDlkYTIyYzhiMmU0ZmUxYTAyYjY0MDgxYjM5NjkyIiwidGFnIjoiIn0='),
(49, 'rizkyalarief13@gmail.com', 'rizkyalarief13@gmail.com', '$2y$10$xM7Kzu//rEAAxD.LSHvjKOQzqHhrS3j7rS03UPlrG0KQkI.rIuLoW', 1, '4c19bdfb-2450-42e9-8e11-ae79254edbcf', 0, NULL, NULL, '2023-09-27 05:00:31', '2023-09-27 05:00:51', NULL, '2023-09-27 12:00:51', 'eyJpdiI6ImRtenBmS3Vqdkswb2w5YXpmTlV0bFE9PSIsInZhbHVlIjoiWGE0N3FLakhLU3NiRGZvSmV1a25MUTJqaTFUaytBdGErbzh2VkhLUSttYz0iLCJtYWMiOiI2OTgwYzdhNjZlZjc2MWIxM2E0MmMyMDc3MGI0MjQyOGY3NzcwYjg2NTMwZjExOWE4YTJmYjc1N2UyODY5ZTU4IiwidGFnIjoiIn0='),
(50, 'rizkyalarief15@gmail.com', 'rizkyalarief15@gmail.com', '$2y$10$zEQIr9u/F2esrnbF/3Nbxu2OFfxRX2NQg45ZHwObkGiX2X9Wuw9SO', 1, '437673e0-7962-429d-a175-6924135e44b8', 0, NULL, NULL, '2023-09-27 05:23:13', '2023-09-27 05:23:13', NULL, NULL, 'eyJpdiI6IityR2UxV0JxMUhBUmRNUGMvcGNqN1E9PSIsInZhbHVlIjoiSmJCRHVlMld0aGlaa2xjVi9QeVdSYkw4NjVWUGdMMTljZFREMjRpOWNkYz0iLCJtYWMiOiI0ZWRjZTMyMTJlMTZmNDY1ZWE5ZGMzYWQxNGRiYTRmN2I0MTZhNGY1YzE0YTE2M2ZhYWZjZmFmOTdkYmU5YzVmIiwidGFnIjoiIn0=');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 2),
(5, 2),
(9, 2),
(12, 2),
(44, 2),
(49, 2),
(50, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pst_unique_user` (`user_id`),
  ADD KEY `protection_shop_tokens_number_index` (`number`),
  ADD KEY `protection_shop_tokens_expires_index` (`expires`);

--
-- Indexes for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`),
  ADD KEY `protection_validations_ttl_index` (`ttl`);

--
-- Indexes for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `foreign_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `protection_validations`
--
ALTER TABLE `protection_validations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD CONSTRAINT `purchase_order_lines_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
