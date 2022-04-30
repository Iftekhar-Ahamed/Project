-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 05:52 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curriculum`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting`
--

CREATE TABLE `accounting` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `computer science and engineering (cse)`
--

CREATE TABLE `computer science and engineering (cse)` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `computer science and engineering (cse)`
--

INSERT INTO `computer science and engineering (cse)` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`) VALUES
('Accounting Fundamentals', 'ACT 201', '', 3),
('Software Development I', 'CSE 100	', 'CSE 111', 0.75),
('Discrete Mathematics', 'CSE 103', '', 3),
('Structured Programming Language', 'CSE 111', '', 3),
('Structured Programming Language Lab', 'CSE 112', '', 1.5),
('Object Oriented Programming Language', 'CSE 121', 'CSE 111', 3),
('Object Oriented Programming Language Lab', 'CSE 122', 'CSE 111', 1.5),
('Digital Logic Design', 'CSE 205', '', 3),
('Digital Logic Design Lab', 'CSE 206', '', 1.5),
('Database Systems', 'CSE 207', 'CSE 111', 3),
('Database Systems Lab', 'CSE 208', 'CSE 111', 1.5),
('Theory of Computing & Automata Theory', 'CSE 213', 'CSE 103', 3),
('Object Oriented Programming Language', 'CSE 221', '', 3),
('Data Structures', 'CSE 231', 'CSE 221', 3),
('Data Structures Lab', 'CSE 232', 'CSE 121', 1.5),
('Algorithms', 'CSE 241', 'CSE 231', 3),
('Algorithms Lab', 'CSE 242', 'CSE 231', 1.5),
('Electrical Technology', 'EEE 101', '', 3),
('Electrical Technology Lab', 'EEE 102', '', 1.5),
('Electronic Devices and Circuits', 'EEE 211', 'EEE 101', 3),
('Electronic Devices and Circuits Lab', 'EEE 212', 'EEE 101', 1.5),
('English Language-I', 'ENG 101', '', 3),
('English Language-II', 'ENG 111', 'ENG 101', 3),
('Differential and Integral Calculus', 'MAT 101', '', 3),
('Co-Ordinate Geometry and Vector Calculus', 'MAT 111', 'MAT 101', 3),
('Linear Algebras and Differential Equations', 'MAT 121', 'MAT 111', 3),
('Complex Variable and Fourier Analysis', 'MAT 231', 'MAT 121', 3),
('Physics', 'PHY 101', '', 3),
('Statistics', 'STA 231', 'MAT 121', 3);

-- --------------------------------------------------------

--
-- Table structure for table `department of textile`
--

CREATE TABLE `department of textile` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `economics`
--

CREATE TABLE `economics` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `electrical and electronics engineering (eee)`
--

CREATE TABLE `electrical and electronics engineering (eee)` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `electrical and electronics engineering (eee)`
--

INSERT INTO `electrical and electronics engineering (eee)` (`COURSE_NAME`, `COURSE_CODE`, `PREREQUISITE`, `CREDIT`) VALUES
('Introduction to Chemistry Lab', 'CHE 102', '', 1.5),
('Structured Programming Language Lab ', 'CSE 202', '', 1.5),
('Electrical Circuits I', 'EEE 101', '', 3),
('Electrical Circuits II ', 'EEE 103', 'EEE 101', 3),
('Electrical Circuits II Lab ', 'EEE 104', 'EEE 101', 1.5),
('Electronic Circuits I', 'EEE 201 ', 'EEE 103', 3),
('Electronic Circuits II ', 'EEE 207', 'EEE 201', 3),
('Energy Conversion II Lab', 'EEE 210', 'EEE 203', 1.5),
('Continuous Signals and Linear Systems ', 'EEE 301', 'MAT 201', 3),
('Digital Electronics', 'EEE 303', 'EEE 201', 3),
('Power System I', 'EEE 305', 'EEE 209', 3),
('Microprocessor and Interfacing Lab', 'EEE 320', 'EEE 303', 1.5),
('EEE 208', 'Electronic Circuits II Lab ', 'EEE 201', 1.5),
('English Language I', 'ENG 101', '', 3),
('English Language II', 'ENG 102', 'ENG 101', 3),
('Bangladesh Studies', 'HUM 101', '', 3),
('Differential and Integral Calculus ', 'MAT 101 ', '', 3),
('Co-ordinate Geometry and Linear Algebra', 'MAT 102', '', 3),
('Mechanical Engineering Fundamentals ', 'ME 201', '', 3),
('Electricity and Magnetism, Modern Physics and Quan', 'PHY 103 ', '', 3),
('Physics II Lab', 'PHY 104 ', '', 1.5),
('Statistics and Probability Distribution ', 'STA 201', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `english`
--

CREATE TABLE `english` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mathematics`
--

CREATE TABLE `mathematics` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `physics`
--

CREATE TABLE `physics` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `COURSE_NAME` varchar(50) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `PREREQUISITE` varchar(50) NOT NULL,
  `CREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting`
--
ALTER TABLE `accounting`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `computer science and engineering (cse)`
--
ALTER TABLE `computer science and engineering (cse)`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `department of textile`
--
ALTER TABLE `department of textile`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `economics`
--
ALTER TABLE `economics`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `electrical and electronics engineering (eee)`
--
ALTER TABLE `electrical and electronics engineering (eee)`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `english`
--
ALTER TABLE `english`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `mathematics`
--
ALTER TABLE `mathematics`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `physics`
--
ALTER TABLE `physics`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`COURSE_CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
