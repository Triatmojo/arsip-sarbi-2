-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2021 at 04:07 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip_sic`
--

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` bigint(20) NOT NULL,
  `folder_id` bigint(20) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_access`
--

CREATE TABLE `file_access` (
  `id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `folder_id` bigint(20) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `folder_parent` bigint(20) NOT NULL,
  `jenis_akses` enum('private','public','user') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`folder_id`, `folder_name`, `folder_parent`, `jenis_akses`, `created_at`, `updated_at`) VALUES
(1, 'Legalitas', 0, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(2, 'Sistem Mutu', 0, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(5, 'ISPO', 2, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(6, 'VLK', 2, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(7, 'PPIUP', 2, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(8, 'PT.Asik', 20, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(9, 'PT. Qu', 20, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(11, 'Penilikan', 8, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(19, 'Klien', 0, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(20, 'PHPL', 2, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(23, 'Penilaian Awal', 8, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(24, 'Re-sertifikasi', 8, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(25, 'Pembekuan', 8, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(35, 'BSI', 0, 'private', '2021-04-18 11:08:33', '2021-04-18 11:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `folder_access`
--

CREATE TABLE `folder_access` (
  `id` bigint(20) NOT NULL,
  `folder_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folder_access`
--

INSERT INTO `folder_access` (`id`, `folder_id`, `user_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` enum('admin','karyawan') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `nama_lengkap`, `email`, `no_telp`, `username`, `password`, `image`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.comm', '08979787876', 'admin', '$2y$10$9lkfQHKfYS3dsGj0CdkdjOL0gouOtFBf2Ic.P18axkDdzFgzED2Uu', '', 'admin', '2021-04-09 21:29:08', '2021-04-11 01:10:55'),
(2, 'Ghifari Arfan', 'user@gmail.com', '0897768216389', 'user', '$2y$10$Y2z5NWK/rNxe0EVzXp/GwusZYXSCJCjEflz7ZTmqXqmMYalJjET2e', '', 'karyawan', '2021-04-11 01:11:51', '2021-04-12 03:02:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `file_access`
--
ALTER TABLE `file_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`folder_id`);

--
-- Indexes for table `folder_access`
--
ALTER TABLE `folder_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `file_access`
--
ALTER TABLE `file_access`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `folder_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `folder_access`
--
ALTER TABLE `folder_access`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
