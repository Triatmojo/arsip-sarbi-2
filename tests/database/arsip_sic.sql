-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 18, 2021 at 06:00 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `jenis_id` int(11) NOT NULL DEFAULT 0,
  `file` varchar(255) NOT NULL,
  `user_id` char(5) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `nama_file`, `folder_id`, `jenis_id`, `file`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Surat permohonan ', 58, 1, '1623298855_3cefa6f2a825622caa72.pdf', 'NU003', '2021-06-10 11:20:55', '2021-06-18 07:44:01'),
(2, 'surat perjanjian kerja', 58, 5, '1623977518_9c6d1d472d82d8350ea2.jpg', 'NU003', '2021-06-18 07:51:58', '2021-06-18 07:57:33'),
(4, 'surat pemberitahuan kesiapan', 58, 2, '1623977548_6f4140ecf36e33972a86.pdf', 'NU003', '2021-06-18 07:52:28', '2021-06-18 07:57:42'),
(5, 'surat pemberitahuan kesiapan.pdf', 59, 18, '1623977781_1989224d53978bb4d179.pdf', 'NU002', '2021-06-18 07:56:21', '2021-06-18 07:56:21'),
(6, 'G1c3DLW1mLAxwOBl4mFiBo5iDjJgQ5naS201Uxx0.pdf', 64, 1, '1628379815_5511b3a51f85a0225d22.pdf', 'NU001', '2021-08-08 06:43:35', '2021-08-08 06:43:35'),
(7, 'Struktur Organisasi-3.pdf', 64, 2, '1628379889_cd6f7e86275690293a2b.pdf', 'NU001', '2021-08-08 06:44:49', '2021-08-08 06:44:49'),
(8, 'Sarbi-arsip  Laporan.pdf', 65, 40, '1628526354_4d073c78f6ac2827d188.pdf', 'NU001', '2021-08-09 23:25:54', '2021-08-09 23:25:54'),
(9, 'OtqPhfHGAL7wTg3JVHSxDXSXmUPNbqLg8idAw5T0.pdf', 73, 32, '1629854334_335fd492cd2e1e9d5f39.pdf', 'NU004', '2021-08-25 08:18:54', '2021-08-25 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `folder_id` bigint(20) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `folder_parent` bigint(20) NOT NULL,
  `kategori_id` int(11) NOT NULL DEFAULT 0,
  `user_id` char(5) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`folder_id`, `folder_name`, `folder_parent`, `kategori_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Legalitas', 0, 0, '0', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(2, 'Sistem Mutu', 0, 0, '0', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(3, 'Klien', 0, 0, '0', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(5, 'ISPO', 2, 0, '0', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(6, 'VLK', 2, 0, '0', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(7, 'PPIUP', 2, 0, '0', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(20, 'PHPL', 3, 0, '0', '2021-04-18 11:08:33', '2021-04-18 11:08:33'),
(38, 'PHPL', 2, 0, '0', '2021-04-26 22:55:10', '2021-04-26 22:55:10'),
(57, 'PT. Sarbi', 20, 0, '0', '2021-06-09 10:55:45', '2021-06-09 10:55:45'),
(58, 'Penilaian Awal', 57, 1, '0', '2021-06-09 10:56:09', '2021-06-09 10:56:09'),
(59, 'Penilikan', 57, 2, '0', '2021-06-09 10:56:18', '2021-06-09 10:56:18'),
(60, 'Resertifikasi', 57, 3, '0', '2021-06-09 16:17:14', '2021-06-09 16:17:14'),
(61, 'PT. Aqua', 20, 0, '', '2021-06-18 08:00:45', '2021-06-18 08:00:45'),
(62, 'PT. Consultan Js', 20, 0, '', '2021-06-18 08:01:09', '2021-06-18 08:01:09'),
(63, 'Penilikan', 61, 2, '', '2021-06-18 08:06:31', '2021-06-18 08:06:31'),
(64, 'Penilaian Awal', 61, 1, '', '2021-08-05 00:15:48', '2021-08-05 00:15:48'),
(65, 'Pembekuan', 62, 4, '', '2021-08-09 23:22:43', '2021-08-09 23:22:43'),
(66, 'PT. Sayap Emas ', 20, 0, '', '2021-08-25 01:27:05', '2021-08-25 01:27:05'),
(67, 'Penilaian Awal', 66, 1, '', '2021-08-25 01:27:26', '2021-08-25 01:27:26'),
(68, 'Penilikan', 66, 2, '', '2021-08-25 01:27:37', '2021-08-25 01:27:37'),
(69, 'Resertifikasi', 66, 3, '', '2021-08-25 01:27:48', '2021-08-25 01:27:48'),
(70, 'Pembekuan', 66, 4, '', '2021-08-25 01:28:01', '2021-08-25 01:28:01'),
(71, 'Pencabutan', 66, 5, '', '2021-08-25 01:28:18', '2021-08-25 01:28:18'),
(73, 'Resertifikasi', 61, 3, '', '2021-08-25 08:15:51', '2021-08-25 08:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `folder_access`
--

CREATE TABLE `folder_access` (
  `id` bigint(20) NOT NULL,
  `folder_id` bigint(20) NOT NULL,
  `user_id` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `folder_access`
--

INSERT INTO `folder_access` (`id`, `folder_id`, `user_id`) VALUES
(44, 58, 'NU003'),
(45, 59, 'NU002'),
(46, 60, 'NU003'),
(47, 64, 'NU003'),
(48, 65, 'NU002'),
(49, 65, 'NU003'),
(50, 68, 'NU002'),
(51, 68, 'NU003'),
(52, 70, 'NU004'),
(53, 71, 'NU002'),
(54, 71, 'NU003'),
(55, 71, 'NU004'),
(56, 67, 'NU002'),
(57, 67, 'NU004'),
(58, 69, 'NU004'),
(59, 73, 'NU003'),
(60, 73, 'NU004');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `jenis_id` int(11) NOT NULL,
  `jenis_nama` varchar(256) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `is_required` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`jenis_id`, `jenis_nama`, `kategori_id`, `is_required`) VALUES
(1, 'Surat Permohonan, Aplikasi Permohonan dan Ceklis Dokumen serta Kajian Permohonan', 1, 1),
(2, 'Surat Pemberitahuan Kesiapan Penilaian', 1, 1),
(3, 'Konfirmasi Kesiapan dari Auditee', 1, 1),
(4, 'Pembentukan Tim dan Kajian Auditor', 1, 1),
(5, 'Surat Perjanjian Kerja', 1, 1),
(6, 'Konfirmasi Jadwal dan Susunan Tim', 1, 1),
(7, 'Balasan dari Auditee', 1, 1),
(8, 'Pengumuman Rencana Penilaian (Pengumuman, sermohonan surat pengantar dan Audit Plan)', 1, 1),
(9, 'Pemberitahuan Biaya Lapangan ke auditee', 1, 1),
(10, 'Surat Pengantar dari Sarbi dan dari KLHK', 1, 1),
(11, 'Daftar Hadir, BA, Notulensi Opening', 1, 1),
(12, 'Daftar Hadir, BA, Notulensi Closing', 1, 1),
(13, 'Tally Sheet', 1, 1),
(14, 'LKS (Optional)', 1, 0),
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
(29, 'LKS (Optional)', 2, 0),
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
(40, 'Surat Pengantar dari Sarbi dan dari KLHK', 4, 1),
(41, 'Daftar Hadir, BA, Notulensi Konsultasi Publik', 4, 1),
(42, 'Daftar Hadir, BA, Notulensi Opening', 4, 1),
(43, 'Daftar Hadir, BA, Notulensi Closing', 4, 1),
(44, 'Tally Sheet', 5, 1),
(45, 'LKS (Optional)', 5, 0),
(46, 'Laporan Akhir', 5, 1);

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
  `user_id` char(5) NOT NULL,
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
('NU001', 'Admin', 'admin@gmail.com', '0889182798', 'admin', '$2y$10$0A4bv2bU.owPdvp4UKr7yOa78i.6PMSTMjGdxGnxA2gAXSIp5unCa', '1629828867_8384244226eb5f16acc5.png', 'admin', '2021-06-04 11:21:00', '2021-06-04 14:39:43'),
('NU002', 'Tri atmojo', 'triatmojo@gmail.com', '0891829812', 'triatmojo', '$2y$10$tNTIs36hs3Y3z6Mj9ZelwO0qrv8Uv/LlYWSbRG23YAdDbzmSW9PCC', 'default.png', 'karyawan', NULL, NULL),
('NU003', 'Ghifari ', 'ghifari@gmail.com', '08192739127', 'ghifari', '$2y$10$SrdOfx56j5Vm/Zi/err3D.QrOd2p.qEc8T92a1GYHDLNkYLv3TTtO', 'default.png', 'karyawan', NULL, NULL),
('NU004', 'Beni Budiharto', 'beni@gmail.com', '0878172813', 'beni', '$2y$10$vGhh4ZC.0RAVqqNqAOs8ceZzVvgsUqhPMp9/yL8ELVLgDMH2EOZeu', '1629828414_c203d1507860c4882628.png', 'karyawan', NULL, NULL);

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
  MODIFY `file_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `folder_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `folder_access`
--
ALTER TABLE `folder_access`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `jenis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
