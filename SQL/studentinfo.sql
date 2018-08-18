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
-- Table structure for table `studentinfo`
--

DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE IF NOT EXISTS `studentinfo` (
  `app_no` bigint(20) DEFAULT NULL,
  `roll_no` varchar(8) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `admission_year` varchar(9) DEFAULT NULL,
  `branch` char(1) NOT NULL,
  `class_admn` varchar(10) DEFAULT NULL,
  `state_domi` varchar(25) DEFAULT NULL,
  `st_address` varchar(500) DEFAULT NULL,
  `st_phone` varchar(12) DEFAULT NULL,
  `st_mobile` bigint(20) DEFAULT NULL,
  `st_email` varchar(40) DEFAULT NULL,
  `blood_group` varchar(15) DEFAULT NULL,
  `religion` varchar(15) DEFAULT NULL,
  `last_college` varchar(100) DEFAULT NULL,
  `board` varchar(50) DEFAULT NULL,
  `category` varchar(15) DEFAULT NULL,
  `caste` varchar(10) DEFAULT NULL,
  `uni_merit` varchar(10) DEFAULT NULL,
  `state_merit` varchar(10) DEFAULT NULL,
  `batch` varchar(3) DEFAULT NULL,
  `admission_date` datetime DEFAULT NULL,
  `report_date` datetime DEFAULT NULL,
  `leave_date` datetime DEFAULT NULL,
  `se_date2` datetime DEFAULT NULL,
  `round` varchar(5) DEFAULT NULL,
  `affiliation` varchar(15) DEFAULT NULL,
  `admission_authority` varchar(15) DEFAULT NULL,
  `eligibility_date` datetime DEFAULT NULL,
  `admission_cancel` char(1) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `cash_dd` char(1) DEFAULT NULL,
  `dd_no` bigint(20) NOT NULL,
  `dd_amount` float DEFAULT NULL,
  `dd_date` datetime DEFAULT NULL,
  `dd_bank` varchar(25) DEFAULT NULL,
  `app_confirm` char(1) DEFAULT NULL,
  `centre` varchar(4) DEFAULT NULL,
  `board_district` varchar(50) DEFAULT NULL,
  `board_state` varchar(50) DEFAULT NULL,
  `placeofbirth` varchar(50) DEFAULT NULL,
  `nationality` varchar(25) DEFAULT NULL,
  `adm_cancel_date` datetime DEFAULT NULL,
  `subcaste` varchar(50) DEFAULT NULL,
  `near_railway_station` varchar(25) DEFAULT NULL,
  `Readmission` char(1) DEFAULT NULL,
  `final_enroll_confirm` char(1) DEFAULT NULL,
  `final_enroll_date` datetime DEFAULT NULL,
  `final_enroll_no` varchar(10) DEFAULT NULL,
  `mothers_name` varchar(40) DEFAULT NULL,
  `yeardrop` char(1) DEFAULT NULL,
  `mothertounge` varchar(50) DEFAULT NULL,
  `cashamount` float DEFAULT NULL,
  `shift` int(1) DEFAULT NULL,
  `dte_application_id` varchar(12) DEFAULT NULL,
  `dte_kit_no` varchar(12) DEFAULT NULL,
  `adharcardno` bigint(20) DEFAULT NULL,
  `minority_religious` char(1) DEFAULT NULL,
  `minority_linguistic` char(1) DEFAULT NULL,
  `university_form_no` varchar(20) DEFAULT NULL,
  `religious_minority` char(1) DEFAULT NULL,
  `lingustic_minority` char(1) DEFAULT NULL,
  `choice_code` varchar(10) DEFAULT NULL,
  `prn` varchar(17) DEFAULT NULL,
  `uni_reg_no` varchar(13) DEFAULT NULL,
  `last_university` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`app_no`, `roll_no`, `name`, `sex`, `birth_date`, `admission_year`, `branch`, `class_admn`, `state_domi`, `st_address`, `st_phone`, `st_mobile`, `st_email`, `blood_group`, `religion`, `last_college`, `board`, `category`, `caste`, `uni_merit`, `state_merit`, `batch`, `admission_date`, `report_date`, `leave_date`, `se_date2`, `round`, `affiliation`, `admission_authority`, `eligibility_date`, `admission_cancel`, `type`, `cash_dd`, `dd_no`, `dd_amount`, `dd_date`, `dd_bank`, `app_confirm`, `centre`, `board_district`, `board_state`, `placeofbirth`, `nationality`, `adm_cancel_date`, `subcaste`, `near_railway_station`, `Readmission`, `final_enroll_confirm`, `final_enroll_date`, `final_enroll_no`, `mothers_name`, `yeardrop`, `mothertounge`, `cashamount`, `shift`, `dte_application_id`, `dte_kit_no`, `adharcardno`, `minority_religious`, `minority_linguistic`, `university_form_no`, `religious_minority`, `lingustic_minority`, `choice_code`, `prn`, `uni_reg_no`, `last_university`) VALUES
(NULL, NULL, 'abc', 'F', '1998-06-12', NULL, '', 'F.E.', 'mah', 'ghfnhvj/', '12309449', 987654321, 'gvhgvhg', 'A+', 'hindu', 'gfgff', 'gcggf', 'ggfvg', 'obc', '34567h', '56778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3455666, 67, '1998-06-12 00:00:00', 'sbi', NULL, NULL, 'fstfdx', 'dsfsdf', 'dfdf', 'dff', NULL, 'vnbgh', 'ghcj', NULL, NULL, NULL, NULL, 'fhj', NULL, 'ghjgh', NULL, 1, 'gfh234', NULL, 123456789012, 'Y', 'Y', '1234g', NULL, NULL, 'g567', NULL, NULL, NULL),
(NULL, NULL, 'abc', 'F', '1998-02-23', NULL, '', 'F.E.', 'mah', 'ghfnhvj/', '12309449', 987654321, 'gvhgvhg', 'A+', 'hindu', 'gfgff', 'gcggf', 'ggfvg', 'obc', '34567h', '56778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3455666, 67, '1998-06-12 00:00:00', 'sbi', NULL, NULL, 'fstfdx', 'dsfsdf', 'dfdf', 'dff', NULL, 'vnbgh', 'ghcj', NULL, NULL, NULL, NULL, 'fhj', NULL, 'ghjgh', NULL, 1, 'gfh234', NULL, 123456789012, 'Y', 'Y', '1234g', NULL, NULL, 'g567', NULL, NULL, NULL),
(NULL, NULL, 'abc', 'F', '1998-06-12', NULL, '', 'F.E.', 'mah', 'ghfnhvj/', '12309449', 987654321, 'v@gmail.com', 'A+', 'hindu', 'gfgff', 'gcggf', 'ggfvg', 'obc', '34567h', '56778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3455666, 67, '1998-06-12 00:00:00', 'sbi', NULL, NULL, 'fstfdx', 'dsfsdf', 'dfdf', 'dff', NULL, 'vnbgh', 'ghcj', NULL, NULL, NULL, NULL, 'fhj', NULL, 'ghjgh', NULL, 1, 'gfh234', NULL, 123456789012, 'Y', 'Y', '1234g', NULL, NULL, 'g567', NULL, NULL, NULL),
(NULL, NULL, 'abc', 'F', '1998-06-12', NULL, '', 'F.E.', 'mah', 'ghfnhvj/', '54-3768', 987654321, 'gvhgvhg', 'A+', 'hindu', 'gfgff', 'gcggf', 'ggfvg', 'obc', '34567h', '56778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3455666, 67, '1998-06-12 00:00:00', 'sbi', NULL, NULL, 'fstfdx', 'dsfsdf', 'dfdf', 'dff', NULL, 'vnbgh', 'ghcj', NULL, NULL, NULL, NULL, 'fhj', NULL, 'ghjgh', NULL, 1, 'gfh234', NULL, 123456789012, 'Y', 'Y', '1234g', NULL, NULL, 'g567', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-06-05', NULL, '', 'F.E.', 'mah', 'address', '54-3768', 1426538724, 'v@gmail.com', 'O+', 'Christian', 'hsccoll', 'hsc', '', 'NT-D', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5779, 578, '2018-06-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'M', '2018-06-04', NULL, '', 'F.E.', 'mah', 'address123', '54-3768', 1426538724, 'v@gmail.com', 'AB-', 'Hindu', 'hcdgc', 'bhd', '', 'OPEN', '13256', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2345, 4677, '2018-06-27 00:00:00', 'sbi', NULL, NULL, 'jhcg', 'hjg', 'pob', 'indian', NULL, '', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 1, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547358', NULL, NULL, '457', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2000-12-12', NULL, '', 'M.E.', 'mah', 'address', '56567', 1234567890, 'a@gmail.com', 'b+', 'Hindu', 'lastcollege', NULL, NULL, 'NTd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 1234, '2018-12-12 00:00:00', 'sbi', NULL, NULL, NULL, NULL, 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, NULL, '12345a', NULL, 123456789012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'university'),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'hsc', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'Y', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, NULL, NULL, 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, NULL, '13524173A', NULL, 523478632918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, NULL, NULL, 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, NULL, '13524173A', NULL, 523478632918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, NULL, NULL, 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, NULL, '13524173A', NULL, 523478632918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, NULL, 'name', 'F', '2018-07-10', NULL, '', 'F.E.', 'mah', 'vbkhjm', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 123556, '2018-07-27 00:00:00', 'sbi', NULL, NULL, NULL, NULL, 'pob', 'indian', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, NULL, '13524173A', NULL, 523478632918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, NULL, 'name', 'F', '2018-07-11', NULL, '', 'F.E.', 'bchb', 'NHDVHSC', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hcdgc', 'bhd', '', 'NT-D', '13256', '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 1234, '2018-07-29 00:00:00', 'sbi', NULL, NULL, 'jhcg', 'hjg', 'gxhfg', 'chvdsh', NULL, 'vanjari', 'railway', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 1, '13524173', NULL, 523478632918, 'N', 'N', '67547FN', NULL, NULL, '457', NULL, NULL, NULL),
(NULL, NULL, 'rthtk', 'M', '2018-07-01', NULL, '', '12', 'mah', 'fgdh', '543768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'sdsds', NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134, 13432, '2018-07-01 00:00:00', 'sbi', NULL, NULL, NULL, NULL, 'pob', 'indian', NULL, 'vanjari', 'hdvdyhsfcg', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, NULL, '13524173', NULL, 523478632918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zSA'),
(NULL, NULL, 'name', 'F', '2018-07-04', NULL, '', '12', 'bchb', 'nfhj', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'sdsds', NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134, 34235, '2018-07-27 00:00:00', 'sbi', NULL, NULL, NULL, NULL, 'pob', 'chvdsh', NULL, 'nvcnsh', 'hdvdyhsfcg', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, NULL, '13524173', NULL, 523478632918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zSA'),
(NULL, NULL, 'name', 'F', '2018-07-04', NULL, '', '12', 'bchb', 'nfhj', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'sdsds', NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134, 34235, '2018-07-27 00:00:00', 'sbi', NULL, NULL, NULL, NULL, 'pob', 'chvdsh', NULL, 'nvcnsh', 'hdvdyhsfcg', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, NULL, '13524173', NULL, 523478632918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zSA'),
(NULL, NULL, 'name', 'F', '2018-07-04', NULL, '', '12', 'bchb', 'nfhj', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'sdsds', NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134, 34235, '2018-07-27 00:00:00', 'sbi', NULL, NULL, NULL, NULL, 'pob', 'chvdsh', NULL, 'nvcnsh', 'hdvdyhsfcg', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, NULL, '13524173', NULL, 523478632918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zSA'),
(34, NULL, 'name', 'F', '2018-07-11', '2018-19', 'C', 'F.E.', 'mah', 'sgcvbg', '54-3768', 1426538724, 'v@gmail.com', 'A+', 'Hindu', 'hsccoll', 'MSBTE', '', 'OPEN', '13256', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 12340, '2018-07-25 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'vanjari', 'chunabhatti', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 1, '13524173A', NULL, 523478632918, 'N', 'N', '67547358', NULL, NULL, '457E', NULL, NULL, NULL),
(35, NULL, 'rthtk', 'M', '2018-07-02', '2018-19', 'C', 'F.E.', 'bchb', 'gdgh', 'NA', 0, 'v@gmail.com', 'O+', 'Hindu', 'hsccoll', 'Maharashtra', '', 'NT-D', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 1234, '2018-07-17 00:00:00', 'NA', NULL, NULL, 'hdist', 'hst', 'pob', 'chvdsh', NULL, 'nvcnsh', 'airoli', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173', NULL, 523478632918, 'N', 'N', '67547FN', NULL, NULL, '457', NULL, NULL, NULL),
(35, NULL, 'rthtk', 'M', '2018-07-02', '2018-19', 'C', 'F.E.', 'bchb', 'gdgh', 'NA', 0, 'v@gmail.com', 'O+', 'Hindu', 'hsccoll', 'Maharashtra', '', 'NT-D', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1234, 1234, '2018-07-17 00:00:00', 'NA', NULL, NULL, 'hdist', 'hst', 'pob', 'chvdsh', NULL, 'nvcnsh', 'airoli', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173', NULL, 523478632918, 'N', 'N', '67547FN', NULL, NULL, '457', NULL, NULL, NULL),
(36, NULL, 'name', 'F', '2018-07-02', '2018-19', 'C', 'F.E.', 'mah', 'djvbfkjhb', '123456', 987654321, 'v@gmail.com', 'B-', 'Hindu', 'hsccoll', 'Maharashtra', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 123434, 1234, '2018-07-21 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'nvcnsh', 'charni road', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'N', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL),
(37, NULL, 'name', 'F', '2018-07-02', '2018-19', 'C', 'F.E.', 'mah', 'djvbfkjhb', '123456', 987654321, 'v@gmail.com', 'B-', 'Hindu', 'hsccoll', 'Maharashtra', '', 'OPEN', '13256UM', '26SM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 123434, 1234, '2018-07-21 00:00:00', 'sbi', NULL, NULL, 'hdist', 'hst', 'pob', 'indian', NULL, 'nvcnsh', 'charni road', NULL, NULL, NULL, NULL, 'mother', NULL, 'marathi', NULL, 2, '13524173A', NULL, 523478632918, 'N', 'Y', '67547FN', NULL, NULL, '457C', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
