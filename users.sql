-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 07:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelreactcrud`
--

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Heath Bashirian', 'rprice@example.org', '2024-05-30 22:56:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jiVBm656rq', '2024-05-30 22:56:43', '2024-05-30 22:56:43'),
(2, 'Laurel Schmitt', 'enoch.osinski@example.org', '2024-05-30 22:56:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fiyj9nC3Pl', '2024-05-30 22:56:43', '2024-05-30 22:56:43'),
(4, 'Mrs. Hilma Pfeffer', 'beulah04@example.net', '2024-05-30 22:56:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'no0QYO8I9S', '2024-05-30 22:56:43', '2024-05-30 22:56:43'),
(5, 'Nicolas Mraz', 'elubowitz@example.net', '2024-05-30 22:56:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z6h8V5dEgy', '2024-05-30 22:56:43', '2024-05-30 22:56:43'),
(6, 'Trystan Heidenreich', 'josue.quigley@example.net', '2024-05-30 22:56:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dDq2GtKvY3', '2024-05-30 22:56:43', '2024-05-30 22:56:43'),
(7, 'Prof. Cleo Okuneva Sr.', 'nauer@example.com', '2024-05-30 22:56:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jAvFyA5G3b', '2024-05-30 22:56:43', '2024-05-30 22:56:43'),
(8, 'Mrs. Verona Cartwright', 'dcrist@example.net', '2024-05-30 22:56:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kwWPULkPjo', '2024-05-30 22:56:43', '2024-05-30 22:56:43'),
(9, 'Mckayla Doyle', 'sawayn.chris@example.com', '2024-05-30 22:56:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TZlUus5LoY', '2024-05-30 22:56:43', '2024-05-30 22:56:43'),
(11, 'sagar behera', 'sagarkumar@ralecon.com', NULL, '$2y$10$rBgjwkbAXQBSq9EG.8eRceiqwg8pae3grGGZFidfE2IiOlS2lFEy2', NULL, '2024-05-30 23:29:18', '2024-05-30 23:54:27');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
