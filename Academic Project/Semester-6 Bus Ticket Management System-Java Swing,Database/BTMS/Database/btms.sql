-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 02:56 PM
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
-- Database: `btms`
--

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `PID` bigint(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `TID` bigint(20) NOT NULL,
  `DESTINATION` varchar(100) NOT NULL,
  `Seats` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`PID`, `NAME`, `TID`, `DESTINATION`, `Seats`) VALUES
(1, 'IFTEKHAR AHAMED SIDDIQUEE', 2, 'NOALLHALI', ''),
(2, 'p1', 2, 'd1', ''),
(3, 'P3', 2, 'Coumohoni,Noakhali', 'B4,D3,E3,'),
(4, 'P2', 4, 'asas', 'A3,D1,'),
(5, 'Sahinul', 2, 'Feni', 'A3,A4,B1,C1,C2,'),
(6, 'Iftekhar', 4, 'Feni', 'A1,D3,G1,G3,'),
(7, 'Samiul Hauqe', 2, 'America', 'B3,F1,G4,'),
(8, 'Rafikul Islam Redwan', 3, 'Madripur,Barisal', 'A1,C1,C3,D2,E1,F2,'),
(9, 'naime', 2, 'Barishal', 'C3,E2,');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `GENDER` varchar(100) NOT NULL,
  `PHONE NUMBER` varchar(100) NOT NULL,
  `COUNTER` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`ID`, `NAME`, `GENDER`, `PHONE NUMBER`, `COUNTER`, `PASSWORD`) VALUES
(1, 'IFTEKHAR AHAMED SIDDIQUEE', 'MALE', '01612158329', 'ADMIN', '1'),
(2, 'Jamil Ahamed', 'MALE', '011111111111', 'Saidabad,Dhaka', '123'),
(3, 'P2', 'MALE', '11111111', 'Titipara,Saidabad', '123'),
(4, 'P3', 'MALE', '12121212', 'Moakhli,Dhaka', '123'),
(5, 'P4', 'MALE', '122343524', 'Uttora,Dhaka', '123'),
(6, 'P5', 'MALE', '123432', 'Mirpur,Dhaka', '123'),
(7, 'P6', 'MALE', '45435', 'Noalkhali', '123'),
(8, 'P7', 'MALE', '235465657', 'Maijdi,Noalkhali', '123'),
(9, 'P8', 'MALE', '2354354356', 'Coumuhoni,Noalkhali', '123'),
(10, 'P9', 'MALE', '13123214', 'Sonaimuri,Noalkhali', '123'),
(11, 'Sahinul', 'MALE', '232432543', 'Dhanmondi,Dhaka', '123'),
(12, 'P10', 'MALE', '0120828643', 'Dhanmondi-32,Dhaka', '123');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ID` bigint(20) NOT NULL,
  `DATE` varchar(20) NOT NULL,
  `TIME` varchar(20) DEFAULT NULL,
  `Seats` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ID`, `DATE`, `TIME`, `Seats`) VALUES
(1, 'axa', 'xax', ''),
(2, '2022-03-01', '4:45AM', 'A1,A2,B2,G3,B4,D3,E3,A3,A4,B1,C1,C2,B3,F1,G4,C3,E2,'),
(3, '2022-03-01', '5:00AM', 'A1,C1,C3,D2,E1,F2,'),
(4, '2022-03-16', '5:00AM', 'A3,D1,A1,D3,G1,G3,'),
(5, '2022-03-16', '5:15AM', ''),
(6, '2022-03-16', '6:30AM', ''),
(7, '2022-03-16', '3:00PM', ''),
(8, '2022-03-16', '2:00PM', ''),
(9, '2022-03-16', '5:45AM', ''),
(10, '2022-03-16', '6:45AM', ''),
(11, '2022-03-16', '5:00PM', ''),
(12, '2022-03-16', '5:30AM', ''),
(13, '2022-03-16', '6:00PM', ''),
(14, '2022-03-16', '4:45AM', ''),
(15, '2022-03-16', '6:15AM', ''),
(16, '2022-03-17', '5:30AM', ''),
(17, '2022-03-17', '6:45AM', ''),
(18, '2022-03-17', '5:45AM', ''),
(19, '2022-03-02', '5:15AM', ''),
(20, '2022-03-02', '6:15AM', '');

-- --------------------------------------------------------

--
-- Table structure for table `triptime`
--

CREATE TABLE `triptime` (
  `Time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `triptime`
--

INSERT INTO `triptime` (`Time`) VALUES
('4:45AM'),
('5:00AM'),
('5:15AM'),
('5:30AM'),
('5:45AM'),
('6:00AM'),
('6:15AM'),
('6:30AM'),
('6:45AM'),
('3:00PM'),
('2:00PM'),
('1:00PM'),
('5:00PM'),
('6:00PM'),
('5:45PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`PID`),
  ADD KEY `TID` (`TID`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `PID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`TID`) REFERENCES `ticket` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
