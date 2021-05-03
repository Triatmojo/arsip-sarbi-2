-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2021 at 04:38 AM
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
  `nama_file` varchar(255) NOT NULL,
  `folder_id` bigint(20) NOT NULL,
  `jenis_id` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `nama_file`, `folder_id`, `jenis_id`, `file`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'permohonan22222_2021-04-13.png', 41, 3, '1619838895_786a0d4918a72838464a.png', NULL, '2021-05-01 10:14:55', '2021-05-01 11:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `folder_id` bigint(20) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `folder_parent` bigint(20) NOT NULL,
  `kategori_id` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`folder_id`, `folder_name`, `folder_parent`, `kategori_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Legalitas', 0, 0, 0, '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(2, 'Sistem Mutu', 0, 0, 0, '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(3, 'Klien', 0, 0, 0, '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(5, 'ISPO', 2, 0, 0, '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(6, 'VLK', 2, 0, 0, '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(7, 'PPIUP', 2, 0, 0, '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(20, 'PHPL', 3, 0, 0, '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(38, 'PHPL', 2, 0, 0, '2021-04-26 22:55:10', '2021-04-26 22:55:10'),
(39, 'VLK', 3, 0, 0, '2021-04-26 22:56:04', '2021-04-26 22:56:04'),
(40, 'PT. Bumimas Arwana', 20, 0, 0, '2021-04-26 23:10:48', '2021-04-26 23:23:55'),
(41, 'Penilaian Awal', 40, 1, 0, '2021-04-26 23:24:11', '2021-04-26 23:24:11'),
(42, 'Penilikan I', 40, 2, 0, '2021-04-26 23:25:12', '2021-04-26 23:25:12'),
(43, 'Pencabutan', 40, 5, 0, '2021-04-26 23:38:28', '2021-04-26 23:38:28'),
(45, 'PT. SatriaFU', 20, 0, 0, '2021-04-29 12:43:34', '2021-04-29 12:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `folder_access`
--

CREATE TABLE `folder_access` (
  `id` bigint(20) NOT NULL,
  `folder_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `folder_access`
--

INSERT INTO `folder_access` (`id`, `folder_id`, `user_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `jenis_id` int(11) NOT NULL,
  `jenis_nama` varchar(256) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`jenis_id`, `jenis_nama`, `kategori_id`, `is_required`) VALUES
(1, 'Surat Permohonan, Aplikasi Permohonan dan Ceklis Dokumen serta Kajian Permohonan', 1, 1),
(2, 'Surat Pemberitahuan Kesiapan Penilaian', 1, 1),
(3, 'Konfirmasi Kesiapan dari Auditee', 1, 1),
(4, 'Pembentukan Tim dan Kajian Auditor', 1, 1),
(5, 'Konfirmnasi Jadwal dan Susunan Tim', 1, 1),
(6, 'Balasan dari Auditee', 1, 1),
(7, 'Pengumuman Rencana Penilaian (Pengumuman, sermohonan surat pengantar dan Audit Plan)', 1, 1),
(8, 'Pemberitahuan Biaya Lapangan ke auditee', 1, 1),
(9, 'Surat Pengantar dari Sarbi dan dari KLHK', 1, 1),
(10, 'Daftar Hadir, BA, Notulensi Konsultasi Publik', 1, 1),
(11, 'Daftar Hadir, BA, Notulensi Opening', 1, 1),
(12, 'Daftar Hadir, BA, Notulensi Closing', 1, 1),
(13, 'Tally Sheet', 1, 1),
(14, 'LKS', 1, 0),
(15, 'Laporan Akhir', 1, 1),
(16, 'Pengumuman Hasil', 1, 1),
(17, 'Surat Pemberitahuan Kesiapan Penilikan di awal tahun', 2, 1),
(18, 'Surat Pemberitahuan Kesiapan Penilikan tiga bulan sebelumnya', 2, 1),
(19, 'Konfirmasi Kesiapan dari Auditee', 2, 1),
(20, 'Pembentukan Tim dan Kajian Auditor', 2, 1),
(21, 'Konfirmnasi Jadwal dan Susunan Tim', 2, 1),
(22, 'Balasan dari Auditee', 2, 1),
(23, 'Pengumuman Rencana Penilaian (Pengumuman, sermohonan surat pengantar dan Audit Plan)', 2, 1),
(24, 'Pemberitahuan Biaya Lapangan ke auditee', 2, 1),
(25, 'Surat Pengantar dari Sarbi dan dari KLHK', 2, 1),
(26, 'Daftar Hadir, BA, Notulensi Opening', 2, 1),
(27, 'Daftar Hadir, BA, Notulensi Closing', 2, 1),
(28, 'Tally Sheet', 2, 1),
(29, 'LKS', 2, 0),
(30, 'Laporan Akhir', 2, 1),
(31, 'Pengumuman Hasil', 2, 1),
(32, 'Surat Permohonan, Aplikasi Permohonan dan Ceklis Dokumen serta Kajian Permohonan', 3, 1),
(33, 'Surat Pemberitahuan Kesiapan Resertifikasi', 3, 1),
(34, 'Konfirmasi Kesiapan dari Auditee', 3, 1),
(35, 'Pembentukan Tim dan Kajian Auditor', 3, 1),
(36, 'Konfirmnasi Jadwal dan Susunan Tim', 3, 1),
(37, 'Balasan dari Auditee', 3, 1),
(38, 'Pengumuman Rencana Penilaian (Pengumuman, sermohonan surat pengantar dan Audit Plan)', 3, 1),
(39, 'Pemberitahuan Biaya Lapangan ke auditee', 3, 1),
(40, 'Surat Pengantar dari Sarbi dan dari KLHK', 3, 1),
(41, 'Daftar Hadir, BA, Notulensi Konsultasi Publik', 3, 1),
(42, 'Daftar Hadir, BA, Notulensi Opening', 3, 1),
(43, 'Daftar Hadir, BA, Notulensi Closing', 3, 1),
(44, 'Tally Sheet', 3, 1),
(45, 'LKS (Optional)', 3, 1),
(46, 'Laporan Akhir', 3, 1),
(47, 'Pengumuman Hasil', 3, 1),
(48, 'Surat Pemberitahuan Penilikan', 4, 1),
(49, 'Surat ketidak siapan dari auditee untuk dilaksanakan Penilikan', 4, 1),
(50, 'Konfirmasi Pelaksanaan pembekuan', 4, 1),
(51, 'Pengumuman Pembekuan', 4, 1),
(52, 'Pengumuman Pencabutan', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Penilaian Awal'),
(2, 'Penilikan'),
(3, 'Resertifikasi'),
(4, 'Pembekuan'),
(5, 'Pencabutan');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `nama_lengkap`, `email`, `no_telp`, `username`, `password`, `image`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.comm', '08979787876', 'admin', '$2y$10$6fP2J9dfpTU2KoV06aGiZ.QG11Xq9NcUnuayK0UflrCM9gS55z3bu', '1619674369_fb7b4539b043322a1c48.png', 'admin', '2021-04-09 21:29:08', '2021-04-29 12:32:49'),
(2, 'User', 'user@gmail.com', '0897768216389', 'user', '$2y$10$6fP2J9dfpTU2KoV06aGiZ.QG11Xq9NcUnuayK0UflrCM9gS55z3bu', '', 'karyawan', '2021-04-11 01:11:51', '2021-04-12 03:02:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

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
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`jenis_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

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
  MODIFY `file_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `folder_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `folder_access`
--
ALTER TABLE `folder_access`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `jenis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
