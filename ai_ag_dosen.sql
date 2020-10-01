-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2020 at 10:37 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai_ag_dosen`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `kode_dosen` char(3) NOT NULL,
  `nama_dosen` varchar(60) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `kode_prodi` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`kode_dosen`, `nama_dosen`, `keterangan`, `kode_prodi`) VALUES
('IF1', 'Sulistyowati', 'Ketua Prodi Informatika', 'IF');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hari`
--

CREATE TABLE `tb_hari` (
  `kode_hari` int(11) NOT NULL,
  `nama_hari` time NOT NULL,
  `kode_prodi` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id` int(11) NOT NULL,
  `kuliah` int(11) NOT NULL,
  `ruang` int(11) NOT NULL,
  `waktu` int(11) NOT NULL,
  `kode_prodi` char(3) NOT NULL,
  `kode_semester` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jam`
--

CREATE TABLE `tb_jam` (
  `kode_jam` int(11) NOT NULL,
  `nama_jam` time NOT NULL,
  `kode_prodi` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `kode_kelas` char(8) NOT NULL,
  `nama_kelas` varchar(60) NOT NULL,
  `keterangan` varchar(30) DEFAULT NULL,
  `kode_prodi` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kuliah`
--

CREATE TABLE `tb_kuliah` (
  `kode_kuliah` int(11) NOT NULL,
  `kode_matkul` char(6) NOT NULL,
  `kode_kelas` char(8) NOT NULL,
  `kode_dosen` char(5) NOT NULL,
  `kode_prodi` char(3) NOT NULL,
  `kode_semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE `tb_level` (
  `kode_level` int(1) NOT NULL,
  `nama_level` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`kode_level`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Prodi'),
(3, 'Dosen');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matkul`
--

CREATE TABLE `tb_matkul` (
  `kode_matkul` char(6) NOT NULL,
  `nama_matkul` varchar(60) NOT NULL,
  `sks` int(2) NOT NULL,
  `kode_prodi` char(3) NOT NULL,
  `kode_semester` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_matkul`
--

INSERT INTO `tb_matkul` (`kode_matkul`, `nama_matkul`, `sks`, `kode_prodi`, `kode_semester`) VALUES
('IF1094', 'Konsep Pemrograman', 4, 'IF', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `kode_prodi` char(3) NOT NULL,
  `Nama_prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`kode_prodi`, `Nama_prodi`) VALUES
('AR', 'Arsitek'),
('IF', 'Informatika'),
('MN', 'Manajemen'),
('OTO', 'Otomotif'),
('PWK', 'Perencanaan Wilayah Kota'),
('SP', 'Teknik Sipil'),
('TE', 'Teknik Elektro'),
('TI', 'Teknik Industri'),
('TIP', 'Teknologi Industri Pertanian'),
('TK', 'Teknik Kimia'),
('TM', 'Teknik Mesin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ruang`
--

CREATE TABLE `tb_ruang` (
  `kode_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(25) NOT NULL,
  `keterangan` varchar(30) DEFAULT NULL,
  `kode_prodi` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ruang`
--

INSERT INTO `tb_ruang` (`kode_ruang`, `nama_ruang`, `keterangan`, `kode_prodi`) VALUES
(1, 'LIK', 'Laboratorium', ''),
(2, 'LIK', 'Laboratorium Ilmu Komputer', 'IF');

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE `tb_semester` (
  `kode_semester` int(1) NOT NULL,
  `nama_semester` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`kode_semester`, `nama_semester`) VALUES
(1, 'Ganjil'),
(2, 'Genap');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) NOT NULL,
  `kode_level` int(1) NOT NULL,
  `kode_prodi` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id_user`, `nama`, `user`, `pass`, `kode_level`, `kode_prodi`) VALUES
(1, 'Administrator (DPA)', 'admin', 'admin', 1, ''),
(2, 'Melani Indriasari, ST M.Kom', 'melani123', '1234', 3, 'IF'),
(3, 'Dra. Sulistyowati, M.Kom', 'informatika', '123', 2, 'IF'),
(4, 'Novy Hapsari, ST M.Sc', 'elektro', '123', 2, 'TE'),
(5, 'Muhamad Soleh', 'soleh', '123456', 3, 'IF'),
(6, 'asd', 'asd', 'asd', 0, ''),
(7, 'asd', 'asd', 'asd', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_waktu`
--

CREATE TABLE `tb_waktu` (
  `kode_waktu` int(11) NOT NULL,
  `kode_hari` int(11) NOT NULL,
  `kode_jam` int(3) NOT NULL,
  `kode_prodi` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indexes for table `tb_hari`
--
ALTER TABLE `tb_hari`
  ADD PRIMARY KEY (`kode_hari`);

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jam`
--
ALTER TABLE `tb_jam`
  ADD PRIMARY KEY (`kode_jam`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indexes for table `tb_kuliah`
--
ALTER TABLE `tb_kuliah`
  ADD PRIMARY KEY (`kode_kuliah`);

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`kode_level`);

--
-- Indexes for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  ADD PRIMARY KEY (`kode_matkul`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`kode_prodi`);

--
-- Indexes for table `tb_ruang`
--
ALTER TABLE `tb_ruang`
  ADD PRIMARY KEY (`kode_ruang`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_waktu`
--
ALTER TABLE `tb_waktu`
  ADD PRIMARY KEY (`kode_waktu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_ruang`
--
ALTER TABLE `tb_ruang`
  MODIFY `kode_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
