-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 10:22 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lpkpancarankasih`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'ymmy', 'achmatfauzi@ymmy.code', '170998', 'Admin'),
(5, 'asd', 'asd@gmail.com', '123', 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `conpage`
--

CREATE TABLE `conpage` (
  `no_page` int(100) NOT NULL,
  `id_contract` varchar(255) NOT NULL,
  `date_created` varchar(255) DEFAULT NULL,
  `approve` varchar(255) DEFAULT NULL,
  `date_approved` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conpage`
--

INSERT INTO `conpage` (`no_page`, `id_contract`, `date_created`, `approve`, `date_approved`) VALUES
(1, 'PK42-1952', '9 Mar 2020', 'Approved', '10 Mar 2020');

-- --------------------------------------------------------

--
-- Table structure for table `constat`
--

CREATE TABLE `constat` (
  `id_contract` varchar(255) NOT NULL,
  `id_sdm` varchar(255) NOT NULL,
  `date_created` varchar(255) DEFAULT NULL,
  `contractduration` varchar(255) DEFAULT NULL,
  `contract_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `constat`
--

INSERT INTO `constat` (`id_contract`, `id_sdm`, `date_created`, `contractduration`, `contract_status`) VALUES
('PK42-1952', '1952', '9 Mar 2020', '6 Bulan', 'Berjalan');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id_contract` varchar(11) NOT NULL,
  `id_sdm` varchar(255) NOT NULL,
  `sdm_name` varchar(255) DEFAULT NULL,
  `sdm_ttl` varchar(255) DEFAULT NULL,
  `sdm_ktp` varchar(255) DEFAULT NULL,
  `sdm_alamatasal` varchar(255) DEFAULT NULL,
  `contractor_name` varchar(255) DEFAULT NULL,
  `contractor_ktp` varchar(255) DEFAULT NULL,
  `contractor_telp` varchar(255) DEFAULT NULL,
  `contractor_address` varchar(255) DEFAULT NULL,
  `contractor_naddress` varchar(255) DEFAULT NULL,
  `contract_start` varchar(255) DEFAULT NULL,
  `contract_end` varchar(255) DEFAULT NULL,
  `contractor_subname` varchar(255) DEFAULT NULL,
  `contractor_subage` varchar(255) DEFAULT NULL,
  `payment_admin` varchar(255) DEFAULT NULL,
  `payment_sdm` varchar(255) DEFAULT NULL,
  `paymennt_cuti` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id_contract`, `id_sdm`, `sdm_name`, `sdm_ttl`, `sdm_ktp`, `sdm_alamatasal`, `contractor_name`, `contractor_ktp`, `contractor_telp`, `contractor_address`, `contractor_naddress`, `contract_start`, `contract_end`, `contractor_subname`, `contractor_subage`, `payment_admin`, `payment_sdm`, `paymennt_cuti`) VALUES
('PK42-1952', '1952', 'Achmat', 'Cilacap, 17 September 1998', '12213456123', 'Cilacap', 'Mucharir', '312231456', '02311123312', 'Jakarta', 'Tebet', '25 Mar 2020', '25 Sep 2020', 'Haikal', '1 Tahun', '2.300.000', '2.000.000', '200.000');

-- --------------------------------------------------------

--
-- Table structure for table `sdmavailability`
--

CREATE TABLE `sdmavailability` (
  `id_sdm` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sdmavailability`
--

INSERT INTO `sdmavailability` (`id_sdm`, `name`, `role`, `availability`) VALUES
(1952, 'Achmat', 'Baby Sitter', 'Contracted'),
(1982, 'Fauzi', 'ART', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `sdmprofile`
--

CREATE TABLE `sdmprofile` (
  `id_sdm` int(5) NOT NULL,
  `ktp` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `suku` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `ttl` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `tempatasal` varchar(255) DEFAULT NULL,
  `kekurangan` varchar(255) DEFAULT NULL,
  `kelebihan` varchar(255) DEFAULT NULL,
  `pengalaman` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sdmprofile`
--

INSERT INTO `sdmprofile` (`id_sdm`, `ktp`, `nama`, `suku`, `agama`, `ttl`, `role`, `tempatasal`, `kekurangan`, `kelebihan`, `pengalaman`, `foto`) VALUES
(1952, '12213456123', 'Achmat', 'Jawa', 'Islam', 'Cilacap, 17 September 1998', 'Baby Sitter', 'Cilacap', 'Tidak bisa masak', 'penyayang', 'Baby sitter sudah 2 tahun', 'C:\\Users\\achma\\Pictures\\images.jpg'),
(1982, '123546312', 'Fauzi', 'Jawa', 'Islam', 'Nglipar, 17 September 1998', 'ART', 'Nglipar', 'Tidak Bisa Masak babi', 'Mahir Memasak', 'ART 2 tahun', 'C:\\Users\\achma\\Pictures\\download.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conpage`
--
ALTER TABLE `conpage`
  ADD PRIMARY KEY (`no_page`,`id_contract`) USING BTREE;

--
-- Indexes for table `constat`
--
ALTER TABLE `constat`
  ADD PRIMARY KEY (`id_contract`,`id_sdm`) USING BTREE;

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id_contract`,`id_sdm`);

--
-- Indexes for table `sdmavailability`
--
ALTER TABLE `sdmavailability`
  ADD PRIMARY KEY (`id_sdm`);

--
-- Indexes for table `sdmprofile`
--
ALTER TABLE `sdmprofile`
  ADD PRIMARY KEY (`id_sdm`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `conpage`
--
ALTER TABLE `conpage`
  MODIFY `no_page` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
