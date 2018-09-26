-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2018 at 07:12 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdg_rait_exam_s_w`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `Seat No.` int(200) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Branch` varchar(10) NOT NULL,
  `Year` varchar(2) NOT NULL,
  `Sem` varchar(2) NOT NULL,
  `RollNo` varchar(8) NOT NULL,
  `photo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`Seat No.`, `Name`, `Branch`, `Year`, `Sem`, `RollNo`, `photo`) VALUES
(1, 'SAWANT MITESH MILIND MANALI', 'CE', 'SE', '4', '16CE1088', 'sdg\\images\\16CE1088.jpg'),
(2, 'surname name father mother', 'IT', 'SE', '3', '16CE1077', 'sdg\\images\\16CE1077.jpg'),
(3, 'surname name father mother', 'IT', 'SE', '3', '16CE1056', 'sdg\\images\\16CE1056.jpg'),
(123, 'rohit ', 'CE', 'BE', '6', '15ce1044', '1312312');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`Seat No.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `Seat No.` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2135;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
