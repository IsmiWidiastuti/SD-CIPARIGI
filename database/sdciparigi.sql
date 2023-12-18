-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 12:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdciparigi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_aplikasi`
--

CREATE TABLE `tb_aplikasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `telp` varchar(16) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_aplikasi`
--

INSERT INTO `tb_aplikasi` (`id`, `nama`, `email`, `telp`, `alamat`, `logo`) VALUES
(1, 'E-learning | SDN Ciparigi', 'ciparigischool@gmail.com', '085881818181', 'Bogor, Ciparigi', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftarmapel`
--

CREATE TABLE `tb_daftarmapel` (
  `id` int(1) NOT NULL,
  `kode` varchar(3) NOT NULL,
  `mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_daftarmapel`
--

INSERT INTO `tb_daftarmapel` (`id`, `kode`, `mapel`) VALUES
(1, 'MTK', 'Matematika'),
(2, 'IPA', 'Ilmu Pengetahuan Alam'),
(3, 'BIN', 'Bahasa Indonesia'),
(4, 'ENG', 'English'),
(5, 'PAI', 'Pendidikan Agama Islam'),
(6, 'IPS', 'Ilmu Pengetahuan Sosial'),
(7, 'PKN', 'Pendidikan Kewarganegaraan'),
(8, 'SBD', 'Seni Budaya'),
(9, 'TEM', 'Tematik');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(1) NOT NULL,
  `kelas` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `kelas`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id` int(2) NOT NULL,
  `kode` varchar(3) NOT NULL,
  `mapel` varchar(30) NOT NULL,
  `idGuru` int(11) NOT NULL,
  `idKelas` int(1) NOT NULL,
  `link` text NOT NULL,
  `status` varchar(8) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`id`, `kode`, `mapel`, `idGuru`, `idKelas`, `link`, `status`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(1, 'IPA', 'Ilmu Pengetahuan Alam', 2, 1, '', 'Aktif', 'Senin', '09:00:00', '10:00:00'),
(2, 'MTK', 'Matematika', 2, 1, '', 'Aktif', 'Selasa', '09:00:00', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_materi`
--

CREATE TABLE `tb_materi` (
  `id` int(11) NOT NULL,
  `idMapel` int(2) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `keterangan` text NOT NULL,
  `file` varchar(128) NOT NULL,
  `youtube` varchar(128) NOT NULL,
  `terdaftar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_materi`
--

INSERT INTO `tb_materi` (`id`, `idMapel`, `judul`, `keterangan`, `file`, `youtube`, `terdaftar`) VALUES
(1, 1, 'Hewan dan Tumbuhan', 'Hi, Divideo ini kita akan mempelajari tentang hewan dan tumbuhan.', '', 'SMS416WHYPc', '2023-12-10 23:38:15'),
(2, 2, 'Penjumlahan dan Pengurangan', 'Hallo, di video kali ini kita akan mempelajari penjumlahan dan pengurangan angka satuan, puluhan dan ratusan', '', 'beUuap0-ZSk', '2023-12-10 23:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tugas`
--

CREATE TABLE `tb_tugas` (
  `id` int(11) NOT NULL,
  `idMapel` int(2) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `keterangan` text NOT NULL,
  `file` varchar(128) NOT NULL,
  `youtube` varchar(128) NOT NULL,
  `waktu` datetime NOT NULL,
  `terdaftar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_tugas`
--

INSERT INTO `tb_tugas` (`id`, `idMapel`, `judul`, `keterangan`, `file`, `youtube`, `waktu`, `terdaftar`) VALUES
(1, 1, 'Hewan dan Tumbuhan', 'Sebutkan 5 nama tumbuhan dan 5 nama hewan', '', '', '2023-12-18 23:59:00', '2023-12-10 23:41:02'),
(2, 2, 'Penjumlahan & Pengurangan', 'Pekerjaan Rumah, Melakukan penjumlahan dan pengurangan. soal dapat dilihat pada file materi', 'Tugas-1702227556.png', '', '2023-12-18 23:59:00', '2023-12-10 23:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `tb_upload_tugas`
--

CREATE TABLE `tb_upload_tugas` (
  `id` int(11) NOT NULL,
  `idMapel` int(2) NOT NULL,
  `idTugas` int(11) NOT NULL,
  `idSiswa` int(11) NOT NULL,
  `file` varchar(128) NOT NULL,
  `nilai` int(3) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_upload_tugas`
--

INSERT INTO `tb_upload_tugas` (`id`, `idMapel`, `idTugas`, `idSiswa`, `file`, `nilai`, `keterangan`, `tanggal`) VALUES
(1, 1, 1, 3, 'Tugas-1702226654.docx', 100, 'Bagus', '2023-12-10 23:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `jenisKelamin` varchar(16) NOT NULL,
  `tptLahir` varchar(128) NOT NULL,
  `tglLahir` date NOT NULL,
  `telp` varchar(16) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `idKelas` int(11) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `level` enum('Administrator','Guru','Siswa') NOT NULL,
  `terdaftar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `jenisKelamin`, `tptLahir`, `tglLahir`, `telp`, `alamat`, `username`, `password`, `idKelas`, `foto`, `level`, `terdaftar`) VALUES
(1, 'YASDI ADMIN', 'Laki-Laki', 'Jakarta', '2002-07-07', '089618367556', 'Bogor', 'admin', '$2y$10$PrXzsu8.0Bt28hCeY7b3Z.KbG.kienGNmyR41enHfByaXeFDA7C0e', 0, 'no-image.png', 'Administrator', '2021-12-20 19:27:20'),
(2, 'DEMO GURU', 'Laki-Laki', 'Bogor', '1995-07-07', '085808580858', 'Bogor', 'demoguru', '$2y$10$rlKDN0KwsDYnpJ4WUm9jQuXecRNtXEBaNFMdX03DKNO1QPBu3HC6O', 0, 'no-image.png', 'Guru', '2023-12-10 23:25:58'),
(3, 'DEMO SISWA', 'Perempuan', 'Jakarta', '2016-07-05', '085811112222', 'Bogor', '0000000001', '$2y$10$DdBgcdJWSoNUGNmVVT3eiuv4nt8CmXQyHvo7q1Hh6YaspHHQKSq5u', 1, 'no-image.png', 'Siswa', '2023-12-10 23:29:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aplikasi`
--
ALTER TABLE `tb_aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_daftarmapel`
--
ALTER TABLE `tb_daftarmapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_materi`
--
ALTER TABLE `tb_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tugas`
--
ALTER TABLE `tb_tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_upload_tugas`
--
ALTER TABLE `tb_upload_tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_aplikasi`
--
ALTER TABLE `tb_aplikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_daftarmapel`
--
ALTER TABLE `tb_daftarmapel`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_materi`
--
ALTER TABLE `tb_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tugas`
--
ALTER TABLE `tb_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_upload_tugas`
--
ALTER TABLE `tb_upload_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
