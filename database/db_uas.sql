-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 03:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `NoNota` char(3) NOT NULL,
  `TglNota` varchar(2) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `IdPlg` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`NoNota`, `TglNota`, `Alamat`, `IdPlg`) VALUES
('004', '5', 'pondok cabe', '666'),
('008', '7', 'ciledug', '666'),
('545', '3', 'poncab', '666');

-- --------------------------------------------------------

--
-- Table structure for table `notadetil`
--

CREATE TABLE `notadetil` (
  `NoNota` char(3) NOT NULL,
  `IdKura` char(5) NOT NULL,
  `Qty` int(5) NOT NULL,
  `Harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notadetil`
--

INSERT INTO `notadetil` (`NoNota`, `IdKura`, `Qty`, `Harga`) VALUES
('001', '55881', 2, 150000),
('002', '44221', 3, 50000),
('004', '88112', 2, 500000),
('008', '66778', 3, 50000),
('545', '12345', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `IdPlg` char(3) NOT NULL,
  `NamaPlg` varchar(30) NOT NULL,
  `NoTelp` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`IdPlg`, `NamaPlg`, `NoTelp`, `Email`) VALUES
('123', 'bagol rastafara', '09833213', 'bagol22@gmail.com'),
('666', 'carlo uyehh', '0933118322', 'carlooo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `IdPesanan` char(3) NOT NULL,
  `TglPesanan` varchar(2) NOT NULL,
  `NoNota` varchar(3) NOT NULL,
  `Jumlah` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `IdKura` char(5) NOT NULL,
  `NamaKura` varchar(50) NOT NULL,
  `JnsKura` varchar(50) NOT NULL,
  `Ukuran` varchar(20) NOT NULL,
  `Harga` int(9) NOT NULL,
  `Stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`NoNota`);

--
-- Indexes for table `notadetil`
--
ALTER TABLE `notadetil`
  ADD PRIMARY KEY (`NoNota`,`IdKura`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`IdPlg`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`IdPesanan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`IdKura`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
