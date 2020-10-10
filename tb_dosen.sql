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
('IF1', 'Sulistyowati', 'Ketua Prodi Informatika', 'IF'),
('IF2', 'M.Ramli', 'Dosen IF', 'IF'),
('IF3', 'Suryo Bramasto', '', 'IF'),
('IF4', 'Endang Ratnawati', '', 'IF'),
('IF5', 'Sunarto', '', 'IF'),
('IF6', 'Husni', '', 'IF'),
('IF7', 'Muhamad Soleh', '', 'IF'),
('IF8', 'Sumiarti Andri', '', 'IF'),
('IF9', 'Indrati Sukmadi', '', 'IF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`kode_dosen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
