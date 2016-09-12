-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2016 at 09:31 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karang_taruna`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sampah`
--

CREATE TABLE `tbl_sampah` (
  `id_sampah` int(5) NOT NULL,
  `nama_penyetor` varchar(35) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `tgl_setor` varchar(35) NOT NULL,
  `jumlah_sampah` int(4) NOT NULL,
  `harga_total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sampah`
--

INSERT INTO `tbl_sampah` (`id_sampah`, `nama_penyetor`, `nama_petugas`, `tgl_setor`, `jumlah_sampah`, `harga_total`) VALUES
(3, 'eko', 'c4nim', '2016-06-09', 12, 24000),
(4, 'budi', 'firdam', '2016-06-28', 5, 10000),
(5, 'firdam', 'dadan', '2016-06-30', 3, 6000),
(6, 'agung', 'asep', '2016-06-01', 1, 2000),
(7, 'anggy', 'budi', '2016-06-08', 30, 60000),
(8, 'budi', 'firdam', '2016-06-08', 20, 40000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_sampah`
--
ALTER TABLE `tbl_sampah`
  ADD PRIMARY KEY (`id_sampah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_sampah`
--
ALTER TABLE `tbl_sampah`
  MODIFY `id_sampah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
