-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2026 at 01:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelwebshop`
--
-- CREATE DATABASE IF NOT EXISTS `laravelwebshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `if0_42357681_katpro`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `opis` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `naziv`, `opis`, `created_at`, `updated_at`) VALUES
(1, 'Mobiteli', 'Pametni telefoni i mobilni uređaji.', '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(2, 'Laptopi', 'Prijenosna računala za rad, školu i gaming.', '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(3, 'Monitori', 'Računalni monitori različitih veličina.', '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(4, 'Tipkovnice', 'Žičane, bežične i gaming tipkovnice.', '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(5, 'Miševi', 'Računalni miševi za ured i gaming.', '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(6, 'Slušalice', 'Slušalice s mikrofonom i bez mikrofona.', '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(7, 'Printeri', 'Laserski i tintni pisači.', '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(8, 'Tableti', 'Tableti za zabavu, školu i posao.', '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(9, 'Komponente', 'Procesori, memorije, diskovi i grafičke kartice.', '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(10, 'Dodaci', 'Kablovi, punjači, torbe i ostala oprema.', '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(11, 'womens-watches', 'Kategorija dohvaćena sa Dummy servisa', '2026-07-02 11:46:05', '2026-07-02 11:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `regija` varchar(255) NOT NULL,
  `br_stanovnika` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `naziv`, `regija`, `br_stanovnika`, `created_at`, `updated_at`) VALUES
(1, 'Hrvatska', 'Europa', 4000000, '2026-07-05 18:37:39', '2026-07-05 18:37:39'),
(2, 'SAD', 'Sjeverna Amerika', 300000000, '2026-07-05 18:37:39', '2026-07-05 18:37:39'),
(3, 'Japan', 'Azija', 125000000, '2026-07-05 18:37:39', '2026-07-05 18:37:39');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_06_25_165616_add_fields_to_users_table', 1),
(5, '2026_06_29_163826_create_categories_table', 1),
(6, '2026_06_29_180356_create_products_table', 1),
(7, '2026_06_30_192226_add_izvor_to_products_table', 1),
(8, '2026_07_05_201808_create_countries_table', 2),
(9, '2026_07_05_201915_add_country_id_to_products_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `opis` text DEFAULT NULL,
  `cijena` decimal(10,2) NOT NULL,
  `kolicina` int(11) NOT NULL DEFAULT 0,
  `izvor` varchar(255) NOT NULL DEFAULT 'custom',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `naziv`, `opis`, `cijena`, `kolicina`, `izvor`, `created_at`, `updated_at`, `country_id`) VALUES
(1, 1, 'Samsung Galaxy A55', 'Pametni telefon srednje klase', 429.99, 15, 'custom', '2026-07-02 11:41:18', '2026-07-02 11:41:18', 2),
(2, 1, 'iPhone 15', 'Apple pametni telefon.', 899.99, 8, 'custom', '2026-07-02 11:41:18', '2026-07-02 11:41:18', 2),
(3, 2, 'Lenovo ThinkPad E14', 'Poslovni laptop.', 749.99, 12, 'custom', '2026-07-02 11:41:18', '2026-07-02 11:41:18', 1),
(4, 2, 'HP ProBook 450', 'Laptop za uredski rad.', 699.99, 10, 'custom', '2026-07-02 11:41:18', '2026-07-02 11:41:18', 1),
(5, 3, 'Dell 27 Monitor', 'Monitor dijagonale 27 inča.', 219.99, 20, 'custom', '2026-07-02 11:41:18', '2026-07-02 11:41:18', 1),
(6, 3, 'LG UltraWide 34', 'Široki monitor za produktivnost.', 399.99, 6, 'custom', '2026-07-02 11:41:18', '2026-07-02 11:41:18', 1),
(7, 4, 'Logitech MX Keys', 'Bežična tipkovnica.', 119.99, 18, 'custom', '2026-07-02 11:41:18', '2026-07-02 11:41:18', 3),
(8, 4, 'Redragon K552', 'Mehanička gaming tipkovnica.', 59.99, 25, 'custom', '2026-07-02 11:41:18', '2026-07-02 11:41:18', 3),
(9, 5, 'Logitech MX Master 3S', 'Premium bežični miš.', 99.99, 14, 'custom', '2026-07-02 11:41:18', '2026-07-02 11:41:18', 1),
(10, 5, 'Razer DeathAdder', 'Gaming miš.', 69.99, 16, 'custom', '2026-07-02 11:41:18', '2026-07-02 11:41:18', 1),
(11, 11, 'Rolex Cellini Moonphase', 'The Rolex Cellini Moonphase watch is a masterpiece of horology. Featuring a moon phase complication, it showcases the craftsmanship and elegance that Rolex is renowned for.', 15999.99, 52, 'servis', '2026-07-02 11:46:05', '2026-07-02 11:46:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('c2mtADUFOjh0gbYBoTWg1g3j5SwmkqmlfeKXGxG4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzdTc3RraW9MR0Q2bDNxUTJ1bWlPYkI1N1BSWlltM1RKZW53c080NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9fQ==', 1783438369);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `datum_rod` date DEFAULT NULL,
  `placa` decimal(8,2) NOT NULL DEFAULT 0.00,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `isAdmin`, `datum_rod`, `placa`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@tester.com', NULL, '$2y$12$AyhMZTr50bqrtye5MrbCUe8kiob5hvcKZBnb7sgg1Gtb/Jn99/z8a', 1, '1980-01-15', 3500.00, NULL, '2026-07-02 11:41:17', '2026-07-02 11:41:17'),
(2, 'Pero Perić', 'pero@tester.com', NULL, '$2y$12$88.5/9atyCqLV.G1Wj3iC.CrvjIZ.m5X.023sF7SA4p7Op57u6X8e', 0, '1990-03-22', 1900.00, NULL, '2026-07-02 11:41:17', '2026-07-02 11:41:17'),
(3, 'Ivana Ivić', 'ivana@tester.com', NULL, '$2y$12$XhlEzAiZzQ9WHyvTweeDKuzWdsovIPeRiuMAQO5Wmx6bH/PsgNC5S', 0, '1995-10-19', 2100.00, NULL, '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(4, 'Luka Modrić', 'luka@tester.com', NULL, '$2y$12$eGIQG7EQb/DqOgCm/nBhjuYDkBWc8Mr/N/xXYSTLmn5ikyiY3rZ4C', 0, '1994-10-19', 2650.00, NULL, '2026-07-02 11:41:18', '2026-07-02 11:41:18'),
(5, 'Joško Gvariol', 'josko@tester.com', NULL, '$2y$12$4v7mkrTHZBoeDK.JXYcTROpl.G9QEewCAeO0Ll8CcqnK.OJetxg7e', 0, '1997-12-22', 3650.00, NULL, '2026-07-02 11:41:18', '2026-07-02 11:41:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_country_id_foreign` (`country_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
