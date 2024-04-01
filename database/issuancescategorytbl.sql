-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 10:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample_deped`
--

-- --------------------------------------------------------

--
-- Table structure for table `issuancescategorytbl`
--

CREATE TABLE `issuancescategorytbl` (
  `issuances_type` varchar(50) NOT NULL,
  `issuances_type_name` varchar(50) NOT NULL,
  `issuances_status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issuancescategorytbl`
--

INSERT INTO `issuancescategorytbl` (`issuances_type`, `issuances_type_name`, `issuances_status`) VALUES
('CITY MEMORANDUM / EXECUTIVE ORDER', 'CITY MEMORANDUM / EXECUTIVE ORDER', 'active'),
('DIVISION ADVISORIES', 'DIVISION ADVISORIES', 'active'),
('DIVISION CIRCULARS', 'DIVISION CIRCULARS', 'active'),
('DIVISION ORDERS', 'DIVISION ORDERS', 'active'),
('MISCELLANEOUS MEMOS', 'MISCELLANEOUS MEMOS', 'active'),
('NUMBERED MEMORANDUM', 'NUMBERED MEMORANDUM', 'active'),
('OFFICE ORDER', 'OFFICE ORDER', 'active'),
('UNNUMBERED MEMORANDUM', 'UNNUMBERED MEMORANDUM', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `issuancescategorytbl`
--
ALTER TABLE `issuancescategorytbl`
  ADD PRIMARY KEY (`issuances_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
