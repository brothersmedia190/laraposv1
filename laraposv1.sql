-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2022 at 09:24 AM
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
-- Database: `laraposv1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`) VALUES
(1, '2022-09-28 14:53:48', '2022-09-28 14:53:48'),
(2, '2022-10-07 12:20:36', '2022-10-07 12:20:36'),
(3, '2022-10-07 12:21:09', '2022-10-07 12:21:09'),
(4, '2022-10-07 12:21:37', '2022-10-07 12:21:37'),
(5, '2022-10-07 12:21:56', '2022-10-07 12:21:56'),
(6, '2022-10-07 12:22:40', '2022-10-07 12:22:40'),
(7, '2022-10-07 12:22:59', '2022-10-07 12:22:59'),
(8, '2022-10-07 12:23:24', '2022-10-07 12:23:24'),
(9, '2022-10-07 12:23:58', '2022-10-07 12:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `locale`) VALUES
(1, 1, 'اثاث', 'ar'),
(2, 1, 'Furniture', 'en'),
(3, 2, 'طبخ', 'ar'),
(4, 2, 'Cooking', 'en'),
(5, 3, 'كماليات', 'ar'),
(6, 3, 'Accessories', 'en'),
(7, 4, 'موضة', 'ar'),
(8, 4, 'Fashion', 'en'),
(9, 5, 'ساعات', 'ar'),
(10, 5, 'Clocks', 'en'),
(11, 6, 'إضاءة', 'ar'),
(12, 6, 'Lighting', 'en'),
(13, 7, 'ألعاب الأطفال', 'ar'),
(14, 7, 'Toys', 'en'),
(15, 8, 'صنع يدوي', 'ar'),
(16, 8, 'Hand Made', 'en'),
(17, 9, 'إلكترونيات', 'ar'),
(18, 9, 'Electronics', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'abdo', '5614', 'egypt', '2022-09-28 16:46:30', '2022-09-28 16:46:30'),
(2, 'ali', '66', 'egypt', '2022-09-28 16:46:49', '2022-10-08 20:24:42');

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
(4, '2022_09_28_141629_laratrust_setup_tables', 1),
(5, '2022_09_28_152514_create_categories_table', 1),
(6, '2022_09_28_152546_create_category_translations_table', 1),
(7, '2022_09_28_152603_create_clients_table', 1),
(8, '2022_09_28_152615_create_orders_table', 1),
(9, '2022_09_28_152627_create_products_table', 1),
(10, '2022_09_28_152639_create_product_translations_table', 1),
(11, '2023_06_06_105828_create_product_order_table', 1),
(12, '2024_09_28_152639_create_product_translations_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `total_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 8.00, '2022-09-28 18:06:25', '2022-09-28 18:06:26'),
(2, 2, 320.00, '2020-10-08 20:01:21', '2020-10-08 20:01:21'),
(4, 2, 290.00, '2019-10-07 20:37:00', '2019-10-07 20:37:00');

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

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `purchase_price` double(8,2) NOT NULL,
  `sale_price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `image`, `purchase_price`, `sale_price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 1, 'GmCaobDbrBrl8nBiH52y5vx9xUlw1ZnzWGvQzhPI.jpg', 100.00, 140.00, 4, '2022-09-28 16:02:15', '2022-10-08 20:01:21'),
(2, 1, 'MFPC8j1zEKdCAeKpn5G4beiCNlEiNlhWJqiUbCtW.jpg', 10.00, 20.00, 5, '2022-10-08 19:44:49', '2022-10-08 20:01:21'),
(3, 1, 'XMDs91O3EFNKXJAzvyHha7v6u3pUnwrC8HZFH2qK.jpg', 90.00, 160.00, 1, '2022-10-08 19:46:01', '2022-10-08 20:01:21'),
(4, 2, '8WqfNsHiY9hBzWbFYAKCI810zilnIq3JLKldVGGp.jpg', 20.00, 29.00, 2, '2022-10-08 19:46:50', '2022-10-08 19:46:50'),
(5, 2, 'OxVBSZokzdVW4yVifu5t9XUy5TZPXogMApUNCybm.jpg', 100.00, 130.00, 7, '2022-10-08 19:47:28', '2022-10-08 19:47:28'),
(6, 3, 'CnkMdBAPpFKMn95CtOuxDaGYJPFiMSstEpSVcfus.jpg', 20.00, 29.00, 6, '2022-10-08 19:48:24', '2022-10-08 19:48:24'),
(7, 3, 'mwYB56ZZEW7KdP8OAK65aYMAV8lgJFhqSFIVxF4w.jpg', 4.00, 9.00, 2, '2022-10-08 19:48:59', '2022-10-08 19:48:59'),
(8, 4, '5MRvZU6Rqoa33X7m0qFpU23FJvb8E7FoW6RtaQqj.jpg', 59.00, 88.00, 6, '2022-10-08 19:49:53', '2022-10-08 19:49:53'),
(9, 5, 'nj51fCamkgblnbHv1VWtGP9mHTDMQp7LulnO4IZs.jpg', 200.00, 290.00, 4, '2022-10-08 19:50:35', '2022-10-08 20:37:00'),
(10, 7, 'hOTOhszih6dNfXUsbFxhRi1rDWfuzud3jmr1jwYe.jpg', 10.00, 20.00, 5, '2022-10-08 19:51:20', '2022-10-08 19:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `product_id`, `order_id`, `quantity`) VALUES
(1, 1, 1, 2),
(2, 1, 2, 1),
(3, 2, 2, 1),
(4, 3, 2, 1),
(6, 9, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `name`, `description`, `locale`) VALUES
(1, 1, 'Eames lounge chair', '<p>Eames Lounge<br />\r\nChair &amp; Ottoman</p>\r\n\r\n<p>Amet nibh vel tristique dui id ridiculus ligula scelerisque faucibus platea a est imperdiet parturient aliquam taciti parturient odio a mi auctor rhoncus nec sociis natoque dui. Urna lacinia condimentum mi inceptos.</p>', 'ar'),
(2, 1, 'Eames lounge chair', '<p>Eames Lounge<br />\r\nChair &amp; Ottoman</p>\r\n\r\n<p>Amet nibh vel tristique dui id ridiculus ligula scelerisque faucibus platea a est imperdiet parturient aliquam taciti parturient odio a mi auctor rhoncus nec sociis natoque dui. Urna lacinia condimentum mi inceptos.</p>', 'en'),
(3, 2, 'Nerd wooden chair', '<p>Placerat tempor dolor eu leo ullamcorper et magnis habitant ultrices consectetur arcu nulla mattis fermentum adipiscing a et bibendum sed platea malesuada eget vestibulum.</p>', 'ar'),
(4, 2, 'Nerd wooden chair', '<p>Placerat tempor dolor eu leo ullamcorper et magnis habitant ultrices consectetur arcu nulla mattis fermentum adipiscing a et bibendum sed platea malesuada eget vestibulum.</p>', 'en'),
(5, 3, 'Panton tunior chair', '<p>Placerat tempor dolor eu leo ullamcorper et magnis habitant ultrices consectetur arcu nulla mattis fermentum adipiscing a et bibendum sed platea malesuada eget vestibulum.</p>', 'ar'),
(6, 3, 'Panton tunior chair', '<p>Placerat tempor dolor eu leo ullamcorper et magnis habitant ultrices consectetur arcu nulla mattis fermentum adipiscing a et bibendum sed platea malesuada eget vestibulum.</p>', 'en'),
(7, 4, 'Laoreet egestas cras euismod', '<p>Elit id pharetra adipiscing accumsan hendrerit ullamcorper etiam vitae euismod turpis mi a ut tristique eu ullamcorper. Integer et parturient torquent per a condimentum eu a aliquet ullamcorper ultricies euismod ad ad. Cum interdum ac dignissim ornare.</p>', 'ar'),
(8, 4, 'Laoreet egestas cras euismod', '<p>Elit id pharetra adipiscing accumsan hendrerit ullamcorper etiam vitae euismod turpis mi a ut tristique eu ullamcorper. Integer et parturient torquent per a condimentum eu a aliquet ullamcorper ultricies euismod ad ad. Cum interdum ac dignissim ornare.</p>', 'en'),
(9, 5, 'Riructor quis', '<p>Interdum a elit vestibulum in potenti urna cursus eu suspendisse adipiscing adipiscing quam ullamcorper a diam nam euismod adipiscing eleifend adipiscing odio.</p>', 'ar'),
(10, 5, 'Riructor quis', '<p>Interdum a elit vestibulum in potenti urna cursus eu suspendisse adipiscing adipiscing quam ullamcorper a diam nam euismod adipiscing eleifend adipiscing odio.</p>', 'en'),
(11, 6, 'Smart watches wood edition', '<p>Himenaeos parturient nam a justo placerat lorem erat pretium a fusce pharetra pretium enim sagittis ut nunc neque torquent sem a leo. Dictumst himenaeos primis torquent ridiculus.</p>', 'ar'),
(12, 6, 'Smart watches wood edition', '<p>Himenaeos parturient nam a justo placerat lorem erat pretium a fusce pharetra pretium enim sagittis ut nunc neque torquent sem a leo. Dictumst himenaeos primis torquent ridiculus.</p>', 'en'),
(13, 7, 'Amazing pen cup wood', '<p>A vulputate himenaeos ut sodales suspendisse maecenas aptent neque cras metus a parturient.</p>', 'ar'),
(14, 7, 'Amazing pen cup wood', '<p>A vulputate himenaeos ut sodales suspendisse maecenas aptent neque cras metus a parturient.</p>', 'en'),
(15, 8, 'Zissguided Bardot Puff', '<p>Posuere in netus a eu varius adipiscing suspendisse elementum vitae tempor suspendisse ullamcorper aenean taciti morbi potenti cursus id tortor. Cursus nulla consectetur a eros adipiscing himenaeos nam taciti id turpis a scelerisque vel habitasse.</p>', 'ar'),
(16, 8, 'Zissguided Bardot Puff', '<p>Posuere in netus a eu varius adipiscing suspendisse elementum vitae tempor suspendisse ullamcorper aenean taciti morbi potenti cursus id tortor. Cursus nulla consectetur a eros adipiscing himenaeos nam taciti id turpis a scelerisque vel habitasse.</p>', 'en'),
(17, 9, 'Adipiscing suspendisse elementum', '<p>Posuere in netus a eu varius adipiscing suspendisse elementum vitae tempor suspendisse ullamcorper aenean taciti morbi potenti cursus id tortor. Cursus nulla consectetur a eros adipiscing himenaeos nam taciti id turpis a scelerisque vel habitasse.</p>', 'ar'),
(18, 9, 'Adipiscing suspendisse elementum', '<p>Posuere in netus a eu varius adipiscing suspendisse elementum vitae tempor suspendisse ullamcorper aenean taciti morbi potenti cursus id tortor. Cursus nulla consectetur a eros adipiscing himenaeos nam taciti id turpis a scelerisque vel habitasse.</p>', 'en'),
(19, 10, 'Parturient volutpat interdum', '<p>Placerat tempor dolor eu leo ullamcorper et magnis habitant ultrices consectetur arcu nulla mattis fermentum adipiscing a et bibendum sed platea malesuada eget vestibulum.</p>', 'ar'),
(20, 10, 'Parturient volutpat interdum', '<p>Placerat tempor dolor eu leo ullamcorper et magnis habitant ultrices consectetur arcu nulla mattis fermentum adipiscing a et bibendum sed platea malesuada eget vestibulum.</p>', 'en');

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

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'super', 'admin', 'super_admin@app.com', 'default.png', NULL, '$2y$10$4Psy/s/omerWrPv1XB3LKOlpTcg3GGqh.N/TXqRj9O.JviH3byevS', NULL, '2022-09-28 14:27:56', '2022-09-28 14:27:56'),
(7, 'abdo', 'soliman', 'abdulrhman.plaza2@gmail.com', 'ipT2JhPXdCQPF0jbvg37SNV5X2ilRRkTlJGesi5E.png', NULL, '$2y$10$J5ORX3ezjjJcblGgSSdYL.wrUGb4OKkJsleuq4MGmt24Pdr6YG636', NULL, '2022-09-28 18:10:16', '2022-09-28 18:10:16'),
(8, 'asda', 'asdasd', 'brothersmedia190@gmail.com', 'YWozbOKdoHavcYvXLd6Wl5y2lIVrJffPb7WbVzy3.jpg', NULL, '$2y$10$ZAHiQsf8FyJ7zeNK8Mf89u302ci18BTl7AqMS5365S8rhlgr2fN/u', NULL, '2022-10-08 19:56:14', '2022-10-08 19:56:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_client_id_foreign` (`client_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_order_product_id_foreign` (`product_id`),
  ADD KEY `product_order_order_id_foreign` (`order_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`),
  ADD KEY `product_translations_locale_index` (`locale`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `product_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_order_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
