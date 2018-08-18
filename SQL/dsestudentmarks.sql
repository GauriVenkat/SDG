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
-- Table structure for table `dsestudentmarks`
--

DROP TABLE IF EXISTS `dsestudentmarks`;
CREATE TABLE IF NOT EXISTS `dsestudentmarks` (
  `app_no` int(11) DEFAULT NULL,
  `roll_no` varchar(8) DEFAULT NULL,
  `ssc_maths` float DEFAULT NULL,
  `ssc_total` float DEFAULT NULL,
  `diploma_total` float DEFAULT NULL,
  `diploma_outofmarks` float DEFAULT NULL,
  `diploma_annual_sem` char(1) DEFAULT NULL,
  `ssc_mat_outof` float DEFAULT NULL,
  `ssc_tot_outof` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
