-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 05:54 PM
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
-- Database: `messenger`
--

-- --------------------------------------------------------

--
-- Table structure for table `1`
--

CREATE TABLE `1` (
  `message` mediumtext DEFAULT NULL,
  `sender` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `1`
--

INSERT INTO `1` (`message`, `sender`) VALUES
('Assalamu alaikum.', 4),
('Walaikum Assalam', 1),
('Kmn achen?', 4),
('Alhamdulillah,apni?', 1),
('Apnar kichu bolar ache?', 1),
('Ji sir,amar annex er data te kichu update kora lagbe', 4),
('amar password change korbo kivabe?', 4),
('Tomar main menu er nice Change password option ache sekahne dhuke change koro', 1);

-- --------------------------------------------------------

--
-- Table structure for table `2`
--

CREATE TABLE `2` (
  `message` mediumtext DEFAULT NULL,
  `sender` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `2`
--

INSERT INTO `2` (`message`, `sender`) VALUES
('Assalamualaikum', 5);

-- --------------------------------------------------------

--
-- Table structure for table `3`
--

CREATE TABLE `3` (
  `message` mediumtext DEFAULT NULL,
  `sender` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `3`
--

INSERT INTO `3` (`message`, `sender`) VALUES
('assalamu alaikum', 6);

-- --------------------------------------------------------

--
-- Table structure for table `4`
--

CREATE TABLE `4` (
  `message` mediumtext DEFAULT NULL,
  `sender` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `4`
--

INSERT INTO `4` (`message`, `sender`) VALUES
('Assalmu alaikum', 8);

-- --------------------------------------------------------

--
-- Table structure for table `5`
--

CREATE TABLE `5` (
  `message` mediumtext DEFAULT NULL,
  `sender` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `5`
--

INSERT INTO `5` (`message`, `sender`) VALUES
('Assalamu alaikum', 9);

-- --------------------------------------------------------

--
-- Table structure for table `6`
--

CREATE TABLE `6` (
  `message` mediumtext DEFAULT NULL,
  `sender` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `6`
--

INSERT INTO `6` (`message`, `sender`) VALUES
('hello', 10);

-- --------------------------------------------------------

--
-- Table structure for table `detector`
--

CREATE TABLE `detector` (
  `s_ID` int(20) NOT NULL,
  `r_ID` int(20) NOT NULL,
  `table_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detector`
--

INSERT INTO `detector` (`s_ID`, `r_ID`, `table_ID`) VALUES
(4, 1, 1),
(5, 1, 2),
(6, 1, 3),
(8, 1, 4),
(9, 1, 5),
(10, 1, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detector`
--
ALTER TABLE `detector`
  ADD PRIMARY KEY (`table_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detector`
--
ALTER TABLE `detector`
  MODIFY `table_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
