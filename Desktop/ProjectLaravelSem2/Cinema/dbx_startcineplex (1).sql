-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 05:01 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbx_startcineplex`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `Account_Id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `preferSite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Account_Id`, `fullname`, `email`, `phone`, `password`, `gender`, `birth`, `preferSite`, `image`, `active`, `role`, `created_at`, `updated_at`) VALUES
('USER_001', 'Phung Van Phuc', 'phungvphuc1@gmail.com', 905304560, '0905304560', 'Male', '1998-06-30', 'X-star Ho Chi Minh', NULL, 2, 1, '2021-06-22 03:00:12', '2021-06-22 03:00:12'),
('USER_002', 'Phung Tran Tho', 'phungvphuc2@gmail.com', 905304560, '0905304560', 'Female', '2021-06-23', 'X-star Hai Phong', NULL, 2, 2, '2021-06-22 03:01:45', '2021-06-22 03:01:45');

--
-- Triggers `accounts`
--
DELIMITER $$
CREATE TRIGGER `getID` BEFORE INSERT ON `accounts` FOR EACH ROW BEGIN
	INSERT INTO id_account VALUES (null);
    SET NEW.Account_Id = CONCAT("USER_", LPAD(LAST_INSERT_ID(),3, "0"));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `booktiket`
--

CREATE TABLE `booktiket` (
  `TikectId` int(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `MovieTitle` varchar(150) NOT NULL,
  `Seat` varchar(50) NOT NULL,
  `ComboFood` varchar(250) NOT NULL,
  `TimeMovie` varchar(50) NOT NULL,
  `AddressCinema` varchar(150) NOT NULL,
  `DateMovie` varchar(100) NOT NULL,
  `TotalPrice` int(100) NOT NULL,
  `active` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booktiket`
--

INSERT INTO `booktiket` (`TikectId`, `Email`, `MovieTitle`, `Seat`, `ComboFood`, `TimeMovie`, `AddressCinema`, `DateMovie`, `TotalPrice`, `active`) VALUES
(13, 'letuanxuyen@gmail.com', 'Cartoon', '7B', 'Popcorn', '10:00', 'TPHCM', '22/12/2021', 300000, 0),
(14, 'oanhdoan@gmail.com', 'Avatar', '8D', '1 MILO COMBO 2021', '12-00', 'main-hall', '13-3', 200000, 1),
(15, 'hoang@gmail.com', 'Avatar', '8C,8B', '2 CGV SNACK COMBO', '12-00', 'vip-hall', '13-3', 398000, 1),
(16, 'letuanxuyen@gmail.com', 'Cartoon', '7B,8C,9A', '', '09-00', 'main-hall', '12-3', 0, 0),
(17, 'letuanxuyen@gmail.com', 'Cartoon', '7A', '', '09-00', 'main-hall', '12-3', 0, 0),
(18, 'letuanxuyen@gmail.com', 'Cartoon', '5C', '', '09-00', 'main-hall', '12-3', 0, 0),
(19, 'letuanxuyen@gmail.com', 'Cartoon', '4C', '', '09-00', 'main-hall', '12-3', 0, 0),
(20, 'thanh92@gmail.comxx', 'Cartoon', '8D', '2 MILO COMBO 2021', '09-00', 'main-hall', '12-3', 300000, 1),
(21, 'letuanxuyen92@gmail.com', 'Cartoon', '8A,8B', '2 MILO COMBO 2021', '09-00', 'main-hall', '13-3', 400000, 1),
(22, 'letuanxuyen92@gmail.com', 'Cartoon', '8A,8B', '2 MILO COMBO 2021', '09-00', 'main-hall', '13-3', 400000, 1);

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
-- Table structure for table `id_account`
--

CREATE TABLE `id_account` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `id_account`
--

INSERT INTO `id_account` (`id`) VALUES
(1),
(2);

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2021_06_21_181155_account', 1);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD UNIQUE KEY `accounts_email_unique` (`email`);

--
-- Indexes for table `booktiket`
--
ALTER TABLE `booktiket`
  ADD PRIMARY KEY (`TikectId`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `id_account`
--
ALTER TABLE `id_account`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booktiket`
--
ALTER TABLE `booktiket`
  MODIFY `TikectId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `id_account`
--
ALTER TABLE `id_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
