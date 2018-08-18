-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 13, 2018 at 10:08 AM
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
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `app_no` int(11) DEFAULT NULL,
  `roll_no` varchar(8) DEFAULT NULL,
  `hsc_marksheet` varchar(1) DEFAULT NULL,
  `ssc_marksheet` varchar(1) DEFAULT NULL,
  `college_lc_submitted` varchar(1) DEFAULT NULL,
  `college_lc_issued` varchar(1) DEFAULT NULL,
  `college_lc_issued_date` datetime DEFAULT NULL,
  `caste_certificate` varchar(1) DEFAULT NULL,
  `cate_validity_certficate` varchar(1) DEFAULT NULL,
  `provisional_eligibility_cert` varchar(1) DEFAULT NULL,
  `nri_pio_foregin_cert` varchar(1) DEFAULT NULL,
  `migration_cert` varchar(1) DEFAULT NULL,
  `non_creamy_cert` varchar(1) DEFAULT NULL,
  `cet_score_card` varchar(1) DEFAULT NULL,
  `aieee_score_card` varchar(1) DEFAULT NULL,
  `defence_cert` char(1) DEFAULT NULL,
  `j_k_admissoin_letter` char(1) DEFAULT NULL,
  `goi_admission_letter` char(1) DEFAULT NULL,
  `domicile_cert` char(1) DEFAULT NULL,
  `nationality_cert` char(1) DEFAULT NULL,
  `hsc_passing_cert` char(1) DEFAULT NULL,
  `diploma_final_cert` char(1) DEFAULT NULL,
  `diploma_passing_cert` char(1) DEFAULT NULL,
  `gap_cert` char(1) DEFAULT NULL,
  `migrant_cert` char(1) DEFAULT NULL,
  `phy_cert` char(1) DEFAULT NULL,
  `be_passing_certificate` char(1) DEFAULT NULL,
  `be_degree_certificate` char(1) DEFAULT NULL,
  `me_passing_certifficate` char(1) DEFAULT NULL,
  `me_degree_certificate` char(1) DEFAULT NULL,
  `gate_pet_score_card` char(1) DEFAULT NULL,
  `marriage_certicate` char(1) DEFAULT NULL,
  `ugc_approval_letter` char(1) DEFAULT NULL,
  `domicile_certi_student` char(1) DEFAULT NULL,
  `income_cert` char(1) DEFAULT NULL,
  `proformac` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
