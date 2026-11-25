-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2026 at 11:24 AM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paws_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Available',
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `pet_name`, `category`, `breed`, `location`, `description`, `status`, `image_url`) VALUES
(1, 'Max', 'Dogs', 'Golden Retriever', 'Mandaue City', 'Friendly and energetic dog looking for a loving home.', 'Available', NULL),
(2, 'Luna', 'Cats', 'Puspin / Domestic Shorthair', 'Cebu City', 'Calm indoor cat who loves to cuddle.', 'Available', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Niño James Ligan', 'nino@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2026-11-11 14:21:57'),
(2, 'Test User', 'test@paws.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2026-11-11 14:21:57'),
(7, 'Nino Ligan', 'ninojame22@gmail.com', '$2y$12$imtUVdcMhKyH98ZIl5mB9uhKMoX1IWPlCjzaNKGDaT01Iafq6pHtW', '2026-11-11 14:39:13'),
(8, 'James Carl', 'james@gmail.com', '$2y$12$RLmzODLJn/HjHHBmAbgB6.jps5rqRDbGxch4qjCevqKdOijP323hm', '2026-11-12 13:45:56'),
(9, 'Lovie Shelo', 'lovie@gmail.com', '$2y$12$Xawz7nKe3EVKmumxBEZ5IuR2uUXVC1llqM90cSeV/x5RUmKkXWMha', '2026-11-17 04:49:08'),
(10, 'Nino James', 'nino@gmail.com', '$2y$12$QxwIwJnCqNlp6XG0UAMqPeNQOIBG/4e./G9/Gcst5bkp9FiFxy5gW', '2026-11-17 05:11:10'),
(11, 'Kent Berezo', 'kentberezo37@gmail.com', '$2y$12$0oxH9trk4ZlNVL9xO6Ky8uZ0kLw0JiVRO5ECaJD0k7S904t2TP2SC', '2026-11-23 04:56:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
