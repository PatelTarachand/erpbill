-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 01, 2021 at 08:37 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mohan_ent`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, '2020-21', 0, '2021-08-17 06:57:39', '2021-08-17 06:57:39'),
(3, 'tarachand patel', 1, '2021-08-17 07:35:46', '2021-08-17 08:55:58'),
(4, 'tc', 1, '2021-08-17 09:08:48', '2021-08-17 09:08:48'),
(5, 'tarachand df', 1, '2021-08-17 09:09:27', '2021-08-17 09:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ownerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `panNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openingBal` double(16,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `ownerName`, `mobile`, `mobile2`, `email`, `email2`, `panNo`, `gst`, `openingBal`, `date`, `address`, `created_at`, `updated_at`) VALUES
(3, 'df', 'dfd', '9584587577', '7415161499', 'ptl@gmail.com', 'tarac@gmail.com', 'fdsds', 'dsfdsfd', 323.00, '2021-08-18', NULL, '2021-08-19 00:50:49', '2021-08-19 00:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `head_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL,
  `date` date NOT NULL,
  `payType` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insertType` int(11) NOT NULL COMMENT '1:expenses,2:income',
  `session_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `head_id`, `amount`, `date`, `payType`, `note`, `insertType`, `session_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 23432212.00, '2021-09-15', 2, 'ok', 2, 1, 1, '2021-08-31 14:02:41', '2021-08-31 14:02:41');

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
-- Table structure for table `heads`
--

CREATE TABLE `heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL COMMENT '1:active,0:inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heads`
--

INSERT INTO `heads` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tarachand Patel', 1, '2021-08-31 13:38:33', '2021-08-31 13:38:33');

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
(4, '2021_08_17_054050_create_categories_table', 2),
(6, '2021_08_17_131943_create_units_table', 2),
(7, '2021_08_17_134420_create_sub_categories_table', 2),
(8, '2021_08_17_144619_create_products_table', 2),
(9, '2021_08_17_154101_create_heads_table', 2),
(11, '2021_08_18_060826_create_parties_table', 3),
(12, '2021_08_17_105323_create_companies_table', 4),
(22, '2021_08_18_131304_create_purchase_details_table', 9),
(23, '2021_08_18_131253_create_purchases_table', 10),
(24, '2021_08_28_222521_create_sales_table', 11),
(26, '2021_08_28_222535_create_sale_details_table', 12),
(30, '2021_08_17_115222_create_sessions_table', 14),
(32, '2021_08_30_043856_create_payments_table', 15),
(34, '2021_08_31_184647_create_expenses_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` double(10,2) NOT NULL,
  `opening_balance_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier` int(11) NOT NULL DEFAULT 0 COMMENT '1=supplier',
  `customer` int(11) NOT NULL DEFAULT 0 COMMENT '1=customer',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1=active,0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `name`, `mobile`, `address`, `opening_balance`, `opening_balance_type`, `supplier`, `customer`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Tara', '9878457577', 'raipur', 20000.00, 'Dr', 1, 0, 0, '2021-08-18 02:16:02', '2021-08-18 02:16:02'),
(3, 'tirit', '9303232961', 'raipur', 10000.00, 'Dr', 1, 1, 1, '2021-08-25 02:08:51', '2021-08-25 02:08:51'),
(4, 'Kavi', '8765432111', 'Saraipali', 50000.00, 'Dr', 1, 1, 1, '2021-08-25 02:09:16', '2021-08-25 02:09:16');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `payAmount` double(16,2) NOT NULL,
  `payDate` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiptNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiptSn` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1:customer,2:supplier',
  `session_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `party_id`, `payAmount`, `payDate`, `note`, `receiptNo`, `receiptSn`, `type`, `session_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, 12000.00, '2021-09-23', 'dfd', 'c/0001', 1, '1', 1, 1, '2021-08-31 13:05:02', '2021-08-31 13:24:14'),
(3, 3, 10020.00, '2021-09-21', 'ok', 's/0001', 1, '2', 1, 1, '2021-08-31 13:11:12', '2021-08-31 13:11:12'),
(4, 4, 1000.00, '2021-09-16', 'ok', 'c/0002', 2, '1', 1, 1, '2021-08-31 13:22:56', '2021-08-31 13:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(16,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL COMMENT '1:active,0:inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `sub_category_id`, `unit_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'one plus nord', 30000.00, 1, 1, 3, 1, '2021-08-18 00:31:52', '2021-08-18 00:31:52'),
(2, 'asus vivobook s150u', 64000.00, 3, 2, 3, 1, '2021-08-19 04:24:41', '2021-08-19 04:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `session_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `date`, `party_id`, `user_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, '2022-10-10', 4, 0, 0, NULL, NULL),
(2, '2021-08-25', 3, 0, 0, NULL, NULL),
(3, '2021-08-26', 4, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL DEFAULT 0,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `rate` double(16,2) NOT NULL,
  `total` double(16,2) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `session_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchase_id`, `product_id`, `unit_id`, `qty`, `rate`, `total`, `user_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 2, 30000.00, 60000.00, 0, 0, '2021-08-25 02:06:34', '2021-08-28 13:40:23'),
(2, 1, 2, 3, 1, 64000.00, 64000.00, 0, 0, '2021-08-25 02:07:00', '2021-08-25 02:07:00'),
(3, 2, 1, 3, 10, 30000.00, 300000.00, 0, 0, '2021-08-25 02:09:44', '2021-08-25 02:09:44'),
(4, 3, 1, 3, 1, 30000.00, 30000.00, 0, 0, '2021-08-25 23:39:07', '2021-08-25 23:39:07'),
(7, 0, 1, 1, 2, 30000.00, 60000.00, 0, 0, '2021-08-29 07:30:20', '2021-08-29 07:30:20'),
(8, 0, 1, 1, 2, 30000.00, 60000.00, 0, 0, '2021-08-29 07:30:22', '2021-08-29 07:30:22'),
(9, 0, 2, 1, 2, 64000.00, 128000.00, 0, 0, '2021-08-29 07:31:30', '2021-08-29 07:31:30'),
(10, 0, 2, 1, 2, 64000.00, 128000.00, 0, 0, '2021-08-29 07:31:31', '2021-08-29 07:31:31'),
(11, 0, 1, 2, 12, 30000.00, 360000.00, 0, 0, '2021-08-29 07:34:03', '2021-08-29 07:34:03'),
(12, 0, 1, 2, 12, 30000.00, 360000.00, 0, 0, '2021-08-29 07:34:05', '2021-08-29 07:34:05'),
(13, 0, 1, 2, 5, 30000.00, 150000.00, 0, 0, '2021-08-29 07:36:23', '2021-08-29 07:36:23'),
(14, 0, 1, 2, 5, 30000.00, 150000.00, 0, 0, '2021-08-29 07:36:26', '2021-08-29 07:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `session_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `party_id`, `user_id`, `session_id`, `created_at`, `updated_at`) VALUES
(2, '2000-10-10', 2, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL DEFAULT 0,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `rate` double(16,2) NOT NULL,
  `total` double(16,2) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `session_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `product_id`, `unit_id`, `qty`, `rate`, `total`, `user_id`, `session_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 3, 2, 30000.00, 60000.00, 0, 0, '2021-08-28 17:41:42', '2021-08-28 22:08:05'),
(3, 2, 1, 3, 3, 30000.00, 90000.00, 0, 0, '2021-08-28 17:43:20', '2021-08-28 18:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saleInvoicePrefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchaseInvoicePrefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SPPrefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'supplierPaymentPrefix',
  `CPPrefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'CustomerPaymentPrefix',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `startDate`, `endDate`, `name`, `saleInvoicePrefix`, `purchaseInvoicePrefix`, `SPPrefix`, `CPPrefix`, `created_at`, `updated_at`) VALUES
(1, '2021-08-24', '2021-08-26', 'tarachand patel', 'XYZ/2021/', 'Purchase', 's', 'c', '2021-08-31 10:07:05', '2021-08-31 10:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL COMMENT '1:active,0:inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'one plus', 1, 1, '2021-08-18 00:25:50', '2021-08-18 00:31:01'),
(2, 'Asus', 2, 1, '2021-08-18 00:26:45', '2021-08-18 00:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL COMMENT '1:active,0:inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kg', 1, '2021-08-18 00:27:16', '2021-08-18 00:27:26'),
(2, 'ltr', 1, '2021-08-18 00:27:38', '2021-08-18 00:27:38'),
(3, 'pcs', 1, '2021-08-18 00:27:49', '2021-08-18 00:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$CzrkHnvgYQKmqUaWzga60ust0EJm7vGqFyUnwC5Ca1yZJKSzmz3Fe', NULL, '2021-08-15 08:15:58', '2021-08-15 08:15:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_head_id_foreign` (`head_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `heads`
--
ALTER TABLE `heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_party_id_foreign` (`party_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_party_id_foreign` (`party_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_product_id_foreign` (`product_id`),
  ADD KEY `purchase_details_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_party_id_foreign` (`party_id`);

--
-- Indexes for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_details_product_id_foreign` (`product_id`),
  ADD KEY `sale_details_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heads`
--
ALTER TABLE `heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_head_id_foreign` FOREIGN KEY (`head_id`) REFERENCES `heads` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`);

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_details_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`);

--
-- Constraints for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD CONSTRAINT `sale_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_details_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
