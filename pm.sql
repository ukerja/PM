-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 06:04 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pm`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambil_minyak`
--

CREATE TABLE `ambil_minyak` (
  `id` int(11) NOT NULL,
  `nama_nelayan` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambil_minyak`
--

INSERT INTO `ambil_minyak` (`id`, `nama_nelayan`, `tanggal`, `jumlah`) VALUES
(1, 'madi', '2020-03-01', 100),
(2, 'aris', '2020-09-03', 100),
(3, 'aris', '2020-12-09', 100),
(4, 'madi', '2020-03-03', 10),
(18, 'arisman', '2020-02-01', 10),
(19, 'aris', '2020-04-04', 100),
(20, 'aris', '2020-02-02', 800);

--
-- Triggers `ambil_minyak`
--
DELIMITER $$
CREATE TRIGGER `INSERT_TO_STOCK_IN` AFTER INSERT ON `ambil_minyak` FOR EACH ROW INSERT INTO stock_in (tanggal, jumlah, status) VALUES (new.tanggal, new.jumlah, "out")
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'itam', '123');

-- --------------------------------------------------------

--
-- Table structure for table `nelayan`
--

CREATE TABLE `nelayan` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nelayan`
--

INSERT INTO `nelayan` (`id`, `nama`) VALUES
(1, 'aris'),
(2, 'aprio'),
(3, 'asdasda'),
(4, 'aes'),
(5, 'sss'),
(7, 'madi'),
(9, 'rando'),
(10, ''),
(11, 'nor'),
(12, 'arisman'),
(13, 'maman');

-- --------------------------------------------------------

--
-- Table structure for table `stock_in`
--

CREATE TABLE `stock_in` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` float NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_in`
--

INSERT INTO `stock_in` (`id`, `tanggal`, `jumlah`, `status`) VALUES
(2, '2020-04-02', 1000, 'in'),
(3, '2020-02-01', 10, 'out'),
(4, '2020-04-04', 100, 'out'),
(5, '2020-02-02', 800, 'out');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambil_minyak`
--
ALTER TABLE `ambil_minyak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nelayan`
--
ALTER TABLE `nelayan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_in`
--
ALTER TABLE `stock_in`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambil_minyak`
--
ALTER TABLE `ambil_minyak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nelayan`
--
ALTER TABLE `nelayan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stock_in`
--
ALTER TABLE `stock_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
