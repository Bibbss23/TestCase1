-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2023 at 05:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lksbadminton`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `jeniskategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `jeniskategori`) VALUES
(3, 'Single Putra'),
(4, 'Single Putri'),
(6, 'Double Putra'),
(7, 'Double Putri'),
(8, 'Ganda Campuran');

-- --------------------------------------------------------

--
-- Table structure for table `kontingen`
--

CREATE TABLE `kontingen` (
  `idkontingen` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `sekolah` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontingen`
--

INSERT INTO `kontingen` (`idkontingen`, `fullname`, `sekolah`, `alamat`, `hp`) VALUES
(7, 'Ahmad Habibi', 'SMK Yapia', 'Jl Kh Wahid Hasyim', '089527584148'),
(8, 'Siti Asri Kania Sari', 'SMKN 3 Tegal', 'yak allah jodohkan aku dengan nya. Ahmad habibi yak allah jangan salah nama ', '087777777777'),
(10, 'Rino Bacthiar', 'SMK Kebangsaan', 'Jl. Raya Pd. Aren No.31, Jurang Mangu Barat', '089999999999'),
(12, 'Aldy Giri Syahdi', 'SMA tebing suluh', 'Jl test 2', '0833333333333');

-- --------------------------------------------------------

--
-- Table structure for table `peserta_lks`
--

CREATE TABLE `peserta_lks` (
  `idpeserta` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `idkontingen` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `peserta` varchar(50) NOT NULL,
  `umur` varchar(2) NOT NULL,
  `sekolah` varchar(30) NOT NULL,
  `jeniskategori` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `pembawa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peserta_lks`
--

INSERT INTO `peserta_lks` (`idpeserta`, `idkategori`, `idkontingen`, `tanggal`, `peserta`, `umur`, `sekolah`, `jeniskategori`, `hp`, `pembawa`) VALUES
(11, 3, 0, '2023-04-29 17:06:58', 'Habibi', '21', 'SMK Yapia', 'Single Putra', '0877777777777', 'muhamed'),
(12, 3, 0, '2023-04-29 17:07:18', 'Dimas', '17', 'SMKN 3 Tegal', 'Single Putra', '0833333333333', 'iksan'),
(13, 4, 0, '2023-04-30 15:14:04', 'fira', '17', 'SMK Yapia', 'Single Putri', '089999999999', 'habibi'),
(14, 4, 0, '2023-04-30 15:15:19', 'Siti Asri Kania sari', '21', 'SMK Kebangsaan', 'Single Putri', '089527433636', 'Habibi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `fullname`, `email`, `password`, `role`) VALUES
(15, 'Bu Yuliana', 'BuYuliana@gmail.com', '$2y$10$Ru/TQwj3Ovg5X2sCXo.haulBE.RgWjwQgMexL9jSWhLvzT3b6r/6O', 'admin'),
(16, 'Ahmad Habibi', 'ahabibi207@gmail.com', '$2y$10$6JlBtplhs5R4Ok05Ll01O.FKJaX4ZZUp.oNOV6Ody45GA0boHAa5q', 'user'),
(17, 'Siti Asri Kania Sari', 'kaniaalfa@gmail.com', '$2y$10$RCcCK.J2AG4zxsHmRnsSMOLYWf5wk7nO5dyGFosIziolv8.sVTgjC', 'user'),
(18, 'Ibnu Saputra', 'ibnusaputra@gmail.com', '$2y$10$JdbynGWqpsMceNd2I64oBudRp8XCwgZF7cvMhJu5JiFPs71xt67jq', 'user'),
(19, 'Rino Bacthiar', 'rinobacthiar@gmail.com', '$2y$10$NlIGawBO0muKx0G1vlNoa.vaUE6yDiJyEfPQxo7iFYhbGErBh/wS.', 'user'),
(21, 'Aldy Giri Syahdi', 'aldigiri88@gmail.com', '$2y$10$lPQkEzj2jl0Ep.ag0.QmLe0wnmRvEPy49YsdBzuVcZoBk2iFf2o4m', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `kontingen`
--
ALTER TABLE `kontingen`
  ADD PRIMARY KEY (`idkontingen`);

--
-- Indexes for table `peserta_lks`
--
ALTER TABLE `peserta_lks`
  ADD PRIMARY KEY (`idpeserta`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kontingen`
--
ALTER TABLE `kontingen`
  MODIFY `idkontingen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `peserta_lks`
--
ALTER TABLE `peserta_lks`
  MODIFY `idpeserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
