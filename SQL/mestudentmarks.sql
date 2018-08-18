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
-- Table structure for table `mestudentmarks`
--

DROP TABLE IF EXISTS `mestudentmarks`;
CREATE TABLE IF NOT EXISTS `mestudentmarks` (
  `app_no` int(11) DEFAULT NULL,
  `roll_no` varchar(8) DEFAULT NULL,
  `hsc_total` float DEFAULT NULL,
  `diploma_total` float DEFAULT NULL,
  `cet_seat_no` varchar(12) DEFAULT NULL,
  `cet_total` float DEFAULT NULL,
  `diploma_outofmarks` float DEFAULT NULL,
  `diploma_annual_sem` varchar(20) DEFAULT NULL,
  `hsc_seat_no` varchar(13) DEFAULT NULL,
  `hsc_yearofpassing` varchar(7) DEFAULT NULL,
  `hsc_tot_outof` float DEFAULT NULL,
  `BE_aggregate` decimal(16,0) DEFAULT NULL,
  `be_outofmarks` decimal(16,0) DEFAULT NULL,
  `be_class` varchar(10) NOT NULL,
  `be_branch` varchar(50) DEFAULT NULL,
  `be_university` varchar(50) DEFAULT NULL,
  `gate_score` varchar(20) DEFAULT NULL,
  `gate_score_valid_upto` varchar(20) DEFAULT NULL,
  `pet_score` varchar(20) DEFAULT NULL,
  `pet_score_valid_upto` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mestudentmarks`
--

INSERT INTO `mestudentmarks` (`app_no`, `roll_no`, `hsc_total`, `diploma_total`, `cet_seat_no`, `cet_total`, `diploma_outofmarks`, `diploma_annual_sem`, `hsc_seat_no`, `hsc_yearofpassing`, `hsc_tot_outof`, `BE_aggregate`, `be_outofmarks`, `be_class`, `be_branch`, `be_university`, `gate_score`, `gate_score_valid_upto`, `pet_score`, `pet_score_valid_upto`) VALUES
(NULL, NULL, 1, 1, '21435', 1, 1, 'semester', '625876', '1', 1, '1', '1', 'first', 'dghf', 'cnb', '2', '2018-07-11', '2', '2018-07-05'),
(NULL, NULL, 1, 1, '21435', 1, 1, 'semester', '625876', '1', 1, '1', '1', 'first', 'dghf', 'cnb', '2', '2018-07-11', '2', '2018-07-05'),
(NULL, NULL, 1, 1, '21435', 1, 1, 'semester', '625876', '1', 1, '1', '1', 'first', 'dghf', 'cnb', '2', '2018-07-11', '2', '2018-07-05');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
