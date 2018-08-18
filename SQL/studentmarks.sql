-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 13, 2018 at 10:10 AM
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
-- Table structure for table `studentmarks`
--

DROP TABLE IF EXISTS `studentmarks`;
CREATE TABLE IF NOT EXISTS `studentmarks` (
  `app_no` int(11) DEFAULT NULL,
  `roll_no` varchar(8) DEFAULT NULL,
  `hsc_phy` float DEFAULT NULL,
  `hsc_chem` float DEFAULT NULL,
  `hsc_math` float DEFAULT NULL,
  `hsc_pcm` float DEFAULT NULL,
  `hsc_total` float DEFAULT NULL,
  `ssc_maths` float DEFAULT NULL,
  `ssc_total` float DEFAULT NULL,
  `diploma_total` float DEFAULT NULL,
  `cet_phy` float DEFAULT NULL,
  `cet_che` float DEFAULT NULL,
  `cet_mat` float DEFAULT NULL,
  `cet_seat_no` varchar(12) DEFAULT NULL,
  `cet_total` float DEFAULT NULL,
  `aieee_seat_no` varchar(12) DEFAULT NULL,
  `aieee_total` float DEFAULT NULL,
  `diploma_outofmarks` float DEFAULT NULL,
  `diploma_annual_sem` varchar(10) DEFAULT NULL,
  `hsc_english` float DEFAULT NULL,
  `hsc_biology` float DEFAULT NULL,
  `aieee_rank` varchar(10) DEFAULT NULL,
  `hsc_seat_no` varchar(13) DEFAULT NULL,
  `hsc_centre_no` varchar(10) DEFAULT NULL,
  `hsc_yearofpassing` varchar(7) DEFAULT NULL,
  `sem1seatno` decimal(16,0) DEFAULT NULL,
  `sem2seatno` decimal(16,0) DEFAULT NULL,
  `sem3seatno` decimal(16,0) DEFAULT NULL,
  `sem4seatno` decimal(16,0) DEFAULT NULL,
  `sem5seatno` decimal(16,0) DEFAULT NULL,
  `sem6seatno` decimal(16,0) DEFAULT NULL,
  `hsc_phy_outof` float DEFAULT NULL,
  `hsc_che_outof` float DEFAULT NULL,
  `hsc_mat_outof` float DEFAULT NULL,
  `hsc_pcm_outof` float DEFAULT NULL,
  `hsc_tot_outof` float DEFAULT NULL,
  `ssc_mat_outof` float DEFAULT NULL,
  `ssc_tot_outof` float DEFAULT NULL,
  `hsc_eng_outof` float DEFAULT NULL,
  `hsc_bio_outof` float DEFAULT NULL,
  `BE_aggregate` decimal(16,0) DEFAULT NULL,
  `be_outofmarks` decimal(16,0) DEFAULT NULL,
  `vocational_course` varchar(50) DEFAULT NULL,
  `Vocational_marks` float DEFAULT NULL,
  `composite_score` decimal(16,10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentmarks`
--

INSERT INTO `studentmarks` (`app_no`, `roll_no`, `hsc_phy`, `hsc_chem`, `hsc_math`, `hsc_pcm`, `hsc_total`, `ssc_maths`, `ssc_total`, `diploma_total`, `cet_phy`, `cet_che`, `cet_mat`, `cet_seat_no`, `cet_total`, `aieee_seat_no`, `aieee_total`, `diploma_outofmarks`, `diploma_annual_sem`, `hsc_english`, `hsc_biology`, `aieee_rank`, `hsc_seat_no`, `hsc_centre_no`, `hsc_yearofpassing`, `sem1seatno`, `sem2seatno`, `sem3seatno`, `sem4seatno`, `sem5seatno`, `sem6seatno`, `hsc_phy_outof`, `hsc_che_outof`, `hsc_mat_outof`, `hsc_pcm_outof`, `hsc_tot_outof`, `ssc_mat_outof`, `ssc_tot_outof`, `hsc_eng_outof`, `hsc_bio_outof`, `BE_aggregate`, `be_outofmarks`, `vocational_course`, `Vocational_marks`, `composite_score`) VALUES
(NULL, 'n', 100, 100, 100, 300, 600, 100, 500, 500, 100, 100, 100, '5387', 300, '7537', 300, 600, 'semester', 100, 100, '', '625876', '625876', '2016', NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 100, 300, 600, 100, 600, 100, 100, NULL, NULL, '12', 100, '100.0000000000'),
(NULL, 'n', 100, 100, 100, 300, 600, 100, 500, 500, 100, 100, 100, '5387', 300, '7537', 300, 600, 'semester', 100, 100, '', '625876', '625876', '2016', NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 100, 300, 600, 100, 600, 100, 100, NULL, NULL, '12', 100, '100.0000000000'),
(NULL, 'n', 100, 100, 100, 300, 600, 100, 600, 600, 100, 100, 100, '5387', 300, '7537', 300, 600, 'semester', 100, 100, '', '625876', '625876', '2017', NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 100, 300, 600, 100, 600, 100, 100, NULL, NULL, '12', 100, '90.0000000000'),
(NULL, 'n', 100, 100, 100, 300, 600, 100, 600, 600, 100, 100, 100, '5387', 300, '7537', 300, 600, 'semester', 100, 100, '', '625876', '625876', '2017', NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 100, 300, 600, 100, 600, 100, 100, NULL, NULL, '12', 100, '100.0000000000'),
(NULL, 'n', 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '5387', 1, '7537', 1, 1, 'semester', 1, 1, '', '625876', '625876', '2017', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '12', 1, '1.0000000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
