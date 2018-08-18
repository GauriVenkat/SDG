-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 13, 2018 at 10:09 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `parentinfo`
--

DROP TABLE IF EXISTS `parentinfo`;
CREATE TABLE IF NOT EXISTS `parentinfo` (
  `app_no` int(11) DEFAULT NULL,
  `roll_no` varchar(8) DEFAULT NULL,
  `parent_address` varchar(100) DEFAULT NULL,
  `native_address` varchar(100) DEFAULT NULL,
  `parent_occupation` varchar(15) DEFAULT NULL,
  `parent_mobile` varchar(12) DEFAULT NULL,
  `parent_email` varchar(50) DEFAULT NULL,
  `no_of_child` float DEFAULT NULL,
  `annual_income` decimal(16,0) DEFAULT NULL,
  `parent_name` varchar(25) DEFAULT NULL,
  `parent_education` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parentinfo`
--

INSERT INTO `parentinfo` (`app_no`, `roll_no`, `parent_address`, `native_address`, `parent_occupation`, `parent_mobile`, `parent_email`, `no_of_child`, `annual_income`, `parent_name`, `parent_education`) VALUES
(NULL, NULL, 'paddress', 'pnaddress', '12', '7989987567', 'v@gmail.com', 2, '123456', 'HDGD', 'bdhmsb'),
(NULL, NULL, 'ghjcgj', 'jhfhrjb', '12', '7989987567', 'v@gmail.com', 3, '65347263', 'HDGD', 'bdhmsb'),
(NULL, NULL, 'CVGSDJC', 'DNGCVHJ', '12', '7989987567', 'v@gmail.com', 2, '12345', 'HDGD', 'bdhmsb'),
(NULL, NULL, 'ngf', 'gfcjs', '12', '7989987567', 'v@gmail.com', 2, '31223', 'HDGD', 'bdhmsb'),
(NULL, NULL, 'ngf', 'gfcjs', '12', '7989987567', 'v@gmail.com', 2, '31223', 'HDGD', 'bdhmsb'),
(NULL, NULL, 'scsdg', 'fdgd', '12', '7989987567', 'v@gmail.com', 2, '324456', 'HDGD', 'bdhmsb');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
