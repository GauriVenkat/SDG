-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2018 at 07:56 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

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
-- Table structure for table `allocate_seat`
--

CREATE TABLE `allocate_seat` (
  `Roll_no` varchar(30) NOT NULL,
  `Seat` varchar(30) DEFAULT NULL,
  `Sem` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_table`
--

CREATE TABLE `course_table` (
  `Branch` varchar(30) NOT NULL,
  `pattern` varchar(30) DEFAULT NULL,
  `Sem` varchar(30) DEFAULT NULL,
  `sub_name` varchar(30) DEFAULT NULL,
  `sub_code` varchar(30) NOT NULL,
  `lect/week` varchar(30) DEFAULT NULL,
  `pracweek` varchar(30) DEFAULT NULL,
  `twmax` varchar(30) DEFAULT NULL,
  `tw_min` varchar(30) DEFAULT NULL,
  `th_max` varchar(30) DEFAULT NULL,
  `th_min` varchar(30) DEFAULT NULL,
  `prac_max` varchar(30) DEFAULT NULL,
  `prac_min` varchar(30) DEFAULT NULL,
  `oral_max` varchar(30) DEFAULT NULL,
  `oral_min` varchar(30) DEFAULT NULL,
  `op_max` varchar(30) DEFAULT NULL,
  `op_min` varchar(30) DEFAULT NULL,
  `cc_th` varchar(30) NOT NULL,
  `cc_tw` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_table`
--

INSERT INTO `course_table` (`Branch`, `pattern`, `Sem`, `sub_name`, `sub_code`, `lect/week`, `pracweek`, `twmax`, `tw_min`, `th_max`, `th_min`, `prac_max`, `prac_min`, `oral_max`, `oral_min`, `op_max`, `op_min`, `cc_th`, `cc_tw`) VALUES
('CE', 'REV2012', '4', 'AOA', '400', '', '', '', '', '', '', '', '', '', '', '', '', '4', '1'),
('CE', 'REV2012', '4', 'M4', '401', '', '', '', '', '', '', '', '', '', '', '', '', '4', '1'),
('CE', 'REV2012', '4', 'CG', '402', '', '', '', '', '', '', '', '', '', '', '', '', '3', '1'),
('CE', 'REV2012', '4', 'COA', '403', '', '', '', '', '', '', '', '', '', '', '', '', '4', '1'),
('CE', 'REV2012', '4', 'DBMS', '404', '', '', '', '', '', '', '', '', '', '', '', '', '4', '1'),
('CE', 'REV2012', '4', 'TCS', '405', '', '', '', '', '', '', '', '', '', '', '', '', '4', '-');

-- --------------------------------------------------------

--
-- Table structure for table `course_table_cbgs`
--

CREATE TABLE `course_table_cbgs` (
  `Branch` varchar(30) NOT NULL,
  `Pattern` varchar(30) DEFAULT NULL,
  `Sem` varchar(30) NOT NULL,
  `Sub_name` varchar(30) DEFAULT NULL,
  `Sub_code` varchar(30) DEFAULT NULL,
  `lect/week` varchar(30) DEFAULT NULL,
  `prac/week` varchar(30) DEFAULT NULL,
  `credits_th` varchar(30) DEFAULT NULL,
  `credits_tw` varchar(30) DEFAULT NULL,
  `grade_ese` varchar(30) DEFAULT NULL,
  `grade_op` varchar(30) DEFAULT NULL,
  `grade_or` varchar(30) DEFAULT NULL,
  `grade_ia` varchar(30) DEFAULT NULL,
  `grade_tw` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_table_rev`
--

CREATE TABLE `course_table_rev` (
  `branch` varchar(30) NOT NULL,
  `pattern` varchar(30) NOT NULL,
  `sem` int(30) NOT NULL,
  `subject` varchar(350) NOT NULL,
  `Sub_code` varchar(30) DEFAULT NULL,
  `coursecredits_th` varchar(10) NOT NULL,
  `coursecredits_tw` varchar(10) NOT NULL,
  `grade_ese` varchar(1) NOT NULL,
  `grade_op` varchar(1) NOT NULL,
  `grade_or` varchar(1) NOT NULL,
  `grade_ia` varchar(1) NOT NULL,
  `grade_tw` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_table_rev`
--

INSERT INTO `course_table_rev` (`branch`, `pattern`, `sem`, `subject`, `Sub_code`, `coursecredits_th`, `coursecredits_tw`, `grade_ese`, `grade_op`, `grade_or`, `grade_ia`, `grade_tw`) VALUES
('CE', 'REV2012', 1, 'Applied Chemistry - I', NULL, '3', '0.5', '', '-', '-', '', ''),
('CE', 'REV2012', 1, 'Applied Mathematics - I', NULL, '4', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 1, 'Applied Physics - I', NULL, '3', '0.5', '', '-', '-', '', ''),
('CE', 'REV2012', 1, 'Basic Electrical & Electronics Engg.', NULL, '4', '1', '', '', '', '', ''),
('CE', 'REV2012', 1, 'Basic Work Shop Practice I', NULL, '-', '2', '-', '-', '-', '-', ''),
('CE', 'REV2012', 1, 'Engineering Mechanics', NULL, '5', '1', '', '', '-', '', ''),
('CE', 'REV2012', 1, 'Environmental Studies (EVS)', NULL, '2', '-', '', '-', '-', '', '-'),
('CE', 'REV2012', 2, 'Applied Chemistry - II', NULL, '3', '0.5', '', '-', '-', '', ''),
('CE', 'REV2012', 2, 'Applied Mathematics - II', NULL, '4', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 2, 'Applied Physics - II', NULL, '3', '0.5', '', '-', '-', '', ''),
('CE', 'REV2012', 2, 'Basic Work Shop Practice II', NULL, '-', '2', '-', '-', '-', '-', ''),
('CE', 'REV2012', 2, 'Communication Skills', NULL, '2', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 2, 'Engineering Drawing', NULL, '3', '2', '', '', '-', '', ''),
('CE', 'REV2012', 2, 'Structured Programming Approach', NULL, '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 3, 'Applied Mathematics - III', NULL, '4', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 3, 'Data Structures', NULL, '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 3, 'Digital Logic Design and Analysis', NULL, '3', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 3, 'Discrete Structures', NULL, '4', '-', '', '-', '-', '', '-'),
('CE', 'REV2012', 3, 'Electronic Circuits & Communication Fundamental', NULL, '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 3, 'Object Oriented Programming Methodology', NULL, '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 4, 'Analysis of Algorithms', NULL, '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 4, 'Applied Mathematics - IV', NULL, '4', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 4, 'Computer Graphics', NULL, '3', '1', '', '', '-', '', ''),
('CE', 'REV2012', 4, 'Computer Organization & Architecture', NULL, '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 4, 'Database Management System', NULL, '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 4, 'Theoretial Computer Science', NULL, '4', '-', '', '-', '-', '', '-'),
('CE', 'REV2012', 5, 'Business Communication & Ethics', NULL, '-', '2', '-', '-', '-', '-', ''),
('CE', 'REV2012', 5, 'Computer Networks', NULL, '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 5, 'Microprocessor', NULL, '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 5, 'Operating Systems', NULL, '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 5, 'Structured & Object Oriented Analysis & Design', NULL, '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 5, 'Web Technologies Laboratory', NULL, '-', '2', '-', '-', '', '-', ''),
('CE', 'REV2012', 6, 'Distributed Databases', NULL, '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 6, 'Mobile Communication and Computing', NULL, '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 6, 'Network Programming Laboratory', NULL, '-', '2', '-', '-', '', '-', ''),
('CE', 'REV2012', 6, 'Project Management', NULL, '-', '2', '-', '-', '-', '-', ''),
('CE', 'REV2012', 6, 'Software Engineering', NULL, '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 6, 'System Programming & Compiler Construction ', NULL, '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 7, 'Artificial Intelligence', NULL, '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 7, 'Cryptography and System Security', NULL, '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 7, 'Digital Signal Processing', NULL, '4', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 7, 'Elective - II', NULL, '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 7, 'Network Threats and Attack Laboratory', NULL, '-', '2', '', '-', '', '-', ''),
('CE', 'REV2012', 7, 'Project - I', NULL, '-', '3', '-', '-', '', '-', ''),
('CE', 'REV2012', 8, 'Cloud Computing Laboratory', NULL, '-', '1', '-', '-', '-', '-', '-'),
('CE', 'REV2012', 8, 'Data Warehouse and Mining', NULL, '4', '1', '-', '-', '-', '-', '-'),
('CE', 'REV2012', 8, 'Elective - III', NULL, '4', '1', '-', '-', '-', '-', '-'),
('CE', 'REV2012', 8, 'Human Machine Interaction', NULL, '4', '1', '-', '-', '-', '-', '-'),
('CE', 'REV2012', 8, 'Parallel and Distributed Systems', NULL, '4', '1', '-', '-', '-', '-', '-'),
('CE', 'REV2012', 8, 'Project - II', NULL, '-', '6', '-', '-', '-', '-', '-'),
('EL', 'REV2012', 1, 'Applied Chemistry - I', NULL, '3', '0.5', '', '-', '-', '', ''),
('EL', 'REV2012', 1, 'Applied Mathematics - I', NULL, '4', '1', '', '-', '-', '', ''),
('EL', 'REV2012', 1, 'Applied Physics - I', NULL, '3', '0.5', '', '-', '-', '', ''),
('EL', 'REV2012', 1, 'Basic Electrical & Electronics Engg.', NULL, '4', '1', '', '', '-', '', ''),
('EL', 'REV2012', 1, 'Basic Workshop and Practice-I', NULL, '-', '2', '-', '-', '-', '-', ''),
('EL', 'REV2012', 1, 'Engineering Mechanics', NULL, '5', '1', '', '', '-', '', ''),
('EL', 'REV2012', 1, 'Environmental Studies ( EVS )', NULL, '2', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 2, 'Applied Chemistry - II', NULL, '3', '0.5', '', '-', '-', '', ''),
('EL', 'REV2012', 2, 'Applied Mathematics - II', NULL, '4', '1', '', '-', '-', '', ''),
('EL', 'REV2012', 2, 'Applied Physics - II', NULL, '3', '0.5', '', '-', '-', '', ''),
('EL', 'REV2012', 2, 'Basic Work Shop  Practice - II', NULL, '-', '2', '-', '-', '-', '-', ''),
('EL', 'REV2012', 2, 'Communication Skills', NULL, '2', '1', '', '-', '-', '', ''),
('EL', 'REV2012', 2, 'Engineering Drawing', NULL, '3', '2', '', '', '-', '', ''),
('EL', 'REV2012', 2, 'Structured Programming Approach', NULL, '4', '1', '', '', '-', '', ''),
('EL', 'REV2012', 3, 'Applied Mathematics - III', NULL, '4', '1', '', '-', '-', '', ''),
('EL', 'REV2012', 3, 'Circuit Theory', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 3, 'Circuit Theory & Measurements Laboratry', NULL, '-', '1', '-', '-', '-', '-', ''),
('EL', 'REV2012', 3, 'Digital Circuits and Design', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 3, 'Digital Circuits and Design Laboratory', NULL, '-', '1', '-', '', '-', '-', ''),
('EL', 'REV2012', 3, 'Electronics Devices', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 3, 'Electronics Devices Laboratory', NULL, '-', '1', '-', '', '-', '-', ''),
('EL', 'REV2012', 3, 'Electronics Instruments & Measurements', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 3, 'Object Oriented Programming Methodology Lab.', NULL, '-', '2', '-', '', '-', '-', ''),
('EL', 'REV2012', 4, 'Applied Mathematics - IV', NULL, '4', '1', '', '-', '-', '', ''),
('EL', 'REV2012', 4, 'Communication Engg. Laboratory', NULL, '-', '1', '-', '', '-', '-', ''),
('EL', 'REV2012', 4, 'Control Systems & Electrical Machines Lab.', NULL, '-', '1', '-', '-', '', '-', ''),
('EL', 'REV2012', 4, 'Discrete Electronics Circuits', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 4, 'Discrete Electronics Laboratory', NULL, '-', '1', '-', '', '-', '-', ''),
('EL', 'REV2012', 4, 'Electrical Machines', NULL, '3', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 4, 'Fundamentals of Comm. Engg.', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 4, 'Microprocessors & Peripherals', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 4, 'Microprocessors & Peripherals Laboratory', NULL, '-', '1', '-', '-', '', '-', ''),
('EL', 'REV2012', 4, 'Principles of Control Systems', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 5, 'Business Communication & Ethics', NULL, '-', '2', '-', '-', '-', '-', ''),
('EL', 'REV2012', 5, 'Design With Linear Integrated Circuits', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 5, 'Design With Linear Integrated Circuits Lab', NULL, '-', '1', '-', '', '-', '-', ''),
('EL', 'REV2012', 5, 'Digital Communication', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 5, 'Digital Communication  Lab ', NULL, '-', '1', '-', '-', '', '-', ''),
('EL', 'REV2012', 5, 'Electromagnetic Engineering', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 5, 'Microcontrollers and Applications', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 5, 'Microcontrollers and Applications Lab', NULL, '-', '1', '-', '', '-', '-', ''),
('EL', 'REV2012', 5, 'Mini Project', NULL, '-', '2', '-', '-', '', '-', ''),
('EL', 'REV2012', 5, 'Signals and Systems', NULL, '4', '1', '', '-', '-', '', ''),
('EL', 'REV2012', 6, 'Advanced Instrumentation & Power Electronics Lab.', NULL, '-', '1', '-', '', '-', '-', ''),
('EL', 'REV2012', 6, 'Advanced Instrumentation Systems', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 6, 'Basic VLSI Design', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 6, 'Computer Organization', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 6, 'Digital Signal Processing & Processor', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 6, 'Digital Signal Processing & Processor Lab.', NULL, '-', '1', '-', '-', '', '-', ''),
('EL', 'REV2012', 6, 'Mini Project II', NULL, '-', '2', '-', '', '-', '-', ''),
('EL', 'REV2012', 6, 'Modern IT For Management', NULL, '2', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 6, 'Power Electronics I', NULL, '4', '-', '', '-', '-', '', '-'),
('EL', 'REV2012', 6, 'VLSI Design Laboratory', NULL, '-', '1', '-', '-', '', '-', ''),
('EL', 'REV2012', 7, 'Computer Communication Networks', NULL, '4', '1', '', '-', '', '', ''),
('EL', 'REV2012', 7, 'Elective II', NULL, '4', '1', '', '-', '', '', ''),
('EL', 'REV2012', 7, 'Embedded System Design', NULL, '4', '1', '', '-', '', '', ''),
('EL', 'REV2012', 7, 'IC Technology', NULL, '4', '1', '', '-', '', '', ''),
('EL', 'REV2012', 7, 'Power Electronics - II', NULL, '4', '1', '', '-', '', '', ''),
('EL', 'REV2012', 7, 'Project - I', NULL, '-', '2', '-', '-', '', '-', ''),
('EL', 'REV2012', 8, 'Advanced Networking Technologies', NULL, '4', '1', '', '', '', '', ''),
('EL', 'REV2012', 8, 'CMOS VLSI Design', NULL, '4', '1', '', '', '', '', ''),
('EL', 'REV2012', 8, 'Elective III', NULL, '4', '1', '', '', '', '', ''),
('EL', 'REV2012', 8, 'MEMS Technology', NULL, '4', '1', '', '', '', '', ''),
('EL', 'REV2012', 8, 'Project - II', NULL, '-', '4', '-', '-', '', '-', ''),
('ET', 'REV2012', 1, 'Applied Chemistry - I', NULL, '3', '0.5', '', '-', '-', '', ''),
('ET', 'REV2012', 1, 'Applied Mathematics - I', NULL, '4', '1', '', '-', '-', '', ''),
('ET', 'REV2012', 1, 'Applied Physics - I', NULL, '3', '0.5', '', '-', '-', '', ''),
('ET', 'REV2012', 1, 'Basic Electrical & Electronics Engg.', NULL, '4', '1', '', '', '-', '', ''),
('ET', 'REV2012', 1, 'Basic Work Shop & Practice- I', NULL, '-', '2', '-', '-', '-', '-', ''),
('ET', 'REV2012', 1, 'Engineering Mechanics', NULL, '5', '1', '', '', '-', '', ''),
('ET', 'REV2012', 1, 'Environmental Studies ( EVS )', NULL, '2', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 2, 'Applied Chemistry - II', NULL, '3', '0.5', '', '-', '-', '', ''),
('ET', 'REV2012', 2, 'Applied Mathematics - II', NULL, '4', '1', '', '-', '-', '', ''),
('ET', 'REV2012', 2, 'Applied Physics - II', NULL, '3', '0.5', '', '-', '-', '', ''),
('ET', 'REV2012', 2, 'Basic Work Shop  Practice - II', NULL, '-', '2', '-', '-', '-', '-', ''),
('ET', 'REV2012', 2, 'Communication Skills', NULL, '2', '1', '', '-', '-', '', ''),
('ET', 'REV2012', 2, 'Engineering Drawing', NULL, '3', '2', '', '', '-', '', ''),
('ET', 'REV2012', 2, 'Structured Programming Approach', NULL, '4', '1', '', '', '-', '', ''),
('ET', 'REV2012', 3, 'Analog Electronics - I', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 3, 'Analog Electronics I Laboratory', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 3, 'Applied Mathematics - III', NULL, '4', '1', '', '-', '-', '', ''),
('ET', 'REV2012', 3, 'Circuits and Measurements Laboratory', NULL, '-', '1', '-', '-', '-', '-', ''),
('ET', 'REV2012', 3, 'Circuits and Transsmission Lines', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 3, 'Digital Electronics', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 3, 'Digital Electronics Laboratory', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 3, 'Electronics Instruments & Measurements', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 3, 'Object Oriented Programmig Methodology Lab.', NULL, '-', '2', '-', '', '-', '-', ''),
('ET', 'REV2012', 4, 'Analog Electronics - II', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 4, 'Analog Electronics II Lab.', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 4, 'Applied Mathematics - IV', NULL, '4', '1', '', '-', '-', '', ''),
('ET', 'REV2012', 4, 'Control Systems', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 4, 'Microprocessors & Peripherals', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 4, 'Microprocessors & Peripherals Lab.', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 4, 'Signals and Systems', NULL, '3', '1', '', '-', '-', '', ''),
('ET', 'REV2012', 4, 'Software Simulation Lab.', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 4, 'Wave Theory and Propagation', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 5, 'Analog Communication', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 5, 'Business Comm. And Ethics', NULL, '-', '2', '-', '-', '-', '-', ''),
('ET', 'REV2012', 5, 'Communication Engg. Lab I', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 5, 'Communication Engg. Lab II', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 5, 'Integrated Circuits', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 5, 'Microcontrollers and Applications', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 5, 'Microcontrollers and Applications Lab.', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 5, 'Mini Project', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 5, 'Random Signal Analysis', NULL, '4', '1', '', '-', '-', '', '-'),
('ET', 'REV2012', 5, 'RF Modeling and Antennas', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 6, 'Communication Engg. Lab III', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 6, 'Communication Engg. Lab IV', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 6, 'Computer Comm. Telecom Net.', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 6, 'Digital Communication', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 6, 'Discrete Time Signal Processing', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 6, 'Discrete Time Signal Processing Lab', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 6, 'Mini Project II', NULL, '-', '1', '-', '', '-', '-', ''),
('ET', 'REV2012', 6, 'Operating Systems', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 6, 'Television Engineering', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 6, 'VLSI Design', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 7, 'Advance Communication Engineering Lab II', NULL, '-', '1', '', '', '', '', ''),
('ET', 'REV2012', 7, 'Advance Communication Engineering Laboratory I', NULL, '-', '1', '-', '-', '', '-', ''),
('ET', 'REV2012', 7, 'Elective - II', NULL, '4', '1', '', '-', '', '', ''),
('ET', 'REV2012', 7, 'Image and Video Processing', NULL, '4', '1', '', '-', '', '', ''),
('ET', 'REV2012', 7, 'Microwave and Radar Engineering', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 7, 'Mobile Communication ', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 7, 'Optical Communication and Networks', NULL, '4', '-', '', '-', '-', '', '-'),
('ET', 'REV2012', 7, 'Project - I', NULL, '-', '3', '-', '-', '', '-', ''),
('ET', 'REV2012', 8, 'Elective III', NULL, '4', '1', '', '-', '', '', ''),
('ET', 'REV2012', 8, 'Internet and Voice Communication', NULL, '4', '1', '', '-', '', '', ''),
('ET', 'REV2012', 8, 'Project - II', NULL, '-', '6', '-', '-', '', '-', ''),
('ET', 'REV2012', 8, 'Satellite Communication and Networks', NULL, '4', '1', '', '-', '', '', ''),
('ET', 'REV2012', 8, 'Wireless Networks', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 1, 'Applied Chemistry - I', NULL, '3', '0.5', '', '-', '-', '', ''),
('IN', 'REV2012', 1, 'Applied Mathematics - I', NULL, '4', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 1, 'Applied Physics - I', NULL, '3', '0.5', '', '-', '-', '', ''),
('IN', 'REV2012', 1, 'Basic Electrical & Electronics Engg.', NULL, '4', '1', '', '', '-', '', ''),
('IN', 'REV2012', 1, 'Basic Work Shop & Practice - I', NULL, '-', '2', '-', '-', '-', '-', ''),
('IN', 'REV2012', 1, 'Engineering Mechanics', NULL, '5', '1', '', '', '-', '', ''),
('IN', 'REV2012', 1, 'Environmental Studies ( EVS )', NULL, '2', '-', '', '-', '-', '', '-'),
('IN', 'REV2012', 2, 'Applied Chemistry - II', NULL, '3', '0.5', '', '-', '-', '', ''),
('IN', 'REV2012', 2, 'Applied Mathematics - II', NULL, '4', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 2, 'Applied Physics - II', NULL, '3', '0.5', '', '-', '-', '', ''),
('IN', 'REV2012', 2, 'Basic Workshop Practice - II', NULL, '-', '2', '-', '-', '-', '-', ''),
('IN', 'REV2012', 2, 'Communication Skills', NULL, '2', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 2, 'Engineering Drawing', NULL, '3', '2', '', '', '-', '', ''),
('IN', 'REV2012', 2, 'Structured Programming Approach', NULL, '4', '1', '', '', '-', '', ''),
('IN', 'REV2012', 3, 'Analog Electronics', NULL, '4', '1', '', '', '-', '', ''),
('IN', 'REV2012', 3, 'Applied Maths- III', NULL, '4', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 3, 'Digital Electronics', NULL, '4', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 3, 'Electrical Network Analysis & Synthesis', NULL, '4', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 3, 'Object oriented programming and methodology', NULL, '-', '2', '', '', '-', '-', ''),
('IN', 'REV2012', 3, 'Transducers-I', NULL, '4', '1', '', '', '-', '', ''),
('IN', 'REV2012', 4, 'Application Software Practices', NULL, '-', '2', '-', '', '-', '-', ''),
('IN', 'REV2012', 4, 'Applied Maths-IV', NULL, '4', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 4, 'Communication System', NULL, '4', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 4, 'Electrical Technology and Instruments', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 4, 'Feedback Control System', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 4, 'Transducers-II', NULL, '4', '1', '', '', '-', '', ''),
('IN', 'REV2012', 5, 'Applications of Microcontroller -I', NULL, '4', '1', '', '', '-', '', ''),
('IN', 'REV2012', 5, 'Business Communication and Ethics', NULL, '-', '2', '-', '-', '-', '-', ''),
('IN', 'REV2012', 5, 'Control system components', NULL, '4', '1', '', '', '-', '', ''),
('IN', 'REV2012', 5, 'Control System Design', NULL, '4', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 5, 'Signal Conditioning & Circuit Design', NULL, '4', '2', '', '', '', '', ''),
('IN', 'REV2012', 5, 'Signals and Systems', NULL, '4', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 6, 'Analytical Instrumentation', NULL, '3', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 6, 'Applications of Microcontroller -II', NULL, '4', '1', '', '', '', '', ''),
('IN', 'REV2012', 6, 'Digital Signal Processing', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 6, 'Industrial Data Communication', NULL, '3', '1', '', '-', '-', '', ''),
('IN', 'REV2012', 6, 'Power Electronics and Drives', NULL, '4', '1', '', '', '-', '', ''),
('IN', 'REV2012', 6, 'Process Instrumentation Systems', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 7, 'Advanced Control Systems', NULL, '4', '1', '', '', '', '', ''),
('IN', 'REV2012', 7, 'Biomedical Instrumentation', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 7, 'Elective II', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 7, 'Industrial Process Control', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 7, 'Process Automation', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 7, 'Project - I', NULL, '-', '3', '-', '-', '', '-', ''),
('IN', 'REV2012', 8, 'Digital Control System', NULL, '4', '1', '', '', '', '', ''),
('IN', 'REV2012', 8, 'Elective III', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 8, 'Instrument and System Design', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 8, 'Instrumentation Project Documentation and Execution', NULL, '4', '1', '', '-', '', '', ''),
('IN', 'REV2012', 8, 'Project - II', NULL, '-', '6', '-', '-', '', '-', ''),
('IT', 'REV2012', 1, 'Applied Chemistry - I', NULL, '3', '0.5', '', '-', '-', '', ''),
('IT', 'REV2012', 1, 'Applied Mathematics - I', NULL, '4', '1', '', '-', '-', '', ''),
('IT', 'REV2012', 1, 'Applied Physics - I', NULL, '3', '0.5', '', '-', '-', '', ''),
('IT', 'REV2012', 1, 'Basic Electrical & Electronics Engg.', NULL, '4', '1', '', '', '-', '', ''),
('IT', 'REV2012', 1, 'Basic Work Shop & Practice- I', NULL, '-', '2', '-', '-', '-', '-', ''),
('IT', 'REV2012', 1, 'Engineering Mechanics', NULL, '5', '1', '', '', '-', '', ''),
('IT', 'REV2012', 1, 'Environmental Studies ( EVS )', NULL, '2', '-', '', '-', '-', '', '-'),
('IT', 'REV2012', 2, 'Applied Chemistry - II', NULL, '3', '0.5', '', '-', '-', '', ''),
('IT', 'REV2012', 2, 'Applied Mathematics - II', NULL, '4', '1', '', '-', '-', '', ''),
('IT', 'REV2012', 2, 'Applied Physics - II', NULL, '3', '0.5', '', '-', '-', '', ''),
('IT', 'REV2012', 2, 'Basic Work Shop  Practice - II', NULL, '-', '2', '-', '-', '-', '-', ''),
('IT', 'REV2012', 2, 'Communication Skills', NULL, '2', '1', '', '-', '-', '', ''),
('IT', 'REV2012', 2, 'Engineering Drawing', NULL, '3', '2', '', '', '-', '', ''),
('IT', 'REV2012', 2, 'Structured Programming Approach', NULL, '4', '1', '', '', '-', '', ''),
('IT', 'REV2012', 3, 'Analog & Digital Circuits', NULL, '4', '1', '', '', '-', '', ''),
('IT', 'REV2012', 3, 'Applied Mathematics - III', NULL, '4', '1', '', '-', '-', '', ''),
('IT', 'REV2012', 3, 'Data Structure & Algorithm Analysis', NULL, '4', '1', '', '', '-', '', ''),
('IT', 'REV2012', 3, 'Database Management System', NULL, '3', '1', '', '', '-', '', ''),
('IT', 'REV2012', 3, 'Object Oriented Programming Methodology', NULL, '4', '1', '', '', '-', '', ''),
('IT', 'REV2012', 3, 'Principles of Analog & Digital Communication', NULL, '3', '1', '', '-', '', '', ''),
('IT', 'REV2012', 4, 'Applied Mathematics - IV', NULL, '4', '1', '', '-', '-', '', ''),
('IT', 'REV2012', 4, 'Automata Theory', NULL, '3', '1', '', '-', '-', '', ''),
('IT', 'REV2012', 4, 'Computer Networks', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 4, 'Computer Organization & Architecture', NULL, '3', '1', '', '-', '', '', ''),
('IT', 'REV2012', 4, 'Information Theory & Coding', NULL, '4', '1', '', '-', '-', '', ''),
('IT', 'REV2012', 4, 'Web Programming', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 5, 'Advanced Database Management Systems', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 5, 'Business Communication and Ethics', NULL, '-', '2', '-', '-', '', '-', ''),
('IT', 'REV2012', 5, 'Computer Graphics & Virtual Reality', NULL, '4', '1', '', '', '-', '', ''),
('IT', 'REV2012', 5, 'Microcontroller & Embedded Systems', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 5, 'Open Source Technologies', NULL, '3', '1', '', '', '-', '', ''),
('IT', 'REV2012', 5, 'Operating Systems', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 6, 'Advance Internet Technology', NULL, '4', '1', '', '', '-', '', ''),
('IT', 'REV2012', 6, 'Data Mining & Business Intelligence', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 6, 'Distributed Systems', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 6, 'Software Engineering', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 6, 'System & Web Security', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 7, 'Cloud Computing ', NULL, '3', '1', '', '-', '', '', ''),
('IT', 'REV2012', 7, 'Elective II', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 7, 'Intelligent System', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 7, 'Project - I', NULL, '-', '3', '-', '-', '', '-', ''),
('IT', 'REV2012', 7, 'Software Project Management', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 7, 'Wireless Technology', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 8, 'Big Data Analytics', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 8, 'Computer Simulation and Modeling', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 8, 'Elective III', NULL, '4', '1', '', '-', '', '', ''),
('IT', 'REV2012', 8, 'Project - II', NULL, '-', '6', '-', '-', '', '-', ''),
('IT', 'REV2012', 8, 'Storage Network Management and Retrieval', NULL, '4', '1', '', '-', '', '', '');

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
  `Roll No.` varchar(8) NOT NULL,
  `photo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`Seat No.`, `Name`, `Branch`, `Year`, `Sem`, `Roll No.`, `photo`) VALUES
(1, 'SAWANT MITESH MILIND MANALI', 'Computer', 'SE', 'IV', '16CE1088', 'images\\16CE1088.jpg'),
(2, 'surname name father mother', 'Computer', 'SE', 'IV', '16CE1077', 'images\\16CE1077.jpg'),
(3, 'surname name father mother', 'computer', 'SE', 'IV', '16CE1056', 'images\\16CE1056.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dummy_course_table_rev`
--

CREATE TABLE `dummy_course_table_rev` (
  `branch` varchar(30) NOT NULL,
  `pattern` varchar(30) NOT NULL,
  `sem` int(30) NOT NULL,
  `subject` varchar(350) NOT NULL,
  `Sub_code` varchar(30) DEFAULT NULL,
  `coursecredits_th` varchar(10) NOT NULL,
  `coursecredits_tw` varchar(10) NOT NULL,
  `grade_ese` varchar(1) NOT NULL,
  `grade_op` varchar(1) NOT NULL,
  `grade_or` varchar(1) NOT NULL,
  `grade_ia` varchar(1) NOT NULL,
  `grade_tw` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy_course_table_rev`
--

INSERT INTO `dummy_course_table_rev` (`branch`, `pattern`, `sem`, `subject`, `Sub_code`, `coursecredits_th`, `coursecredits_tw`, `grade_ese`, `grade_op`, `grade_or`, `grade_ia`, `grade_tw`) VALUES
('CE', 'REV2012', 1, 'Applied Chemistry - I', '100', '3', '0.5', '', '-', '-', '', ''),
('CE', 'REV2012', 1, 'Applied Mathematics - I', '101', '4', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 1, 'Applied Physics - I', '102', '3', '0.5', '', '-', '-', '', ''),
('CE', 'REV2012', 1, 'Basic Electrical & Electronics Engg.', '103', '4', '1', '', '', '', '', ''),
('CE', 'REV2012', 1, 'Basic Work Shop Practice I', '104', '-', '2', '-', '-', '-', '-', ''),
('CE', 'REV2012', 1, 'Engineering Mechanics', '105', '5', '1', '', '', '-', '', ''),
('CE', 'REV2012', 1, 'Environmental Studies (EVS)', '106', '2', '-', '', '-', '-', '', '-'),
('CE', 'REV2012', 2, 'Applied Chemistry - II', '200', '3', '0.5', '', '-', '-', '', ''),
('CE', 'REV2012', 2, 'Applied Mathematics - II', '201', '4', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 2, 'Applied Physics - II', '202', '3', '0.5', '', '-', '-', '', ''),
('CE', 'REV2012', 2, 'Basic Work Shop Practice II', '203', '-', '2', '-', '-', '-', '-', ''),
('CE', 'REV2012', 2, 'Communication Skills', '204', '2', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 2, 'Engineering Drawing', '205', '3', '2', '', '', '-', '', ''),
('CE', 'REV2012', 2, 'Structured Programming Approach', '206', '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 3, 'Applied Mathematics - III', '300', '4', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 3, 'Data Structures', '301', '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 3, 'Digital Logic Design and Analysis', '302', '3', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 3, 'Discrete Structures', '303', '4', '-', '', '-', '-', '', '-'),
('CE', 'REV2012', 3, 'Electronic Circuits & Communication Fundamental', '304', '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 3, 'Object Oriented Programming Methodology', '305', '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 4, 'Analysis of Algorithms', '400', '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 4, 'Applied Mathematics - IV', '401', '4', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 4, 'Computer Graphics', '402', '3', '1', '', '', '-', '', ''),
('CE', 'REV2012', 4, 'Computer Organization & Architecture', '403', '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 4, 'Database Management System', '404', '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 4, 'Theoretial Computer Science', '405', '4', '-', '', '-', '-', '', '-'),
('CE', 'REV2012', 5, 'Business Communication & Ethics', '500', '-', '2', '-', '-', '-', '-', ''),
('CE', 'REV2012', 5, 'Computer Networks', '501', '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 5, 'Microprocessor', '502', '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 5, 'Operating Systems', '503', '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 5, 'Structured & Object Oriented Analysis & Design', '504', '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 5, 'Web Technologies Laboratory', '505', '-', '2', '-', '-', '', '-', ''),
('CE', 'REV2012', 6, 'Distributed Databases', '600', '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 6, 'Mobile Communication and Computing', '601', '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 6, 'Network Programming Laboratory', '602', '-', '2', '-', '-', '', '-', ''),
('CE', 'REV2012', 6, 'Project Management', '603', '-', '2', '-', '-', '-', '-', ''),
('CE', 'REV2012', 6, 'Software Engineering', '604', '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 6, 'System Programming & Compiler Construction ', '605', '4', '1', '', '', '-', '', ''),
('CE', 'REV2012', 7, 'Artificial Intelligence', '700', '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 7, 'Cryptography and System Security', '701', '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 7, 'Digital Signal Processing', '702', '4', '1', '', '-', '-', '', ''),
('CE', 'REV2012', 7, 'Elective - II', '703', '4', '1', '', '-', '', '', ''),
('CE', 'REV2012', 7, 'Network Threats and Attack Laboratory', '704', '-', '2', '', '-', '', '-', ''),
('CE', 'REV2012', 7, 'Project - I', '705', '-', '3', '-', '-', '', '-', ''),
('CE', 'REV2012', 8, 'Cloud Computing Laboratory', '800', '-', '1', '-', '-', '-', '-', '-'),
('CE', 'REV2012', 8, 'Data Warehouse and Mining', '801', '4', '1', '-', '-', '-', '-', '-'),
('CE', 'REV2012', 8, 'Elective - III', '802', '4', '1', '-', '-', '-', '-', '-'),
('CE', 'REV2012', 8, 'Human Machine Interaction', '803', '4', '1', '-', '-', '-', '-', '-'),
('CE', 'REV2012', 8, 'Parallel and Distributed Systems', '804', '4', '1', '-', '-', '-', '-', '-'),
('CE', 'REV2012', 8, 'Project - II', '805', '-', '6', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `dummy_theory_marks`
--

CREATE TABLE `dummy_theory_marks` (
  `branch` varchar(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `seat_no` varchar(30) NOT NULL,
  `unique_code` varchar(30) NOT NULL,
  `sub_code` varchar(30) NOT NULL,
  `th_marks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy_theory_marks`
--

INSERT INTO `dummy_theory_marks` (`branch`, `sem`, `seat_no`, `unique_code`, `sub_code`, `th_marks`) VALUES
('CE', '4', '4001', '40000000', '400', '45'),
('CE', '4', '4001', '40000000', '400', '43'),
('CE', '4', '4001', '40000000', '400', '43'),
('CE', '4', '4001', '40000000', '400', '368429263223');

-- --------------------------------------------------------

--
-- Table structure for table `final`
--

CREATE TABLE `final` (
  `Roll_no` varchar(10) NOT NULL,
  `seat` varchar(30) DEFAULT NULL,
  `subcode` varchar(30) DEFAULT NULL,
  `ese` varchar(30) DEFAULT NULL,
  `op` varchar(30) DEFAULT NULL,
  `oral` varchar(30) DEFAULT NULL,
  `ia` varchar(30) DEFAULT NULL,
  `tw` varchar(30) DEFAULT NULL,
  `o_ese` int(30) NOT NULL,
  `o_tw` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final`
--

INSERT INTO `final` (`Roll_no`, `seat`, `subcode`, `ese`, `op`, `oral`, `ia`, `tw`, `o_ese`, `o_tw`) VALUES
('15CE7033', '4000', '400', '50', '20', '10', '15', '20', 0, 0),
('15CE7033', '4000', '401', '50', '20', '10', '15', '20', 10, 10),
('15CE7033', '4000', '402', '50', '20', '10', '15', '20', 10, 10),
('15CE7033', '4000', '403', '50', '20', '10', '15', '20', 10, 10),
('15CE7033', '4000', '404', '50', '20', '10', '15', '20', 10, 10),
('15CE7033', '4000', '405', '50', '20', '10', '15', '20', 10, 10),
('15CE1044', '4001', '400', '50', '20', '10', '20', '10', 0, 0),
('15CE1044', '4001', '401', '40', '-', '-', '15', '20', 0, 0),
('15CE1044', '4001', '402', '40', '20', '-', '15', '20', 0, 0),
('15CE1044', '4001', '403', '40', '-', '20', '15', '20', 0, 0),
('15CE1044', '4001', '404', '40', '20', '-', '15', '20', 0, 0),
('15CE1044', '4001', '405', '40', '-', '-', '15', '-', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `link_dummy_theory_marks`
--

CREATE TABLE `link_dummy_theory_marks` (
  `branch` varchar(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `seat_no` varchar(30) NOT NULL,
  `unique_code` varchar(30) NOT NULL,
  `sub_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link_dummy_theory_marks`
--

INSERT INTO `link_dummy_theory_marks` (`branch`, `sem`, `seat_no`, `unique_code`, `sub_code`) VALUES
('CE', '4', '4001', '40000000', '400'),
('CE', '4', '4001', '40000001', '401'),
('CE', '4', '4001', '40000002', '402'),
('CE', '4', '4001', '40000003', '403'),
('CE', '4', '4001', '40000004', '404'),
('CE', '4', '4001', '40000005', '405');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `dept` varchar(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `ccode` varchar(30) NOT NULL,
  `ucode` int(30) NOT NULL,
  `seat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`dept`, `sem`, `ccode`, `ucode`, `seat`) VALUES
('CE', '4', 'CPC312', 1, '5311'),
('CE', '4', 'REV2012', 2, '4411'),
('CE', '4', 'CPC312', 3, '3444'),
('CE', '4', 'CPC312', 4, '4333'),
('CE', '4', 'REV2012', 5, '2211'),
('CE', '4', 'CPC312', 6, '2332');

-- --------------------------------------------------------

--
-- Table structure for table `sc_400`
--

CREATE TABLE `sc_400` (
  `Roll_no` varchar(30) DEFAULT NULL,
  `full_name` varchar(30) DEFAULT NULL,
  `ESE` varchar(30) DEFAULT NULL,
  `OP` varchar(30) DEFAULT NULL,
  `ORAL` varchar(30) DEFAULT NULL,
  `IA` varchar(30) DEFAULT NULL,
  `TW` varchar(30) DEFAULT NULL,
  `OVERALL_ESE` varchar(30) DEFAULT NULL,
  `OVERALL_TW` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_400`
--

INSERT INTO `sc_400` (`Roll_no`, `full_name`, `ESE`, `OP`, `ORAL`, `IA`, `TW`, `OVERALL_ESE`, `OVERALL_TW`) VALUES
('15CE1044', 'Rohit Patil', '', '', '', '46', '', '', ''),
('15CE7033', 'BHUJBAL ASHUTOSH SANJEEV', '', '', '', '20', '', '', ''),
('15CE1078', 'Dheeraj Mishra', '', '', '', '34', '', '', ''),
('15CE7012', 'Shubham Sharma', '', '', '', '30', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `Seat_No` varchar(50) NOT NULL,
  `Roll_No` varchar(50) NOT NULL,
  `Branch` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Pattern` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`Seat_No`, `Roll_No`, `Branch`, `Semester`, `Pattern`) VALUES
('2211', '15CE7033', 'CE', '2', 'REV2012'),
('2211', '15CE7033', 'CE', '4', 'REV2012'),
('2211', '15CE7033', 'CE', '4', 'REV2012');

-- --------------------------------------------------------

--
-- Table structure for table `student_cgpi`
--

CREATE TABLE `student_cgpi` (
  `seat` varchar(30) DEFAULT NULL,
  `Roll_No` varchar(30) NOT NULL,
  `exam_yr` varchar(30) DEFAULT NULL,
  `cgpi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `Roll_no` varchar(30) NOT NULL,
  `Branch` varchar(30) NOT NULL,
  `Fullname` varchar(30) DEFAULT NULL,
  `Pattern` varchar(30) DEFAULT NULL,
  `sem_reg` varchar(30) DEFAULT NULL,
  `shift` varchar(30) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_details_copy`
--

CREATE TABLE `student_details_copy` (
  `Roll_no` varchar(30) DEFAULT NULL,
  `Branch` varchar(30) DEFAULT NULL,
  `Fullname` varchar(30) DEFAULT NULL,
  `Pattern` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details_copy`
--

INSERT INTO `student_details_copy` (`Roll_no`, `Branch`, `Fullname`, `Pattern`) VALUES
('00CE166', 'CE', 'SUDRIK PRAMOD RAMESHRAO', '0'),
('00CE166', 'CE', 'SUDRIK PRAMOD RAMESHRAO', ''),
('00CE166', 'CE', 'SUDRIK PRAMOD RAMESHRAO', ''),
('00CE166', 'CE', 'SUDRIK PRAMOD RAMESHRAO', ''),
('00CE166', 'CE', 'SUDRIK PRAMOD RAMESHRAO', ''),
('02CE1005', 'CE', 'BHERE TUSHAR  KANHU', ''),
('02CE1010', 'CE', 'DIXIT ABHIJIT BRAHMKUMAR', ''),
('02CE1010', 'CE', 'DIXIT ABHIJIT BRAHMKUMAR', ''),
('02CE1010', 'CE', 'DIXIT ABHIJIT BRAHMKUMAR', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_final_marksheet`
--

CREATE TABLE `student_final_marksheet` (
  `seat` varchar(30) NOT NULL,
  `Roll_no` varchar(30) DEFAULT NULL,
  `Sem` varchar(30) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `full_name` varchar(30) DEFAULT NULL,
  `pattern` varchar(30) DEFAULT NULL,
  `exam_yr` varchar(30) DEFAULT NULL,
  `Sub_code` varchar(30) DEFAULT NULL,
  `course_credits_th` varchar(30) DEFAULT NULL,
  `course_credits_tw` varchar(30) DEFAULT NULL,
  `grade_ese` varchar(30) DEFAULT NULL,
  `grade_oralprac` varchar(30) DEFAULT NULL,
  `grade_oral` varchar(30) DEFAULT NULL,
  `grade_ia` varchar(30) DEFAULT NULL,
  `grade_tw` varchar(30) DEFAULT NULL,
  `overall_ese` varchar(30) DEFAULT NULL,
  `overall_tw` varchar(30) DEFAULT NULL,
  `creditsearned_th` varchar(30) DEFAULT NULL,
  `creditsearned_tw` varchar(30) DEFAULT NULL,
  `gradepoints_th` varchar(30) DEFAULT NULL,
  `gradepoints_tw` varchar(30) DEFAULT NULL,
  `cxg_th` varchar(30) DEFAULT NULL,
  `cxg_tw` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_final_marksheet`
--

INSERT INTO `student_final_marksheet` (`seat`, `Roll_no`, `Sem`, `branch`, `full_name`, `pattern`, `exam_yr`, `Sub_code`, `course_credits_th`, `course_credits_tw`, `grade_ese`, `grade_oralprac`, `grade_oral`, `grade_ia`, `grade_tw`, `overall_ese`, `overall_tw`, `creditsearned_th`, `creditsearned_tw`, `gradepoints_th`, `gradepoints_tw`, `cxg_th`, `cxg_tw`) VALUES
('1072', '00EE128', '5', 'ET', 'THANIYAT ASHISH MURALI', '', 'NOV\'09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1103', '01IN010', '3', 'IN', 'GAVANDI TEJAS SUHAS', '', 'NOV\'09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1120', '01IN021', '5', 'IN', 'NINGAVALE ROHIT ANANT', '', 'NOV\'09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1122', '02CE1010', '5', 'CE', 'DIXIT ABHIJIT BRAHMKUMAR', '', 'MAY-11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1159', '00IT162', '5', 'IT', 'SAWANT TUSHAR ANIL', '', 'NOV\'09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2000', '15CE7033', '2', 'CE', 'BHUJBAL ASHUTOSH SANJEEV', '', 'MAY-16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('26', '00CE224', '6', 'CE', 'KHOBRAGADE NITIN ARUN', '', 'NOV\'09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('4000', '15CE1044', '4', 'CE', 'Rohit Patil', 'REV2012', 'MAY17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('4001', '15CE7033', '4', 'CE', 'BHUJBAL ASHUTOSH SANJEEV', 'REV2012', 'MAY-17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('4002', '15CE1078', '4', 'CE', 'Dheeraj Mishra', 'REV2012', 'MAY-17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('4004', '15CE7012', '4', 'CE', 'Shubham Sharma', 'REV2012', 'MAY-17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('47', NULL, NULL, 'CE', 'SUDRIK PRAMOD RAMESHRAO', '', 'NOV\'09', '123456', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('4927', '01ET126', '7', 'EX', 'SURI ASEEM VINOD', '', 'NOV-15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('552', NULL, NULL, 'CE', 'MHATRE MAYURESH MADHUKAR', '', 'MAY-15', '123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('6', '02CE1005', '6', 'CE', 'BHERE TUSHAR  KANHU', '', 'NOV\'09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('6057', '01EE024', '5', 'ET', 'KANINDE SATYASHIL GOVIND', '', 'MAY-10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('6506', NULL, NULL, 'IT', 'RANAWARE SATYAJIT SHIVAJIRAO', '', 'NOV-13', '123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('8062', '00CE194', '6', 'CE', 'MALGAONKAR JAYESH PANDURANG', '', 'MAY-10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('8067', '00CE166', '6', 'CE', 'SUDRIK PRAMOD RAMESHRAO', '', 'MAY-10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `seat` varchar(30) DEFAULT NULL,
  `Roll_No` varchar(30) NOT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `pattern` varchar(30) DEFAULT NULL,
  `exam_yr` varchar(30) DEFAULT NULL,
  `sem` varchar(30) DEFAULT NULL,
  `shift` varchar(30) DEFAULT NULL,
  `sub_code` varchar(30) DEFAULT NULL,
  `tw_obtained` varchar(30) DEFAULT NULL,
  `or_obtained` varchar(30) DEFAULT NULL,
  `pr_obtained` varchar(30) DEFAULT NULL,
  `op_obtained` varchar(30) DEFAULT NULL,
  `ia_obtained` varchar(30) DEFAULT NULL,
  `th_obtained` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_marks_existing`
--

CREATE TABLE `student_marks_existing` (
  `Seat` varchar(30) NOT NULL,
  `Roll_No` varchar(30) NOT NULL,
  `Branch` varchar(30) DEFAULT NULL,
  `Pattern` varchar(30) NOT NULL,
  `exam_yr` varchar(30) NOT NULL,
  `sem` varchar(30) DEFAULT NULL,
  `shift` varchar(30) DEFAULT NULL,
  `Sub_code1` varchar(30) DEFAULT NULL,
  `sub1_twobtained` varchar(30) DEFAULT NULL,
  `sub1_thobtained` varchar(30) DEFAULT NULL,
  `sub1_orobtained` varchar(30) DEFAULT NULL,
  `sub1_probtained` varchar(30) DEFAULT NULL,
  `sub1_opobtained` varchar(30) DEFAULT NULL,
  `sub1_iaobtained` varchar(30) DEFAULT NULL,
  `sub_code2` varchar(30) DEFAULT NULL,
  `sub2_twobtained` varchar(30) DEFAULT NULL,
  `sub2_thobtained` varchar(30) DEFAULT NULL,
  `sub2_orobtained` varchar(30) DEFAULT NULL,
  `sub2_probtained` varchar(30) DEFAULT NULL,
  `sub2_opobtained` varchar(30) DEFAULT NULL,
  `sub2_iaobtained` varchar(30) DEFAULT NULL,
  `sub_code3` varchar(30) DEFAULT NULL,
  `sub3_twobtained` varchar(30) DEFAULT NULL,
  `sub3_thobtained` varchar(30) DEFAULT NULL,
  `sub3_orobtained` varchar(30) DEFAULT NULL,
  `sub3_probtained` varchar(30) DEFAULT NULL,
  `sub3_opobtained` varchar(30) DEFAULT NULL,
  `sub3_iaobtained` varchar(30) DEFAULT NULL,
  `sub_code4` varchar(30) DEFAULT NULL,
  `sub4_twobtained` varchar(30) DEFAULT NULL,
  `sub4_thobtained` varchar(30) DEFAULT NULL,
  `sub4_orobtained` varchar(30) DEFAULT NULL,
  `sub4_probtained` varchar(30) DEFAULT NULL,
  `sub4_opobtained` varchar(30) DEFAULT NULL,
  `sub4_iaobtained` varchar(30) DEFAULT NULL,
  `Sub_code5` varchar(30) DEFAULT NULL,
  `sub5_twobtained` varchar(30) DEFAULT NULL,
  `sub5_thobtained` varchar(30) DEFAULT NULL,
  `sub5_orobtained` varchar(30) DEFAULT NULL,
  `sub5_probtained` varchar(30) DEFAULT NULL,
  `sub5_opobtained` varchar(30) DEFAULT NULL,
  `sub5_iaobtained` varchar(30) DEFAULT NULL,
  `Sub_code6` varchar(30) DEFAULT NULL,
  `sub6_twobtained` varchar(30) DEFAULT NULL,
  `sub6_thobtained` varchar(30) DEFAULT NULL,
  `sub6_orobtained` varchar(30) DEFAULT NULL,
  `sub6_probtained` varchar(30) DEFAULT NULL,
  `sub6_opobtained` varchar(30) DEFAULT NULL,
  `sub6_iaobtained` varchar(30) DEFAULT NULL,
  `Sub_code7` varchar(30) DEFAULT NULL,
  `sub7_twobtained` varchar(30) DEFAULT NULL,
  `sub7_thobtained` varchar(30) DEFAULT NULL,
  `sub7_orobtained` varchar(30) DEFAULT NULL,
  `sub7_probtained` varchar(30) DEFAULT NULL,
  `sub7_opobtained` varchar(30) DEFAULT NULL,
  `sub7_iaobtained` varchar(30) DEFAULT NULL,
  `Sub_code8` varchar(30) DEFAULT NULL,
  `sub8_twobtained` varchar(30) DEFAULT NULL,
  `sub8_thobtained` varchar(30) DEFAULT NULL,
  `sub8_orobtained` varchar(30) DEFAULT NULL,
  `sub8_probtained` varchar(30) DEFAULT NULL,
  `sub8_opobtained` varchar(30) DEFAULT NULL,
  `sub8_iaobtained` varchar(30) DEFAULT NULL,
  `Sub_code9` varchar(30) DEFAULT NULL,
  `sub9_twobtained` varchar(30) DEFAULT NULL,
  `sub9_thobtained` varchar(30) DEFAULT NULL,
  `sub9_orobtained` varchar(30) DEFAULT NULL,
  `sub9_probtained` varchar(30) DEFAULT NULL,
  `sub9_opobtained` varchar(30) DEFAULT NULL,
  `sub9_iaobtained` varchar(30) DEFAULT NULL,
  `grand_total` varchar(30) DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_theory_mask`
--

CREATE TABLE `student_theory_mask` (
  `code` varchar(30) NOT NULL,
  `marks` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_theory_unmask`
--

CREATE TABLE `student_theory_unmask` (
  `code` varchar(30) NOT NULL,
  `seat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `th_mks`
--

CREATE TABLE `th_mks` (
  `dept` varchar(30) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `ccode` varchar(30) NOT NULL,
  `ucode` int(30) NOT NULL,
  `marks` varchar(30) NOT NULL,
  `seat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `th_mks`
--

INSERT INTO `th_mks` (`dept`, `sem`, `ccode`, `ucode`, `marks`, `seat`) VALUES
('CE', '4', 'CPC312', 1, '32', '5311'),
('CE', '4', 'REV2012', 2, '65', '4411'),
('CE', '4', 'CPC312', 3, '45', '3444'),
('CE', '4', 'CPC312', 4, '56', '4333'),
('CE', '4', 'REV2012', 5, '32', '2211'),
('CE', '4', 'CPC312', 6, '35', '2332');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allocate_seat`
--
ALTER TABLE `allocate_seat`
  ADD PRIMARY KEY (`Roll_no`);

--
-- Indexes for table `course_table`
--
ALTER TABLE `course_table`
  ADD PRIMARY KEY (`sub_code`);

--
-- Indexes for table `course_table_cbgs`
--
ALTER TABLE `course_table_cbgs`
  ADD PRIMARY KEY (`Branch`);

--
-- Indexes for table `course_table_rev`
--
ALTER TABLE `course_table_rev`
  ADD UNIQUE KEY `branch` (`branch`,`pattern`,`sem`,`subject`);

--
-- Indexes for table `link_dummy_theory_marks`
--
ALTER TABLE `link_dummy_theory_marks`
  ADD PRIMARY KEY (`unique_code`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`ucode`);

--
-- Indexes for table `student_cgpi`
--
ALTER TABLE `student_cgpi`
  ADD PRIMARY KEY (`Roll_No`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`Roll_no`,`Branch`);

--
-- Indexes for table `student_final_marksheet`
--
ALTER TABLE `student_final_marksheet`
  ADD PRIMARY KEY (`seat`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`Roll_No`);

--
-- Indexes for table `student_marks_existing`
--
ALTER TABLE `student_marks_existing`
  ADD PRIMARY KEY (`Roll_No`);

--
-- Indexes for table `student_theory_mask`
--
ALTER TABLE `student_theory_mask`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `student_theory_unmask`
--
ALTER TABLE `student_theory_unmask`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `th_mks`
--
ALTER TABLE `th_mks`
  ADD PRIMARY KEY (`ucode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `ucode` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `th_mks`
--
ALTER TABLE `th_mks`
  MODIFY `ucode` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
