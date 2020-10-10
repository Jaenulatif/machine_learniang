-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2020 at 05:20 AM
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
('DK1023', 'Kalkulus I', 3, 'IF', 1),
('DK1033', 'Aljabar Linear & Matriks', 3, 'IF', 2),
('DK2023', 'Kalkulus II', 3, 'IF', 2),
('DK2073', 'Matematika Diskrit I', 3, 'IF', 1),
('DK3073', 'Matematika Diskrit II', 3, 'IF', 2),
('DK3093', 'Struktur Data', 3, 'IF', 2),
('DU1013', 'Agama Islam', 3, 'IF', 1),
('DU2012', 'Bahasa Inggris', 2, 'IF', 1),
('IF1062', 'Pengenalan Teknologi Informasi', 2, 'IF', 1),
('IF1083', 'Dasar Sistem Digital', 3, 'IF', 1),
('IF1094', 'Konsep Pemrograman', 4, 'IF', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  ADD PRIMARY KEY (`kode_matkul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
