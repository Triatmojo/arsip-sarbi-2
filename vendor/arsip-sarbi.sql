-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 09 Agu 2021 pada 16.38
-- Versi server: 5.7.24
-- Versi PHP: 7.4.16

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
CREATE DATABASE IF NOT EXISTS `arsip_sic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `arsip_sic`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE `file` (
  `file_id` bigint(20) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `folder_id` bigint(20) NOT NULL,
  `jenis_id` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL,
  `user_id` char(5) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`file_id`, `nama_file`, `folder_id`, `jenis_id`, `file`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Surat permohonan ', 58, 1, '1623298855_3cefa6f2a825622caa72.pdf', 'NU003', '2021-06-10 11:20:55', '2021-06-18 07:44:01'),
(2, 'surat perjanjian kerja', 58, 5, '1623977518_9c6d1d472d82d8350ea2.jpg', 'NU003', '2021-06-18 07:51:58', '2021-06-18 07:57:33'),
(4, 'surat pemberitahuan kesiapan', 58, 2, '1623977548_6f4140ecf36e33972a86.pdf', 'NU003', '2021-06-18 07:52:28', '2021-06-18 07:57:42'),
(5, 'surat pemberitahuan kesiapan.pdf', 59, 18, '1623977781_1989224d53978bb4d179.pdf', 'NU002', '2021-06-18 07:56:21', '2021-06-18 07:56:21'),
(6, 'G1c3DLW1mLAxwOBl4mFiBo5iDjJgQ5naS201Uxx0.pdf', 64, 1, '1628379815_5511b3a51f85a0225d22.pdf', 'NU001', '2021-08-08 06:43:35', '2021-08-08 06:43:35'),
(7, 'Struktur Organisasi-3.pdf', 64, 2, '1628379889_cd6f7e86275690293a2b.pdf', 'NU001', '2021-08-08 06:44:49', '2021-08-08 06:44:49'),
(8, 'Sarbi-arsip  Laporan.pdf', 65, 40, '1628526354_4d073c78f6ac2827d188.pdf', 'NU001', '2021-08-09 23:25:54', '2021-08-09 23:25:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `folder`
--

CREATE TABLE `folder` (
  `folder_id` bigint(20) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `folder_parent` bigint(20) NOT NULL,
  `kategori_id` int(11) NOT NULL DEFAULT '0',
  `user_id` char(5) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `folder`
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
(39, 'VLK', 3, 0, '0', '2021-04-26 22:56:04', '2021-04-26 22:56:04'),
(57, 'PT. Sarbi', 20, 0, '0', '2021-06-09 10:55:45', '2021-06-09 10:55:45'),
(58, 'Penilaian Awal', 57, 1, '0', '2021-06-09 10:56:09', '2021-06-09 10:56:09'),
(59, 'Penilikan', 57, 2, '0', '2021-06-09 10:56:18', '2021-06-09 10:56:18'),
(60, 'Resertifikasi', 57, 3, '0', '2021-06-09 16:17:14', '2021-06-09 16:17:14'),
(61, 'PT. Aqua', 20, 0, '', '2021-06-18 08:00:45', '2021-06-18 08:00:45'),
(62, 'PT. Consultan Js', 20, 0, '', '2021-06-18 08:01:09', '2021-06-18 08:01:09'),
(63, 'Penilikan', 61, 2, '', '2021-06-18 08:06:31', '2021-06-18 08:06:31'),
(64, 'Penilaian Awal', 61, 1, '', '2021-08-05 00:15:48', '2021-08-05 00:15:48'),
(65, 'Pembekuan', 62, 4, '', '2021-08-09 23:22:43', '2021-08-09 23:22:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `folder_access`
--

CREATE TABLE `folder_access` (
  `id` bigint(20) NOT NULL,
  `folder_id` bigint(20) NOT NULL,
  `user_id` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `folder_access`
--

INSERT INTO `folder_access` (`id`, `folder_id`, `user_id`) VALUES
(44, 58, 'NU003'),
(45, 59, 'NU002'),
(46, 60, 'NU003'),
(47, 64, 'NU003'),
(48, 65, 'NU002'),
(49, 65, 'NU003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `jenis_id` int(11) NOT NULL,
  `jenis_nama` varchar(256) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `is_required` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `jenis`
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
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Penilaian Awal'),
(2, 'Penilikan'),
(3, 'Resertifikasi'),
(4, 'Pembekuan'),
(5, 'Pencabutan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `nama_lengkap`, `email`, `no_telp`, `username`, `password`, `image`, `role`, `created_at`, `updated_at`) VALUES
('NU001', 'Admin', 'admin@gmail.com', '0889182798', 'admin', '$2y$10$0A4bv2bU.owPdvp4UKr7yOa78i.6PMSTMjGdxGnxA2gAXSIp5unCa', 'default.png', 'admin', '2021-06-04 11:21:00', '2021-06-04 14:39:43'),
('NU002', 'Tri atmojo', 'triatmojo@gmail.com', '0891829812', 'triatmojo', '$2y$10$tNTIs36hs3Y3z6Mj9ZelwO0qrv8Uv/LlYWSbRG23YAdDbzmSW9PCC', 'default.png', 'karyawan', NULL, NULL),
('NU003', 'Ghifari ', 'ghifari@gmail.com', '08192739127', 'ghifari', '$2y$10$SrdOfx56j5Vm/Zi/err3D.QrOd2p.qEc8T92a1GYHDLNkYLv3TTtO', 'default.png', 'karyawan', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`folder_id`);

--
-- Indeks untuk tabel `folder_access`
--
ALTER TABLE `folder_access`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`jenis_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `file`
--
ALTER TABLE `file`
  MODIFY `file_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `folder`
--
ALTER TABLE `folder`
  MODIFY `folder_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `folder_access`
--
ALTER TABLE `folder_access`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `jenis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `belajar`
--
CREATE DATABASE IF NOT EXISTS `belajar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `belajar`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `pengarang` varchar(64) DEFAULT NULL,
  `penerbit` varchar(64) DEFAULT NULL,
  `tahun_terbit` year(4) DEFAULT NULL,
  `isbn` varchar(64) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `dipinjam` int(11) DEFAULT NULL,
  `dibooking` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, '9786022809432', 6, 1, 1, 'img1557402455.jpg'),
(2, 'Mudah belajar komputer unruk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 5, 3, 1, 'img1557402397.jpg'),
(3, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '8346753547', 5, 1, 1, 'img1555522493.jpg'),
(4, 'Detektif Conan Ep 200', 9, 'Ogiwa sasuke', 'Cultura', 2016, '874387583987', 5, 0, 0, 'img1557401465.jpg'),
(5, 'Bahasa indonesia', 2, 'Umri Nur\'aini', 'Pusat Perbukuan', 2015, '757254724884', 3, 0, 0, 'img1557402703.jpg'),
(6, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 5, 0, 0, 'img1557403156.jpg'),
(7, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan ...', 1, 'Anton Subagja', 'Elex Media Komputindo', 2017, '43345356577', 5, 0, 0, 'img1557403502.jpg'),
(8, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media', 2015, '8796868678789', 5, 0, 0, 'img1557403658.jpg'),
(9, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 6, 0, 0, 'img1557404613.jpg'),
(10, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 5, 0, 0, 'img1557404689.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kd_matakuliah` varchar(4) NOT NULL,
  `nm_matakuliah` varchar(30) NOT NULL,
  `sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kd_matakuliah`, `nm_matakuliah`, `sks`) VALUES
('1221', 'robot', 2),
('4564', 'sadasda', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `minat_ta`
--

CREATE TABLE `minat_ta` (
  `nim` varchar(8) NOT NULL,
  `nm_mahasiswa` varchar(30) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `minat` enum('Sistem','Desktop','Web') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `tanggal_input` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'tri atmojo', 'trieatmojo@gmail.com', 'default.png', '123', 1, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kd_matakuliah`);

--
-- Indeks untuk tabel `minat_ta`
--
ALTER TABLE `minat_ta`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `ci_login`
--
CREATE DATABASE IF NOT EXISTS `ci_login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ci_login`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(3, 'sandhika', 'sandhika@gmail.com', 'default.jpg', '$2y$10$iTlibtSJMhjQ3VEmYaYPceoRgLHMGVNp6QyIcGaaZtt4m5Mr1XR36', 1, 1, 1573740479),
(4, 'Tri atmojo', 'trieatmojo98tata@gmail.com', 'default.jpg', '$2y$10$V8qKyL5i9oJxuwDtBFIl0e7tmtRAzSnKpueBQVpvq8UPKAmpPSn0m', 2, 1, 1574331620);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'SubMenu Management', 'menu/subMenu', 'fas fa-fw fa-folder-open', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `ci_pengadaan_barang`
--
CREATE DATABASE IF NOT EXISTS `ci_pengadaan_barang` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ci_pengadaan_barang`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` char(7) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `stok`, `satuan_id`, `jenis_id`) VALUES
('B000001', 'Lenovo Ideapad 1550', 15, 1, 3),
('B000002', 'Samsung Galaxy J1 Ace', 50, 1, 4),
('B000003', 'Aqua 1,5 Liter', 700, 3, 2),
('B000004', 'Mouse Wireless Logitech M220', 20, 1, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` char(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `jumlah_keluar` int(11) NOT NULL,
  `tanggal_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Trigger `barang_keluar`
--
DELIMITER $$
CREATE TRIGGER `update_stok_keluar` BEFORE INSERT ON `barang_keluar` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` - NEW.jumlah_keluar WHERE `barang`.`id_barang` = NEW.barang_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` char(16) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `jumlah_masuk` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Trigger `barang_masuk`
--
DELIMITER $$
CREATE TRIGGER `update_stok_masuk` BEFORE INSERT ON `barang_masuk` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` + NEW.jumlah_masuk WHERE `barang`.`id_barang` = NEW.barang_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Snack'),
(2, 'Minuman'),
(3, 'Laptop'),
(4, 'Handphone'),
(5, 'Sepeda Motor'),
(6, 'Mobil'),
(7, 'Perangkat Komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'Unit'),
(2, 'Pack'),
(3, 'Botol');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `no_telp`, `alamat`) VALUES
(1, 'Ahmad Hasanudin', '085688772971', 'Kec. Cigudeg, Bogor - Jawa Barat'),
(2, 'Asep Salahudin', '081341879246', 'Kec. Ciampea, Bogor - Jawa Barat'),
(3, 'Filo Lial', '087728164328', 'Kec. Ciomas, Bogor - Jawa Barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `role` enum('gudang','admin') NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` text NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `no_telp`, `role`, `password`, `created_at`, `foto`, `is_active`) VALUES
(1, 'Adminisitrator', 'admin', 'admin@admin.com', '025123456789', 'admin', '$2y$10$wMgi9s3FEDEPEU6dEmbp8eAAEBUXIXUy3np3ND2Oih.MOY.q/Kpoy', 1568689561, 'd5f22535b639d55be7d099a7315e1f7f.png', 1),
(7, 'Arfan ID', 'arfandotid', 'arfandotid@gmail.com', '081221528805', 'gudang', '$2y$10$5es8WhFQj8xCmrhDtH86Fu71j97og9f8aR4T22soa7716kAusmaeK', 1568691611, 'user.png', 1),
(8, 'Muhammad Ghifari Arfananda', 'mghifariarfan', 'mghifariarfan@gmail.com', '085697442673', 'gudang', '$2y$10$5SGUIbRyEXH7JslhtEegEOpp6cvxtK6X.qdiQ1eZR7nd0RZjjx3qe', 1568691629, 'user.png', 1),
(13, 'Arfan Kashilukato', 'arfankashilukato', 'arfankashilukato@gmail.com', '081623123181', 'gudang', '$2y$10$/QpTunAD9alBV5NSRJ7ytupS2ibUrbmS3ia3u5B26H6f3mCjOD92W', 1569192547, 'user.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `satuan_id` (`satuan_id`),
  ADD KEY `kategori_id` (`jenis_id`);

--
-- Indeks untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`),
  ADD KEY `id_user` (`user_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indeks untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`),
  ADD KEY `id_user` (`user_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `barang_keluar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_keluar_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `barang_masuk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_masuk_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_masuk_ibfk_3` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `ci_penyucian_kendaraan`
--
CREATE DATABASE IF NOT EXISTS `ci_penyucian_kendaraan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ci_penyucian_kendaraan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya`
--

CREATE TABLE `biaya` (
  `id_biaya` int(10) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `biaya` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biaya`
--

INSERT INTO `biaya` (`id_biaya`, `jenis`, `biaya`) VALUES
(2, 'Sepeda Motor', 10000),
(5, 'Mobil', 25000),
(21, 'Truck', 25000),
(23, 'Bus', 50000),
(24, 'becak', 100000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `no_nota` varchar(10) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `no_nota`, `jenis`, `nama`, `bayar`, `kembali`, `total`, `tanggal`, `id_user`) VALUES
(63, 'C001', '25000', 'Sandhika Galih', 50000, 25000, 25000, '2019-12-03', 1),
(64, 'CC002', '10000', 'imel', 20000, 10000, 10000, '2019-12-15', 1),
(65, 'CC003', '25000', 'Tri atmojo', 50000, 25000, 25000, '2019-12-23', 1),
(66, 'CC004', '100000000', 'nurul cayank', 200000000, 100000000, 100000000, '2019-12-23', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biaya`
--
ALTER TABLE `biaya`
  MODIFY `id_biaya` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT;
--
-- Database: `ci_vlegal`
--
CREATE DATABASE IF NOT EXISTS `ci_vlegal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ci_vlegal`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buyer`
--

CREATE TABLE `buyer` (
  `buyer_id` bigint(20) NOT NULL,
  `negara_id` bigint(20) NOT NULL,
  `nama_buyer` varchar(128) NOT NULL,
  `alamat_buyer` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `client`
--

CREATE TABLE `client` (
  `client_id` bigint(20) NOT NULL,
  `nama_client` varchar(128) NOT NULL,
  `alamat_client` varchar(255) NOT NULL,
  `provinsi_id` bigint(20) NOT NULL,
  `kabupaten_id` bigint(20) NOT NULL,
  `alamat_pabrik` varchar(255) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `email` varchar(128) NOT NULL,
  `website` varchar(128) NOT NULL,
  `nama_contact` varchar(128) NOT NULL,
  `jabatan_contact` varchar(32) NOT NULL,
  `telepon_contact` varchar(20) NOT NULL,
  `email_contact` varchar(128) NOT NULL,
  `nama_pengaju` varchar(128) NOT NULL,
  `jabatan_pengaju` varchar(64) NOT NULL,
  `telepon_pengaju` varchar(20) NOT NULL,
  `email_pengaju` varchar(128) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `akta_pendirian` varchar(128) NOT NULL,
  `akta_perubahan` varchar(128) NOT NULL,
  `no_siup` varchar(20) NOT NULL,
  `tgl_siup` date NOT NULL,
  `tgl_kadaluwarsa_siup` date DEFAULT NULL,
  `no_tdp` varchar(20) NOT NULL,
  `tgl_tdp` date NOT NULL,
  `tgl_kadaluwarsa_tdp` date DEFAULT NULL,
  `npwp` varchar(20) NOT NULL,
  `kantor_pelayanan` varchar(128) NOT NULL,
  `sppkp` varchar(64) NOT NULL,
  `skt` varchar(64) NOT NULL,
  `no_sertifikat` varchar(15) NOT NULL,
  `tgl_sertifikat` date NOT NULL,
  `tgl_kadaluwarsa_sertifikat` date DEFAULT NULL,
  `jenis_izin` varchar(5) NOT NULL,
  `nomor_izin` varchar(32) NOT NULL,
  `instansi_penerbit` varchar(128) NOT NULL,
  `tgl_terbit` date NOT NULL,
  `jenis_produk` varchar(64) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `client`
--

INSERT INTO `client` (`client_id`, `nama_client`, `alamat_client`, `provinsi_id`, `kabupaten_id`, `alamat_pabrik`, `telepon`, `fax`, `email`, `website`, `nama_contact`, `jabatan_contact`, `telepon_contact`, `email_contact`, `nama_pengaju`, `jabatan_pengaju`, `telepon_pengaju`, `email_pengaju`, `user_id`, `status`, `akta_pendirian`, `akta_perubahan`, `no_siup`, `tgl_siup`, `tgl_kadaluwarsa_siup`, `no_tdp`, `tgl_tdp`, `tgl_kadaluwarsa_tdp`, `npwp`, `kantor_pelayanan`, `sppkp`, `skt`, `no_sertifikat`, `tgl_sertifikat`, `tgl_kadaluwarsa_sertifikat`, `jenis_izin`, `nomor_izin`, `instansi_penerbit`, `tgl_terbit`, `jenis_produk`, `created_at`, `updated_at`) VALUES
(2, 'PT. CIPTA MANDALA LUMBER NUSANTARA', 'Jln. Raya Indralaya Prabumulih KM 41, Kelurahan Lorok, Kecamatan Indralaya Kabupaten Ogan Ilir, Sumatera Selatan, 30862', 6, 105, 'Jln. Raya Indralaya Prabumulih KM 41, Kelurahan Lorok, Kecamatan Indralaya Kabupaten Ogan Ilir, Sumatera Selatan, 30862', '(021) 66677000', '(021) 66677000', 'exim.cmlu@gmail.com', 'www.cmlnusantara.com', 'Henry Tanuwijaya', 'Direktur', '08116002309', 'exim@cmlnusantara.com', 'Henry Tanuwijaya', 'Direktur', '0811002309', 'exim@cmlnusantara.com', 4, 1, 'Nomor 10 Tanggal 15 Juni 2017', 'Nomor 57 Tanggal 27 Januari 2020', '9120404201018', '2019-02-12', '2025-07-17', '9120404201018', '2019-02-12', '2024-07-18', '822157186312000', 'KPP Kayu Agung', 'S-6PKP/WPJ.03/KP.1003/2018', 'S-5418KT/WPJ.03/KP.1003/2017', '172-SIC-04.02', '2020-04-15', '2025-07-09', 'iui', '9120404201018', 'OSS', '2019-02-12', 'Hasil Hutan Kayu (Kayu Karet/Kayu Log)', '2021-03-12 13:39:35', '2021-03-17 14:30:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kayu`
--

CREATE TABLE `jenis_kayu` (
  `jenis_id` bigint(20) NOT NULL,
  `nama_jenis` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `jenis_kayu`
--

INSERT INTO `jenis_kayu` (`jenis_id`, `nama_jenis`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Melapi ( Shorea spp)', 1, NULL, '2021-03-19 10:59:02'),
(2, 'A. Chedar (Juniperus Virginiana)', 1, NULL, NULL),
(3, 'Acacia (Acacia Mangium)', 1, NULL, NULL),
(4, 'Adulpak (Sapium baccatum)', 1, NULL, NULL),
(5, 'African cherry (Prunus africana)', 1, NULL, NULL),
(6, 'African-birch (Anogeissus leiocarpa)', 1, NULL, NULL),
(7, 'Afrikana', 1, NULL, NULL),
(8, 'Agathis (Agathis alba, Agathis spp.)', 1, NULL, NULL),
(9, 'Agathis (Agathis alba)', 1, NULL, NULL),
(10, 'Agathis (Agathis beccari)', 1, NULL, NULL),
(11, 'Agathis (Agathis borneensis)', 1, NULL, NULL),
(12, 'Agathis (Agathis celebica)', 1, NULL, NULL),
(13, 'Agathis (Agathis dammara)', 1, NULL, NULL),
(14, 'Agathis (Agathis hamii)', 1, NULL, NULL),
(15, 'Agathis (Agathis labillardieri)', 1, NULL, NULL),
(16, 'Agathis (Agathis loranthifolia)', 1, NULL, NULL),
(17, 'Agathis (Agathis philippinensis)', 1, NULL, NULL),
(18, 'Agathis (Agathis sp.)', 1, NULL, NULL),
(19, 'Akasia (Acacia brasiliensis)', 1, NULL, NULL),
(20, 'Akasia (Acacia Crassicarpa)', 1, NULL, NULL),
(21, 'Akasia (Acacia Spp)', 1, NULL, NULL),
(22, 'Akasia daun lebar (Acacia auriculiformis)', 1, NULL, NULL),
(23, 'Akasia Mangium (Acacia mangium)', 1, NULL, NULL),
(24, 'Alban (Gardenia tubifera)', 1, NULL, NULL),
(25, 'Albasia (Albizia falcataria)', 1, NULL, NULL),
(26, 'Albasia (Paraserianthes falcataria)', 1, NULL, NULL),
(27, 'Alder', 1, NULL, NULL),
(28, 'Alngit (Cinchona sp.)', 1, NULL, NULL),
(29, 'Alpine fir (Abies lasiocarpa)', 1, NULL, NULL),
(30, 'American beech (Fagus grandifolia)', 1, NULL, NULL),
(31, 'American dwarf birch (Betula pumila)', 1, NULL, NULL),
(32, 'Amur cherry (Prunus maackii)', 1, NULL, NULL),
(33, 'Amur maple (Acer tataricum)', 1, NULL, NULL),
(34, 'Andalas (Morus macroura)', 1, NULL, NULL),
(35, 'Anggerit (Neonauclea calycina)', 1, NULL, NULL),
(36, 'Anggerit (Neonauclea cyrtopodioides)', 1, NULL, NULL),
(37, 'Anggerit (Neonauclea excelsa)', 1, NULL, NULL),
(38, 'Anggerit (Neonauclea gigantea)', 1, NULL, NULL),
(39, 'Anggerit (Neonauclea lanceolata)', 1, NULL, NULL),
(40, 'Anggerit (Neonauclea sp.)', 1, NULL, NULL),
(41, 'Anggerung besar (Trema orientalis)', 1, NULL, NULL),
(42, 'Anggerung besar (Trema sp.)', 1, NULL, NULL),
(43, 'Anggerung besar (Trema tomentosa)', 1, NULL, NULL),
(44, 'Anggi', 1, NULL, NULL),
(45, 'Anggrong', 1, NULL, NULL),
(46, 'Anggrong / Anggrung (Trema orientalis)', 1, NULL, NULL),
(47, 'Angsret (Spathodea campanulata)', 1, NULL, NULL),
(48, 'angular winter-cherry (Physalis angulata)', 1, NULL, NULL),
(49, 'annual ground-cherry (Physalis minima)', 1, NULL, NULL),
(50, 'Antarctic beech (Nothofagus antarctica)', 1, NULL, NULL),
(51, 'Antarctic beech (Nothofagus cunninghamii)', 1, NULL, NULL),
(52, 'Api - api (Adinandra dumosa)', 1, NULL, NULL),
(53, 'Api-api (Avicennia alba)', 1, NULL, NULL),
(54, 'Api-api (Avicennia officinalis)', 1, NULL, NULL),
(55, 'Api-api (Avicennia rumphiana)', 1, NULL, NULL),
(56, 'Api-api (Avicennia sp.)', 1, NULL, NULL),
(57, 'Ara (Ficus adenosperma)', 1, NULL, NULL),
(58, 'Ara (Ficus albipila)', 1, NULL, NULL),
(59, 'Ara (Ficus annulata)', 1, NULL, NULL),
(60, 'Ara (Ficus callosa)', 1, NULL, NULL),
(61, 'Ara (Ficus fistulosa)', 1, NULL, NULL),
(62, 'Ara (Ficus magnoliifolia)', 1, NULL, NULL),
(63, 'Ara (Ficus nervosa)', 1, NULL, NULL),
(64, 'Ara (Ficus sp.)', 1, NULL, NULL),
(65, 'Ara (Ficus stricta)', 1, NULL, NULL),
(66, 'Ara (Ficus variegata)', 1, NULL, NULL),
(67, 'Arang-arang', 1, NULL, NULL),
(68, 'Aren (Arenga pinnata)', 1, NULL, NULL),
(69, 'Asam jawa (Tamarindus indica)', 1, NULL, NULL),
(70, 'Asam Tanin (Dialium indum)', 1, NULL, NULL),
(71, 'Aser (Acer caesium)', 1, NULL, NULL),
(72, 'Aser (Acer laurinum)', 1, NULL, NULL),
(73, 'Aser (Acer niveum)', 1, NULL, NULL),
(74, 'Aser (Acer sp.)', 1, NULL, NULL),
(75, 'Ash-leaf maple (Acer negundo)', 1, NULL, NULL),
(76, 'Asian white birch (Betula platyphylla)', 1, NULL, NULL),
(77, 'Atlantic cedar (Cedrus atlantica)', 1, NULL, NULL),
(78, 'Australian-maple (Flindersia brayleyana)', 1, NULL, NULL),
(79, 'autumn cherry (Prunus subhirtella)', 1, NULL, NULL),
(80, 'Bacang (Manejitera foetida)', 1, NULL, NULL),
(81, 'Bahing - bahing (Nyssa javanica)', 1, NULL, NULL),
(82, 'Bair (Cinnamomum parthenoxylon)', 1, NULL, NULL),
(83, 'Bajo (Pterospermum Celebicum sp)', 1, NULL, NULL),
(84, 'Bakan (Aetinodaphne sp)', 1, NULL, NULL),
(85, 'Bakata (Haplolobus Celebicus sp)', 1, NULL, NULL),
(86, 'Bakata (Trichadenia philippinensis)', 1, NULL, NULL),
(87, 'Bakau (Bruguiera gymnorrhiza)', 1, NULL, NULL),
(88, 'Bakau (Rhizophora apiculata)', 1, NULL, NULL),
(89, 'Bakau (Rhizophora mucronata)', 1, NULL, NULL),
(90, 'Bakau (Rhizophora sp.)', 1, NULL, NULL),
(91, 'Bakau (Rhizophora stylosa)', 1, NULL, NULL),
(92, 'Bakau pisang (Kandelia candell)', 1, NULL, NULL),
(93, 'Bakbaken (Polyltha hypoleuoa)', 1, NULL, NULL),
(94, 'Balam (Palaquim Qutta)', 1, NULL, NULL),
(95, 'Balam (Palaquium spp)', 1, NULL, NULL),
(96, 'Balam sudu (Palaguium sumatranum)', 1, NULL, NULL),
(97, 'Balau (Hopea andersonii)', 1, NULL, NULL),
(98, 'Balau (Hopea celebica)', 1, NULL, NULL),
(99, 'Balau (Hopea gregaria)', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `kabupaten_id` bigint(20) NOT NULL,
  `kode_kabupaten` char(4) NOT NULL,
  `nama_kabupaten` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`kabupaten_id`, `kode_kabupaten`, `nama_kabupaten`, `status`) VALUES
(1, '1101', 'Kab. Simeulue', 1),
(2, '1102', 'Kab. Aceh Singkil', 1),
(3, '1103', 'Kab. Aceh Selatan', 1),
(4, '1104', 'Kab. Aceh Tenggara', 1),
(5, '1105', 'Kab. Aceh Timur', 1),
(6, '1106', 'Kab. Aceh Tengah', 1),
(7, '1107', 'Kab. Aceh Barat', 1),
(8, '1108', 'Kab. Aceh Besar', 1),
(9, '1109', 'Kab. Pidie', 1),
(10, '1110', 'Kab. Bireuen', 1),
(11, '1111', 'Kab. Aceh Utara', 1),
(12, '1112', 'Kab. Aceh Barat Daya', 1),
(13, '1113', 'Kab. Gayo Lues', 1),
(14, '1114', 'Kab. Aceh Jaya', 1),
(15, '1115', 'Kab. Nagan Raya', 1),
(16, '1116', 'Kab. Aceh Tamiang', 1),
(17, '1117', 'Kab. Bener Meriah', 1),
(18, '1118', 'Kab. Pidie Jaya', 1),
(19, '1171', 'Kota Banda Aceh', 1),
(20, '1172', 'Kota Sabang', 1),
(21, '1173', 'Kota Lhokseumawe', 1),
(22, '1174', 'Kota Langsa', 1),
(23, '1175', 'Kota Subulussalam', 1),
(24, '1201', 'Kab. Nias', 1),
(25, '1202', 'Kab. Mandailing Natal', 1),
(26, '1203', 'Kab. Tapanuli Selatan', 1),
(27, '1204', 'Kab. Tapanuli Tengah', 1),
(28, '1205', 'Kab. Tapanuli Utara', 1),
(29, '1206', 'Kab. Toba Samosir', 1),
(30, '1207', 'Kab. Labuhan Batu', 1),
(31, '1208', 'Kab. Asahan', 1),
(32, '1209', 'Kab. Simalungun', 1),
(33, '1210', 'Kab. Dairi', 1),
(34, '1211', 'Kab. Karo', 1),
(35, '1212', 'Kab. Deli Serdang', 1),
(36, '1213', 'Kab. Langkat', 1),
(37, '1214', 'Kab. Nias Selatan', 1),
(38, '1215', 'Kab. Pakpak Bharat', 1),
(39, '1216', 'Kab. Humbang Hasundutan', 1),
(40, '1217', 'Kab. Samosir', 1),
(41, '1218', 'Kab. Serdang Bedagai', 1),
(42, '1219', 'Kab. Batu Bara', 1),
(43, '1220', 'Kab. Padang Lawas Utara', 1),
(44, '1221', 'Kab. Padang Lawas', 1),
(45, '1222', 'Kab. Labuhanbatu Selatan', 1),
(46, '1223', 'Kab. Labuhanbatu Utara', 1),
(47, '1224', 'Kab. Nias Utara', 1),
(48, '1225', 'Kab. Nias Barat', 1),
(49, '1271', 'Kota Medan', 1),
(50, '1272', 'Kota Pematang Siantar', 1),
(51, '1273', 'Kota Sibolga', 1),
(52, '1274', 'Kota Tanjung Balai', 1),
(53, '1275', 'Kota Binjai', 1),
(54, '1276', 'Kota Tebing Tinggi', 1),
(55, '1277', 'Kota Padang Sidempuan', 1),
(56, '1278', 'Kota Gunungsitoli', 1),
(57, '1301', 'Kab. Kepulauan Mentawai', 1),
(58, '1302', 'Kab. Pesisir Selatan', 1),
(59, '1303', 'Kab. Solok', 1),
(60, '1304', 'Kab. Sawahlunto/Sijunjung', 1),
(61, '1305', 'Kab. Tanah Datar', 1),
(62, '1306', 'Kab. Padang Pariaman', 1),
(63, '1307', 'Kab. Agam', 1),
(64, '1308', 'Kab. Lima Puluh Koto', 1),
(65, '1309', 'Kab. Pasaman', 1),
(66, '1310', 'Kab. Dharmasraya', 1),
(67, '1311', 'Kab. Solok Selatan', 1),
(68, '1312', 'Kab. Pasaman Barat', 1),
(69, '1371', 'Kota Padang', 1),
(70, '1372', 'Kota Solok', 1),
(71, '1373', 'Kota Sawah Lunto', 1),
(72, '1374', 'Kota Padang Panjang', 1),
(73, '1375', 'Kota Bukittinggi', 1),
(74, '1376', 'Kota Payakumbuh', 1),
(75, '1377', 'Kota Pariaman', 1),
(76, '1401', 'Kab. Kuantan Singingi', 1),
(77, '1402', 'Kab. Indragiri Hulu', 1),
(78, '1403', 'Kab. Indragiri Hilir', 1),
(79, '1404', 'Kab. Pelalawan', 1),
(80, '1405', 'Kab. Siak', 1),
(81, '1406', 'Kab. Kampar', 1),
(82, '1407', 'Kab. Rokan Hulu', 1),
(83, '1408', 'Kab. Bengkalis', 1),
(84, '1409', 'Kab. Rokan Hilir', 1),
(85, '1410', 'Kab. Kepulauan Meranti', 1),
(86, '1471', 'Kota Pekanbaru', 1),
(87, '1472', 'Kota Dumai', 1),
(88, '1501', 'Kab. Kerinci', 1),
(89, '1502', 'Kab. Merangin', 1),
(90, '1503', 'Kab. Sarolangun', 1),
(91, '1504', 'Kab. Batang Hari', 1),
(92, '1505', 'Kab. Muaro Jambi', 1),
(93, '1506', 'Kab. Tanjung Jabung Timur', 1),
(94, '1507', 'Kab. Tanjung Jabung Barat', 1),
(95, '1508', 'Kab. Tebo', 1),
(96, '1509', 'Kab. Bungo', 1),
(97, '1571', 'Kota Jambi', 1),
(98, '1572', 'Kota Sungai Penuh', 1),
(99, '1601', 'Kab. Ogan Komering Ulu', 1),
(100, '1602', 'Kab. Ogan Komering Ilir', 1),
(101, '1603', 'Kab. Muara Enim', 1),
(102, '1604', 'Kab. Lahat', 1),
(103, '1605', 'Kab. Musi Rawas', 1),
(104, '1606', 'Kab. Musi Banyu Asin', 1),
(105, '1607', 'Kab. Banyuasin', 1),
(106, '1608', 'Kab. Oku Timur', 1),
(107, '1609', 'Kab. Oku Selatan', 1),
(108, '1610', 'Kab. Ogan Ilir', 1),
(109, '1611', 'Kab. Empat Lawang', 1),
(110, '1671', 'Kota Palembang', 1),
(111, '1672', 'Kota Pagar Alam', 1),
(112, '1673', 'Kota Lubuk Linggau', 1),
(113, '1674', 'Kota Prabumulih', 1),
(114, '1701', 'Kab. Bengkulu Selatan', 1),
(115, '1702', 'Kab. Rejang Lebong', 1),
(116, '1703', 'Kab. Bengkulu Utara', 1),
(117, '1704', 'Kab. Kaur', 1),
(118, '1705', 'Kab. Seluma', 1),
(119, '1706', 'Kab. Muko Muko', 1),
(120, '1707', 'Kab. Lebong', 1),
(121, '1708', 'Kab. Kepahiang', 1),
(122, '1709', 'Kab. Bengkulu Tengah', 1),
(123, '1771', 'Kota Bengkulu', 1),
(124, '1801', 'Kab. Lampung Barat', 1),
(125, '1802', 'Kab. Tanggamus', 1),
(126, '1803', 'Kab. Lampung Selatan', 1),
(127, '1804', 'Kab. Lampung Timur', 1),
(128, '1805', 'Kab. Lampung Tengah', 1),
(129, '1806', 'Kab. Lampung Utara', 1),
(130, '1807', 'Kab. Way Kanan', 1),
(131, '1808', 'Kab. Tulang Bawang', 1),
(132, '1809', 'Kab. Pesawaran', 1),
(133, '1810', 'Kab. Pringsewu', 1),
(134, '1811', 'Kab. Mesuji', 1),
(135, '1812', 'Kab. Tulang Bawang Barat', 1),
(136, '1871', 'Kota Bandar Lampung', 1),
(137, '1872', 'Kota Metro', 1),
(138, '1901', 'Kab. Bangka', 1),
(139, '1902', 'Kab. Belitung', 1),
(140, '1903', 'Kab. Bangka Selatan', 1),
(141, '1904', 'Kab. Bangka Tengah', 1),
(142, '1905', 'Kab. Bangka Barat', 1),
(143, '1906', 'Kab. Belitung Timur', 1),
(144, '1971', 'Kota Pangkal Pinang', 1),
(145, '2101', 'Kab. Karimun', 1),
(146, '2102', 'Kab. Natuna', 1),
(147, '2103', 'Kab. Bintan', 1),
(148, '2104', 'Kab. Lingga', 1),
(149, '2105', 'Kab. Kepulauan Anambas', 1),
(150, '2171', 'Kota Batam', 1),
(151, '2172', 'Kota Tanjung Pinang', 1),
(152, '3101', 'Kab. Adm. Kepulauan Seribu', 1),
(153, '3171', 'Kota Jakarta Selatan', 1),
(154, '3172', 'Kota Jakarta Timur', 1),
(155, '3173', 'Kota Jakarta Pusat', 1),
(156, '3174', 'Kota Jakarta Barat', 1),
(157, '3175', 'Kota Jakarta Utara', 1),
(158, '3201', 'Kab. Bogor', 1),
(159, '3202', 'Kab. Sukabumi', 1),
(160, '3203', 'Kab. Cianjur', 1),
(161, '3204', 'Kab. Bandung', 1),
(162, '3205', 'Kab. Garut', 1),
(163, '3206', 'Kab. Tasikmalaya', 1),
(164, '3207', 'Kab. Ciamis', 1),
(165, '3208', 'Kab. Kuningan', 1),
(166, '3209', 'Kab. Cirebon', 1),
(167, '3210', 'Kab. Majalengka', 1),
(168, '3211', 'Kab. Sumedang', 1),
(169, '3212', 'Kab. Indramayu', 1),
(170, '3213', 'Kab. Subang', 1),
(171, '3214', 'Kab. Purwakarta', 1),
(172, '3215', 'Kab. Karawang', 1),
(173, '3216', 'Kab. Bekasi', 1),
(174, '3217', 'Kab. Bandung Barat', 1),
(175, '3271', 'Kota Bogor', 1),
(176, '3272', 'Kota Sukabumi', 1),
(177, '3273', 'Kota Bandung', 1),
(178, '3274', 'Kota Cirebon', 1),
(179, '3275', 'Kota Bekasi', 1),
(180, '3276', 'Kota Depok', 1),
(181, '3277', 'Kota Cimahi', 1),
(182, '3278', 'Kota Tasikmalaya', 1),
(183, '3279', 'Kota Banjar', 1),
(184, '3301', 'Kab. Cilacap', 1),
(185, '3302', 'Kab. Banyumas', 1),
(186, '3303', 'Kab. Purbalingga', 1),
(187, '3304', 'Kab. Banjarnegara', 1),
(188, '3305', 'Kab. Kebumen', 1),
(189, '3306', 'Kab. Purworejo', 1),
(190, '3307', 'Kab. Wonosobo', 1),
(191, '3308', 'Kab. Magelang', 1),
(192, '3309', 'Kab. Boyolali', 1),
(193, '3310', 'Kab. Klaten', 1),
(194, '3311', 'Kab. Sukoharjo', 1),
(195, '3312', 'Kab. Wonogiri', 1),
(196, '3313', 'Kab. Karanganyar', 1),
(197, '3314', 'Kab. Sragen', 1),
(198, '3315', 'Kab. Grobogan', 1),
(199, '3316', 'Kab. Blora', 1),
(200, '3317', 'Kab. Rembang', 1),
(201, '3318', 'Kab. Pati', 1),
(202, '3319', 'Kab. Kudus', 1),
(203, '3320', 'Kab. Jepara', 1),
(204, '3321', 'Kab. Demak', 1),
(205, '3322', 'Kab. Semarang', 1),
(206, '3323', 'Kab. Temanggung', 1),
(207, '3324', 'Kab. Kendal', 1),
(208, '3325', 'Kab. Batang', 1),
(209, '3326', 'Kab. Pekalongan', 1),
(210, '3327', 'Kab. Pemalang', 1),
(211, '3328', 'Kab. Tegal', 1),
(212, '3329', 'Kab. Brebes', 1),
(213, '3371', 'Kota Magelang', 1),
(214, '3372', 'Kota Surakarta', 1),
(215, '3373', 'Kota Salatiga', 1),
(216, '3374', 'Kota Semarang', 1),
(217, '3375', 'Kota Pekalongan', 1),
(218, '3376', 'Kota Tegal', 1),
(219, '3401', 'Kab. Kulon Progo', 1),
(220, '3402', 'Kab. Bantul', 1),
(221, '3403', 'Kab. Gunung Kidul', 1),
(222, '3404', 'Kab. Sleman', 1),
(223, '3471', 'Kota Yogyakarta', 1),
(224, '3501', 'Kab. Pacitan', 1),
(225, '3502', 'Kab. Ponorogo', 1),
(226, '3503', 'Kab. Trenggalek', 1),
(227, '3504', 'Kab. Tulungagung', 1),
(228, '3505', 'Kab. Blitar', 1),
(229, '3506', 'Kab. Kediri', 1),
(230, '3507', 'Kab. Malang', 1),
(231, '3508', 'Kab. Lumajang', 1),
(232, '3509', 'Kab. Jember', 1),
(233, '3510', 'Kab. Banyuwangi', 1),
(234, '3511', 'Kab. Bondowoso', 1),
(235, '3512', 'Kab. Situbondo', 1),
(236, '3513', 'Kab. Probolinggo', 1),
(237, '3514', 'Kab. Pasuruan', 1),
(238, '3515', 'Kab. Sidoarjo', 1),
(239, '3516', 'Kab. Mojokerto', 1),
(240, '3517', 'Kab. Jombang', 1),
(241, '3518', 'Kab. Nganjuk', 1),
(242, '3519', 'Kab. Madiun', 1),
(243, '3520', 'Kab. Magetan', 1),
(244, '3521', 'Kab. Ngawi', 1),
(245, '3522', 'Kab. Bojonegoro', 1),
(246, '3523', 'Kab. Tuban', 1),
(247, '3524', 'Kab. Lamongan', 1),
(248, '3525', 'Kab. Gresik', 1),
(249, '3526', 'Kab. Bangkalan', 1),
(250, '3527', 'Kab. Sampang', 1),
(251, '3528', 'Kab. Pamekasan', 1),
(252, '3529', 'Kab. Sumenep', 1),
(253, '3571', 'Kota Kediri', 1),
(254, '3572', 'Kota Blitar', 1),
(255, '3573', 'Kota Malang', 1),
(256, '3574', 'Kota Probolinggo', 1),
(257, '3575', 'Kota Pasuruan', 1),
(258, '3576', 'Kota Mojokerto', 1),
(259, '3577', 'Kota Madiun', 1),
(260, '3578', 'Kota Surabaya', 1),
(261, '3579', 'Kota Batu', 1),
(262, '3601', 'Kab. Pandeglang', 1),
(263, '3602', 'Kab. Lebak', 1),
(264, '3603', 'Kab. Tangerang', 1),
(265, '3604', 'Kab. Serang', 1),
(266, '3671', 'Kota Tangerang', 1),
(267, '3672', 'Kota Cilegon', 1),
(268, '3673', 'Kota Serang', 1),
(269, '3674', 'Kota Tangerang Selatan', 1),
(270, '5101', 'Kab. Jembrana', 1),
(271, '5102', 'Kab. Tabanan', 1),
(272, '5103', 'Kab. Badung', 1),
(273, '5104', 'Kab. Gianyar', 1),
(274, '5105', 'Kab. Klungkung', 1),
(275, '5106', 'Kab. Bangli', 1),
(276, '5107', 'Kab. Karang Asem', 1),
(277, '5108', 'Kab. Buleleng', 1),
(278, '5171', 'Kota Denpasar', 1),
(279, '5201', 'Kab. Lombok Barat', 1),
(280, '5202', 'Kab. Lombok Tengah', 1),
(281, '5203', 'Kab. Lombok Timur', 1),
(282, '5204', 'Kab. Sumbawa', 1),
(283, '5205', 'Kab. Dompu', 1),
(284, '5206', 'Kab. Bima', 1),
(285, '5207', 'Kab. Sumbawa Barat', 1),
(286, '5208', 'Kab. Lombok Utara', 1),
(287, '5271', 'Kota Mataram', 1),
(288, '5272', 'Kota Mataram', 1),
(289, '5301', 'Kab. Sumba Barat', 1),
(290, '5302', 'Kab. Sumba Timur', 1),
(291, '5303', 'Kab. Kupang', 1),
(292, '5304', 'Kab. Timor Tengah Selatan', 1),
(293, '5305', 'Kab. Timor Tengah Utara', 1),
(294, '5306', 'Kab. Belu', 1),
(295, '5307', 'Kab. Alor', 1),
(296, '5308', 'Kab. Lembata', 1),
(297, '5309', 'Kab. Flores Timur', 1),
(298, '5310', 'Kab. Sikka', 1),
(299, '5311', 'Kab. Ende', 1),
(300, '5312', 'Kab. Ngada', 1),
(301, '5313', 'Kab. Manggarai', 1),
(302, '5314', 'Kab. Rote Ndao', 1),
(303, '5315', 'Kab. Manggarai Barat', 1),
(304, '5316', 'Kab. Nagekeo', 1),
(305, '5317', 'Kab. Sumba Tengah', 1),
(306, '5318', 'Kab. Sumba Barat Daya', 1),
(307, '5319', 'Kab. Manggarai Timur', 1),
(308, '5320', 'Kab. Sabu Raijua', 1),
(309, '5371', 'Kota Kupang', 1),
(310, '6101', 'Kab. Sambas', 1),
(311, '6102', 'Kab. Bengkayang', 1),
(312, '6103', 'Kab. Landak', 1),
(313, '6104', 'Kab. Pontianak', 1),
(314, '6105', 'Kab. Sanggau', 1),
(315, '6106', 'Kab. Ketapang', 1),
(316, '6107', 'Kab. Sintang', 1),
(317, '6108', 'Kab. Kapuas Hulu', 1),
(318, '6109', 'Kab. Sekadau', 1),
(319, '6110', 'Kab. Melawai', 1),
(320, '6111', 'Kab. Kayong Utara', 1),
(321, '6112', 'Kab. Kubu Raya', 1),
(322, '6171', 'Kota Pontianak', 1),
(323, '6172', 'Kota Singkawang', 1),
(324, '6201', 'Kab. Kotawaringin Barat', 1),
(325, '6202', 'Kab. Kotawaringin Timur', 1),
(326, '6203', 'Kab. Kapuas', 1),
(327, '6204', 'Kab. Barito Selatan', 1),
(328, '6205', 'Kab. Barito Utara', 1),
(329, '6206', 'Kab. Katingan', 1),
(330, '6207', 'Kab. Seruyan', 1),
(331, '6208', 'Kab. Sukamara', 1),
(332, '6209', 'Kab. Lamandau', 1),
(333, '6210', 'Kab. Gunung Mas', 1),
(334, '6211', 'Kab. Pulang Pisau', 1),
(335, '6212', 'Kab. Murung Raya', 1),
(336, '6213', 'Kab. Barito Timur', 1),
(337, '6271', 'Kota Palangka Raya', 1),
(338, '6301', 'Kab. Tanah Laut', 1),
(339, '6302', 'Kab. Kota Baru', 1),
(340, '6303', 'Kab. Banjar', 1),
(341, '6304', 'Kab. Barito Kuala', 1),
(342, '6305', 'Kab. Tapin', 1),
(343, '6306', 'Kab. Hulu Sungai Selatan', 1),
(344, '6307', 'Kab. Hulu Sungai Tengah', 1),
(345, '6308', 'Kab. Hulu Sungai Utara', 1),
(346, '6309', 'Kab. Tabalong', 1),
(347, '6310', 'Kab. Tanah Bumbu', 1),
(348, '6311', 'Kab. Balangan', 1),
(349, '6371', 'Kota Banjarmasin', 1),
(350, '6372', 'Kota Banjar Baru', 1),
(351, '6401', 'Kab. Paser', 1),
(352, '6402', 'Kab. Kutai Barat', 1),
(353, '6403', 'Kab. Kutai Timur', 1),
(354, '6404', 'Kab. Berau', 1),
(355, '6405', 'Kab. Malinau', 1),
(356, '6406', 'Kab. Bulungan', 1),
(357, '6407', 'Kab. Nunukan', 1),
(358, '6408', 'Kab. Kutai Kertanegara', 1),
(359, '6409', 'Kab. Tana Tidung', 1),
(360, '6410', 'Kab. Penajam Paser Utara', 1),
(361, '6471', 'Kota Balikpapan', 1),
(362, '6472', 'Kota Samarinda', 1),
(363, '6473', 'Kota Tarakan', 1),
(364, '6474', 'Kota Bontang', 1),
(365, '7101', 'Kab. Bolaang Mengondow', 1),
(366, '7102', 'Kab. Minahasa', 1),
(367, '7103', 'Kab. Sangihe Talaud', 1),
(368, '7104', 'Kab. Kepulauan Talaud', 1),
(369, '7105', 'Kab. Minahasa Selatan', 1),
(370, '7106', 'Kab. Minahasa Utara', 1),
(371, '7107', 'Kab. Minahasa Tenggara', 1),
(372, '7108', 'Kab. Bolaang Mongondow Utara', 1),
(373, '7109', 'Kab. Kepulauan Siau Tagulandang Biaro', 1),
(374, '7110', 'Kab. Bolaang Mongondow Timur', 1),
(375, '7111', 'Kab. Bolaang Mongondow Selatan', 1),
(376, '7171', 'Kota Manado', 1),
(377, '7172', 'Kota Bitung', 1),
(378, '7173', 'Kota Tomohon', 1),
(379, '7174', 'Kota Kotamobagu', 1),
(380, '7201', 'Kab. Banggai Kepulauan', 1),
(381, '7202', 'Kab. Banggai', 1),
(382, '7203', 'Kab. Morowali', 1),
(383, '7204', 'Kab. Poso', 1),
(384, '7205', 'Kab. Donggala', 1),
(385, '7206', 'Kab. Toli-Toli', 1),
(386, '7207', 'Kab. Buol', 1),
(387, '7208', 'Kab. Parigi Moutong', 1),
(388, '7209', 'Kab. Tojo Una Una', 1),
(389, '7210', 'Kab. Sigi', 1),
(390, '7271', 'Kota Palu', 1),
(391, '7301', 'Kab. Kepulauan Selayar', 1),
(392, '7302', 'Kab. Bulukumba', 1),
(393, '7303', 'Kab. Bantaeng', 1),
(394, '7304', 'Kab. Jeneponto', 1),
(395, '7305', 'Kab. Takalar', 1),
(396, '7306', 'Kab. Gowa', 1),
(397, '7307', 'Kab. Sinjai', 1),
(398, '7308', 'Kab. Maros', 1),
(399, '7309', 'Kab. Pangkajene Kepulauan', 1),
(400, '7310', 'Kab. Barru', 1),
(401, '7311', 'Kab. Bone', 1),
(402, '7312', 'Kab. Soppeng', 1),
(403, '7313', 'Kab. Wajo', 1),
(404, '7314', 'Kab. Sidenreng Rappang', 1),
(405, '7315', 'Kab. Pinrang', 1),
(406, '7316', 'Kab. Enrekang', 1),
(407, '7317', 'Kab. Luwu', 1),
(408, '7318', 'Kab. Tana Toraja', 1),
(409, '7322', 'Kab. Luwu Utara', 1),
(410, '7323', 'Kab. Luwu Timur', 1),
(411, '7324', 'Kab. Toraja Utara', 1),
(412, '7372', 'Kota Pare-Pare', 1),
(413, '7373', 'Kota Makassar', 1),
(414, '7374', 'Kota Palopo', 1),
(415, '7401', 'Kab. Buton', 1),
(416, '7402', 'Kab. Muna', 1),
(417, '7403', 'Kab. Kolaka', 1),
(418, '7404', 'Kab. Konawe', 1),
(419, '7405', 'Kab. Konawe Selatan', 1),
(420, '7406', 'Kab. Bombana', 1),
(421, '7407', 'Kab. Wakatobi', 1),
(422, '7408', 'Kab. Kolaka Utara', 1),
(423, '7409', 'Kab. Konawe Utara', 1),
(424, '7410', 'Kab. Buton Utara', 1),
(425, '7471', 'Kota Kendari', 1),
(426, '7472', 'Kota Bau Bau', 1),
(427, '7501', 'Kab. Boalemo', 1),
(428, '7502', 'Kab. Gorontalo', 1),
(429, '7503', 'Kab. Bone Bolango', 1),
(430, '7504', 'Kab. Pahuwato', 1),
(431, '7505', 'Kab. Gorontalo Utara', 1),
(432, '7571', 'Kota Gorontalo', 1),
(433, '7601', 'Kab. Mamuju Utara', 1),
(434, '7602', 'Kab. Mamuju', 1),
(435, '7603', 'Kab. Mamasa', 1),
(436, '7604', 'Kab. Polewali Mandar', 1),
(437, '7605', 'Kab. Majene', 1),
(438, '8101', 'Kab. Maluku Tenggara Barat', 1),
(439, '8102', 'Kab. Maluku Tenggara', 1),
(440, '8103', 'Kab. Maluku Tengah', 1),
(441, '8104', 'Kab. Buru', 1),
(442, '8105', 'Kab. Seram Bagian Timur', 1),
(443, '8106', 'Kab. Seram Bagian Barat', 1),
(444, '8107', 'Kab. Kepulauan Aru', 1),
(445, '8108', 'Kab. Maluku Barat Daya', 1),
(446, '8109', 'Kab. Buru Selatan', 1),
(447, '8171', 'Kota Ambon', 1),
(448, '8172', 'Kota Tual', 1),
(449, '8201', 'Kab. Halmahera Tengah', 1),
(450, '8202', 'Kab. Halmahera Barat', 1),
(451, '8203', 'Kab. Halmahera Utara', 1),
(452, '8204', 'Kab. Halmahera Selatan', 1),
(453, '8205', 'Kab. Kepulauan Sula', 1),
(454, '8206', 'Kab. Halmahera Timur', 1),
(455, '8207', 'Kab. Pulau Morotai', 1),
(456, '8271', 'Kota Ternate', 1),
(457, '8272', 'Kota Tidore Kepulauan', 1),
(458, '9101', 'Kab. Fak-Fak', 1),
(459, '9102', 'Kab. Manokwari', 1),
(460, '9103', 'Kab. Sorong', 1),
(461, '9104', 'Kab. Sorong Selatan', 1),
(462, '9105', 'Kab. Raja Ampat', 1),
(463, '9106', 'Kab. Teluk Bintuni', 1),
(464, '9107', 'Kab. Teluk Wondama', 1),
(465, '9108', 'Kab. Kaimana', 1),
(466, '9109', 'Kab. Tambrauw', 1),
(467, '9110', 'Kab. Maybrat', 1),
(468, '9171', 'Kota Sorong', 1),
(469, '9401', 'Kab. Mimika', 1),
(470, '9402', 'Kab. Nabire', 1),
(471, '9403', 'Kab. Paniai', 1),
(472, '9404', 'Kab. Kepulauan Yapen', 1),
(473, '9405', 'Kab. Biak Numfor', 1),
(474, '9406', 'Kab. Merauke', 1),
(475, '9407', 'Kab. Jayawijaya', 1),
(476, '9408', 'Kab. Puncak Jaya', 1),
(477, '9409', 'Kab. Jayapura', 1),
(478, '9410', 'Kab. Sarmi', 1),
(479, '9411', 'Kab. Keerom', 1),
(480, '9412', 'Kab. Pegunungan Bintang', 1),
(481, '9413', 'Kab. Yahukimo', 1),
(482, '9414', 'Kab. Tolikara', 1),
(483, '9415', 'Kab. Waropen', 1),
(484, '9416', 'Kab. Boven Digoel', 1),
(485, '9417', 'Kab. Mappi', 1),
(486, '9418', 'Kab. Asmat', 1),
(487, '9419', 'Kab. Supiori', 1),
(488, '9420', 'Kab. Mamberamo Raya', 1),
(489, '9421', 'Kab. Mamberamo Tengah', 1),
(490, '9422', 'Kab. Yalimo', 1),
(491, '9423', 'Kab. Lanny Jaya', 1),
(492, '9424', 'Kab. Nduga', 1),
(493, '9425', 'Kab. Puncak', 1),
(494, '9426', 'Kab. Dogiyai', 1),
(495, '9427', 'Kab. Intan Jaya', 1),
(496, '9428', 'Kab. Deiyai', 1),
(497, '9471', 'Kota Jayapura', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_uang`
--

CREATE TABLE `mata_uang` (
  `uang_id` int(11) NOT NULL,
  `iso_4217` char(3) NOT NULL,
  `nama_uang` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mata_uang`
--

INSERT INTO `mata_uang` (`uang_id`, `iso_4217`, `nama_uang`) VALUES
(1, 'AFN', 'Afghani'),
(2, 'AFA', 'Afghani'),
(3, 'DZD', 'Algerian Dinar'),
(4, 'ADP', 'Andorran Peseta'),
(5, 'ARS', 'Argentine Peso'),
(6, 'AMD', 'Armenian Dram'),
(7, 'AWG', 'Aruban Florin'),
(8, 'ARA', 'Austral'),
(9, 'AUD', 'Australian Dollar'),
(10, 'AZN', 'Azerbaijan Manat'),
(11, 'AYM', 'Azerbaijan Manat'),
(12, 'AZM', 'Azerbaijanian Manat'),
(13, 'BSD', 'Bahamian Dollar'),
(14, 'BHD', 'Bahraini Dinar'),
(15, 'THB', 'Baht'),
(16, 'PAB', 'Balboa'),
(17, 'BBD', 'Barbados Dollar'),
(18, 'BYN', 'Belarusian Ruble'),
(19, 'BYB', 'Belarusian Ruble'),
(20, 'BYR', 'Belarusian Ruble'),
(21, 'BEF', 'Belgian Franc'),
(22, 'BZD', 'Belize Dollar'),
(23, 'BMD', 'Bermudian Dollar'),
(24, 'VEB', 'Bolivar'),
(25, 'VEF', 'Bolivar'),
(26, 'VEF', 'Bolivar Fuerte'),
(27, 'BOB', 'Boliviano'),
(28, 'VEF', 'Bolivar'),
(29, 'VES', 'Bolivar Soberano'),
(30, 'XBA', 'Bond Markets Unit European Composite Unit (EURCO)'),
(31, 'XBB', 'Bond Markets Unit European Monetary Unit (E.M.U.-6)'),
(32, 'XBD', 'Bond Markets Unit European Unit of Account 17 (E.U.A.-17)'),
(33, 'XBC', 'Bond Markets Unit European Unit of Account 9 (E.U.A.-9)'),
(34, 'BRL', 'Brazilian Real'),
(35, 'BND', 'Brunei Dollar'),
(36, 'BGN', 'Bulgarian Lev'),
(37, 'BIF', 'Burundi Franc'),
(38, 'CVE', 'Cabo Verde Escudo'),
(39, 'CAD', 'Canadian Dollar'),
(40, 'KYD', 'Cayman Islands Dollar'),
(41, 'GHC', 'Cedi'),
(42, 'XOF', 'CFA Franc BCEAO'),
(43, 'XAF', 'CFA Franc BEAC'),
(44, 'XPF', 'CFP Franc'),
(45, 'CLP', 'Chilean Peso'),
(46, 'XTS', 'Codes specifically reserved for testing purposes'),
(47, 'COP', 'Colombian Peso'),
(48, 'KMF', 'Comorian Franc'),
(49, 'CDF', 'Congolese Franc'),
(50, 'BEC', 'Convertible Franc'),
(51, 'BAM', 'Convertible Mark'),
(52, 'NIC', 'Cordoba'),
(53, 'NIO', 'Cordoba Oro'),
(54, 'CRC', 'Costa Rican Colon'),
(55, 'HRD', 'Croatian Dinar'),
(56, 'HRK', 'Croatian Kuna'),
(57, 'BRC', 'Cruzado'),
(58, 'BRB', 'Cruzeiro'),
(59, 'BRE', 'Cruzeiro'),
(60, 'BRR', 'Cruzeiro Real'),
(61, 'CUP', 'Cuban Peso'),
(62, 'CYP', 'Cyprus Pound'),
(63, 'CZK', 'Czech Koruna'),
(64, 'GMD', 'Dalasi'),
(65, 'DKK', 'Danish Krone'),
(66, 'MKD', 'Denar'),
(67, 'DEM', 'Deutsche Mark'),
(68, 'BAD', 'Dinar'),
(69, 'DJF', 'Djibouti Franc'),
(70, 'STN', 'Dobra'),
(71, 'STD', 'Dobra'),
(72, 'DOP', 'Dominican Peso'),
(73, 'VND', 'Dong'),
(74, 'GRD', 'Drachma'),
(75, 'XCD', 'East Caribbean Dollar'),
(76, 'EGP', 'Egyptian Pound'),
(77, 'GQE', 'Ekwele'),
(78, 'SVC', 'El Salvador Colon'),
(79, 'ETB', 'Ethiopian Birr'),
(80, 'EUR', 'Euro'),
(81, 'XEU', 'European Currency Unit (E.C.U)'),
(82, 'FKP', 'Falkland Islands Pound'),
(83, 'FJD', 'Fiji Dollar'),
(84, 'BEL', 'Financial Franc'),
(85, 'ZAL', 'Financial Rand'),
(86, 'HUF', 'Forint'),
(87, 'FRF', 'French Franc'),
(88, 'GEK', 'Georgian Coupon'),
(89, 'GHS', 'Ghana Cedi'),
(90, 'GHP', 'Ghana Cedi'),
(91, 'GIP', 'Gibraltar Pound'),
(92, 'XAU', 'Gold'),
(93, 'XFO', 'Gold-Franc'),
(94, 'HTG', 'Gourde'),
(95, 'PYG', 'Guarani'),
(96, 'GWE', 'Guinea Escudo'),
(97, 'GWP', 'Guinea-Bissau Peso'),
(98, 'GNF', 'Guinean Franc'),
(99, 'GYD', 'Guyana Dollar'),
(100, 'HKD', 'Hong Kong Dollar'),
(101, 'UAH', 'Hryvnia'),
(102, 'ISK', 'Iceland Krona'),
(103, 'INR', 'Indian Rupee'),
(104, 'PEI', 'Inti'),
(105, 'IRR', 'Iranian Rial'),
(106, 'IQD', 'Iraqi Dinar'),
(107, 'IEP', 'Irish Pound'),
(108, 'ITL', 'Italian Lira'),
(109, 'JMD', 'Jamaican Dollar'),
(110, 'JOD', 'Jordanian Dinar'),
(111, 'UAK', 'Karbovanet'),
(112, 'KES', 'Kenyan Shilling'),
(113, 'PGK', 'Kina'),
(114, 'CSK', 'Koruna'),
(115, 'CSJ', 'Krona A/53'),
(116, 'EEK', 'Kroon'),
(117, 'HRK', 'Kuna'),
(118, 'KWD', 'Kuwaiti Dinar'),
(119, 'MWK', 'Kwacha'),
(120, 'AOA', 'Kwanza'),
(121, 'AOK', 'Kwanza'),
(122, 'AOR', 'Kwanza Reajustado'),
(123, 'MMK', 'Kyat'),
(124, 'BUK', 'Kyat'),
(125, 'LAK', 'Lao Kip'),
(126, 'GEL', 'Lari'),
(127, 'LVL', 'Latvian Lats'),
(128, 'LVR', 'Latvian Ruble'),
(129, 'LBP', 'Lebanese Pound'),
(130, 'ALL', 'Lek'),
(131, 'HNL', 'Lempira'),
(132, 'SLL', 'Leone'),
(133, 'ROK', 'Leu A/52'),
(134, 'BGL', 'Lev'),
(135, 'BGJ', 'Lev A/52'),
(136, 'BGK', 'Lev A/62'),
(137, 'LRD', 'Liberian Dollar'),
(138, 'LYD', 'Libyan Dinar'),
(139, 'SZL', 'Lilangeni'),
(140, 'LTL', 'Lithuanian Litas'),
(141, 'LSL', 'Loti'),
(142, 'LSM', 'Loti'),
(143, 'LUC', 'Luxembourg Convertible Franc'),
(144, 'LUL', 'Luxembourg Financial Franc'),
(145, 'LUF', 'Luxembourg Franc'),
(146, 'MGA', 'Malagasy Ariary'),
(147, 'MGF', 'Malagasy Franc'),
(148, 'MWK', 'Malawi Kwacha'),
(149, 'MYR', 'Malaysian Ringgit'),
(150, 'MVQ', 'Maldive Rupee'),
(151, 'MLF', 'Mali Franc'),
(152, 'MTL', 'Maltese Lira'),
(153, 'MTP', 'Maltese Pound'),
(154, 'DDM', 'Mark der DDR'),
(155, 'FIM', 'Markka'),
(156, 'MUR', 'Mauritius Rupee'),
(157, 'MXN', 'Mexican Peso'),
(158, 'MXP', 'Mexican Peso'),
(159, 'MXV', 'Mexican Unidad de Inversion (UDI)'),
(160, 'MDL', 'Moldovan Leu'),
(161, 'MAD', 'Moroccan Dirham'),
(162, 'MZE', 'Mozambique Escudo'),
(163, 'MZN', 'Mozambique Metical'),
(164, 'MZM', 'Mozambique Metical'),
(165, 'BOV', 'Mvdol'),
(166, 'NGN', 'Naira'),
(167, 'ERN', 'Nakfa'),
(168, 'NAD', 'Namibia Dollar'),
(169, 'NPR', 'Nepalese Rupee'),
(170, 'ANG', 'Netherlands Antillean Guilder'),
(171, 'NLG', 'Netherlands Guilder'),
(172, 'BRN', 'New Cruzado'),
(173, 'YUM', 'New Dinar'),
(174, 'ILS', 'New Israeli Sheqel'),
(175, 'AON', 'New Kwanza'),
(176, 'RON', 'New Romanian Leu'),
(177, 'TWD', 'New Taiwan Dollar'),
(178, 'TRY', 'New Turkish Lira'),
(179, 'YUD', 'New Yugoslavian Dinar'),
(180, 'ZRN', 'New Zaire'),
(181, 'NZD', 'New Zealand Dollar'),
(182, 'BTN', 'Ngultrum'),
(183, 'KPW', 'North Korean Won'),
(184, 'NOK', 'Norwegian Krone'),
(185, 'PEN', 'Nuevo Sol'),
(186, 'VNC', 'Old Dong'),
(187, 'ISJ', 'Old Krona'),
(188, 'ALK', 'Old Lek'),
(189, 'ROL', 'Old Leu'),
(190, 'ILR', 'Old Shekel'),
(191, 'UGW', 'Old Shilling'),
(192, 'TRL', 'Old Turkish Lira'),
(193, 'UYN', 'Old Uruguay Peso'),
(194, 'MRU', 'Ouguiya'),
(195, 'MRO', 'Ouguiya'),
(196, 'TOP', 'Pa\'anga'),
(197, 'PKR', 'Pakistan Rupee'),
(198, 'XPD', 'Palladium'),
(199, 'MOP', 'Pataca'),
(200, 'LAJ', 'Pathet Lao Kip'),
(201, 'ARY', 'Peso'),
(202, 'ARP', 'Peso Argentino'),
(203, 'BOP', 'Peso boliviano'),
(204, 'CUC', 'Peso Convertible'),
(205, 'UYU', 'Peso Uruguayo'),
(206, 'PHP', 'Philippine Peso'),
(207, 'XPT', 'Platinum'),
(208, 'PTE', 'Portuguese Escudo'),
(209, 'ILP', 'Pound'),
(210, 'GBP', 'Pound Sterling'),
(211, 'BWP', 'Pula'),
(212, 'QAR', 'Qatari Rial'),
(213, 'GTQ', 'Quetzal'),
(214, 'ZAR', 'Rand'),
(215, 'RHD', 'Rhodesian Dollar'),
(216, 'ZWC', 'Rhodesian Dollar'),
(217, 'OMR', 'Rial Omani'),
(218, 'KHR', 'Riel'),
(219, 'XRE', 'RINET Funds Code'),
(220, 'RON', 'Romanian Leu'),
(221, 'SUR', 'Rouble'),
(222, 'MVR', 'Rufiyaa'),
(223, 'IDR', 'Rupiah'),
(224, 'RUB', 'Russian Ruble'),
(225, 'RUR', 'Russian Ruble'),
(226, 'RWF', 'Rwanda Franc'),
(227, 'SHP', 'Saint Helena Pound'),
(228, 'SAR', 'Saudi Riyal'),
(229, 'ATS', 'Schilling'),
(230, 'XDR', 'SDR (Special Drawing Right)'),
(231, 'RSD', 'Serbian Dinar'),
(232, 'CSD', 'Serbian Dinar'),
(233, 'SCR', 'Seychelles Rupee'),
(234, 'XAG', 'Silver'),
(235, 'SGD', 'Singapore Dollar'),
(236, 'SKK', 'Slovak Koruna'),
(237, 'PEN', 'Sol'),
(238, 'PEH', 'Sol'),
(239, 'PES', 'Sol'),
(240, 'SBD', 'Solomon Islands Dollar'),
(241, 'KGS', 'Som'),
(242, 'SOS', 'Somali Shilling'),
(243, 'TJS', 'Somoni'),
(244, 'SSP', 'South Sudanese Pound'),
(245, 'ESP', 'Spanish Peseta'),
(246, 'ESA', 'Spanish Peseta'),
(247, 'LKR', 'Sri Lanka Rupee'),
(248, 'XSU', 'Sucre'),
(249, 'ECS', 'Sucre'),
(250, 'SDD', 'Sudanese Dinar'),
(251, 'SDG', 'Sudanese Pound'),
(252, 'SDP', 'Sudanese Pound'),
(253, 'SRD', 'Surinam Dollar'),
(254, 'SRG', 'Surinam Guilder'),
(255, 'SEK', 'Swedish Krona'),
(256, 'CHF', 'Swiss Franc'),
(257, 'GNE', 'Syli'),
(258, 'GNS', 'Syli'),
(259, 'SYP', 'Syrian Pound'),
(260, 'TJR', 'Tajik Ruble'),
(261, 'BDT', 'Taka'),
(262, 'WST', 'Tala'),
(263, 'LTT', 'Talonas'),
(264, 'TZS', 'Tanzanian Shilling'),
(265, 'KZT', 'Tenge'),
(266, 'XXX', 'The codes assigned for transactions where no currency is involved'),
(267, 'TPE', 'Timor Escudo'),
(268, 'SIT', 'Tolar'),
(269, 'TTD', 'Trinidad and Tobago Dollar'),
(270, 'MNT', 'Tugrik'),
(271, 'TND', 'Tunisian Dinar'),
(272, 'TRY', 'Turkish Lira'),
(273, 'TMM', 'Turkmenistan Manat'),
(274, 'TMT', 'Turkmenistan New Manat'),
(275, 'AED', 'UAE Dirham'),
(276, 'UGX', 'Uganda Shilling'),
(277, 'UGS', 'Uganda Shilling'),
(278, 'XFU', 'UIC-Franc'),
(279, 'CLF', 'Unidad de Fomento'),
(280, 'ECV', 'Unidad de Valor Constante (UVC)'),
(281, 'COU', 'Unidad de Valor Real'),
(282, 'UYW', 'Unidad Previsional'),
(283, 'UYI', 'Uruguay Peso en Unidades Indexadas (UI)'),
(284, 'UYP', 'Uruguayan Peso'),
(285, 'USD', 'US Dollar'),
(286, 'USN', 'US Dollar (Next day)'),
(287, 'USS', 'US Dollar (Same day)'),
(288, 'UZS', 'Uzbekistan Sum'),
(289, 'VUV', 'Vatu'),
(290, 'CHE', 'WIR Euro'),
(291, 'CHW', 'WIR Franc'),
(292, 'CHC', 'WIR Franc (for electronic)'),
(293, 'KRW', 'Won'),
(294, 'YDD', 'Yemeni Dinar'),
(295, 'YER', 'Yemeni Rial'),
(296, 'JPY', 'Yen'),
(297, 'CNY', 'Yuan Renminbi'),
(298, 'YUN', 'Yugoslavian Dinar'),
(299, 'ZRZ', 'Zaire'),
(300, 'ZMW', 'Zambian Kwacha'),
(301, 'ZMK', 'Zambian Kwacha'),
(302, 'ZWL', 'Zimbabwe Dollar'),
(303, 'ZWD', 'Zimbabwe Dollar'),
(304, 'ZWR', 'Zimbabwe Dollar'),
(305, 'ZWN', 'Zimbabwe Dollar (new)'),
(306, 'ZWD', 'Zimbabwe Dollar (old)'),
(307, 'PLN', 'Zloty'),
(308, 'PLZ', 'Zloty');

-- --------------------------------------------------------

--
-- Struktur dari tabel `negara`
--

CREATE TABLE `negara` (
  `negara_id` int(11) NOT NULL,
  `kode_negara` char(2) NOT NULL,
  `nama_negara` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `negara`
--

INSERT INTO `negara` (`negara_id`, `kode_negara`, `nama_negara`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AX', 'Aland Islands'),
(3, 'AL', 'Albania'),
(4, 'DZ', 'Algeria'),
(5, 'AS', 'American Samoa'),
(6, 'AD', 'Andorra'),
(7, 'AO', 'Angola'),
(8, 'AI', 'Anguilla'),
(9, 'AQ', 'Antarctica'),
(10, 'AG', 'Antigua and Barbuda'),
(11, 'AR', 'Argentina'),
(12, 'AM', 'Armenia'),
(13, 'AW', 'Aruba'),
(14, 'AU', 'Australia'),
(15, 'AT', 'Austria'),
(16, 'AZ', 'Azerbaijan'),
(17, 'BS', 'Bahamas'),
(18, 'BH', 'Bahrain'),
(19, 'BD', 'Bangladesh'),
(20, 'BB', 'Barbados'),
(21, 'BY', 'Belarus'),
(22, 'BE', 'Belgium'),
(23, 'BZ', 'Belize'),
(24, 'BJ', 'Benin'),
(26, 'BT', 'Bhutan'),
(27, 'BO', 'Bolivia (Plurinational State of)'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba'),
(29, 'BA', 'Bosnia and Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BV', 'Bouvet Island'),
(32, 'BR', 'Brazil'),
(33, 'IO', 'British Indian Ocean Territory'),
(34, 'BN', 'Brunei Darussalam'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'CV', 'Cabo Verde'),
(39, 'KH', 'Cambodia'),
(40, 'CM', 'Cameroon'),
(41, 'CA', 'Canada'),
(42, 'KY', 'Cayman Islands'),
(43, 'CF', 'Central African Republic'),
(44, 'TD', 'Chad'),
(45, 'CL', 'Chile'),
(46, 'CN', 'China'),
(47, 'CX', 'Christmas Island'),
(48, 'CC', 'Cocos (Keeling) Islands'),
(49, 'CO', 'Colombia'),
(50, 'KM', 'Comoros'),
(51, 'CG', 'Congo'),
(52, 'CD', 'Congo, Democratic Republic of the'),
(53, 'CK', 'Cook Islands'),
(54, 'CR', 'Costa Rica'),
(55, 'CI', 'Cote d\'Ivoire'),
(56, 'HR', 'Croatia'),
(57, 'CU', 'Cuba'),
(58, 'CW', 'Curacao'),
(59, 'CY', 'Cyprus'),
(60, 'CZ', 'Czechia'),
(61, 'DK', 'Denmark'),
(62, 'DJ', 'Djibouti'),
(63, 'DM', 'Dominica'),
(64, 'DO', 'Dominican Republic'),
(65, 'EC', 'Ecuador'),
(66, 'EG', 'Egypt'),
(67, 'SV', 'El Salvador'),
(68, 'GQ', 'Equatorial Guinea'),
(69, 'ER', 'Eritrea'),
(70, 'EE', 'Estonia'),
(71, 'SZ', 'Eswatini'),
(72, 'ET', 'Ethiopia'),
(73, 'FK', 'Falkland Islands (Malvinas)'),
(74, 'FO', 'Faroe Islands'),
(75, 'FJ', 'Fiji'),
(76, 'FI', 'Finland'),
(77, 'FR', 'France'),
(78, 'GF', 'French Guiana'),
(79, 'PF', 'French Polynesia'),
(80, 'TF', 'French Southern Territories'),
(81, 'GA', 'Gabon'),
(82, 'GM', 'Gambia'),
(83, 'GE', 'Georgia'),
(84, 'DE', 'Germany'),
(85, 'GH', 'Ghana'),
(86, 'GI', 'Gibraltar'),
(87, 'GR', 'Greece'),
(88, 'GL', 'Greenland'),
(89, 'GD', 'Grenada'),
(90, 'GP', 'Guadeloupe'),
(91, 'GU', 'Guam'),
(92, 'GT', 'Guatemala'),
(93, 'GG', 'Guernsey'),
(94, 'GN', 'Guinea'),
(95, 'GW', 'Guinea-Bissau'),
(96, 'GY', 'Guyana'),
(97, 'HT', 'Haiti'),
(98, 'HM', 'Heard Island and McDonald Islands'),
(99, 'VA', 'Holy See'),
(100, 'HN', 'Honduras'),
(101, 'HK', 'Hong Kong'),
(102, 'HU', 'Hungary'),
(103, 'IS', 'Iceland'),
(104, 'IN', 'India'),
(105, 'ID', 'Indonesia'),
(106, 'IR', 'Iran (Islamic Republic of)'),
(107, 'IQ', 'Iraq'),
(108, 'IE', 'Ireland'),
(109, 'IM', 'Isle of Man'),
(110, 'IL', 'Israel'),
(111, 'IT', 'Italy'),
(112, 'JM', 'Jamaica'),
(113, 'JP', 'Japan'),
(114, 'JE', 'Jersey'),
(115, 'JO', 'Jordan'),
(116, 'KZ', 'Kazakhstan'),
(117, 'KE', 'Kenya'),
(118, 'KI', 'Kiribati'),
(119, 'KP', 'Korea (Democratic People\'s Republic of)'),
(120, 'KR', 'Korea, Republic of'),
(121, 'KW', 'Kuwait'),
(122, 'KG', 'Kyrgyzstan'),
(123, 'LA', 'Lao People\'s Democratic Republic'),
(124, 'LV', 'Latvia'),
(125, 'LB', 'Lebanon'),
(126, 'LS', 'Lesotho'),
(127, 'LR', 'Liberia'),
(128, 'LY', 'Libya'),
(129, 'LI', 'Liechtenstein'),
(130, 'LT', 'Lithuania'),
(131, 'LU', 'Luxembourg'),
(132, 'MO', 'Macao'),
(133, 'MG', 'Madagascar'),
(134, 'MW', 'Malawi'),
(135, 'MY', 'Malaysia'),
(136, 'MV', 'Maldives'),
(137, 'ML', 'Mali'),
(138, 'MT', 'Malta'),
(139, 'MH', 'Marshall Islands'),
(140, 'MQ', 'Martinique'),
(141, 'MR', 'Mauritania'),
(142, 'MU', 'Mauritius'),
(143, 'YT', 'Mayotte'),
(144, 'MX', 'Mexico'),
(145, 'FM', 'Micronesia (Federated States of)'),
(146, 'MD', 'Moldova, Republic of'),
(147, 'MC', 'Monaco'),
(148, 'MN', 'Mongolia'),
(149, 'ME', 'Montenegro'),
(150, 'MS', 'Montserrat'),
(151, 'MA', 'Morocco'),
(152, 'MZ', 'Mozambique'),
(153, 'MM', 'Myanmar'),
(154, 'NA', 'Namibia'),
(155, 'NR', 'Nauru'),
(156, 'NP', 'Nepal'),
(157, 'NL', 'Netherlands[note 1]'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MK', 'North Macedonia'),
(166, 'MP', 'Northern Mariana Islands'),
(167, 'NO', 'Norway'),
(168, 'OM', 'Oman'),
(169, 'PK', 'Pakistan'),
(170, 'PW', 'Palau'),
(171, 'PS', 'Palestine, State of'),
(172, 'PA', 'Panama'),
(173, 'PG', 'Papua New Guinea'),
(174, 'PY', 'Paraguay'),
(175, 'PE', 'Peru'),
(176, 'PH', 'Philippines'),
(177, 'PN', 'Pitcairn'),
(178, 'PL', 'Poland'),
(179, 'PT', 'Portugal'),
(180, 'PR', 'Puerto Rico'),
(181, 'QA', 'Qatar'),
(182, 'RE', 'Reunion'),
(183, 'RO', 'Romania'),
(184, 'RU', 'Russian Federation'),
(185, 'RW', 'Rwanda'),
(186, 'BL', 'Saint Barthelemy'),
(187, 'SH', 'Saint Helena, Ascension and Tristan da Cunha'),
(188, 'KN', 'Saint Kitts and Nevis'),
(189, 'LC', 'Saint Lucia'),
(190, 'MF', 'Saint Martin (French part)'),
(191, 'PM', 'Saint Pierre and Miquelon'),
(192, 'VC', 'Saint Vincent and the Grenadines'),
(193, 'WS', 'Samoa'),
(194, 'SM', 'San Marino'),
(195, 'ST', 'Sao Tome and Principe'),
(196, 'SA', 'Saudi Arabia'),
(197, 'SN', 'Senegal'),
(198, 'RS', 'Serbia'),
(199, 'SC', 'Seychelles'),
(200, 'SL', 'Sierra Leone'),
(201, 'SG', 'Singapore'),
(202, 'SX', 'Sint Maarten (Dutch part)'),
(203, 'SK', 'Slovakia'),
(204, 'SI', 'Slovenia'),
(205, 'SB', 'Solomon Islands'),
(206, 'SO', 'Somalia'),
(207, 'ZA', 'South Africa'),
(208, 'GS', 'South Georgia and the South Sandwich Islands'),
(209, 'SS', 'South Sudan'),
(210, 'ES', 'Spain'),
(211, 'LK', 'Sri Lanka'),
(212, 'SD', 'Sudan'),
(213, 'SR', 'Suriname'),
(214, 'SJ', 'Svalbard and Jan Mayen'),
(215, 'SE', 'Sweden'),
(216, 'CH', 'Switzerland'),
(217, 'SY', 'Syrian Arab Republic'),
(218, 'TW', 'Taiwan, Province of China'),
(219, 'TJ', 'Tajikistan'),
(220, 'TZ', 'Tanzania, United Republic of'),
(221, 'TH', 'Thailand'),
(222, 'TL', 'Timor-Leste'),
(223, 'TG', 'Togo'),
(224, 'TK', 'Tokelau'),
(225, 'TO', 'Tonga'),
(226, 'TT', 'Trinidad and Tobago'),
(227, 'TN', 'Tunisia'),
(228, 'TR', 'Turkey'),
(229, 'TM', 'Turkmenistan'),
(230, 'TC', 'Turks and Caicos Islands'),
(231, 'TV', 'Tuvalu'),
(232, 'UG', 'Uganda'),
(233, 'UA', 'Ukraine'),
(234, 'AE', 'United Arab Emirates'),
(235, 'GB', 'United Kingdom of Great Britain and Northern Ireland'),
(236, 'UM', 'United States Minor Outlying Islands'),
(237, 'US', 'United States of America'),
(238, 'UY', 'Uruguay'),
(239, 'UZ', 'Uzbekistan'),
(240, 'VU', 'Vanuatu'),
(241, 'VE', 'Venezuela (Bolivarian Republic of)'),
(242, 'VN', 'Viet Nam'),
(243, 'VG', 'Virgin Islands (British)'),
(244, 'VI', 'Virgin Islands (U.S.)'),
(245, 'WF', 'Wallis and Futuna'),
(246, 'EH', 'Western Sahara'),
(247, 'YE', 'Yemen'),
(248, 'ZM', 'Zambia'),
(249, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pejabat`
--

CREATE TABLE `pejabat` (
  `pejabat_id` int(11) NOT NULL,
  `kode_pejabat` char(2) NOT NULL,
  `nama_pejabat` varchar(128) NOT NULL,
  `lokasi` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pejabat`
--

INSERT INTO `pejabat` (`pejabat_id`, `kode_pejabat`, `nama_pejabat`, `lokasi`, `status`) VALUES
(1, 'GS', 'IR. GUSDAJI', 'Bogor', 1),
(2, 'II', 'IR. IIN INDASAH', 'Bogor', 1),
(3, 'SF', 'IR. SAEFULLOH', 'Bogor', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan`
--

CREATE TABLE `pengajuan` (
  `pengajuan_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `negara_id` int(11) NOT NULL,
  `mata_uang` varchar(2) NOT NULL,
  `loading_id` bigint(20) NOT NULL,
  `discharge_id` bigint(20) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `no_invoice` varchar(64) NOT NULL,
  `tgl_invoice` date NOT NULL,
  `no_peb` varchar(64) NOT NULL,
  `no_bl` varchar(64) NOT NULL,
  `packing_list` varchar(64) NOT NULL,
  `alat_angkut` enum('laut','udara','darat') NOT NULL,
  `tgl_shipment` date NOT NULL,
  `lokasi_stuffing` varchar(64) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pengajuan`
--

INSERT INTO `pengajuan` (`pengajuan_id`, `client_id`, `buyer_id`, `negara_id`, `mata_uang`, `loading_id`, `discharge_id`, `keterangan`, `no_invoice`, `tgl_invoice`, `no_peb`, `no_bl`, `packing_list`, `alat_angkut`, `tgl_shipment`, `lokasi_stuffing`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 6, 'CN', 9, 1, '', '19182131', '2021-03-18', '3231231', '322123', 'ASDS/dasd', 'udara', '2021-03-19', 'Winrie', '2021-03-18 15:00:05', '2021-03-18 15:00:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `port_discharge`
--

CREATE TABLE `port_discharge` (
  `discharge_id` bigint(20) NOT NULL,
  `kode_discharge` varchar(10) NOT NULL,
  `nama_discharge` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `port_loading`
--

CREATE TABLE `port_loading` (
  `loading_id` bigint(20) NOT NULL,
  `kode_loading` varchar(10) NOT NULL,
  `nama_loading` varchar(128) NOT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `produk_id` bigint(20) NOT NULL,
  `kode_hs` char(10) NOT NULL,
  `nama_produk` varchar(128) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`produk_id`, `kode_hs`, `nama_produk`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '44092200', 'RED BALAU REEDED PROFILE INDONESIA WOOD WORKING PRODUCTS', NULL, 1, NULL, NULL),
(2, '44012200', 'Pulpwood In Chip, non coniferous (Mangrove chips) Indonesian Origin', NULL, 1, NULL, NULL),
(3, '44012200', 'Sample Wood In Chip', NULL, 1, NULL, NULL),
(4, '44071900', 'AGATHIS S4S', NULL, 1, NULL, NULL),
(5, '44072110', 'MAHOGANY S4S', NULL, 1, NULL, NULL),
(6, '44072210', 'BALSA S4S K/D', NULL, 1, NULL, NULL),
(7, '44072210', 'BALSA S4S', NULL, 1, NULL, NULL),
(8, '44072210', 'BALSA LAMINATED BLOCK', NULL, 1, NULL, NULL),
(9, '44072210', 'BALSA STICK S4S', NULL, 1, NULL, NULL),
(10, '44072511', 'MERANTI KD S4S', NULL, 1, NULL, NULL),
(11, '44072511', 'MERANTI MERAH S4S', NULL, 1, NULL, NULL),
(12, '44072511', 'RED MERANTI S4S', NULL, 1, NULL, NULL),
(13, '44072511', 'RED MERANTI SOLID S4S', NULL, 1, NULL, NULL),
(14, '44072511', 'MERANTI KD S4S PRODUCT', NULL, 1, NULL, NULL),
(15, '44072511', 'MERANTI SOLID STICK S4S', NULL, 1, NULL, NULL),
(16, '44072511', 'RED MERANTI SOLID STICK S4S', NULL, 1, NULL, NULL),
(17, '44072610', 'WHITE MERANTI S4S', NULL, 1, NULL, NULL),
(18, '44072610', 'YELLOW MERANTI S4S K.D', NULL, 1, NULL, NULL),
(19, '44072610', 'YELLOW MERANTI SOLID STICK S4S', NULL, 1, NULL, NULL),
(20, '44072941', 'KERUING S4S KILN STICKS', NULL, 1, NULL, NULL),
(21, '44072941', 'KERUING S4S', NULL, 1, NULL, NULL),
(22, '44072961', 'TEAK S4S', NULL, 1, NULL, NULL),
(23, '44072961', 'TEAK S4S WITH RUSTIC FINISHED', NULL, 1, NULL, NULL),
(24, '44072971', 'RED BALAU S4S KILN STICKS', NULL, 1, NULL, NULL),
(25, '44072991', 'MERBAU S4S', NULL, 1, NULL, NULL),
(26, '44072991', 'MERBAU S4S (LP LESS THAN 1000 M2)', NULL, 1, NULL, NULL),
(27, '44072991', 'MERBAU S4S UNFINISHED', NULL, 1, NULL, NULL),
(28, '44072993', 'EBONY S4S', NULL, 1, NULL, NULL),
(29, '44072993', 'COCONUT S4S', NULL, 1, NULL, NULL),
(30, '44072994', 'S4S OF ALBIZIA WOOD', NULL, 1, NULL, NULL),
(31, '44072994', 'ALBASIA S4S', NULL, 1, NULL, NULL),
(32, '44072994', 'SENGON S4S', NULL, 1, NULL, NULL),
(33, '44072996', 'RUBBERWOOD S4S', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `provinsi_id` bigint(20) NOT NULL,
  `kode_provinsi` char(5) NOT NULL,
  `nama_provinsi` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`provinsi_id`, `kode_provinsi`, `nama_provinsi`, `status`) VALUES
(1, '1100', 'Nanggroe Aceh Darussalam', 1),
(2, '1200', 'Sumatera Utara', 1),
(3, '1300', 'Sumatera Barat', 1),
(4, '1400', 'Riau', 1),
(5, '1500', 'Jambi', 1),
(6, '1600', 'Sumatera Selatan', 1),
(7, '1700', 'Bengkulu', 1),
(8, '1800', 'Lampung', 1),
(9, '1900', 'Kep. Bangka Belitung', 1),
(10, '2100', 'Kepulauan Riau', 1),
(13, '3100', 'DKI Jakarta', 1),
(14, '3200', 'Jawa Barat', 1),
(15, '3300', 'Jawa Tengah', 1),
(16, '3400', 'DI Yogyakarta', 1),
(17, '3500', 'Jawa Timur', 1),
(18, '3600', 'Banten', 1),
(19, '5100', 'Bali', 1),
(20, '5200', 'Nusa Tenggara Barat', 1),
(21, '5300', 'Nusa Tenggara Timur', 1),
(22, '6100', 'Kalimantan Barat', 1),
(23, '6200', 'Kalimantan Tengah', 1),
(24, '6300', 'Kalimantan Selatan', 1),
(25, '6400', 'Kalimantan Timur', 1),
(26, '7100', 'Sulawesi Utara', 1),
(27, '7200', 'Sulawesi Tengah', 1),
(28, '7300', 'Sulawesi Selatan', 1),
(29, '7400', 'Sulawesi Tenggara', 1),
(30, '7500', 'Gorontalo', 1),
(31, '7600', 'Sulawesi Barat', 1),
(32, '8100', 'Maluku', 1),
(33, '8200', 'Maluku Utara', 1),
(34, '9100', 'Papua Barat', 1),
(35, '9400', 'Papua', 1),
(36, '6500', 'Kalimantan Utara', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` bigint(20) NOT NULL,
  `negara_id` bigint(20) NOT NULL,
  `nama_supplier` varchar(128) NOT NULL,
  `alamat_supplier` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `negara_id`, `nama_supplier`, `alamat_supplier`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 105, 'UD. SINAR ABADI', 'Surabaya Jawa Timur', NULL, 1, NULL, NULL),
(2, 105, 'PT. NUSANTARA CITRA ALAM RAYA', 'Desa Iker Iker Geger Kecamatan Cerme Kabupaten Gresik Provinsi Jawa Timur', NULL, 1, NULL, NULL),
(3, 105, 'CV. JAWA TIMUR BARU', 'JL. MAYJEND SUNGKONO NO. 38 GRESIK', NULL, 1, NULL, NULL),
(4, 105, 'CV. BINTANG TERANG', 'JL. MAYJEND SUNGKONO XIV/103 GULOMANTUNG, KEBOMAS, GRESIK', NULL, 1, NULL, NULL),
(5, 105, 'PT. HUTAN LESTARI MUKTI PERKASA', 'JL. KAPTEN DARMO SUGONDO NO. 33 GRESIK', NULL, 1, NULL, NULL),
(6, 105, 'PT. TELUK BINTUNI MINA AGRO KARYA', 'JL. MERDEKA NO. 61A MANOKWARI, PAPUA', NULL, 1, NULL, NULL),
(7, 105, 'PT. MITRAWAN MANDIRI SELARAS ABADI', 'JL. JAKSA AGUNG SUPRAPTO 49C, SIDOKUMPUL, GRESIK', NULL, 1, NULL, NULL),
(8, 105, 'PT. AGUNG KHARISMA JAYA ABADI', 'JL. MARGOMULYO INDAH I NO. 10 KAV. 19 SURABAYA', NULL, 1, NULL, NULL),
(9, 105, 'SUTINAH', 'DESA TEMPUREJO KEC KALIBAWANG KAB WONOSOBO, JAWA TENGAH', NULL, 1, NULL, NULL),
(10, 105, 'ANDI MA\'ARIF', 'DESA TEMPUREJO KEC KALIBAWANG KAB WONOSOBO, JAWA TENGAH', NULL, 1, NULL, NULL),
(11, 105, 'IZAKH ALEX LICO', 'DESA PATTI KEC. MOA KAB. MALUKU', NULL, 1, NULL, NULL),
(12, 105, 'AGIL DWIYANTO', 'SERENAN RT 10, RW 04, SERENAN, JUWIRING, KLATEN', NULL, 1, NULL, NULL),
(13, 105, 'DIDIK SANTOSO', 'NGEPRINGAN, SERENAN, JUWIRING, KLATEN.', NULL, 1, NULL, NULL),
(14, 105, 'ANGGA ADHI PRASETYA', 'SERENAN RT 09, RW 04, SERENAN, JUWIRING, KLATEN', NULL, 1, NULL, NULL),
(15, 105, 'PT. BAUJENG PLYWOOD BERNAS', 'DESA BAUJENG, KECAMATAN BEJI, KABUPATEN PASURUAN, PROVINSI JAWA TIMUR', NULL, 1, NULL, NULL),
(16, 105, 'WAHYUDI', 'SERENAN RT 008 RW 004, JUWIRING, KLATEN.', NULL, 1, NULL, NULL),
(17, 105, 'ANDI EKO YULIANTO', 'SERENAN RT 009 RW 004, JUWIRING, KLATEN.', NULL, 1, NULL, NULL),
(18, 105, 'ENDRAYANTO', 'NAMBANGAN RT 07, RW 03, SERENAN, JUWIRING, KLATEN', NULL, 1, NULL, NULL),
(19, 105, 'MARYANTO', 'SERENAN RT 08, RW 04, SERENAN, JUWIRING, KLATEN', NULL, 1, NULL, NULL),
(20, 105, 'PAIMAN EKO RAHARJO', 'MUTIHAN RT 11, RW 05, SERENAN, JUWIRING, KLATEN', NULL, 1, NULL, NULL),
(21, 105, 'SUPARMIN', 'SERENAN RT 10, RW 04, SERENAN, JUWIRING, KLATEN', NULL, 1, NULL, NULL),
(22, 105, 'RATMANTO', 'NAMBANGAN RT 07, RW 03 SERENAN, JUWIRING, KLATEN', NULL, 1, NULL, NULL),
(23, 105, 'HERU DWI SAHURI', 'MUTIHAN RT 12, RW 05, SERENAN, JUWIRING, KLATEN', NULL, 1, NULL, NULL),
(24, 105, 'AWAN SETIYONO', 'SERENAN RT 008 RW 004, JUWIRING, KLATEN.', NULL, 1, NULL, NULL),
(25, 105, 'HUSNA TEAK CRAFT', 'Jl. Parangtritis KM 4,5, Gg. Dirgantara No. 55, Bangunharjo, Sewon, Bantul', NULL, 1, NULL, NULL),
(26, 105, 'PT. RAJAWALI PAPUA FORESTA', 'JL. TAMAN BUNGA HAWAI SENTANI, JAYAPURA, PAPUA', NULL, 1, NULL, NULL),
(27, 105, 'CV. SUBUR ANDALAS TIMBER', 'JL. MAYJEND SUNGKONO NO. 11A GRESIK', NULL, 1, NULL, NULL),
(28, 105, 'PT. SENTOSA KAYU INDAH', 'JL. MARGOMULYO INDAH B-16 SURABAYA', NULL, 1, NULL, NULL),
(29, 105, 'PT. SIJAS EXPRESS UNIT 1', 'JL. LANAN KOYA BARAT, DISTRIK MUARA TAMI, JAYAPURA', NULL, 1, NULL, NULL),
(30, 105, 'PT. KAYAN JAYA TANJUNG', 'JL. MARGOMULYO INDAH I-A /18-22, SURABAYA', NULL, 1, NULL, NULL),
(31, 105, 'UD. KARYA MANDIRI', 'JL. MARGOMULYO INDAH 44/C-15 SURABAYA', NULL, 1, NULL, NULL),
(32, 105, 'PT. INTISARI KARYA UTAMA', 'JL. RAYA BOBOH 68-A MENGANTI, GRESIK', NULL, 1, NULL, NULL),
(33, 105, 'PT. ASMON KARYA UTAMA', 'JL. WIYUNG INDAH XV/29 (BLOK EX-09) SURABAYA', NULL, 1, NULL, NULL),
(34, 105, 'CV. PARTA WOOD', 'JL. KALIANAK 55 BLOK EC-ED, SURABAYA', NULL, 1, NULL, NULL),
(35, 105, 'PT. EKA DWIKA PERKASA', 'JL. SUNGAI WADIO NO. 88 KALIBOBO, NABIRE, PAPUA', NULL, 1, NULL, NULL),
(36, 105, 'UD. JALA RIZKY 2', 'JL. DESA MUNENG RT. 18/RW. 05, KEC. SUMBERASIH, PROBOLINGGO', NULL, 1, NULL, NULL),
(37, 105, 'PT. SURYA OSCAR DECKERS CEMERLANG', 'JL. RAYA SUKOMULYO KM. 24 MANYAR, GRESIK', NULL, 1, NULL, NULL),
(38, 105, 'PT. TATEHE NUSA JAYA', 'JL. SAROVELE, KAYUMALU, PALU', NULL, 1, NULL, NULL),
(39, 105, 'CV. KARYA MANDIRI PERDANA', 'JL. TAMBAK LANGON INDAH I NO. 42, SURABAYA', NULL, 1, NULL, NULL),
(40, 105, 'UD. SANGKURIANG PRIMA', 'DS. NEHES LIANG BING, MUARA WAHAU, KUTAI, KALIMANTAN TIMUR', NULL, 1, NULL, NULL),
(41, 105, 'UD. KOSASIH ARIF JAYA', 'JL. KAPTEN DARMO SUGONDO 4 KAV. 69 KR. KIRING, GRESIK', NULL, 1, NULL, NULL),
(42, 105, 'PT. CITRA ABADI BOSCO', 'JL. RAYA SEMBAYAT DS. BANYUWANGI, KEC. MANYAR, GRESIK', NULL, 1, NULL, NULL),
(43, 105, 'PT. KEMPASINDO MITRA BERSAMA', 'JL. VETERAN NO. 51 CURUG, TANGERANG', NULL, 1, NULL, NULL),
(44, 105, 'CV. LINTAS BANGUN PERKASA', 'JL. TAMBAK OSOWILANGON MADYA 7-9, SURABAYA', NULL, 1, NULL, NULL),
(45, 105, 'CV. JATI MAKMUR', 'JL. RAYA BUKIR NO. 55 PASURUAN', NULL, 1, NULL, NULL),
(46, 105, 'Slamet Susilo', 'Dambreh 005/003 Trucuk, Trucuk, Klaten', NULL, 1, NULL, NULL),
(47, 105, 'Ahmad T.Ngatiman', 'Belangwetan 001/002 Belangwetan, Klaten Utara, Klaten', NULL, 1, NULL, NULL),
(48, 105, 'CV. FURNINDO WIRATAMA', 'JALAN INDUSTRI RAYA BARAT I NO.36 LIK KELURAHAN MUKTIHARJO LOR KECAMATAN GENUK KOTA SEMARANG', NULL, 1, NULL, NULL),
(49, 105, 'UD. MAJU JAYA', 'JL. KYAI SEPUH NO. 99 PASURUAN', NULL, 1, NULL, NULL),
(50, 105, 'PT. TULUS TRI TUNGGAL', 'JL. KAPTEN DARMOSUGONDO NO.232 GRESIK TEL 031-3990001-3', NULL, 1, NULL, NULL),
(51, 105, 'CV.CAHAYA SEJATI GEMILANG', 'JL. INDUSTRI NO.68-A MENGANTI- GRESIK', NULL, 1, NULL, NULL),
(52, 105, 'UD. SUMBER REJEKI', 'DS. BORENG LUMAJANG', NULL, 1, NULL, NULL),
(53, 105, 'UD. KATULISTIWA', 'JL. IKAN BELANAK NO.30', NULL, 1, NULL, NULL),
(54, 105, 'UD.MANDIRI', 'DS. BESUK TEMPEH-LUMAJANG', NULL, 1, NULL, NULL),
(55, 105, 'CV.SURABAYA TRADING', 'JL. VETERAN 142 GRESIK', NULL, 1, NULL, NULL),
(56, 105, 'PT. JAMRUD NUSANTARA JAYA', 'J;L. INDUSTRI NO.99 BUDURAN-SIDOARJO', NULL, 1, NULL, NULL),
(57, 105, 'PT.ANUGERAH PUTRA SANJAYA', 'JL. M. SUNGKONO NO.10 GRESIK', NULL, 1, NULL, NULL),
(58, 105, 'PT. KAYU MERAPI INTERNUSA', 'JL.RAYA KM.22, DESA ROOMO, MANYAR GRESIK, JAWA TIMUR, TELP. 031-3951958', NULL, 1, NULL, NULL),
(59, 105, 'LASIMIN', 'MLUWIH MIRENG TRUCUK KLATEN', NULL, 1, NULL, NULL),
(60, 105, 'GIYOSO', 'JL. RONNGO WARSITO MLUWIH MIRENG KLATEN', NULL, 1, NULL, NULL),
(61, 105, 'Fatah H.Subagiyo', 'Jambukulon 001/008 Jambu Kulon, Ceper, Klaten', NULL, 1, NULL, NULL),
(62, 105, 'Yulianto (Berkah Alam)', 'Nganti 012/004 Ngraho, Bojonegoro', NULL, 1, NULL, NULL),
(63, 105, 'BENY', 'DESA KALIWULU RT 03 RW 01 BLOK KRANDON TIMUR KECAMATAN PLERED KABUPATEN CIREBON 45158', NULL, 1, NULL, NULL),
(64, 105, 'UD. RAHMA JATI', 'GOMBANG CAWAS KLATEN', NULL, 1, NULL, NULL),
(65, 105, 'UD. MAJU JAYA', 'JL. KYAI SEPUH NO 99, PASURUAN TELP 0343 - 424603', NULL, 1, NULL, NULL),
(66, 105, 'PT. SIJAS EXPRESS UNIT II', 'BENYOM JAYA I, DISTRIK NIMBORAN, KABUPATEN JAYAPURA, PROVINSI PAPUA', NULL, 1, NULL, NULL),
(67, 105, 'UD. HASIL ALAM', 'JL. TAMBAK LANGON I/5 SURABAYA', NULL, 1, NULL, NULL),
(68, 105, 'PT. EKA DWIKA PERKASA', 'JL. SUNGAI WADIO NO. 88, KALIBOBO, KABUPATEN NABIRE, PROVINSI PAPUA', NULL, 1, NULL, NULL),
(69, 105, 'UD. SERBA GUNA', 'JL. LETJEN SUTOYO NO. 88 PARE, KEDIRI', NULL, 1, NULL, NULL),
(70, 105, 'CV. CAHAYA SEJATI GEMILANG', 'JL. INDUSTRI NO.68, BUDURAN - SIDOARJO', NULL, 1, NULL, NULL),
(71, 105, 'PT. SINAR WIJAYA PLYWOOD INDUSTRIES', 'JL. KOMPLEK DUTA MERLIN BLOK E NO. 27-28, JL. GAJAH MADA KAV,3-5 JAKARTA', NULL, 1, NULL, NULL),
(72, 105, 'UD. TIMBER MAKMUR', 'JL. TPA KM 0,6, DS.BESUK, TEMPEH LUMAJANG', NULL, 1, NULL, NULL),
(73, 105, 'PT. INDO FURNITAMA RAYA', 'DS. GERONGAN, KRATON-PASURUAN', NULL, 1, NULL, NULL),
(74, 105, 'PT. MEGA UTAMA INDAH', 'JL. PINTU AIR NO. 2 KALIANAK, SURABAYA', NULL, 1, NULL, NULL),
(75, 105, 'PD. SUMBER KAYU LANCAR', 'JL. MAYJEN SUNGKONO NO 12 GRESIK', NULL, 1, NULL, NULL),
(76, 105, 'UD. MAJU NUSANTARA', 'DESA PATTI, KEC. MOA LAKOR, KAB. MALUKU BARAT DAYA', NULL, 1, NULL, NULL),
(77, 105, 'ABDULLOHIM', 'PURWOHARJO', NULL, 1, NULL, NULL),
(78, 105, 'CV. SETIA MAKMUR', 'JL. RAYA KEDAMEAN NO.19, KEDAMEAN GRESIK', NULL, 1, NULL, NULL),
(79, 105, 'SISWANTO', 'DSN. CURAREJO DS. PAKEL KEC. BARENG KAB. JOMBANG', NULL, 1, NULL, NULL),
(80, 105, 'UD. KARYA BAROKAH', 'DSN. TEKIK RT 05 / RW 01 DS. BARAT, PADANG - LUMAJANG', NULL, 1, NULL, NULL),
(81, 105, 'CV. WANA GEMILANG RAYA', 'JL. MAYJEND SUNGKONO KM 3,5, PRAMBANGAN, KEBOMAS- GRESIK', NULL, 1, NULL, NULL),
(82, 105, 'UD. BOMA JAYA TIMBER', 'DS. MARGOYOSO, CANDIROTO, TEMANGGUNG', NULL, 1, NULL, NULL),
(83, 105, 'CV. BINA ALAM', 'JL. BELITUNG BARAT NO.43 RT. 20 BANJARMASIN 70129', NULL, 1, NULL, NULL),
(84, 105, 'PT. INHUTANI I UNIT', 'JL. BUJANGGA RT.4 KEL. SUNGAI BEDUNGUN TANJUNG REDEB KALTIM', NULL, 1, NULL, NULL),
(85, 105, 'PT. KAYU MERAPI INTERNUSA', 'JL. RAYA KM 22 DS.ROOMO MANYAR-GRESIK', NULL, 1, NULL, NULL),
(86, 105, 'UD. HASIL KAYU INDAH', 'JL. NGAPEL MADYA NO. 56 SURABAYA', NULL, 1, NULL, NULL),
(87, 105, 'CV. BINTANG TERANG', 'JL. MAYJEN SUNGKONO XIV / 103 GULOMANTUNG KEBOMAS-GRESIK', NULL, 1, NULL, NULL),
(88, 105, 'PT. HUTAN LESTARI MULTI PERKASA', 'JL. KAPT. DARMO SUGONDO NO.33 GRESIK', NULL, 1, NULL, NULL),
(89, 105, 'PT. KAYAN JAYA TANJUNG', 'JL. MARGOMULYO INDAH 1A/18-22 SURABAYA', NULL, 1, NULL, NULL),
(90, 105, 'CV. TRINKO WOOD', 'JL. HR MUHAMMAD 140 SURABAYA', NULL, 1, NULL, NULL),
(91, 105, 'PT. UNGARAN WANA KARYA', 'Dusun Sambeng Sari RT.01 RW.03 Desa Pringsari Kec.Pringapus Kab. Semarang', NULL, 1, NULL, NULL),
(92, 105, 'PT. HASIL ALAM INDO INDAH', 'JL. AHMAD YANI NO. 73 PASURUAN', NULL, 1, NULL, NULL),
(93, 105, 'PT. DAMAI PRATAMA SEJATI', 'JL. BABAT JERAWAT NO. 45, BENOWO - SURABAYA', NULL, 1, NULL, NULL),
(94, 105, 'NAWAWI', 'DK. KRAJAN DS. TLOGOSONO KEC. GEBANG PURWOKERTO', NULL, 1, NULL, NULL),
(95, 105, 'SUTOYO', 'DK. KRAJAN DS. MLARAN KEC. GEBANG PURWOREJO', NULL, 1, NULL, NULL),
(96, 105, 'WAHYU WIDODO', 'DK. TILENG DS. KETIWIJAYAN KEC. BAYAN PURWOREJO', NULL, 1, NULL, NULL),
(97, 105, 'SUGENG JOKO SANTOSO', 'DS. KEMANUKAN KEC. BAGELEN, PURWOREJO-JAWA TENGAH', NULL, 1, NULL, NULL),
(98, 105, 'CHAFIDZ', 'DS, JEMUR KEC. PEJAGOAN, KEBUMEN JAWA TENGAH', NULL, 1, NULL, NULL),
(99, 105, 'MARLAN', 'DS. LONING KEC KEMIRI KAB. PURWOREJO-JAWA TENGAH', NULL, 1, NULL, NULL),
(100, 105, 'SYAI,IN', 'DK. KAUMAN DS. MLARAN KEC GEBANG PURWOREJO', NULL, 1, NULL, NULL),
(101, 105, 'SUKAWIR', 'DS. TEMPUREJO KEC. KALIBAWANG KAB. WONOSOBO-JATENG', NULL, 1, NULL, NULL),
(102, 105, 'SHOLEH', 'DS. TEMPUREJO KEC. KALIBAWANG KAB. WONOSOBO-JATENG', NULL, 1, NULL, NULL),
(103, 105, 'SITI HALIMAH', 'DS. TEMPUREJO KEC. KALIBAWANG KAB. WONOSOBO-JATENG', NULL, 1, NULL, NULL),
(104, 105, 'MISTINAH', 'DS. TEMPUREJO KEC. KALIBAWANG KAB. WONOSOBO-JATENG', NULL, 1, NULL, NULL),
(105, 105, 'AHMAD MUSTAHAL', 'DS. TEMPUREJO KEC. KALIBAWANG KAB. WONOSOBO-JATENG', NULL, 1, NULL, NULL),
(106, 105, 'AHMAD AZIS', 'DS. TEMPUREJO KEC. KALIBAWANG KAB. WONOSOBO-JATENG', NULL, 1, NULL, NULL),
(107, 105, 'YUSMAN', 'DS. TEMPUREJO KEC. KALIBAWANG KAB. WONOSOBO-JATENG', NULL, 1, NULL, NULL),
(108, 105, 'ARMIHUN', 'DS. TEMPUREJO KEC. KALIBAWANG KAB. WONOSOBO-JATENG', NULL, 1, NULL, NULL),
(109, 105, 'SALIMAH', 'DS. TEMPUREJO KEC. KALIBAWANG KAB. WONOSOBO-JATENG', NULL, 1, NULL, NULL),
(110, 105, 'TEGA PRIYOGO', 'DS. TEMPUREJO KEC. KALIBAWANG KAB. WONOSOBO-JATENG', NULL, 1, NULL, NULL),
(111, 105, 'RIZCA VIDATAMA', 'DS. WIDORO KEC. KREJENGAN KAB PROBOLINGGO', NULL, 1, NULL, NULL),
(112, 105, 'MISDI', 'DS. GUNUNGGEDE KEC. WONOTIRTO KAB BLITAR', NULL, 1, NULL, NULL),
(113, 105, 'ALFRET SORIAWAN', 'DS. PATTI KEC. MOA KAB. MALUKU BARAT DAYA', NULL, 1, NULL, NULL),
(114, 105, 'M. SHOLI', 'DS. PATUK KEC. PATUK KAB. GUNUNG KIDUL-DIY', NULL, 1, NULL, NULL),
(115, 105, 'IZAKH A.LICCO', 'DS. PATTI KEC. MOA KAB. MALUKU BARAT DAYA', NULL, 1, NULL, NULL),
(116, 105, 'GAMPIL', 'DS. GIRINDO KEC. PTURUH, PURWOREJO-JAWA TENGAH', NULL, 1, NULL, NULL),
(117, 105, 'SLAMET SUSILO', 'DAMBREH RT05 RW 03 TRUCUK, TRUCUK KLATEN , Jawa tengah', NULL, 1, NULL, NULL),
(118, 105, 'ZAINUL CHUSNANTO, SE', 'DK. KERUN BARU RT 02/14 DS BELANG WETAN KEC.KLATEN UTARA KAB.KLATEN', NULL, 1, NULL, NULL),
(119, 105, 'UD.AKAR JATI BERLAKU', 'JALAN RAYA CEPU NGAWI KM 36 BOJONEGORO', NULL, 1, NULL, NULL),
(120, 105, 'UD HASTA KREASI', 'JALAN RAYA NGAWI CEPU NO 09 RT01 RW III', NULL, 1, NULL, NULL),
(121, 105, 'IVAN GALLERY', 'JL.SIMA CENTRAL PATUNG DESA MULYAHARJO RT02 RW 04 JEPARA JAWA TENGAH', NULL, 1, NULL, NULL),
(122, 105, 'JPM SOLID FURNITURE', 'JALAN PAVING CENTRA UKIR PATUNG RT01/04 MULYO HARJO JEPARA', NULL, 1, NULL, NULL),
(123, 105, 'ABDUL MUID', 'KRAPYAK JEPARA', NULL, 1, NULL, NULL),
(124, 105, 'PT. BINTUNI UTAMA MURNI WOOD INDUSTRIES', 'Pulau Amutu Besar, Kabupaten Teluk Bintuni, Provinsi Papua Barat', NULL, 1, NULL, NULL),
(125, 105, 'WY. SUDIBIA', 'Bali', NULL, 1, NULL, NULL),
(126, 105, 'UD.PURNOMO AJI', 'Yogyakarta', NULL, 1, NULL, NULL),
(127, 105, 'CV. AKBAR PUTRA', 'JL. GUBENIR SUBARJO RT. 35 KELURAHAN BASIRIH SELATAN BANJARMASIN - KALIMANTAN SELATAN', NULL, 1, NULL, NULL),
(128, 105, 'TPT. CV. SEMANGAT BARU', 'JL. GUBENIR SUBARJO RT. 35 KELURAHAN BASIRIH SELATAN BANJARMASIN - KALIMANTAN SELATAN', NULL, 1, NULL, NULL),
(129, 105, 'PT. BUKIT MUSTIKA PERSADA', 'JL. REJOSO LOR 21, PASURUAN', NULL, 1, NULL, NULL),
(130, 105, 'PT. ANUGRAH PUTRA SANJAYA', 'JL. MAYJEN SUNGKONO NO. 10 GRESIK', NULL, 1, NULL, NULL),
(131, 105, 'PT. KARUNIA INDAH VINIR', 'DS. SUMBERAME KM 36, WIRINGINANOM-GRESIK', NULL, 1, NULL, NULL),
(132, 105, 'CV. HIDUP SEJAHTERA ABADI', 'BUMI MASPION SELATAN BLOK V NO. 8 ROMOKALISARI - SURABAYA', NULL, 1, NULL, NULL),
(133, 105, 'PT. BINA KARYA DERMAGA NILAM', 'JL. LAKSDA M. NASIR 29 BLOK G-32 SURABAYA', NULL, 1, NULL, NULL),
(134, 105, 'UD. AKBAR', 'JL. RAYA BETEK RT 1/RW 1 KERUCIL PROBOLINGGO', NULL, 1, NULL, NULL),
(135, 105, 'UD. Kandang Jati', 'Jl. Raya Rembang Km 4,5 Blora', NULL, 1, NULL, NULL),
(136, 105, 'Sutrisno', 'Ds.Bandungharjo Rt.01 / Rw.09 Donorejo Keling', NULL, 1, NULL, NULL),
(137, 105, 'Khalimatus Sa\'diyah', 'Ds. Srobyong, Mlonggo, Jepara', NULL, 1, NULL, NULL),
(138, 105, 'Hartono', 'Ds.Plajan Rt/Rw ; 19/03 Kec Pakis Aji Jepara', NULL, 1, NULL, NULL),
(139, 105, 'Mujanji', 'Ds. Karanggondang Rt/Rw ; 01/08 , Mlonggo , Jepara', NULL, 1, NULL, NULL),
(140, 105, 'Satria Jati', 'Ds. Karanggondang Rt/Rw ; 05/07 , Mlonggo , Jepara', NULL, 1, NULL, NULL),
(141, 105, 'Eko Jati', 'Tulakan Donorejo Jepara', NULL, 1, NULL, NULL),
(142, 105, 'Umun Saifudin', 'Ds. Jambu Timur Rt/Rw ; 05/01 , Mlonggo , Jepara', NULL, 1, NULL, NULL),
(143, 105, 'TEGUH', 'DIRO, BANTUL', NULL, 1, NULL, NULL),
(144, 105, 'SUPRI', 'JALAN PARANGTRITIS YOGYAKARTA', NULL, 1, NULL, NULL),
(145, 105, 'CV. AGUS JATI', 'DS. TANGGUL REJO, TEMPURAN, MAGELANG', NULL, 1, NULL, NULL),
(146, 105, 'DAMAN', 'DUSUN X SIMP.EMPAT SEI-RAMPAH SERGAI', NULL, 1, NULL, NULL),
(147, 105, 'PT. AGUNG SEJAHTRA BHAKTI', 'JL. KARTINI NO. 26 SAMARINDA.0541-742756', NULL, 1, NULL, NULL),
(148, 105, 'Bima Art', 'Yogyakarta', NULL, 1, NULL, NULL),
(149, 105, 'PETIT GALLERY', 'Yogyakarta', NULL, 1, NULL, NULL),
(150, 105, 'YONI ART\'S', 'Yogyakarta', NULL, 1, NULL, NULL),
(151, 105, 'INTAN GALLERY', 'Yogyakarta', NULL, 1, NULL, NULL),
(152, 105, 'FIKRI HANDICRAFT', 'Yogyakarta', NULL, 1, NULL, NULL),
(153, 105, 'LEK MOEL', 'Yogyakarta', NULL, 1, NULL, NULL),
(154, 105, 'PT,KAYU TROPICAL LANCAR JAYA', 'JL. RAYA DESA WOTAN NO.88, PANCENG-GRESIK', NULL, 1, NULL, NULL),
(155, 105, 'TPT. CV.HW AKBAR', 'JL. GUBERNUR SUBARJO RT. 05 NO. 08 KELURAHAN BASIRIH, BANJARMASIN , KALSEL', NULL, 1, NULL, NULL),
(156, 105, 'PT. SURYA OSCAR DECKERS CEMERLANG', 'JL. RAYA SUKOMULYO KM.24, MANYAR-GRESIK', NULL, 1, NULL, NULL),
(157, 105, 'UD. KARYA BARU', 'JL. KALIANAK BARAT 68 G SURABAYA', NULL, 1, NULL, NULL),
(158, 105, 'UD. SARANA BANGUNAN', 'JL.RAYA MENGANTI BABATAN NO. 38 SURABAYA TEL : 031-7530510', NULL, 1, NULL, NULL),
(159, 105, 'PT. RIMBA KUSUMA LESTARI', 'JL. MAYJEN SUNGKONO XIV/1A, GRESIK, JAWA TIMUR', NULL, 1, NULL, NULL),
(160, 105, 'PT. MAHAKAM MANDIRI MAKMUR', 'PERGUDANGAN MARGOMULYO PERMAI INDAH BLOK G-14, SURABAYA', NULL, 1, NULL, NULL),
(161, 105, 'CV. INDO RAYA', 'JL. MARGOMULYO INDAH G-17 SURABAYA', NULL, 1, NULL, NULL),
(162, 105, 'PK. BHINEKA KARYA', 'JL. HALMAHERA NO. 30, PASURUAN', NULL, 1, NULL, NULL),
(163, 105, 'PT.DWI RIMBA AGUNG', 'JL. RAYA SEMEMI NO. 07, BENOWO SURABAYA', NULL, 1, NULL, NULL),
(164, 105, 'PT. TOHITINDO MULTICRAFT INDUSTRIES', 'JL. RAYA SURABAYA-MOJOKERTO KM.24 KRIAN SIDOARJO', NULL, 1, NULL, NULL),
(165, 105, 'Pak Rahmat', 'Jawa Timur', NULL, 1, NULL, NULL),
(166, 105, 'UD. Maju Jaya', 'Jl. Kyai Sepuh No.99, Pasuruan, Jawa Timur', NULL, 1, NULL, NULL),
(167, 105, 'UD Sinar Abadi', 'Jl. Mayjen Sungkono II No.17 Gresik, Jawa Timur', NULL, 1, NULL, NULL),
(168, 105, 'UD. AGUNG JAYA', 'DS. MIAU BARU KONGBENG, SANGATA ,', NULL, 1, NULL, NULL),
(169, 105, 'PT. DATONAN JAYA PERKASA', 'JL. KAMP. WOLKER NO.8 WAENA KOTA JAYA PURA PROVINSI PAPUA,', NULL, 1, NULL, NULL),
(170, 105, 'PT. NUSANTARA CITRA ALAM RAYA', 'JL. IKER-IKER GEGER CERME GRESIK', NULL, 1, NULL, NULL),
(171, 105, 'Pak Ismail', 'Yogyakarta', NULL, 1, NULL, NULL),
(172, 105, 'UD.CENTRAL USAHA', 'Pergudangan Bumi Maspion Jl.Romokalisari Blok V/C11 Surabaya', NULL, 1, NULL, NULL),
(173, 105, 'Pak Hardi', 'Yogyakarta', NULL, 1, NULL, NULL),
(174, 105, 'Pak Guntoro', 'Jepara', NULL, 1, NULL, NULL),
(175, 105, 'Pak Wiwok', 'Jepara', NULL, 1, NULL, NULL),
(176, 105, 'RUDI SUBIANTORO', 'RANDU BELANG RT 4 NO. 108 BANGUNHARJO SEWON BANTUL YOGYAKARTA', NULL, 1, NULL, NULL),
(177, 105, 'SARTI', 'GEDONGAN,TUMPEREJO', NULL, 1, NULL, NULL),
(178, 105, 'PERUM PERHUTANI', 'JL. GENTENGKALI 49 -SURABAYA', NULL, 1, NULL, NULL),
(179, 105, 'PT.FAJAR KUTIM', 'DESA TEPIAN LANGSAT,BENGALON', NULL, 1, NULL, NULL),
(180, 105, 'KRISTANTO BAYU SURYONO', 'JEPARA', NULL, 1, NULL, NULL),
(181, 105, 'IUIPHHK WARISAN BWI', 'JL. LETJEN SUPRAPTO 69 BANYUWANGI', NULL, 1, NULL, NULL),
(182, 105, 'KSU', 'BUKIT WOLIO INDAH,WOLIO BAU BAU', NULL, 1, NULL, NULL),
(183, 105, 'UD CENTRAL USAHA', 'JL ROMOKALISARI BLOK V C 11', NULL, 1, NULL, NULL),
(184, 105, 'PT.CIPTA WIJAYA MANDIRI', 'JLN.RAYA SEMARANG-PURWODADI KM 16.5', NULL, 1, NULL, NULL),
(185, 105, 'Mad Kayu', 'Blok Wadas Post, Desa Tegal Sari, Kecamatan Plered, Cirebon', NULL, 1, NULL, NULL),
(186, 105, 'BANO', 'BLOK DANALAYA RT010/004 DESA TEGALSARI KEC.PLERED KAB.CIREBON', NULL, 1, NULL, NULL),
(187, 105, 'H.Subari B Kasyana', 'Blok Gabugan RT 006/002 desaTegalwangi Kec.Weru Kab.Cirebon', NULL, 1, NULL, NULL),
(188, 105, 'Budi Santosa - CV. Kayu Aji Mulia', 'Jl. Dongkelan No. 228, Mantrijeron, Yogyakarta', NULL, 1, NULL, NULL),
(189, 105, 'Edy Purwantoro - Surya Citra Mandiri', 'Jl. Citrokusumo RT. 14 RW. 05 Senenan Randusari, Jepara, Jawa Tengah', NULL, 1, NULL, NULL),
(190, 105, 'Sukamat - UD. SJ PRATAMA', 'Puntuk RT. 03/02, Bekutuk, Randublatung, Blora, Jawa Tengah', NULL, 1, NULL, NULL),
(191, 105, 'Purwanto - Sumber Baru Rejeki', 'Gesingan, Ngluwang RT. 01 RW. 09 Gatak, Sukoharjo, Jawa Tengah', NULL, 1, NULL, NULL),
(192, 105, 'Paidi', 'Petekeyan RT. 02/03, Petekeyan, Tahunan, Jepara, Jawa Tengah', NULL, 1, NULL, NULL),
(193, 105, 'Imam Nugroho', 'Jl. Pangeran Syarif 27 Siripan, Jepara, Jawa Tengah', NULL, 1, NULL, NULL),
(194, 105, 'Produksi CV. Haas', 'Sendang Semanggi RT 005 Sembungan, Bangunjiwo, Kasihan, Bantul, D.I. Yogyakarta', NULL, 1, NULL, NULL),
(195, 105, 'MUIN', 'JL. CANGKRING BLOK SIABANG DS.TEGALWANGI KEC.PLERED KAB.CIREBON', NULL, 1, NULL, NULL),
(196, 105, 'CV.JATI PERMATA', 'JL.PEMUDA NO.41 SEDURI MOJOSARI MOJOKERTO', NULL, 1, NULL, NULL),
(197, 105, 'SAPARI', 'BRAJAN,BANJARARUM,KALIBAWANG,KULON PROGO,JOGYAKARTA', NULL, 1, NULL, NULL),
(198, 105, 'PARMAN', 'DESA WADAS TENGAH, TEGALWANGI CIREBON', NULL, 1, NULL, NULL),
(199, 105, 'FARMAN', 'BLOK WADAS ILIR , TEGALSARI, PLERED CIREBON', NULL, 1, NULL, NULL),
(200, 105, 'MASHUD', 'BLOK TONNGO SELATAN, KALIWULU, PLERED CIREBON', NULL, 1, NULL, NULL),
(201, 105, 'KSU, SOEKARNO-HATTA', 'BAKTI ABRI,KEL.BUKIT WOLIO INDAH,KOTA BAUBAU PROV.SULTRA', NULL, 1, NULL, NULL),
(202, 105, 'UD.SUMBER ALAM JATINDO', 'PELABUHAN MURHUM BAUBAU', NULL, 1, NULL, NULL),
(203, 105, 'UD.DHADI MULYO', 'DS.PETAK BOGOR NGANJUK', NULL, 1, NULL, NULL),
(204, 105, 'PK.RN PUTRA', 'JL. CIMARAGAS NO. 348 BOJONG MENGGER CIJEUNGJING CIAMIS JAWA BARAT', NULL, 1, NULL, NULL),
(205, 105, 'KARIMA', 'DESA WOTGALI CIREBON', NULL, 1, NULL, NULL),
(206, 105, 'SAID FUAD ASSEGAF', 'JL.KARYA BAKTI SEKANGAT RT 06,BONTANG SELATAN', NULL, 1, NULL, NULL),
(207, 105, 'PT.TATEHE NUSA JAYA', 'JL.SAROVELE,KAYUMALUE NGAPA,PALU TELP.0451-411577', NULL, 1, NULL, NULL),
(208, 105, 'UD.WAHYU', 'JL. MAYJEND SUNGKONO NO 26 KEBOMAS GRESIK', NULL, 1, NULL, NULL),
(209, 105, 'UD WAHYU', 'JL MAYJEND SUNGKONO NO.26, GRESIK', NULL, 1, NULL, NULL),
(210, 105, 'PT.DEWATA CIPTA SEMESTA', 'JLN.TANJUNG SARI NO 38 SURABAYA TELP 031-7492424', NULL, 1, NULL, NULL),
(211, 105, 'UD.RUDI', 'JL.RADEN SALEH.LRG INOTUA KEL TAIPA KEC PALU UTARA', NULL, 1, NULL, NULL),
(212, 105, 'GARDENIA JAVA FURNITURE', 'Ds. Ngabul RT.01 RW.07 Tahunan Jepara, Jawa tengah', NULL, 1, NULL, NULL),
(213, 105, 'AZIS MUSLIM', 'Blok Simaja Rt 23/01 desa gombang kecamatan Plumbon', NULL, 1, NULL, NULL),
(214, 105, 'SRIYONO', 'BULAKAN SUKOHARJO', NULL, 1, NULL, NULL),
(215, 105, 'SAGIMAN MADYO SUWARNO', 'GONDANG SARI RT 13/RW 05, JUWIRING KLATEN', NULL, 1, NULL, NULL),
(216, 105, 'MUJIONO', 'PURWOSARI LAMPUNG TIMUR', NULL, 1, NULL, NULL),
(217, 105, 'SAHIRUN,S.Pd.MH', 'KEL.BUKIT WOLIO INDAH', NULL, 1, NULL, NULL),
(218, 105, 'CV.ALMENTA', 'JL.MAYJEND SUNGKONO GG XIV/108 GRESIK', NULL, 1, NULL, NULL),
(219, 105, 'PT.FELTICO UTAMA ABADI', 'JL.RAYA KEPATIHAN NO 104', NULL, 1, NULL, NULL),
(220, 105, 'UD.RIMBA PERMAI', 'DESA MALIK KECAMATAN BUALEMO, BANGAI', NULL, 1, NULL, NULL),
(221, 105, 'UD.SENTOSA', 'JL.MAYJEND SUNGKONO NO 99 DESA SAKARKURUNG KECAMATAN KEBOMAS, GRESIK', NULL, 1, NULL, NULL),
(222, 105, 'PT.PERINDUSTRIAN KAYU ASIA MUJUR', 'JL.T.AMIR HAMZAH NO.111-B,DESA SAMBIREJO,BINJAI-LANGKAT', NULL, 1, NULL, NULL),
(223, 105, 'MELLA KREASI', 'MUTIHAN RT 11, RW 06, SERENAN, JUWIRING, KLATEN, CENTRAL JAVA, INDONESIA', NULL, 1, NULL, NULL),
(224, 105, 'UD. JATI MAS', 'Ds. Suwawal RT 04 RW 11 ,KEC. MLONGGO, KAB. JEPARA', NULL, 1, NULL, NULL),
(225, 105, 'JATI PAYUNG EMAS', 'JL. BLORA-CEPU KM 10 DS. TEMPELLEMAHBANG - JEPON BLORA', NULL, 1, NULL, NULL),
(226, 105, 'CV AMERCON CRAFT', 'JL. KEMUTUK NO 21 TAMANAN BANGUNTAPAN BANTUL YOGYAKARTA', NULL, 1, NULL, NULL),
(227, 105, 'CV. ALMENTA', 'Jl. Mayjen Sungkono XIV / 108 Kel. Gulomantung Kec. Kebomas, Kab. Gresik, Jawa Timur', NULL, 1, NULL, NULL),
(228, 105, 'Sambudi', 'Dk.Mluweh Ds.Mireng, Trucuk, Klaten', NULL, 1, NULL, NULL),
(229, 105, 'PT. YORI MASA COMPANY', 'Jl.Raya Ngabetan No.3 Desa Ngabetan Kecamatan Ceremai Kabupaten Gresik Provinsi Jawa Timur', NULL, 1, NULL, NULL),
(230, 105, 'DAMAN', 'DUSUN X SIMP EMPAT SEI-RAMPAH SERGAI', NULL, 1, NULL, NULL),
(231, 105, 'PT.SATYA MAKMUR PERKASA', 'JL.TANJUNG SARI NO 29 SURABAYA TELP. 031-7492541,7492541', NULL, 1, NULL, NULL),
(232, 105, 'UD.MAHARANI', 'DESA TAHELE KEC POPAYATO TIMUR,PAHUWATO', NULL, 1, NULL, NULL),
(233, 105, 'UD.SANGKURIANG PRIMA', 'DESA NEHES LIAH BING,MUARA WAHAU,SANGATA', NULL, 1, NULL, NULL),
(234, 105, 'SARTI', 'GEDONGAN, TEMPUREJO WONOSOBO - JAWA TENGAH', NULL, 1, NULL, NULL),
(235, 105, 'SAHIRUN', 'KEL. BUKIT WOLIO INDAH SULAWESI TENGGARA', NULL, 1, NULL, NULL),
(236, 105, 'BENI', 'Jl. Raya senenan', NULL, 1, NULL, NULL),
(237, 105, 'FAJAR SUGIYANTO', 'dk. Surtanan rt 08/)4, Desa Serenan Klaten', NULL, 1, NULL, NULL),
(238, 105, 'Edi Djoko Susanto', 'Dk.Surtanan rt 08/04 Desa Serenan Klaten', NULL, 1, NULL, NULL),
(239, 105, 'HARMOYO', 'Nambangan Rt 07/03 Desa Serenan Klaten', NULL, 1, NULL, NULL),
(240, 105, 'PT.TUNAS FURNITURE INDONESIA', 'JL.BINTORO, DESA WONOKOYO, BEJI', NULL, 1, NULL, NULL),
(241, 105, 'ANGWAR', 'BONDOWOSO', NULL, 1, NULL, NULL),
(242, 105, 'HERU PRASETYO', 'JL TURI KM 3.5 KADISOBO 2 TRIMULYO SLEMAN', NULL, 1, NULL, NULL),
(243, 105, 'Citra Akar', 'Ds. Mulyoharjo Rt 02 Rw 04 Sentra patung, Jepara, Jawa Tengah', NULL, 1, NULL, NULL),
(244, 105, 'Indah Jati', 'Ds Mulyoharjo RT 01 Rw 05 Sentra Patung, Jepara, Jawa Tengah', NULL, 1, NULL, NULL),
(245, 105, 'Bintang Sembilan', 'Jl. Magelang - Jogja KM 21,5 Semen, Sucen, Salam, Kab Magelang, Jawa Tengah', NULL, 1, NULL, NULL),
(246, 105, 'CV. Industri Classica Variasi', 'Jogjakarta', NULL, 1, NULL, NULL),
(247, 105, 'UD KEMBANG ANTIK', 'JLN JOGJA SOLO KM 29, SUREN, DLIMAS, CEPER, KLATEN', NULL, 1, NULL, NULL),
(248, 105, 'ModernStone (Arifin)', 'Sewon, Bantul, DIY', NULL, 1, NULL, NULL),
(249, 105, 'UD.GiriManunggal (Pujiono)', 'Kradenan, Purwodadi, Grobogan', NULL, 1, NULL, NULL),
(250, 105, 'AryaBambooArt (Triyono)', 'Jambukulon, Ceper, Klaten', NULL, 1, NULL, NULL),
(251, 105, 'UD.RADJIN', 'Sidokerto Mojowarno Jombang', NULL, 1, NULL, NULL),
(252, 105, 'PT. WANAKAYU HASILINDO', 'JL. KALIANAK 66 , SURABAYA', NULL, 1, NULL, NULL),
(253, 105, 'Karya Raharja', 'Jln. Sultan Hadirin RT. 3 RW. 1 Ds. Ngabul, Tahunan, Jepara, Jawa Tengah', NULL, 1, NULL, NULL),
(254, 105, 'CV. Racak', 'Yogyakarta', NULL, 1, NULL, NULL),
(255, 105, 'PT. Rajawali Boan H', 'Jl.Raya Cangkir KM 22 Driyorejo - Gresik', NULL, 1, NULL, NULL),
(256, 105, 'PT.CALINDO SENTRAL CAHAYA', 'JL.RAYA KEPATIHAN INDUSTRI NO 1 GRESIK', NULL, 1, NULL, NULL),
(257, 105, 'Pak Roni', 'Yogyakarta', NULL, 1, NULL, NULL),
(258, 105, 'PT. PANEI LIKA SEJAHTERA', 'JL. A.H. Nasution No. 1 A Medan', NULL, 1, NULL, NULL),
(259, 105, 'MARDIYANTO', 'Dsn TARUBAN NGRINGINAN PALBAPANG BANTUL YOGYAKARTA', NULL, 1, NULL, NULL),
(260, 105, 'PLOSOK GALLERY', 'JL. IMOGIRI TIMUR DLINGO BANTUL YOGYAKARTA', NULL, 1, NULL, NULL),
(261, 105, 'CV. SHEAN GALLERY', 'Yogyakarta', NULL, 1, NULL, NULL),
(262, 105, 'PT. TOHITINDO MULTICRAFT INDUSTRIES', 'JL. Raya Mojokerto - Surabaya KM 24 Krian, Sidoarjo. Telp 031-8972274 - 76', NULL, 1, NULL, NULL),
(263, 105, 'CV. SINAR MULYA MANDIRI', 'JALAN RAYA PLN ANGKRONG NO.75, PARUNGKUDA - SUKABUMI, JAWA BARAT - INDONESIA', NULL, 1, NULL, NULL),
(264, 105, 'PD.RAFFI INTERIOR & EXTERIOR', 'Kp. pulo rt.012/005 Ds.Bitung Jaya Kec. cikupa Kab. Tangerang', NULL, 1, NULL, NULL),
(265, 105, 'PT. Kharisma Jaya Gemilang', 'Kawasan Industri Terboyo Blok I No.8 Semarang', NULL, 1, NULL, NULL),
(266, 105, 'NURWANTO', 'ROWO JIMBUNG KLATEN JAWA TENGAH', NULL, 1, NULL, NULL),
(267, 105, 'BENNI PURWONEGORO', 'KP PASIR PEDES RT 03 RW04 DESA CIPINING KEC. CURUG BITUNG LEBAK BANTEN', NULL, 1, NULL, NULL),
(268, 105, 'Bp. Paryadi', 'Ngares Rt 01/003, Bulakan, Sukoharjo, Jawa Tengah', NULL, 1, NULL, NULL),
(269, 105, 'PD. LAKSANA ABADI', 'JALAN PELABUHAN II, CIKEMBAR - SUKABUMI, JAWA BARAT - INDONESIA', NULL, 1, NULL, NULL),
(270, 105, 'SLAMET PRASETYO', 'NGEPRINGAN, RT 017, RW 008, SERENAN, JUWIRING, KLATEN.', NULL, 1, NULL, NULL),
(271, 105, 'TARJO SUTRISNO', 'NGEPRINGAN, RT 015, RW 007, SERENAN, JUWIRING, KLATEN.', NULL, 1, NULL, NULL),
(272, 105, 'EDI SURONO', 'NGEPRINGAN, SERENAN, JUWIRING, KLATEN.', NULL, 1, NULL, NULL),
(273, 105, 'HASAN', 'Desa Tiris, KecamatanTiris, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(274, 105, 'SUHERMAN', 'Desa Pesawahan Kecamatan Tiris Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(275, 105, 'PT.DEWATA INDUSTRINDO FORESTRY', 'Jl.Raya Babat - Jombang km 10, Lamongan', NULL, 1, NULL, NULL),
(276, 105, 'PT. WOOD VENEER ADIPERKASA INDONESIA', 'Jl.Sumber Buluresik, Ds.Manduro Manggung Gajah KM 06,Ngoro, Mojokerto', NULL, 1, NULL, NULL),
(277, 105, 'CV.LANGGENG MAKMUR BERSAMA', 'Jl. Klomprit RT.05 / RW.01 Sumbersuko- Lumajang , Jawa Timur', NULL, 1, NULL, NULL),
(278, 105, 'IBU ISA', 'Desa Serbet, Kecamatan Lumajang, Kabupaten Lumajang', NULL, 1, NULL, NULL),
(279, 105, 'DODIK', 'Desa Pesawahan Kecamatan Tiri Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(280, 105, 'P.IMAM', 'Desa Lumajang, Kecamatan Lumajang, Kabupaten Lumajang', NULL, 1, NULL, NULL),
(281, 105, 'H.HASAN', 'Desa Sumber Dawe,Kecamatan Maron, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(282, 105, 'SUPRIYADI', 'Desa Kraksan, Kecamatan Kraksan, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(283, 105, 'ALI ROBERTO', 'Desa Krucil, Kecamatan Krucil, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(284, 105, 'HOS EDI', 'Desa Krucil, Kecamatan Krucil, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(285, 105, 'ISMAIL', 'Desa Pesawahan Kecamatan Tiris Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(286, 105, 'MUSA', 'Desa Pesawahan Kecamatan Tiris Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(287, 105, 'NURUL', 'Desa Pesawahan Kecamatan Tiris Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(288, 105, 'SUMAR', 'Desa Pesawahan Kecamatan Tiri Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(289, 105, 'DIDIK SUWANDI', 'Desa Krucil, Kecamatan Krucil, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(290, 105, 'TARI', 'Desa Gading, Kecamatan Banyuanyar, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(291, 105, 'DODIK HANDOKO', 'Desa Gading, Kecamatan Banyuanyar, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(292, 105, 'BAMBANG', 'Desa Tempeh,Kecamatan Tempeh,Kabupaten Lumajang', NULL, 1, NULL, NULL),
(293, 105, 'NAWARI', 'Desa Gading, Kecamatan Banyuanyar, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(294, 105, 'HOSNAN', 'Desa Sumber Dawe,Kecamatan Maron, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(295, 105, 'SUCIK', 'Desa Ranuyoso, Kecamatan Ranuyoso,Kabupaten Lumajang', NULL, 1, NULL, NULL),
(296, 105, 'SUNU', 'Desa Pedagangan,Kecamatan Tiris, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(297, 105, 'QOSIM', 'Desa Bulu Jaran, Kecamatan Tegal Siwalan, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(298, 105, 'KHALIK', 'Desa Gading, Kecamatan Gading, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(299, 105, 'HILMI AZIZ', 'Desa Krucil, Kecamatan Krucil, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(300, 105, 'FATHUR ROHMAN', 'Desa Gelpari, Kecamatan Bantaran , Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(301, 105, 'PT.CITRA ABADI BOSCO', 'Jl.Raya Sembayat, Ds. Banyuwangi, Kec. Manyar, Gresik.', NULL, 1, NULL, NULL),
(302, 105, 'PT. CITRA ABADI BOSCO', 'Jl. Raya sembayat, Ds. Banyuwangi, Kec. Manyar, Gresik', NULL, 1, NULL, NULL),
(303, 105, 'PT. SUKSES PRATAMA PRATAMA LESTARI', 'Jl. Raya sembayat Km 12 No.08,Ds. Manyar, Gresik', NULL, 1, NULL, NULL),
(304, 105, 'NAPON', 'Desa Bangsal , Kecamatan Bangsal Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(305, 105, 'GUFRON', 'Desa Pesawahan , Kecamatan Tiris Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(306, 105, 'SUYONO', 'Desa Bangsal , Kecamatan Bangsal Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(307, 105, 'HILMI AZIS', 'Desa Gading, Kecamatan Gading , Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(308, 105, 'SANIN', 'Desa Wangkal, Kecamatan Gading, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(309, 105, 'IHSAN', 'Desa Tiris , Kecamatan Tiris, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(310, 105, 'ROHIM', 'Desa Gading , Kecamatan Gading,Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(311, 105, 'PAPAYAN', 'Desa Pesawahan , Kecamatan Tiris,Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(312, 105, 'PAK SUHAN', 'Desa Ranuyoso, Kecamatan Ranuyoso Kecamatan Lumajang', NULL, 1, NULL, NULL),
(313, 105, 'AHMAD', 'Desa Pesawahan , Kecamatan Tiris,Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(314, 105, 'JOKO', 'Desa Ranuyoso, Kecamatan Ranuyoso Kecamatan Lumajang', NULL, 1, NULL, NULL),
(315, 105, 'SAMSUDIN', 'Desa Pesawahan , Kecamatan Tiris,Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(316, 105, 'PURWANTO', 'Desa Gading , Kecamatan Gading,Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(317, 105, 'SUHARTO', 'Desa Selogudig, Kecamatan Pajarakan, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(318, 105, 'SUPRI', 'Desa Gading , Kecamatan Gading,Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(319, 105, 'SUDIN', 'Desa Pesawahan , Kecamatan Tiris,Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(320, 105, 'SUSI', 'Desa Gading, Kecamatan gading, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(321, 105, 'BUDI', 'Desa Pesawahan, Kecamatan Tiris, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(322, 105, 'INDAR', 'Desa Lumbang, Kecamatan Lumbang , Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(323, 105, 'HAJI ILYAS', 'Desa Tiris, Kecamatan Tiris, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(324, 105, 'ZAINAL', 'Desa Tempeh, Kecamatan Tempeh, Kabupaten Lumajang', NULL, 1, NULL, NULL),
(325, 105, 'BU NINIK', 'Desa Ranuyoso, Kecamatan Ranuyoso, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(326, 105, 'GIMAN', 'Desa Ranuyoso, Kecamatan Ranuyoso, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(327, 105, 'SAFIUDIN', 'Desa Lumajang, Kecamatan Lumajang, Kabupaten Lumajang', NULL, 1, NULL, NULL),
(328, 105, 'H. HASAN', 'Desa Sumber Dawe , Kecamatan Maron, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(329, 105, 'HOIRUL', 'Desa Lumajang, Kecamatan Lumajang, Kabupaten Lumajang', NULL, 1, NULL, NULL),
(330, 105, 'BUTAR', 'Desa Tempeh, Kecamatan Tempeh, Kabupaten Lumajang', NULL, 1, NULL, NULL),
(331, 105, 'DIMAS', 'Desa Ranuyoso, Kecamatan Ranuyoso, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(332, 105, 'HAJI ROWI', 'Desa Ranuyoso, Kecamatan Ranuyoso, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(333, 105, 'LILIK', 'Desa Tiris, Kecamatan Tiris, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(334, 105, 'UD.SAHABAT', 'Desa Lumajang, Kecamatan Lumajang, Kabupaten Lumajang', NULL, 1, NULL, NULL),
(335, 105, 'FANI', 'Desa Krucil, Kecamatan Krucil, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(336, 105, 'SAMIN', 'Desa Lumajang, Kecamatan Lumajang, Kabupaten Lumajang', NULL, 1, NULL, NULL),
(337, 105, 'KHOIRUL ANAM', 'Desa Ranuyoso, Kecamatan Ranuyoso, Kabupaten Probolinggo', NULL, 1, NULL, NULL),
(338, 105, 'PT. ANUGRAH BERKAH GUSTI', 'JL. RAYA RENGGING KM 11, DS. RENGGING RT9/2, KECAMATAN PECANGAAN JEPARA', NULL, 1, NULL, NULL),
(339, 105, 'CV. CITARUM', 'JL. R. SUPRAPTO NO. 91, ARGOPURO - BANYUWANGI, HP. 0818572376', NULL, 1, NULL, NULL),
(340, 105, 'HADI PRIYANTO', 'SORTANAN RT 08, RW 04, SERENAN, JUWIRING, KLATEN', NULL, 1, NULL, NULL),
(341, 105, 'Bp Asep', 'Jl.Cipayung DS Labansari, Cikarang Timur - Bekasi', NULL, 1, NULL, NULL),
(342, 105, 'SUTRIYANTO', 'DUSUN I, DESA SUKA MAJU, KECAMATAN SUNGAI ROTAN, KABUPATEN MUARA ENIM, SUMATERA SELATAN', NULL, 1, NULL, NULL),
(344, 237, 'San Juan Ventures LLC', '313 Willowby Court Grayslake, IL 60030 USA', NULL, 1, NULL, '2021-03-19 10:17:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `role` enum('client','admin') NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT 'default.png',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `name`, `username`, `password`, `email`, `role`, `foto`, `status`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin', '$2y$10$0Pyx/YTWw2L81y5QYEFloeYczlKLT.H/iLn2NvEyaCdCEe4LpWRau', 'admin@gmail.com', 'admin', 'default.png', 1, '2021-03-04 14:35:54', '2021-03-08 10:57:34'),
(4, 'PT. CIPTA MANDALA', 'mandala', '$2y$10$5YFsCQ//XXROUFT6FgwUPOL9iFFccQ5IIFzMTci4XG2JTL6PMjIFu', 'exim.cmlu@gmail.com', 'client', 'default.png', 1, '2021-03-12 13:30:23', '2021-03-15 15:07:34'),
(5, 'Ahmad', 'ahmad', '$2y$10$lmhkYXPmQxY/hAqtMbccfeeC2nrui6Tl3Jvq2Ovxro/njo/njAv72', 'ahmad@gmail.com', 'client', 'default.png', 1, '2021-03-18 14:14:27', '2021-03-18 14:14:27'),
(7, 'John Name', 'john', '$2y$10$Ypv12kF8Ibo1F0QC6yzJculO3FDy0TLcGcjQU1opLDdU85TWgOeFK', 'john@gmail.com', 'client', 'default.png', 1, '2021-04-05 10:27:26', '2021-04-05 10:27:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indeks untuk tabel `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indeks untuk tabel `jenis_kayu`
--
ALTER TABLE `jenis_kayu`
  ADD PRIMARY KEY (`jenis_id`);

--
-- Indeks untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`kabupaten_id`);

--
-- Indeks untuk tabel `mata_uang`
--
ALTER TABLE `mata_uang`
  ADD PRIMARY KEY (`uang_id`);

--
-- Indeks untuk tabel `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`negara_id`);

--
-- Indeks untuk tabel `pejabat`
--
ALTER TABLE `pejabat`
  ADD PRIMARY KEY (`pejabat_id`);

--
-- Indeks untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`pengajuan_id`);

--
-- Indeks untuk tabel `port_discharge`
--
ALTER TABLE `port_discharge`
  ADD PRIMARY KEY (`discharge_id`);

--
-- Indeks untuk tabel `port_loading`
--
ALTER TABLE `port_loading`
  ADD PRIMARY KEY (`loading_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`provinsi_id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buyer`
--
ALTER TABLE `buyer`
  MODIFY `buyer_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `client`
--
ALTER TABLE `client`
  MODIFY `client_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jenis_kayu`
--
ALTER TABLE `jenis_kayu`
  MODIFY `jenis_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `kabupaten_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;

--
-- AUTO_INCREMENT untuk tabel `mata_uang`
--
ALTER TABLE `mata_uang`
  MODIFY `uang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT untuk tabel `negara`
--
ALTER TABLE `negara`
  MODIFY `negara_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT untuk tabel `pejabat`
--
ALTER TABLE `pejabat`
  MODIFY `pejabat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `pengajuan_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `port_discharge`
--
ALTER TABLE `port_discharge`
  MODIFY `discharge_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `port_loading`
--
ALTER TABLE `port_loading`
  MODIFY `loading_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `provinsi_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `db_member`
--
CREATE DATABASE IF NOT EXISTS `db_member` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_member`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama_member` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `nama_member`, `email`, `no_telp`) VALUES
(1, 'John', 'john@gmail.com', '089131231231'),
(2, 'Rafi', 'rafi@gmail.com', '089781378127312');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `employeedb`
--
CREATE DATABASE IF NOT EXISTS `employeedb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employeedb`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `ur_id` int(11) NOT NULL,
  `ur_username` varchar(50) NOT NULL,
  `ur_password` varchar(50) NOT NULL,
  `ur_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`ur_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `ur_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `hiro_laundry`
--
CREATE DATABASE IF NOT EXISTS `hiro_laundry` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hiro_laundry`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_paket`
--

CREATE TABLE `jenis_paket` (
  `kd_paket` char(5) NOT NULL,
  `id_kategori` char(5) NOT NULL,
  `nm_paket` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_paket`
--

INSERT INTO `jenis_paket` (`kd_paket`, `id_kategori`, `nm_paket`, `harga`) VALUES
('KP001', 'K001', 'Cucian Komplit Kilat 1 hari selesai', 12000),
('KP002', 'K001', 'Cucian kering reguler 2 hari', 7000),
('KP003', 'K001', 'Cucian Komplit Kilat 2 hari selesai', 10000),
('KP004', 'K004', 'Cuci Helms', 15000),
('KP005', 'K002', 'Cuci Komplit Bayi', 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` char(4) NOT NULL,
  `nm_kategori` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nm_kategori`) VALUES
('K001', 'Laundry Kiloan'),
('K002', 'Laundry Pelengkapan Bayi'),
('K003', 'Laundry Sepatu'),
('K004', 'Laundry Helm'),
('K005', 'Laundry Satuan'),
('K006', 'Laundry / Cuci Karpet ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` char(5) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `no_telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nm_pelanggan`, `alamat`, `no_telp`) VALUES
('P0001', 'Beni ', 'Perum.Pura Blok R3 No 07, Rt05 Rw07', '08912345781'),
('P0002', 'Brain', 'Perum. Inkopad blok Q7 No 8', '08981823123'),
('P0003', 'Abil ', ' Apartement Kalibata city Tower 2c 05 16 ', '08981823123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` char(11) NOT NULL,
  `idUser` char(15) NOT NULL,
  `idPelanggan` char(5) NOT NULL,
  `kd_paket` char(5) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` enum('Lunas','Belum Lunas') NOT NULL,
  `berat` int(11) NOT NULL,
  `tarif` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `keterangan` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `idUser`, `idPelanggan`, `kd_paket`, `tgl_masuk`, `tgl_kembali`, `status`, `berat`, `tarif`, `total`, `keterangan`) VALUES
('T200617001', 'NU20060700001', 'P0001', 'KP005', '2020-06-17', '2020-05-19', 'Lunas', 1, 50000, 50000, '2 kaos'),
('T200617002', 'NU20060700001', 'P0002', 'KP004', '2020-06-17', '2020-06-19', 'Belum Lunas', 1, 15000, 15000, '10 kaos'),
('T200618001', 'NU20060700002', 'P0003', 'KP005', '2020-06-18', '2020-06-20', 'Belum Lunas', 1, 50000, 50000, '2 kaos dalam, 3 celana pendek, 1 jaket baby, 1 topi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` char(15) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` tinyint(4) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `nama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role_id`, `active`, `nama`) VALUES
('NU20060700001', 'admin', '$2y$10$WE6ZhfzwDDFnls/1pIeNa.z5dDqOT1tKCOtd4WlUhWWgDMuePZcKu', 1, 1, 'Administrator'),
('NU20060700002', 'triatmojo', '$2y$10$VkCFtBkjZVEmsNeYVeEFmesBiDcncCSTTOBCLcOQ5UEOyBISmAHOO', 2, 1, 'Tri atmojo'),
('NU20061800001', 'steven', '$2y$10$W.QbhTAP7w9cmvKy.MaupuWypmb8iwevN.3xlQouhd7ThJpDsZB1W', 2, 0, 'Steven ');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jenis_paket`
--
ALTER TABLE `jenis_paket`
  ADD PRIMARY KEY (`kd_paket`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`),
  ADD KEY `id_pelanggan` (`idUser`,`idPelanggan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
--
-- Database: `pendaftaran_kursus`
--
CREATE DATABASE IF NOT EXISTS `pendaftaran_kursus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pendaftaran_kursus`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(128) NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `kategori` varchar(32) NOT NULL,
  `mentor` varchar(128) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `deskripsi`, `kategori`, `mentor`, `harga`) VALUES
(1, 'Fullstack Developer PHP', 'CRUD Laravel 6', 'Laravel', 'Sandhika Galih, S.Kom', 100000),
(2, 'Menjadi Fullstack Designer', 'Belajar UI/UX Design', 'Front-End', 'Angga Risky & Sandhika Galih', 380000),
(5, 'Kelas Fullstack Developer', 'Membuat Toko Online', 'Laravel', 'Galih Pratama', 250000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `pendidikan` enum('SD/MI','SMP/MTS','SMA/SMK/MA','Kuliah') NOT NULL,
  `tanggal_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `id_kelas`, `nama`, `email`, `no_telp`, `alamat`, `jenis_kelamin`, `pendidikan`, `tanggal_daftar`) VALUES
(2, 2, 'Baim', 'maulanabaim@gmail.com', '081818181010', 'Cihilir kidul ngaler', 'L', 'Kuliah', '2019-11-01'),
(3, 2, 'kjhdaksjdh', 'ashdgaj@djagshd.cakjsb', '09801278', 'adsjkdgakj', 'P', 'SMP/MTS', '2019-11-04'),
(4, 1, 'Tri atmojo', 'stevejobs@yahoo.com', '0821312312', 'mamasa', 'L', 'Kuliah', '2019-11-04'),
(5, 1, 'Tri atmojo', 'annkey@gmail.com', '0981203912', 'jawa', 'L', 'Kuliah', '2019-11-07'),
(6, 5, 'Tri atmojo', 'stevejobs@yahoo.com', '08981823123', 'bogor', 'L', 'SMA/SMK/MA', '2019-11-07'),
(7, 1, 'Tri atmojo', 'stevejobs@yahoo.com', '0821391231', 'jakarta', 'L', 'Kuliah', '2019-11-07'),
(8, 1, 'Tri atmojo', 'stevejobs@yahoo.com', '0821391231', 'jakarta', 'L', 'Kuliah', '2019-11-07'),
(9, 1, 'robot qu', 'annkey@gmail.com', '089812312', 'bogor', 'L', 'SMP/MTS', '2019-11-08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `pengelolaan_nilai`
--
CREATE DATABASE IF NOT EXISTS `pengelolaan_nilai` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pengelolaan_nilai`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `kode` char(5) NOT NULL,
  `mapel` varchar(20) NOT NULL,
  `waktu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`kode`, `mapel`, `waktu`) VALUES
('MP01', 'Matematika', '19.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_siswa`
--

CREATE TABLE `nilai_siswa` (
  `no` int(6) NOT NULL,
  `nis` char(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nilai_tugas` int(4) NOT NULL,
  `nilai_uts` int(4) NOT NULL,
  `nilai_uas` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `nilai_siswa`
--
ALTER TABLE `nilai_siswa`
  ADD PRIMARY KEY (`no`),
  ADD KEY `nis` (`nis`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);
--
-- Database: `php`
--
CREATE DATABASE IF NOT EXISTS `php` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `php`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `name`, `email`, `jurusan`) VALUES
(7, '12182616', 'Tri Atmojo', 'triatmojo@gmail.com', 'Teknik Informatika'),
(8, '12189292', 'Sandhika Galih', 'sandhika@gmail.com', 'Teknik Mesin'),
(9, '12182616', 'Angga Risky', 'angga@gmail.com', 'Full Stack');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '123'),
(2, 'user', '1234');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpdasar`
--
CREATE DATABASE IF NOT EXISTS `phpdasar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phpdasar`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` char(8) NOT NULL,
  `email` varchar(256) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `email`, `jurusan`, `gambar`) VALUES
(2, 'Sandhika Galih', '13261782', 'sandhikagalih@gmail.com', 'Teknik Informatika', 'sandhika.png'),
(44, 'Angga Risky', '12829123', 'angga@gmail.com', 'Fullstack Designer', 'angga.png\r\n'),
(45, 'Key', '1238193', 'key@gmail.com', 'Design Grafis', 'key.png'),
(71, '12182716', 'lala', 'lala@yahoo.com', 'Akutansi', 'k.jpeg'),
(72, '123123', 'Hanan', 'hanan@gmail.com', 'Psikologi', 'p.jpeg'),
(73, '123123', 'nadhia', 'nadhia@gmail.com', 'Teknik sipil', 't.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Dumping data untuk tabel `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('arsip_sic', 'user_id', 'int', '11', '', 0, ',', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data untuk tabel `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'employeedb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":\"biodata\",\"table_structure[]\":\"biodata\",\"table_data[]\":\"biodata\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'server', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"arsip_sic\",\"belajar\",\"ci_login\",\"ci_pengadaan_barang\",\"ci_penyucian_kendaraan\",\"ci_vlegal\",\"db_member\",\"employeedb\",\"hiro_laundry\",\"pendaftaran_kursus\",\"pengelolaan_nilai\",\"php\",\"phpdasar\",\"phpmyadmin\",\"pustaka\",\"pustaka_booking\",\"pustaka_server\",\"sarbi-arsip\",\"sistem_jasa_penyucian_kendaraan\",\"sistem_penjualan_hijab\",\"tablebiodata\",\"test\",\"tws_perpustakaan\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"arsip_sic\",\"table\":\"jenis\"},{\"db\":\"arsip_sic\",\"table\":\"folder\"},{\"db\":\"arsip_sic\",\"table\":\"kategori\"},{\"db\":\"arsip_sic\",\"table\":\"folder_access\"},{\"db\":\"arsip_sic\",\"table\":\"file\"},{\"db\":\"arsip_sic\",\"table\":\"users\"},{\"db\":\"hiro_laundry\",\"table\":\"kategori\"},{\"db\":\"hiro_laundry\",\"table\":\"user\"},{\"db\":\"ci_vlegal\",\"table\":\"users\"},{\"db\":\"arsip_sic\",\"table\":\"file_access\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'arsip_sic', 'file', '[]', '2021-06-07 04:25:55'),
('root', 'arsip_sic', 'folder', '[]', '2021-04-27 00:54:31'),
('root', 'tablebiodata', 'biodata', '{\"CREATE_TIME\":\"2020-10-22 17:43:03\"}', '2020-10-26 04:00:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('', '2019-08-05 21:51:09', '{\"lang\":\"id\"}'),
('root', '2021-08-09 16:38:33', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pustaka`
--
CREATE DATABASE IF NOT EXISTS `pustaka` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pustaka`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `pengarang` varchar(64) DEFAULT NULL,
  `penerbit` varchar(64) DEFAULT NULL,
  `tahun_terbit` year(4) DEFAULT NULL,
  `isbn` varchar(64) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `dipinjam` int(11) DEFAULT NULL,
  `dibooking` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, '9786022809432', 6, 1, 1, 'img1557402455.jpg'),
(2, 'Mudah belajar komputer unruk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 5, 3, 1, 'img1557402397.jpg'),
(3, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '8346753547', 5, 1, 1, 'img1555522493.jpg'),
(4, 'Detektif Conan Ep 200', 9, 'Ogiwa sasuke', 'Cultura', 2016, '874387583987', 5, 0, 0, 'img1557401465.jpg'),
(5, 'Bahasa indonesia', 2, 'Umri Nur\'aini', 'Pusat Perbukuan', 2015, '757254724884', 3, 0, 0, 'img1557402703.jpg'),
(6, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 5, 0, 0, 'img1557403156.jpg'),
(7, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan ...', 1, 'Anton Subagja', 'Elex Media Komputindo', 2017, '43345356577', 5, 0, 0, 'img1557403502.jpg'),
(8, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media', 2015, '8796868678789', 5, 0, 0, 'img1557403658.jpg'),
(9, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 6, 0, 0, 'img1557404613.jpg'),
(10, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 5, 0, 0, 'img1557404689.jpg'),
(13, 'Ruby', 1, 'Stive', 'jobs', 2008, '12312312', 6, 0, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populerr'),
(9, 'Komik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` int(8) NOT NULL,
  `nama_mahasiswa` varchar(60) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `no_hp` int(13) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `agama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama_mahasiswa`, `alamat`, `no_hp`, `jenis_kelamin`, `agama`) VALUES
(32, 12312312, 'Hekin', 'bogr', 1209213123, 'laki-laki', 'islam'),
(43, 12312312, 'Tri atmojo', 'Bogor', 2147483647, 'laki-laki', 'islam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kd_matakuliah` varchar(4) NOT NULL,
  `nm_matakuliah` varchar(30) NOT NULL,
  `sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `minat_ta`
--

CREATE TABLE `minat_ta` (
  `nim` varchar(8) NOT NULL,
  `nm_mahasiswa` varchar(30) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `minat` enum('Sistem','Desktop','Web') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `tanggal_input` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kd_matakuliah`);

--
-- Indeks untuk tabel `minat_ta`
--
ALTER TABLE `minat_ta`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `pustaka_booking`
--
CREATE DATABASE IF NOT EXISTS `pustaka_booking` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pustaka_booking`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(1, 'tatmojo', 'triatmojo', 'tri123'),
(2, 'Briann', 'brian', 'brian123'),
(6, 'steve', 'steve', 'steve123'),
(22, 'john', 'john1', 'john123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `username`, `nama_anggota`, `gender`, `no_telp`, `alamat`, `email`, `password`) VALUES
(1, 'ghifari', 'Ghifari', 'laki-laki', '08912345781', 'Bogor', 'ghfari@gmail.com', 'ghifari1'),
(2, 'asyil', 'Asyil', 'laki-laki', '08912312333', 'Jakarta', 'asyil@gmail.com', 'asyil123'),
(3, 'john', 'john man', 'man', '879798790', 'parung', 'john@gmail.com', 'password'),
(5, 'tri', 'triatmojo', 'man', '089813971273', 'bogor', 'triatmojo@gmail.com', 'tri321');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `pengarang` varchar(64) DEFAULT NULL,
  `penerbit` varchar(64) DEFAULT NULL,
  `tahun_terbit` year(4) DEFAULT NULL,
  `isbn` varchar(64) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `dipinjam` int(11) DEFAULT NULL,
  `dibooking` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, '9786022809432', 6, 1, 1, 'img1557402455.jpg'),
(2, 'Mudah belajar komputer unruk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 5, 3, 1, 'img1557402397.jpg'),
(3, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '8346753547', 5, 1, 1, 'img1555522493.jpg'),
(4, 'Detektif Conan Ep 200', 9, 'Ogiwa sasuke', 'Cultura', 2016, '874387583987', 5, 0, 0, 'img1557401465.jpg'),
(5, 'Bahasa indonesia', 2, 'Umri Nur\'aini', 'Pusat Perbukuan', 2015, '757254724884', 3, 0, 0, 'img1557402703.jpg'),
(6, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 5, 0, 0, 'img1557403156.jpg'),
(7, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan ...', 1, 'Anton Subagja', 'Elex Media Komputindo', 2017, '43345356577', 5, 0, 0, 'img1557403502.jpg'),
(8, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media', 2015, '8796868678789', 5, 0, 0, 'img1557403658.jpg'),
(9, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 6, 0, 0, 'img1557404613.jpg'),
(10, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 5, 0, 0, 'img1557404689.jpg'),
(14, 'laravel', 2, 'jack', 'brian', 2019, '99887987981', 5, 2, 2, 'img0989811.jpg'),
(16, 'ReactJs', NULL, 'Steps', 'Me', 2020, '897293871293', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukuu`
--

CREATE TABLE `bukuu` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(15) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bukuu`
--

INSERT INTO `bukuu` (`id`, `judul_buku`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`) VALUES
(1, 'PHP', 'Brain', 'Takumi', 2020, '1238971942', 1),
(3, 'ReacNative', 'Takumi', 'Takumi', 2019, '98237498', 20),
(4, 'ReacJs', 'Clay', 'Mark', 2010, '982379847234', 14),
(6, 'Linux', 'LinuxTorvals', 'Brians', 2020, '123987', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(10, 'agama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'Utility'),
(5, 'Buku'),
(6, 'Anggota'),
(7, 'Laporan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admministrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Imam Nawawi', 'imam.imw@gmail.com', 'pro1557486527.jpg', '$2y$10$jLgqE1IBWTdVFuBfgq4u/upFdTkdRmKSigfZ7M8qHbjkTmnf26D5a', 1, 1, 1554218983),
(3, 'Maruloh, M.Kom', 'maruloh.mru@bsi.ac.id', 'default.jpg', '$2y$10$beSdsua15A.A.tmiLIsmfuQCLWGdptUwjXlGI2u2kqxlpPXpXqZ72', 1, 1, 1554219788),
(13, 'Rizkiyah', 'kiki.hidayah@gmail.com', 'pro1557648081.jpg', '$2y$10$237zpGsuPlkDaH0z0kMhKOcP.1pmMx8cxrUXGgh2ErFPQZ5Eb8p72', 1, 1, 1557609676),
(14, 'Eni Irfiani', 'eni.enf@bsi.ac.id', 'default.jpg', '$2y$10$pVXQd4Hs4yrtWjIjhyngge2tsG5nWbL.B956XbElPOM0Q0EsSip.a', 1, 1, 1563868032),
(15, 'Andriansah', 'andriansah.aiy@bsi.ac.id', 'default.jpg', '$2y$10$perspnO9EwfN24C1UnIlVuJl9WfZazMq.KynnKNcTdqprkVSfcmiC', 1, 1, 1563868080),
(16, 'Imam Khotib', 'imamkhotib0@gmail.com', 'default.jpg', '$2y$10$G6Z.Bq1htczywNfgmC0Ti.WTidif/a7ztpgMOyj1r7v6UWJzDSOmW', 1, 1, 1564436443),
(17, 'triatmojo', 'triatmojo@gmail.com', 'default.jpg', '202cb962ac59075b964b07152d234b70', 1, 1, 191121);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bukuu`
--
ALTER TABLE `bukuu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `bukuu`
--
ALTER TABLE `bukuu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Database: `pustaka_server`
--
CREATE DATABASE IF NOT EXISTS `pustaka_server` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pustaka_server`;
--
-- Database: `sarbi-arsip`
--
CREATE DATABASE IF NOT EXISTS `sarbi-arsip` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sarbi-arsip`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_klien` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `nama_dokumen` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `id_kategori`, `id_klien`, `id_users`, `nama_dokumen`, `date`, `create_at`, `update_at`) VALUES
(1, 2, 2, 1, 'Surat permohonan', '2021-03-26', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` bigint(20) NOT NULL,
  `nama_kategori` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Penilaian awal'),
(2, 'Penilaian akhir'),
(3, 'Re-sertifikasi'),
(4, 'Pembekuan'),
(5, 'Pencabutan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_klien`
--

CREATE TABLE `tb_klien` (
  `id_klien` bigint(20) NOT NULL,
  `id_sistem_mutu` bigint(20) NOT NULL,
  `nama_klien` varchar(256) NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_klien`
--

INSERT INTO `tb_klien` (`id_klien`, `id_sistem_mutu`, `nama_klien`, `create_at`, `update_at`) VALUES
(2, 2, 'PT. Sejahterah Indah', '2021-03-25 00:00:00', NULL),
(4, 1, 'PT. Kuy', NULL, NULL),
(5, 44, 'PT. Saffron', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sistem_mutu`
--

CREATE TABLE `tb_sistem_mutu` (
  `id_sistem_mutu` bigint(20) NOT NULL,
  `nama_sistem_mutu` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_sistem_mutu`
--

INSERT INTO `tb_sistem_mutu` (`id_sistem_mutu`, `nama_sistem_mutu`) VALUES
(1, 'PHPL'),
(2, 'VLK'),
(3, 'PPIU'),
(4, 'ISPO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `id_users` bigint(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` enum('admin','karyawan') NOT NULL,
  `image` varchar(256) NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`id_users`, `nama_lengkap`, `username`, `password`, `role`, `image`, `create_at`, `update_at`) VALUES
(1, 'Admin sarbi', 'admin', '$2y$10$FnCHJT3DFAKPNEMTmdctyu7X5dV4p0J4F.6PbLr7xgmB2EmkaFPEe', 'admin', 'default.png', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_sistem_mutu` (`id_klien`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_klien`
--
ALTER TABLE `tb_klien`
  ADD PRIMARY KEY (`id_klien`),
  ADD KEY `id_sistem_mutu` (`id_sistem_mutu`);

--
-- Indeks untuk tabel `tb_sistem_mutu`
--
ALTER TABLE `tb_sistem_mutu`
  ADD PRIMARY KEY (`id_sistem_mutu`);

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_klien`
--
ALTER TABLE `tb_klien`
  MODIFY `id_klien` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_sistem_mutu`
--
ALTER TABLE `tb_sistem_mutu`
  MODIFY `id_sistem_mutu` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_users` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `sistem_jasa_penyucian_kendaraan`
--
CREATE DATABASE IF NOT EXISTS `sistem_jasa_penyucian_kendaraan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sistem_jasa_penyucian_kendaraan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya`
--

CREATE TABLE `biaya` (
  `id_biaya` int(10) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `biaya` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biaya`
--

INSERT INTO `biaya` (`id_biaya`, `jenis`, `biaya`) VALUES
(2, 'Sepeda Motor', 10000),
(5, 'Mobil', 25000),
(6, 'Bus', 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `no_nota` varchar(10) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `no_nota`, `jenis`, `nama`, `bayar`, `kembali`, `total`, `tanggal`, `id_user`) VALUES
(63, 'C001', '25000', 'John', 50000, 25000, 20000, '2019-11-28', 11),
(64, 'C002', '10000', 'Mas pur', 50000, 40000, 10000, '2019-11-28', 11),
(65, 'C003', '10000', 'kaka', 10000, 0, 10000, '2019-11-28', 11),
(66, 'C004', '25000', 'arif', 25000, 0, 25000, '2019-11-28', 11),
(67, 'C005', '50000', 'Tri atmojo', 50000, 0, 50000, '2019-12-23', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `hp`, `level`) VALUES
(1, 'masrud', '7d05dc02abe9cda729d0c798c886db47', 'M. Rudianto', 'Ds. Bareng, Kec. Sawahan Kab. Nganjuk - Jawa Timur', '085735501035', 1),
(11, 'John', '202cb962ac59075b964b07152d234b70', 'Johni', 'bogor', '08912123131', 2),
(13, 'triatmojo', '202cb962ac59075b964b07152d234b70', 'Tri Atmojo', 'Bogor', '08912129812', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biaya`
--
ALTER TABLE `biaya`
  MODIFY `id_biaya` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `sistem_penjualan_hijab`
--
CREATE DATABASE IF NOT EXISTS `sistem_penjualan_hijab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sistem_penjualan_hijab`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_barang` int(11) NOT NULL,
  `nama_barang` varchar(60) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jenis_barang` varchar(100) NOT NULL,
  `designer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_barang`, `nama_barang`, `stok`, `harga`, `jenis_barang`, `designer`) VALUES
(1, 'Hijub Green', 5, 500000, 'Elzata', 'Brian Smith'),
(2, 'print hijub', 5, 300000, 'Zoya', 'Nabila'),
(3, 'Dian Pelangi', 0, 300000, 'elzata', 'Yie Yu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kd_transaksi` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `kd_barang` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kd_transaksi`, `nama`, `tgl_transaksi`, `alamat`, `email`, `no_telp`, `kd_barang`, `qty`) VALUES
(63, 'Asyil', '2019-11-08', 'Ciomas', 'asyil@gmail.com', '0897821123131', 1, 10),
(64, 'Asyil', '2019-11-08', 'Ciomas', 'asyil@gmail.com', '0897821123131', 1, 10),
(65, 'Asyil', '2019-11-08', 'Ciomas', 'asyil@gmail.com', '0897821123131', 1, 10),
(66, 'robot qu', '2019-11-14', 'bogor', 'annkey@gmail.com', '08981823123', 3, 0),
(67, 'robot qu', '2019-11-14', 'bogor', 'stevejobs@yahoo.com', '08981823123', 1, 65);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kd_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `kd_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `kd_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- Database: `tablebiodata`
--
CREATE DATABASE IF NOT EXISTS `tablebiodata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tablebiodata`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `id` int(11) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`id`, `nim`, `nama`, `alamat`) VALUES
(1, '1218712', 'Sandhika', 'bandung'),
(3, '12182819', 'Tri Atmojo', 'bogor'),
(4, '12182719', 'Steve', 'Perancis'),
(8, '12182720', 'Abils', 'Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tws_perpustakaan`
--
CREATE DATABASE IF NOT EXISTS `tws_perpustakaan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tws_perpustakaan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_anggota` varchar(128) NOT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kode_buku` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `kode_buku` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
