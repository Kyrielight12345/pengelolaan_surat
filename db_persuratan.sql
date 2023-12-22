-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 07:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_persuratan`
--

-- --------------------------------------------------------

--
-- Table structure for table `disposisi`
--

CREATE TABLE `disposisi` (
  `id_disposisi` int(11) NOT NULL,
  `tanggal_disposisi` date NOT NULL,
  `dari` int(11) NOT NULL,
  `kepada` int(11) NOT NULL,
  `isi` varchar(150) NOT NULL,
  `status` enum('Belum di proses','Sudah di proses') NOT NULL,
  `id_surat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disposisi`
--

INSERT INTO `disposisi` (`id_disposisi`, `tanggal_disposisi`, `dari`, `kepada`, `isi`, `status`, `id_surat`) VALUES
(0, '2023-12-18', 0, 0, 'aaaa', 'Belum di proses', 13),
(2, '2021-05-24', 1, 3, 'Segera disampaikan kepada siswa', 'Belum di proses', 3),
(3, '2021-05-24', 1, 7, 'Mohon untuk segera disampaikan kepada siswa jika ingin mengikuti', 'Belum di proses', 4),
(4, '2021-05-24', 1, 7, 'Mohon di fasilitasi', 'Sudah di proses', 7),
(5, '2021-05-24', 1, 3, 'Mohon di tindak lanjuti', 'Belum di proses', 5),
(6, '2021-05-24', 1, 7, 'Mohon di fasilitasi dan sampaikan kepada siswa', 'Sudah di proses', 6);

-- --------------------------------------------------------

--
-- Table structure for table `profil_sekolah`
--

CREATE TABLE `profil_sekolah` (
  `id` enum('1') NOT NULL,
  `nama_sekolah` varchar(150) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kecamatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_sekolah`
--

INSERT INTO `profil_sekolah` (`id`, `nama_sekolah`, `alamat`, `provinsi`, `kecamatan`) VALUES
('1', 'SMA N 1 TANJAB BARAT', 'Jl. Jend. Sudirman No. 172 Kuala Tungkal - Jambi', 'Jambi', 'Kec. Tungkal Ilir');

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_surat` int(11) NOT NULL,
  `no_surat` varchar(30) NOT NULL,
  `no_agenda` varchar(30) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `kepada` varchar(150) DEFAULT NULL,
  `perihal` varchar(150) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`id_surat`, `no_surat`, `no_agenda`, `tanggal_surat`, `kepada`, `perihal`, `file`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(4, '045/420/SMA.N.1.TJB/II/2921', '045', '2021-02-16', 'Warga Satuan Pendidikan dan Orang Tua/Wali Murid', 'Edaran Pembelajaran Tatap Muka (PTM) 2021', '045420SMAN1TJBII2021.pdf', '2021-05-25 00:02:07', '2021-05-25 00:02:07', 1, 0),
(5, '033/420/SMA.N.1.TJB/I/2021', '033', '2021-01-27', 'Orang Tua, Tenaga Kependidikan, dan Peserta Didik', 'Kedisiplinan Belajar dan Beraktifitas Pada Masa Pandemi Covid-19', '033420SMAN1TJBI2021.pdf', '2021-05-25 00:06:51', '2021-05-25 00:17:06', 1, 1),
(6, '070/420/SMAN.1.TJB/III/2021', '070', '2021-03-03', 'Orang Tua Peserta Didik SMAN 1 Tanjung Jabung Barat', 'Himbauan untuk kewaspadaaan penyebaran Covid-19 pada masa pembelajaran tatap muka', '070420SMAN1TJBIII2021.pdf', '2021-05-25 00:14:04', '2021-05-25 00:14:04', 1, 0),
(7, '001', '125/SMK/X/2023', '2023-12-16', 'p', 'Undangan', 'sxdfgh', '2023-12-16 12:18:18', '2023-12-16 12:18:18', 0, 0),
(8, '001', '125/SMK/X/2023', '2023-12-16', 'p', 'Undangan', 'sxdfgh', '2023-12-16 12:18:18', '2023-12-16 12:18:18', 0, 0),
(10, '001/420/SMAN.1.TJB/XII/2023', '0012', '2023-12-21', 'aa', 'aa', 'Screenshot_16.jpg', '2023-12-18 13:50:31', '2023-12-18 13:50:31', 1, 0),
(12, '001/420/SMAN.1.TJB/XII/2022', '00112', '2023-12-21', 'aaa', 'aaa', 'Screenshot_16.jpg', '2023-12-18 13:52:56', '2023-12-18 13:52:56', 1, 0),
(13, '001/420/SMAN.1.TJB/XII/2026', '0011', '2023-12-06', '', '', '', '2023-12-18 13:54:13', '2023-12-18 13:54:13', 1, 0),
(14, '001/420/SMAN.1.TJB/XII/2021', '001', '2023-12-13', 'a', '', '', '2023-12-18 13:55:01', '2023-12-18 13:55:01', 1, 0),
(15, '001/420/SMAN.1.TJB/XII/2032', '1222', '2023-12-06', 'a', 'aa', 'czas2n3biyuivb8aux-166003443074232.jpg', '2023-12-21 23:42:59', '2023-12-21 23:42:59', 1, 0),
(16, '111/420/SMAN.1.TJB/XII/2023', '111', '2023-12-20', 'a', 'a', 'download.jpg', '2023-12-21 23:55:20', '2023-12-21 23:55:20', 1, 0),
(17, '221/420/SMAN.1.TJB/XII/2023', '212', '2023-12-13', 'a', 'a', 'WhatsApp Image 2023-11-17 at 22.04.03.jpeg', '2023-12-21 23:58:04', '2023-12-21 23:58:04', 1, 0),
(20, '2/420/SMAN.1.TJB/XII/2023', '2', '2022-01-12', NULL, NULL, NULL, '2023-12-22 00:04:44', '2023-12-22 00:04:44', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat` int(11) NOT NULL,
  `no_surat` varchar(30) NOT NULL,
  `no_agenda` varchar(30) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `tanggal_diterima` date NOT NULL,
  `sifat_surat` enum('Segera','Penting','Rahasia','Biasa') NOT NULL,
  `pengirim` varchar(150) NOT NULL,
  `perihal` varchar(50) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_surat`, `no_surat`, `no_agenda`, `tanggal_surat`, `tanggal_diterima`, `sifat_surat`, `pengirim`, `perihal`, `file`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(3, '263.2/169/PPHA/P2KB/2021', '025', '2021-03-25', '2021-03-26', 'Penting', 'DPPKB', 'Pertemuan Forum Anak Kab.Tanjab Barat Tahun 2021', '263.2169PPHAP2KB2021.pdf', '2021-05-24 22:55:26', '2021-05-24 23:09:59', 1, 1),
(4, '01/SU/SI/KI/IV/2021', '024', '2021-03-25', '2021-03-25', 'Biasa', 'Kuala Inspirasi', 'Undangan Seminar Online', '01SUSIKIIV2021.pdf', '2021-05-24 23:04:45', '2021-05-25 02:12:36', 1, 1),
(5, '660/565/LH/2021', '014', '2021-03-17', '2021-03-18', 'Biasa', 'SEKDA', 'Undangan', '660565LH2021.pdf', '2021-05-24 23:08:46', '2021-05-25 08:29:37', 1, 1),
(6, 'B.1016/D.V/PP.00.9/03/2021', '011', '2021-03-09', '2021-03-11', 'Biasa', 'Universitas Islam Negeri Sulthan Thaha Saifuddin Jambi', 'Permohonan Izin Sosialisasi Fakuktas', 'B1016D.VPP.009032021.pdf', '2021-05-24 23:13:26', '2021-05-25 02:12:06', 1, 1),
(7, 'B/81/III/DIK.2.1/2021', '017', '2021-03-19', '2021-03-20', 'Biasa', 'Kepolisian Negara Republik Indonesia', 'Sosialisasi penerimaan Anggota Polri TA. 2021', 'B81IIIDIK.2.12021.pdf', '2021-05-24 23:16:04', '2021-05-25 02:12:14', 1, 1),
(8, 'sdw', '010', '2023-12-16', '2023-12-16', 'Penting', 'dinas', 'undangan', '08258ecd-4e08-4ba4-8931-8827f57416b6.jpg', '2023-12-16 05:02:28', '2023-12-16 05:02:28', 1, NULL),
(9, 'sdw', '9', '2023-12-16', '2023-12-16', 'Penting', 'dinas', 'undangan', '08258ecd-4e08-4ba4-8931-8827f57416b6.jpg', '2023-12-16 05:02:44', '2023-12-16 05:02:44', 1, NULL),
(10, '1scfe', '090', '2023-12-16', '2023-12-09', 'Rahasia', 'f', 'f', '08258ecd-4e08-4ba4-8931-8827f57416b6.jpg', '2023-12-16 05:03:31', '2023-12-16 05:03:31', 1, NULL),
(11, 'cvgh', '001', '2023-12-16', '2023-12-16', 'Penting', 'g', 'f', '556c6088c7c457b7a35f945dba455cb3.jpg', '2023-12-16 05:04:11', '2023-12-16 05:04:11', 1, NULL),
(12, 'cvgh', '111', '2023-12-16', '2023-12-16', 'Penting', 'g', 'f', '556c6088c7c457b7a35f945dba455cb3.jpg', '2023-12-16 05:04:19', '2023-12-16 05:04:19', 1, NULL),
(13, '7', '0010', '2023-12-19', '2023-12-20', 'Rahasia', 'pposiuyhgxhjsk', 'pp', '2023-05-25 (38).png', '2023-12-18 12:53:46', '2023-12-18 12:54:31', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT 'root',
  `fullname` varchar(255) NOT NULL,
  `level` enum('admin','kepsek','guru') NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `level`, `jabatan`) VALUES
(1, 'admin', 'root', 'Syaipulloh', 'admin', 'Admin'),
(2, 'user1', 'root', 'Kadiman', 'kepsek', 'Kepala Sekolah'),
(3, 'user2', 'root', 'Fattahun Zubaidi', 'guru', 'Wakasek Bidang Kesiswaan'),
(4, 'user3', 'root', 'Dina. S. Tarigan', 'guru', 'Wakasek Bidang Kurikulum'),
(5, 'user4', 'root', 'Arif Sobri', 'guru', 'Wakasek Bidang Sarana Prasarana'),
(7, 'user5', 'root', 'Rasdiyanto', 'guru', 'Wakasek Bidang Humas'),
(10, 'admin2', 'root', 'Nengsih', 'admin', 'Admin'),
(11, 'user6', 'root', 'User 6', 'guru', 'Koordinator BK');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_dashboard`
-- (See below for the actual view)
--
CREATE TABLE `vw_dashboard` (
`id` enum('1')
,`nama_sekolah` varchar(150)
,`alamat` varchar(255)
,`provinsi` varchar(100)
,`kecamatan` varchar(255)
,`cu` bigint(21)
,`csm` bigint(21)
,`csk` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_dashboard`
--
DROP TABLE IF EXISTS `vw_dashboard`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_dashboard`  AS SELECT `profil_sekolah`.`id` AS `id`, `profil_sekolah`.`nama_sekolah` AS `nama_sekolah`, `profil_sekolah`.`alamat` AS `alamat`, `profil_sekolah`.`provinsi` AS `provinsi`, `profil_sekolah`.`kecamatan` AS `kecamatan`, (select count(0) from `users`) AS `cu`, (select count(0) from `surat_masuk`) AS `csm`, (select count(0) from `surat_keluar`) AS `csk` FROM `profil_sekolah` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id_disposisi`),
  ADD KEY `dari` (`dari`),
  ADD KEY `disposisi_ibfk_1` (`id_surat`);

--
-- Indexes for table `profil_sekolah`
--
ALTER TABLE `profil_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
