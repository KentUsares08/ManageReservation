-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 03:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj1`
--
CREATE DATABASE IF NOT EXISTS `proj1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proj1`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Specials', 'Specials', 'public/categories/Nhv7Uk7QMbXZloQMEUCYuucgb8LJQzlzwcfMCEuU.jpg', '2022-06-03 13:10:41', '2022-06-05 18:43:36'),
(4, 'Vegetables', '2', 'public/categories/13pfD4yss6rpDktO0nrBNY6yEG6WSvgHQYYwyC7N.jpg', '2022-06-05 18:56:49', '2022-06-05 18:56:49'),
(5, 'Different Pasta', 'Different Pasta', 'public/categories/R3XD4iOjfPq7w1m9E8qiycQI0FlWd91lM7VGmlQi.png', '2022-06-06 22:17:28', '2022-06-06 22:17:28'),
(6, 'Pasta Curl', 'Pasta Curl', 'public/categories/DueMoiYagiaRZ4iIu0llmhLD5Q5l7Synyt8KSTyf.png', '2022-06-06 23:10:44', '2022-06-06 23:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `category_menu`
--

CREATE TABLE `category_menu` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_menu`
--

INSERT INTO `category_menu` (`category_id`, `menu_id`) VALUES
(2, 2),
(2, 3),
(2, 5),
(2, 6),
(4, 9),
(4, 10);

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(2, 'Spaghetti Carbonara', 'Carbonara is an Italian pasta dish from Rome made with eggs, hard cheese, cured pork, and black pepper. The dish arrived at its modern form, with its current name, in the middle of the 20th century.', 'public/menus/1QArq4Ce0XAmTmJqdcpSG8KNNE9fl77uakVYF3Hk.jpg', '30.00', '2022-06-03 13:09:20', '2022-06-06 22:18:01'),
(3, 'Spaghetti Meatballs', 'Spaghetti and meatballs is an Italian and Italian-American dish consisting of spaghetti, tomato sauce and meatballs.', 'public/menus/vhCbccZxuoNkdmetkPaqS7ViLk4dTjFTyZOxeAdn.jpg', '50.00', '2022-06-03 13:11:05', '2022-06-05 18:23:44'),
(5, 'Fried Chicken', 'Fried chicken, also known as Southern fried chicken, is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried.', 'public/menus/ca4kHN1UYKRsDGiAqX96GpCukdG2kiixBO6GK4p6.jpg', '25.00', '2022-06-05 18:44:14', '2022-06-05 18:44:14'),
(6, 'Fried Onion Rings', 'An onion ring, also called a French fried onion ring, is a form of appetizer or side dish in British and American cuisine.', 'public/menus/QK2VxyQwuuOcnbFgEI8q41nUUoBWENppzhmKC1ZK.jpg', '5.00', '2022-06-05 18:45:36', '2022-06-05 18:45:59'),
(8, 'French Fries', 'French fries, chips, finger chips, french-fried potatoes, or simply fries, are batonnet or allumette-cut deep-fried potatoes, possibly originating from France.', 'public/menus/qH3VW5JZrxYeVs35Y7VTYi2IsoCHFENGpyyTJ4Gp.png', '5.00', '2022-06-05 18:55:21', '2022-06-05 18:55:21'),
(9, 'Cob Salad', 'The Cobb salad is a main-dish American garden salad typically made with chopped salad greens, tomato, crisp bacon, fried chicken breast, hard-boiled eggs, avocado, chives, blue cheese, and red-wine vinaigrette. The ingredients are laid out on a plate in neat rows', 'public/menus/xEU1gOEDqHZlVDd5XndEIWMYO1I9Fl3id4phU6QI.jpg', '10.00', '2022-06-05 18:58:36', '2022-06-05 18:58:36'),
(10, 'Cheesy Pinto Beans', 'Pinto beans have been a staple ingredient in many parts of the world, including Mexico and the Southwest U.S., for generations, so if you live in those areas you’re probably very familiar with this delicious bean.', 'public/menus/1I5apHVVZuhaX9lvzxECgzV64dCbunwkyHMSX3mg.jpg', '5.00', '2022-06-05 19:02:46', '2022-06-05 19:02:46');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_11_150706_create_categories_table', 1),
(6, '2022_03_11_150725_create_menus_table', 1),
(7, '2022_03_11_150736_create_tables_table', 1),
(8, '2022_03_11_150750_create_reservations_table', 1),
(9, '2022_03_16_135424_create_category_menu_table', 1),
(10, '2022_06_06_000318_add_two_factor_fields_to_users_table', 2),
(11, '2022_06_06_054114_create_user_codes', 2);

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
('admin@gmail.com', '$2y$10$iU95R6y8BTcZvlxcLZNEXO0JzSiwFZY1phc6LvdeRuCyDsIlAUg5.', '2022-06-03 19:26:50'),
('morales.neil.irvine.20@gmail.com', '$2y$10$6JExol.u4KPgJGvwRDzwkOnAdoeh7cr8RBVsrQH62a/AdlP1WcUEG', '2022-06-03 20:13:36');

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
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `res_date` datetime NOT NULL,
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `guest_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `first_name`, `last_name`, `email`, `tel_number`, `res_date`, `table_id`, `guest_number`, `created_at`, `updated_at`) VALUES
(9, 'Ciandra', 'Pancho', 'mcvpancho@tip.edu.ph', '+639360555150', '2022-06-07 22:20:00', 8, 10, '2022-06-06 23:15:15', '2022-06-06 23:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guest_number` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avaliable',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `guest_number`, `status`, `location`, `created_at`, `updated_at`) VALUES
(6, 'Table 1', 5, 'avaliable', 'front', '2022-06-05 21:24:44', '2022-06-05 21:24:44'),
(8, 'Table 3', 15, 'avaliable', 'outside', '2022-06-05 23:19:56', '2022-06-05 23:19:56'),
(9, 'Table 2', 10, 'pending', 'front', '2022-06-06 05:08:35', '2022-06-06 05:08:35'),
(10, 'Table 4', 20, 'avaliable', 'front', '2022-06-06 22:19:14', '2022-06-06 22:19:14');

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
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `two_factor_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`, `two_factor_code`, `two_factor_expires_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-06-03 13:03:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'jEFrjFor66jeV3zvybZO9RuNOs2VwDBsdY2R4oZy6hL9LkKAxtsKbVUJs9IX', '2022-06-03 13:03:26', '2022-06-03 13:03:26', NULL, NULL),
(2, 'Xena Rutledge', 'nendohub@gmail.com', NULL, '$2y$10$oQoa19pyvjpDvzTsK3RWKuTS1AycUgLWvEnIg1YCCiZgGdzvH0uLe', 1, 'pBzZHMjX5NBGcI5VcqGqZjBvktsDGNlL8PGGosfxVNLFmR7rYlwn1cy3vlXk', '2022-06-03 18:38:24', '2022-06-05 15:36:25', NULL, NULL),
(3, 'neil', 'morales.neil.irvine.20@gmail.com', NULL, '$2y$10$p5UWjKV2XSISrm7MKfUwUOpjbxU8emy1UgdMMJGJ1qopn2y1ERToS', 1, NULL, '2022-06-03 20:06:16', '2022-06-03 20:06:16', NULL, NULL),
(4, 'neil', 'emperorxena@gmail.com', NULL, '$2y$10$U41b4z.T6xb8cwyI595eF.9GU89J/yDJndvU0jcD2hHtlU1I/bDRe', 0, NULL, '2022-06-05 18:38:56', '2022-06-05 18:38:56', NULL, NULL),
(5, 'Ciandra Pancho', 'ciandrapancho@gmail.com', NULL, '$2y$10$AuNBc1Rz.osL.XS0Zg1uPO650J/hV/z7cUj9uyGLw1Y/2sspFBKxi', 0, '2drWKjpWLCjiyHXeHjxrO493Hmiz4gbpEUplSt53fT6YSGaemwlz0a67cpZ3', '2022-06-05 20:49:03', '2022-06-05 21:13:15', NULL, NULL),
(6, 'Neil Irvine B. Morales', 'neilirvinemorales@gmail.com', NULL, '$2y$10$NEhJixUECA6VAPU9ogW/0eMaoHPAbUSqITFul02e.fHQD5V1/rOa6', 0, 'EcCQLk71byg6DPn3t6jjH6Xzo7XraLS3SMZ8c7AGXtTYdxUh8rel67ErPfjf', '2022-06-06 20:29:23', '2022-06-06 20:37:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_codes`
--

CREATE TABLE `user_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_codes`
--

INSERT INTO `user_codes` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 2, '7378', '2022-06-05 21:49:39', '2022-06-05 23:17:40'),
(2, 5, '6483', '2022-06-05 22:59:56', '2022-06-05 22:59:56'),
(3, 1, '9306', '2022-06-05 23:46:36', '2022-06-05 23:46:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_menu`
--
ALTER TABLE `category_menu`
  ADD KEY `category_menu_category_id_foreign` (`category_id`),
  ADD KEY `category_menu_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_codes`
--
ALTER TABLE `user_codes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_codes`
--
ALTER TABLE `user_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_menu`
--
ALTER TABLE `category_menu`
  ADD CONSTRAINT `category_menu_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_menu_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
