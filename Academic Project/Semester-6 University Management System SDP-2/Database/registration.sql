-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 10:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `3`
--

CREATE TABLE `3` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `3`
--

INSERT INTO `3` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 1, 80, 'Ali Azgor ', 'Fall, 2021-22'),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `3addedcourse`
--

CREATE TABLE `3addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `4`
--

CREATE TABLE `4` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `4`
--

INSERT INTO `4` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `4addedcourse`
--

CREATE TABLE `4addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `5`
--

CREATE TABLE `5` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `5`
--

INSERT INTO `5` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `5addedcourse`
--

CREATE TABLE `5addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `6`
--

CREATE TABLE `6` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `6`
--

INSERT INTO `6` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `6addedcourse`
--

CREATE TABLE `6addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `7`
--

CREATE TABLE `7` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `7`
--

INSERT INTO `7` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `7addedcourse`
--

CREATE TABLE `7addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `8`
--

CREATE TABLE `8` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `8`
--

INSERT INTO `8` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `8addedcourse`
--

CREATE TABLE `8addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `9`
--

CREATE TABLE `9` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `9`
--

INSERT INTO `9` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `9addedcourse`
--

CREATE TABLE `9addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `10`
--

CREATE TABLE `10` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `10`
--

INSERT INTO `10` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `10addedcourse`
--

CREATE TABLE `10addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `11`
--

CREATE TABLE `11` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `11`
--

INSERT INTO `11` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `11addedcourse`
--

CREATE TABLE `11addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `12`
--

CREATE TABLE `12` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `12`
--

INSERT INTO `12` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `12addedcourse`
--

CREATE TABLE `12addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `13`
--

CREATE TABLE `13` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `13`
--

INSERT INTO `13` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `13addedcourse`
--

CREATE TABLE `13addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `14`
--

CREATE TABLE `14` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `14`
--

INSERT INTO `14` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `14addedcourse`
--

CREATE TABLE `14addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `15`
--

CREATE TABLE `15` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `15`
--

INSERT INTO `15` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `15addedcourse`
--

CREATE TABLE `15addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `16`
--

CREATE TABLE `16` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `16`
--

INSERT INTO `16` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `16addedcourse`
--

CREATE TABLE `16addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `17`
--

CREATE TABLE `17` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `17`
--

INSERT INTO `17` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `17addedcourse`
--

CREATE TABLE `17addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `18`
--

CREATE TABLE `18` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `18`
--

INSERT INTO `18` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `18addedcourse`
--

CREATE TABLE `18addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `19`
--

CREATE TABLE `19` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `19`
--

INSERT INTO `19` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `19addedcourse`
--

CREATE TABLE `19addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `22`
--

CREATE TABLE `22` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `22`
--

INSERT INTO `22` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `22addedcourse`
--

CREATE TABLE `22addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `23`
--

CREATE TABLE `23` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `23`
--

INSERT INTO `23` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `23addedcourse`
--

CREATE TABLE `23addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `24`
--

CREATE TABLE `24` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `24`
--

INSERT INTO `24` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `24addedcourse`
--

CREATE TABLE `24addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `25`
--

CREATE TABLE `25` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `25`
--

INSERT INTO `25` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `25addedcourse`
--

CREATE TABLE `25addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `26`
--

CREATE TABLE `26` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `26`
--

INSERT INTO `26` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `26addedcourse`
--

CREATE TABLE `26addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `27`
--

CREATE TABLE `27` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `27`
--

INSERT INTO `27` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `27addedcourse`
--

CREATE TABLE `27addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `28`
--

CREATE TABLE `28` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `28`
--

INSERT INTO `28` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `28addedcourse`
--

CREATE TABLE `28addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `29`
--

CREATE TABLE `29` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `29`
--

INSERT INTO `29` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `29addedcourse`
--

CREATE TABLE `29addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `30`
--

CREATE TABLE `30` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `30`
--

INSERT INTO `30` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `30addedcourse`
--

CREATE TABLE `30addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `31`
--

CREATE TABLE `31` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `31`
--

INSERT INTO `31` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `31addedcourse`
--

CREATE TABLE `31addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `32`
--

CREATE TABLE `32` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `32`
--

INSERT INTO `32` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `32addedcourse`
--

CREATE TABLE `32addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `33`
--

CREATE TABLE `33` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `33`
--

INSERT INTO `33` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `33addedcourse`
--

CREATE TABLE `33addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `34`
--

CREATE TABLE `34` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `34`
--

INSERT INTO `34` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `34addedcourse`
--

CREATE TABLE `34addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `35`
--

CREATE TABLE `35` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `35`
--

INSERT INTO `35` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `35addedcourse`
--

CREATE TABLE `35addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `36`
--

CREATE TABLE `36` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `36`
--

INSERT INTO `36` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `36addedcourse`
--

CREATE TABLE `36addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `37`
--

CREATE TABLE `37` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `37`
--

INSERT INTO `37` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `37addedcourse`
--

CREATE TABLE `37addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `38`
--

CREATE TABLE `38` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `38`
--

INSERT INTO `38` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `38addedcourse`
--

CREATE TABLE `38addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `39`
--

CREATE TABLE `39` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `39`
--

INSERT INTO `39` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `39addedcourse`
--

CREATE TABLE `39addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `40`
--

CREATE TABLE `40` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `40`
--

INSERT INTO `40` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `40addedcourse`
--

CREATE TABLE `40addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `41`
--

CREATE TABLE `41` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `41`
--

INSERT INTO `41` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 3, 0, 0, NULL, NULL),
('Structured Programming Language Lab', 'CSE 202', '', 1.5, 0, 0, NULL, NULL),
('Electrical Circuits I', 'EEE 101', '', 3, 0, 0, NULL, NULL),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3, 0, 0, NULL, NULL),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5, 0, 0, NULL, NULL),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3, 0, 0, NULL, NULL),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3, 0, 0, NULL, NULL),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5, 0, 0, NULL, NULL),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3, 0, 0, NULL, NULL),
('Digital Electronics', 'EEE 303', 'EEE 201', 3, 0, 0, NULL, NULL),
('Power System I', 'EEE 305', 'EEE 209', 3, 0, 0, NULL, NULL),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5, 0, 0, NULL, NULL),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5, 0, 0, NULL, NULL),
('English Language I', 'ENG 101', '', 3, 0, 0, NULL, NULL),
('English Language II', 'ENG 102', 'ENG 101', 3, 0, 0, NULL, NULL),
('Bangladesh Studies', 'HUM 101', '', 3, 0, 0, NULL, NULL),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3, 0, 0, NULL, NULL),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3, 0, 0, NULL, NULL),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3, 0, 0, NULL, NULL),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3, 0, 0, NULL, NULL),
('Physics II Lab', 'PHY 104 ', '', 1.5, 0, 0, NULL, NULL),
('Statistics and Probability Distribution ', 'STA 201', '', 3, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `41addedcourse`
--

CREATE TABLE `41addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `49`
--

CREATE TABLE `49` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `49`
--

INSERT INTO `49` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `49addedcourse`
--

CREATE TABLE `49addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `50`
--

CREATE TABLE `50` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `50`
--

INSERT INTO `50` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `50addedcourse`
--

CREATE TABLE `50addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `51`
--

CREATE TABLE `51` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `51`
--

INSERT INTO `51` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `51addedcourse`
--

CREATE TABLE `51addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `52`
--

CREATE TABLE `52` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `52`
--

INSERT INTO `52` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `52addedcourse`
--

CREATE TABLE `52addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `53`
--

CREATE TABLE `53` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL,
  `STATUS` int(11) NOT NULL,
  `RESULT` double DEFAULT NULL,
  `TEACHERSNAME` varchar(100) DEFAULT NULL,
  `SNAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `53`
--

INSERT INTO `53` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`, `STATUS`, `RESULT`, `TEACHERSNAME`, `SNAME`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3, 0, 0, ' ', ' '),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75, 0, 0, ' ', ' '),
('Discrete Mathematics', 'CSE 103', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language', 'CSE 111', '', 3, 0, 0, ' ', ' '),
('Structured Programming Language Lab', 'CSE 112', '', 1.5, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Digital Logic Design', 'CSE 205', '', 3, 0, 0, ' ', ' '),
('Digital Logic Design Lab', 'CSE 206', '', 1.5, 0, 0, ' ', ' '),
('Database Systems', 'CSE 207', 'CSE 111', 3, 0, 0, ' ', ' '),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5, 0, 0, ' ', ' '),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3, 0, 0, ' ', ' '),
('Object Oriented Programming Language', 'CSE 221', '', 3, 0, 0, ' ', ' '),
('Data Structures', 'CSE 231', 'CSE 221', 3, 0, 0, ' ', ' '),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5, 0, 0, ' ', ' '),
('Algorithms', 'CSE 241', 'CSE 231', 3, 0, 0, ' ', ' '),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5, 0, 0, ' ', ' '),
('Electrical Technology', 'EEE 101', '', 3, 0, 0, ' ', ' '),
('Electrical Technology Lab', 'EEE 102', '', 1.5, 0, 0, ' ', ' '),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3, 0, 0, ' ', ' '),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5, 0, 0, ' ', ' '),
('English Language-I', 'ENG 101', '', 3, 0, 0, ' ', ' '),
('English Language-II', 'ENG 111', 'ENG 101', 3, 0, 0, ' ', ' '),
('Differential and Integral Calculus', 'MAT 101', '', 3, 0, 0, ' ', ' '),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3, 0, 0, ' ', ' '),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3, 0, 0, ' ', ' '),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3, 0, 0, ' ', ' '),
('Physics', 'PHY 101', '', 3, 0, 0, ' ', ' '),
('Statistics', 'STA 231', 'MAT 121', 3, 0, 0, ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `53addedcourse`
--

CREATE TABLE `53addedcourse` (
  `COURSE_NAME` varchar(50) DEFAULT NULL,
  `COURSE_CODE` varchar(50) DEFAULT NULL,
  `PREREQUISITE` varchar(50) DEFAULT NULL,
  `CREDIT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registrationreport`
--

CREATE TABLE `registrationreport` (
  `ID` bigint(20) NOT NULL,
  `COURSE_CODE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrationreport`
--

INSERT INTO `registrationreport` (`ID`, `COURSE_CODE`) VALUES
(3, 'EEE 102'),
(4, 'CSE 205'),
(4, 'EEE 102'),
(5, 'ACT 201'),
(5, 'CSE 103'),
(5, 'CSE 205'),
(6, 'ACT 201'),
(6, 'CSE 103'),
(6, 'CSE 205'),
(7, 'ACT 201'),
(7, 'CSE 103'),
(8, 'ACT 201'),
(8, 'CSE 103'),
(8, 'EEE 102'),
(9, 'ACT 201'),
(9, 'CSE 103'),
(9, 'EEE 102'),
(10, 'ACT 201'),
(10, 'CSE 103'),
(10, 'EEE 102'),
(11, 'ACT 201'),
(11, 'CSE 103'),
(11, 'EEE 102'),
(12, 'ACT 201'),
(12, 'CSE 103'),
(12, 'EEE 102'),
(13, 'ACT 201'),
(13, 'CSE 103'),
(13, 'EEE 102'),
(14, 'ACT 201'),
(14, 'CSE 103'),
(14, 'EEE 102'),
(15, 'ACT 201'),
(15, 'CSE 103'),
(15, 'EEE 102'),
(16, 'ACT 201'),
(16, 'CSE 103'),
(16, 'EEE 102'),
(17, 'ACT 201'),
(17, 'CSE 103'),
(17, 'EEE 102'),
(18, 'ACT 201'),
(18, 'CSE 103'),
(18, 'EEE 102');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `ID` bigint(20) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `TID` bigint(20) NOT NULL,
  `SEMESTER` varchar(100) NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`ID`, `COURSE_CODE`, `TID`, `SEMESTER`, `STATUS`) VALUES
(1, 'CSE 111', 44, 'Fall, 2021-22', 0),
(2, 'CSE 112', 44, 'Fall, 2021-22', 0),
(3, 'MAT 101', 46, 'Fall, 2021-22', 0),
(4, 'CSE 206', 44, 'Fall, 2021-22', 0),
(5, 'EEE 101', 44, 'Fall, 2021-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `section1`
--

CREATE TABLE `section1` (
  `ID` bigint(20) NOT NULL,
  `Attendance` double NOT NULL,
  `Assignment` double NOT NULL,
  `MID` double NOT NULL,
  `FINAL` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section1`
--

INSERT INTO `section1` (`ID`, `Attendance`, `Assignment`, `MID`, `FINAL`) VALUES
(3, 5, 5, 25, 35),
(4, 5, 10, 25, 38),
(5, 10, 10, 28, 38),
(6, 9, 9, 27, 30),
(7, 10, 8, 21, 30),
(8, 8, 9, 25, 35),
(9, 10, 15, 29, 35),
(10, 8, 17, 21, 35),
(11, 6, 16, 21, 28),
(12, 5, 5, 20, 36),
(13, 10, 13, 28, 28),
(14, 10, 10, 25, 30),
(15, 10, 15, 30, 40),
(16, 9, 15, 28, 23),
(17, 9, 8, 15, 28),
(18, 9, 10, 30, 40);

-- --------------------------------------------------------

--
-- Table structure for table `section2`
--

CREATE TABLE `section2` (
  `ID` bigint(20) NOT NULL,
  `Attendance` double NOT NULL,
  `Assignment` double NOT NULL,
  `MID` double NOT NULL,
  `FINAL` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section2`
--

INSERT INTO `section2` (`ID`, `Attendance`, `Assignment`, `MID`, `FINAL`) VALUES
(7, 0, 0, 0, 0),
(8, 0, 0, 0, 0),
(9, 0, 0, 0, 0),
(10, 0, 0, 0, 0),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0),
(13, 0, 0, 0, 0),
(14, 0, 0, 0, 0),
(15, 0, 0, 0, 0),
(16, 0, 0, 0, 0),
(17, 0, 0, 0, 0),
(18, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `section3`
--

CREATE TABLE `section3` (
  `ID` bigint(20) NOT NULL,
  `Attendance` double NOT NULL,
  `Assignment` double NOT NULL,
  `MID` double NOT NULL,
  `FINAL` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section3`
--

INSERT INTO `section3` (`ID`, `Attendance`, `Assignment`, `MID`, `FINAL`) VALUES
(3, 0, 0, 0, 0),
(4, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `section4`
--

CREATE TABLE `section4` (
  `ID` bigint(20) NOT NULL,
  `Attendance` double NOT NULL,
  `Assignment` double NOT NULL,
  `MID` double NOT NULL,
  `FINAL` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section4`
--

INSERT INTO `section4` (`ID`, `Attendance`, `Assignment`, `MID`, `FINAL`) VALUES
(4, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `section5`
--

CREATE TABLE `section5` (
  `ID` bigint(20) NOT NULL,
  `Attendance` double NOT NULL,
  `Assignment` double NOT NULL,
  `MID` double NOT NULL,
  `FINAL` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section5`
--

INSERT INTO `section5` (`ID`, `Attendance`, `Assignment`, `MID`, `FINAL`) VALUES
(3, 10, 10, 20, 40);

-- --------------------------------------------------------

--
-- Table structure for table `sname`
--

CREATE TABLE `sname` (
  `SEMESTERNAME` varchar(50) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `MAXCREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sname`
--

INSERT INTO `sname` (`SEMESTERNAME`, `STATUS`, `MAXCREDIT`) VALUES
('Fall, 2021-22', 1, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `3`
--
ALTER TABLE `3`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `4`
--
ALTER TABLE `4`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `5`
--
ALTER TABLE `5`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `6`
--
ALTER TABLE `6`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `7`
--
ALTER TABLE `7`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `8`
--
ALTER TABLE `8`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `9`
--
ALTER TABLE `9`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `10`
--
ALTER TABLE `10`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `11`
--
ALTER TABLE `11`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `12`
--
ALTER TABLE `12`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `13`
--
ALTER TABLE `13`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `14`
--
ALTER TABLE `14`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `15`
--
ALTER TABLE `15`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `16`
--
ALTER TABLE `16`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `17`
--
ALTER TABLE `17`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `18`
--
ALTER TABLE `18`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `19`
--
ALTER TABLE `19`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `22`
--
ALTER TABLE `22`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `23`
--
ALTER TABLE `23`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `24`
--
ALTER TABLE `24`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `25`
--
ALTER TABLE `25`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `26`
--
ALTER TABLE `26`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `27`
--
ALTER TABLE `27`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `28`
--
ALTER TABLE `28`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `29`
--
ALTER TABLE `29`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `30`
--
ALTER TABLE `30`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `31`
--
ALTER TABLE `31`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `32`
--
ALTER TABLE `32`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `33`
--
ALTER TABLE `33`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `34`
--
ALTER TABLE `34`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `35`
--
ALTER TABLE `35`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `36`
--
ALTER TABLE `36`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `37`
--
ALTER TABLE `37`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `38`
--
ALTER TABLE `38`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `39`
--
ALTER TABLE `39`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `40`
--
ALTER TABLE `40`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `41`
--
ALTER TABLE `41`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `49`
--
ALTER TABLE `49`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `50`
--
ALTER TABLE `50`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `51`
--
ALTER TABLE `51`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `52`
--
ALTER TABLE `52`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `53`
--
ALTER TABLE `53`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `registrationreport`
--
ALTER TABLE `registrationreport`
  ADD PRIMARY KEY (`ID`,`COURSE_CODE`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sname`
--
ALTER TABLE `sname`
  ADD PRIMARY KEY (`SEMESTERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
