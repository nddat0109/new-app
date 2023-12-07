-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2023 lúc 07:42 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `new-app`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_06_103514_create_product', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_des` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_img`, `product_price`, `product_des`, `created_at`, `updated_at`) VALUES
(4, 'Prof. Cierra Conroy PhD123', 'https://via.placeholder.com/200x200.png/0077cc?text=beatae', 712.00, 'Quis repellat minima aut similique fugit voluptate aut. Distinctio voluptatem quis dolor aliquam rerum dolorem corporis quam. Tempora consequatur nostrum et eius. A et occaecati sapiente officiis ut asperiores.', '2023-12-06 04:35:30', '2023-12-06 10:24:22'),
(5, 'Grover Feil', 'https://via.placeholder.com/200x200.png/005588?text=est', 1.00, 'Magni nesciunt pariatur non voluptatem at aspernatur culpa est. Laborum sequi natus quia cumque magnam voluptatem rerum dignissimos. Officiis nihil est quo ut inventore beatae. Possimus et rem sed dolorem et numquam.', '2023-12-06 04:35:30', '2023-12-06 04:35:30'),
(6, 'Prof. Bradford Zboncak MD', 'https://via.placeholder.com/200x200.png/00aa88?text=ab', 2.00, 'Repudiandae illo fugit rerum ut vel maxime ab expedita. Voluptatem corrupti vel nulla eos et et. Voluptas assumenda deserunt enim eaque nobis. Quo iure asperiores nihil quas ut.', '2023-12-06 04:35:30', '2023-12-06 04:35:30'),
(7, 'Oswaldo Roob', 'https://via.placeholder.com/200x200.png/000033?text=omnis', 4.00, 'Autem suscipit expedita ut a. Consequuntur sit autem qui odit earum.', '2023-12-06 04:35:30', '2023-12-06 04:35:30'),
(8, 'Dr. Harmony Kassulke', 'https://via.placeholder.com/200x200.png/00aabb?text=et', 5.00, 'Eius nam cumque ipsam voluptas. Sint veritatis aspernatur possimus quaerat velit harum enim. Optio sunt hic ipsa ut.', '2023-12-06 04:35:30', '2023-12-06 04:35:30'),
(9, 'Ron Dibbert', 'https://via.placeholder.com/200x200.png/002255?text=reiciendis', 8.00, 'Tempora dolor facilis vero est commodi perferendis iure non. Quasi tempora explicabo voluptas et nulla voluptatum qui. Iusto asperiores similique praesentium ratione quae.', '2023-12-06 04:35:30', '2023-12-06 04:35:30'),
(10, 'Dylan Batz', 'https://via.placeholder.com/200x200.png/00ee11?text=ut', 5.00, 'Et voluptatum enim sint molestiae. Voluptas rem aperiam eos voluptatum aut. Inventore vel quam officiis dolores voluptatibus natus hic.', '2023-12-06 04:35:30', '2023-12-06 04:35:30'),
(11, 'Misty Mante DDS', 'https://via.placeholder.com/200x200.png/00aaaa?text=sit', 2.00, 'Rem quis culpa nihil architecto. Nemo omnis qui ut natus ipsum. Quis nostrum consectetur sint magnam omnis. Reiciendis tenetur saepe consectetur voluptas aperiam.', '2023-12-06 04:35:30', '2023-12-06 04:35:30'),
(12, 'Mowao', 'https://via.placeholder.com/200x200.png/00dd99?text=nisi', 10.00, 'olorem corporis consectetur. Volu', '2023-12-06 06:15:03', '2023-12-06 06:15:03'),
(13, 'áds', 'product_des', 21.00, 'product_des', '2023-12-06 07:44:16', '2023-12-06 07:44:16'),
(14, 'àaf', 'af', 4.00, 'àa', '2023-12-06 07:53:31', '2023-12-06 07:53:31'),
(18, 'mnbvc', 'nbvc', 123.00, '12121', '2023-12-06 10:28:45', '2023-12-06 10:28:45'),
(19, 'nbvc', 'àas', 12.00, 'nbvc', '2023-12-06 10:29:50', '2023-12-06 10:29:50'),
(21, 'bvc', 'default.jpg', 12.00, '12121', '2023-12-06 11:07:51', '2023-12-06 11:07:51'),
(22, 'nbvc', 'default.jpg', 12.00, 'bvc', '2023-12-06 11:08:54', '2023-12-06 11:08:54'),
(23, 'nbvc', 'default.jpg', 124.00, 'bvc', '2023-12-06 11:10:08', '2023-12-06 11:10:08'),
(24, 'nbvc', '1701887122_11.png', 122141.00, 'àaf', '2023-12-06 11:25:22', '2023-12-06 11:25:22'),
(25, 'sản phẩm', '1701887337_jpg', 12412.00, 'áaf', '2023-12-06 11:28:57', '2023-12-06 11:28:57'),
(26, 'Prof. Cierra Conroy PhD12', '1701887407_jpg', 12312.00, 'vxzvxv', '2023-12-06 11:30:07', '2023-12-06 11:30:07'),
(27, 'sản phẩm', '1701887488_jpg', 124124.00, 'ádasd', '2023-12-06 11:31:28', '2023-12-06 11:31:28'),
(28, 'sầ', '1701887538.jpg', 21312.00, 'sdasd', '2023-12-06 11:32:18', '2023-12-06 11:32:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'abc@gmail.com', NULL, '$2y$10$408QR8HPf84ADJ3U4Z5bhu3miFB0/77tJXmLDRnqj8U2mbyJW3/wy', NULL, '2023-12-06 06:48:56', '2023-12-06 06:48:56'),
(2, 'Đình Đạt', 'nddat0109@gmail.com', NULL, '$2y$10$O0DrPDalwfr0Bn0VpVqcHOfdlaN6oJnWw6gvLe0z3zEbtS6EQ/XBi', NULL, '2023-12-06 10:28:27', '2023-12-06 10:28:27');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
