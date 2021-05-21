-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 04:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/3ibXr7F6Eiv2BzLL47SRWzgUudfDFbNRqf75nsJC.jpg', NULL, '2021-04-11 03:42:38', '2021-04-11 03:42:38'),
(2, 2, 'assets/gallery/W4JKnAHMppW6Dk33aPyIq94aO024ElIrs9gT95IV.jpg', NULL, '2021-04-11 03:44:32', '2021-04-15 10:56:44'),
(3, 3, 'assets/gallery/8yfXsMaiQzOFsCGQCNqv3bquBYbl423jONKlp5u6.jpg', NULL, '2021-04-11 03:45:55', '2021-04-15 10:56:57'),
(4, 4, 'assets/gallery/JRLRExDnoyyh907BsChNBlpfBkcxpNh4G4QP9pZ8.jpg', NULL, '2021-04-11 03:46:04', '2021-04-15 10:57:18'),
(5, 1, 'assets/gallery/MLS92lXVzVeTdOPwrmr3Ik34FIhch9ebhEV30jSe.jpg', '2021-04-13 09:42:28', '2021-04-11 03:49:58', '2021-04-13 09:42:28'),
(6, 1, 'assets/gallery/N0d4Yb0vULaa5j4bmUTSVcGlcHNlmynHWoFpkVVd.jpg', '2021-04-13 09:42:24', '2021-04-11 03:53:55', '2021-04-13 09:42:24'),
(7, 1, 'assets/gallery/CH6BZ4L4tRzERrp2CV7tgqfIsy0G2rAbTQQpnyG4.jpg', NULL, '2021-04-15 12:43:57', '2021-04-15 12:43:57'),
(8, 1, 'assets/gallery/VMmmc3RrjyfSYclPzKpQCutjil3pwCjiZ0LUuz3B.jpg', NULL, '2021-04-15 12:44:11', '2021-04-15 12:44:11'),
(9, 1, 'assets/gallery/oLdk53mjzLjCkjZmv6FhzxESpseGw1t7117E0Vbl.jpg', NULL, '2021-04-15 12:44:22', '2021-04-15 12:44:22'),
(10, 1, 'assets/gallery/C3XiwEB8UjZZjzmf4Bq6dJ6Q2ZgcJqW3agPMxjmL.jpg', NULL, '2021-04-15 13:21:48', '2021-04-15 13:21:48'),
(11, 1, 'assets/gallery/h9B1yZlrfMrHpkllzOVOSafZMRUB7xjBYG6KrjZZ.jpg', '2021-04-16 12:11:49', '2021-04-15 13:21:59', '2021-04-16 12:11:49'),
(12, 1, 'assets/gallery/Xc87pXqKZbffIweLmNaH2bPomVlsGuHoHBJPX06l.jpg', '2021-04-16 12:11:18', '2021-04-15 13:22:09', '2021-04-16 12:11:18'),
(13, 2, 'assets/gallery/uMENwMN6sudkLjk4iIGaH1SM3zdho5tXMmRuLo4Z.jpg', '2021-04-16 12:11:15', '2021-04-15 13:24:54', '2021-04-16 12:11:15');

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
(4, '2021_03_28_152034_create_travel_packages_table', 1),
(5, '2021_03_28_155427_create_galleries_table', 2),
(6, '2021_03_28_160652_create_transactions_table', 3),
(7, '2021_03_28_161422_create_transaction_details_table', 4),
(8, '2021_03_31_154844_add_roles_field_to_users_table', 5),
(9, '2021_04_02_164147_add_username_field_to_users_table', 6);

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
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `user_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 190, 750, 'IN_CART', NULL, '2021-04-20 20:21:40', '2021-04-20 20:22:07'),
(2, 3, 4, 0, 280, 'IN_CART', NULL, '2021-04-20 20:37:37', '2021-04-20 20:37:37'),
(3, 3, 4, 0, 280, 'PENDING', NULL, '2021-04-20 20:50:08', '2021-04-20 20:50:45'),
(4, 4, 4, 190, 1790, 'IN_CART', NULL, '2021-04-20 20:51:07', '2021-04-20 20:51:22'),
(5, 2, 4, 190, 1340190, 'IN_CART', NULL, '2021-04-22 08:22:54', '2021-04-22 08:24:33'),
(6, 2, 4, 190, 1340190, 'IN_CART', NULL, '2021-04-22 08:27:24', '2021-04-22 08:27:39'),
(7, 2, 4, 0, 670000, 'IN_CART', NULL, '2021-04-22 14:53:04', '2021-04-22 14:53:04'),
(8, 1, 4, 0, 1400000, 'PENDING', NULL, '2021-04-29 19:35:07', '2021-04-29 19:35:59'),
(9, 1, 4, 0, 700000, 'PENDING', NULL, '2021-04-29 19:55:22', '2021-04-29 19:55:26'),
(10, 2, 4, 0, 670000, 'PENDING', NULL, '2021-05-01 15:23:41', '2021-05-01 15:23:46'),
(11, 2, 4, 190, 1340190, 'PENDING', NULL, '2021-05-01 17:24:25', '2021-05-01 19:46:50'),
(12, 2, 4, 190, 1340190, 'PENDING', NULL, '2021-05-01 19:49:29', '2021-05-01 19:51:46'),
(13, 1, 4, 0, 700000, 'PENDING', NULL, '2021-05-01 20:14:18', '2021-05-01 20:14:21'),
(14, 1, 4, 0, 700000, 'PENDING', NULL, '2021-05-01 21:42:50', '2021-05-01 21:42:52'),
(15, 4, 4, 190, 1790, 'PENDING', NULL, '2021-05-01 21:43:14', '2021-05-01 21:44:26'),
(16, 2, 4, 190, 1340190, 'SUCCESS', NULL, '2021-05-21 05:42:05', '2021-05-21 05:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'zikra adib', 'ID', 0, '2026-04-21', NULL, '2021-04-20 20:21:40', '2021-04-20 20:21:40'),
(2, 1, 'lani sari', 'ID', 1, '2021-05-13', NULL, '2021-04-20 20:22:07', '2021-04-20 20:22:07'),
(3, 2, 'zikra adib', 'ID', 0, '2026-04-21', NULL, '2021-04-20 20:37:37', '2021-04-20 20:37:37'),
(4, 3, 'zikra adib', 'ID', 0, '2026-04-21', NULL, '2021-04-20 20:50:08', '2021-04-20 20:50:08'),
(5, 4, 'zikra adib', 'ID', 0, '2026-04-21', NULL, '2021-04-20 20:51:07', '2021-04-20 20:51:07'),
(6, 4, 'lani sari', 'ID', 1, '2021-05-08', NULL, '2021-04-20 20:51:22', '2021-04-20 20:51:22'),
(7, 5, 'zikra adib', 'ID', 0, '2026-04-22', NULL, '2021-04-22 08:22:54', '2021-04-22 08:22:54'),
(8, 5, 'lani sari', 'ID', 1, '2021-05-14', NULL, '2021-04-22 08:24:32', '2021-04-22 08:24:32'),
(9, 6, 'zikra adib', 'ID', 0, '2026-04-22', NULL, '2021-04-22 08:27:24', '2021-04-22 08:27:24'),
(10, 6, 'lani sari', '2', 1, '2021-05-06', NULL, '2021-04-22 08:27:39', '2021-04-22 08:27:39'),
(11, 7, 'zikra adib', 'ID', 0, '2026-04-22', NULL, '2021-04-22 14:53:04', '2021-04-22 14:53:04'),
(12, 8, 'zikra adib', 'ID', 0, '2026-04-30', NULL, '2021-04-29 19:35:07', '2021-04-29 19:35:07'),
(13, 8, 'lani sari', 'ID', 0, '2021-05-29', NULL, '2021-04-29 19:35:42', '2021-04-29 19:35:42'),
(14, 9, 'zikra adib', 'ID', 0, '2026-04-30', NULL, '2021-04-29 19:55:22', '2021-04-29 19:55:22'),
(15, 10, 'zikra adib', 'ID', 0, '2026-05-01', NULL, '2021-05-01 15:23:42', '2021-05-01 15:23:42'),
(16, 11, 'zikra adib', 'ID', 0, '2026-05-02', NULL, '2021-05-01 17:24:25', '2021-05-01 17:24:25'),
(17, 11, 'lani sari', 'SG', 1, '2021-06-24', NULL, '2021-05-01 19:46:50', '2021-05-01 19:46:50'),
(18, 12, 'zikra adib', 'ID', 0, '2026-05-02', NULL, '2021-05-01 19:49:29', '2021-05-01 19:49:29'),
(19, 12, 'lani sari', 'ID', 1, '2021-06-16', '2021-05-01 19:50:03', '2021-05-01 19:49:44', '2021-05-01 19:50:03'),
(20, 12, 'lani sari', 'ID', 1, '2021-06-18', NULL, '2021-05-01 19:51:46', '2021-05-01 19:51:46'),
(21, 13, 'zikra adib', 'ID', 0, '2026-05-02', NULL, '2021-05-01 20:14:18', '2021-05-01 20:14:18'),
(22, 14, 'zikra adib', 'ID', 0, '2026-05-02', NULL, '2021-05-01 21:42:50', '2021-05-01 21:42:50'),
(23, 15, 'zikra adib', 'ID', 0, '2026-05-02', NULL, '2021-05-01 21:43:14', '2021-05-01 21:43:14'),
(24, 15, 'lani sari', 'SG', 1, '2021-06-09', '2021-05-01 21:43:43', '2021-05-01 21:43:31', '2021-05-01 21:43:43'),
(25, 15, 'lani sari', 'ID', 1, '2021-06-16', NULL, '2021-05-01 21:44:26', '2021-05-01 21:44:26'),
(26, 16, 'zikra adib', 'ID', 0, '2026-05-21', NULL, '2021-05-21 05:42:06', '2021-05-21 05:42:06'),
(27, 16, 'lani sari', 'ID', 1, '2021-02-10', NULL, '2021-05-21 05:42:30', '2021-05-21 05:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nusa Penida', 'nusa-penida', 'Bali, Indonesia', 'Nusa Penida adalah sebuah pulau (=nusa) bagian dari negara Republik Indonesia yang terletak di sebelah tenggara Bali yang dipisahkan oleh Selat Badung. Di dekat pulau ini terdapat juga pulau-pulau kecil lainnya yaitu Nusa Ceningan dan Nusa Lembongan. Perairan pulau Nusa Penida terkenal dengan kawasan selamnya di antaranya terdapat di Crystal Bay, Manta Point, Batu Meling, Batu Lumbung, Batu Abah, Toyapakeh dan Malibu Point.', 'Tari Kecak', 'Indonesia', 'Local Foods', '2021-04-07', '2 Days', 'Open Trip', 700000, NULL, '2021-04-09 10:30:48', '2021-04-15 11:09:02'),
(2, 'Jam Gadang', 'jam-gadang', 'Bukitinggi', 'Jam Gadang adalah menara jam yang menjadi penanda Kota Bukittinggi, Sumatra Barat, Indonesia. Menara jam ini memiliki jam dengan ukuran besar di empat sisinya sehingga dinamakan Jam Gadang, sebutan bahasa Minangkabau yang berarti \"jam besar\".\r\n\r\nJam Gadang telah dijadikan sebagai objek wisata dengan diperluasnya taman di sekitarnya. Taman tersebut menjadi ruang interaksi masyarakat baik pada hari kerja maupun pada hari libur. Acara-acara yang sifatnya umum biasanya diselenggarakan di sini.', 'Tari Piring', 'Indonesia', 'Local Foods', '2021-04-08', '3 Days', 'Open Trip', 670000, NULL, '2021-04-09 10:38:48', '2021-04-15 11:09:34'),
(3, 'Bromo', 'bromo', 'Jawa Timur', 'Gunung Bromo (dari bahasa Sanskerta: Brahma, salah seorang Dewa Utama dalam agama Hindu) atau dalam bahasa Tengger dieja \"Brama\", adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai objek wisata utama di Jawa Timur. Sebagai sebuah objek wisata, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru.\r\n\r\nBentuk tubuh Gunung Bromo bertautan antara lembah dan ngarai dengan kaldera atau lautan pasir seluas sekitar 10 kilometer persegi. Ia mempunyai sebuah kawah dengan garis tengah ± 800 meter (utara-selatan) dan ± 600 meter (timur-barat). Sedangkan daerah bahayanya berupa lingkaran dengan jari-jari 4 km dari pusat kawah Bromo.', 'Mendaki', 'Indonesia', 'Local Foods', '2021-04-16', '2 Days', 'Close Trip', 280, NULL, '2021-04-15 10:42:48', '2021-04-15 10:42:48'),
(4, 'Taj Mahal', 'taj-mahal', 'Agra, Uttar Pradesh, India', 'Taj Mahal (bahasa Urdu: تاج محل, Hindi: ताज महल) adalah sebuah monumen yang terletak di Agra, India. Dibangun atas keinginan Kaisar Mughal Shāh Jahān, anak Jahangir, sebagai sebuah musoleum untuk istri Persianya, Arjumand Banu Begum, juga dikenal sebagai Mumtaz-ul-Zamani atau Mumtaz Mahal. Taj Mahal merupakan sebuah adi karya dari arsitektur Mughal.\r\n\r\nShah Jahan, kaisar dari Kekaisaran Mughal memiliki kekayaan yang besar selama masa kejayaannya. Pada 1631 istri ketiganya dan merupakan istri yang paling dicintainya wafat sewaktu melahirkan putrinya Gauhara Begum, anak ke-14 mereka.', 'De Wali', 'Indian and English', 'Local Foods', '2021-04-17', '7 Days', 'Open Trip', 800, NULL, '2021-04-15 10:44:34', '2021-04-15 10:44:34');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'zikra adib', 'zikra23@gmail.com', '2021-03-03 18:22:03', '123456', '123456', '2021-03-31 18:22:03', '2021-03-31 18:22:03', 'ADMIN', ''),
(2, 'Zikra Adib', 'zikra232@gmail.com', NULL, '$2y$10$gp888.7YV0ot4x0eJwZaVeRnccBrfQTefX1aqkDdlEhSni44fPTn.', NULL, '2021-03-31 11:36:34', '2021-03-31 11:36:34', 'USER', 'Zikra'),
(3, 'zikra', 'zikra2322@gmail.com', NULL, '$2y$10$qrgQBMFXsp9CSgPOoT2iguPBW4QcaUWjeoUdwlZruJnFpgeGloxTe', NULL, '2021-04-01 11:38:39', '2021-04-01 11:38:39', 'USER', ''),
(4, 'zikra', 'zikra23222@gmail.com', '2021-04-01 11:43:59', '$2y$10$nljt4q16M8IVqD5406a8xOtwv5cQuRUKo4GzrTLsi96fddbjW1ATy', NULL, '2021-04-01 11:41:05', '2021-04-01 11:43:59', 'ADMIN', 'zikra adib'),
(5, 'lani kemala sari', 'lanikemala@gmail.com', '2021-04-02 10:41:09', '$2y$10$dctBxLnqAGUD4QX0v2kGr./KeznCRbeB.sIuQ0iZdSziJ8bPWF7v.', NULL, '2021-04-02 10:40:46', '2021-04-02 10:41:09', 'USER', 'lani sari');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
