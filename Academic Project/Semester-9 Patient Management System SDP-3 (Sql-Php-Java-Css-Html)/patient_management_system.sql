-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 24, 2023 at 03:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patient management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `common_diseases`
--

CREATE TABLE `common_diseases` (
  `P_ID` bigint(20) NOT NULL,
  `DIABETICS` varchar(3) NOT NULL,
  `HIGH_PRESSURE` varchar(3) NOT NULL,
  `HIV` varchar(3) NOT NULL,
  `ASMA` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `common_diseases`
--

INSERT INTO `common_diseases` (`P_ID`, `DIABETICS`, `HIGH_PRESSURE`, `HIV`, `ASMA`) VALUES
(1, 'No', 'No', 'No', 'Yes'),
(2, 'Yes', 'No', 'No', 'Yes'),
(3, 'No', 'No', 'No', 'Yes'),
(4, 'Yes', 'Yes', 'No', 'Yes'),
(5, 'No', 'No', 'No', 'Yes'),
(6, 'Yes', 'Yes', 'Yes', 'Yes'),
(7, 'No', 'No', 'No', 'Yes'),
(8, 'Yes', 'Yes', 'Yes', 'Yes'),
(9, 'No', 'Yes', 'Yes', 'Yes'),
(10, 'Yes', 'Yes', 'Yes', 'Yes'),
(11, 'No', 'No', 'No', 'Yes'),
(12, 'Yes', 'No', 'No', 'Yes'),
(13, 'No', 'No', 'No', 'Yes'),
(14, 'Yes', 'Yes', 'No', 'Yes'),
(15, 'No', 'No', 'No', 'Yes'),
(16, 'Yes', 'Yes', 'Yes', 'Yes'),
(17, 'No', 'No', 'No', 'Yes'),
(18, 'Yes', 'Yes', 'Yes', 'Yes'),
(19, 'No', 'Yes', 'Yes', 'Yes'),
(20, 'Yes', 'Yes', 'Yes', 'Yes'),
(21, 'No', 'No', 'No', 'Yes'),
(22, 'No', 'No', 'No', 'No'),
(23, 'Yes', 'Yes', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `FATHER'S NAME` varchar(50) NOT NULL,
  `MOTHER'S NAME` varchar(50) NOT NULL,
  `BLOOD GROUP` varchar(2) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `MARITAL STATUS` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `PHONE NUMBER` varchar(15) NOT NULL,
  `SEX` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `NAME`, `FATHER'S NAME`, `MOTHER'S NAME`, `BLOOD GROUP`, `ADDRESS`, `MARITAL STATUS`, `DOB`, `PHONE NUMBER`, `SEX`) VALUES
(1, 'Iftekhar Ahamed Siddiquee', 'Abu Bakar Siddique', 'Khaleda Begum Siddique', 'O+', 'Alexander,Ramgoti', 'Un-Married', '2001-05-21', '01612158329', 'Men'),
(2, 'Brent', 'David', 'Kalia', 'o+', 'Ap #197-8643 Tincidunt Rd.', 'Married', '2007-10-25', '0312172813', 'Men'),
(3, 'Simon', 'Noble', 'Ursa', 'o+', '224-297 Aenean St.', 'Married', '2010-02-09', '0340247650', 'Men'),
(4, 'Elliott', 'Arthur', 'Gemma', 'o+', '3916 Gravida Road', 'Un-Married', '2009-09-11', '0458911923', 'Men'),
(5, 'Clayton', 'Macaulay', 'Idona', 'o+', 'Ap #671-1440 Augue Avenue', 'Married', '2011-10-05', '0307677928', 'Men'),
(6, 'Stephen', 'Len', 'Deirdre', 'o+', 'Ap #181-373 Turpis St.', 'Un-Married', '2013-01-01', '0639384836', 'Men'),
(7, 'Reece', 'Akeem', 'Juliet', 'AB', '5755 Arcu St.', 'Un-Married', '1980-07-08', '0992371176', 'Men'),
(8, 'Reuben', 'Allistair', 'Daryl', 'AB', '409-5240 Gravida Ave', 'Un-Married', '2008-03-01', '0222713185', 'Men'),
(9, 'Daniel', 'Kieran', 'Shelley', 'o+', '8097 Aliquet Street', 'Married', '2011-11-06', '0416776917', 'Men'),
(10, 'Marvin', 'Baxter', 'Dora', 'o+', 'Ap #692-8914 Justo St.', 'Un-Married', '1989-09-27', '0736837268', 'Men'),
(11, 'Scott', 'Wallace', 'Aurora', 'AB', 'P.O. Box 541, 8762 Fringilla, Rd.', 'Married', '2015-11-29', '0314362112', 'Men'),
(12, 'Rina', 'Hunter', 'Nadine', 'o+', '6871 Sit Road', 'Un-Married', '2002-07-25', '16982832797', 'Female'),
(13, 'Hyacinth', 'Sylvester', 'Marcia', 'o+', 'Ap #163-2403 Tincidunt. Ave', 'Un-Married', '2010-10-19', '15866894891', 'Female'),
(14, 'Tatum', 'Daphne', 'Alexis', 'o+', '666-6028 Suspendisse Rd.', '	 Married', '1991-07-14', '15775872809', 'Female'),
(15, 'Bertha', 'Burke', 'Hedda', 'o+', 'Ap #273-570 Tortor, Rd.', 'Un-Married', '1989-01-23', '17706423642', 'Female'),
(16, 'Anastasia', 'Jayme', 'Lara', 'B+', 'P.O. Box 932, 4249 Justo Road', 'Un-Married', '1970-10-03', '13235904607', 'Female'),
(17, 'Mary', 'Iliana', 'Ella', 'A+', '826-6321 Adipiscing. St.', '	 Married', '1973-10-24', '11454851473', 'Female'),
(18, 'Carly', 'Lacy', 'Gay', 'O+', 'P.O. Box 481, 1215 Mollis. Rd.', 'Un-Married', '1969-04-03', '14887132580', 'Female'),
(19, 'Michelle', 'Baker', 'Farrah', 'o+', '795-9616 Lorem, Avenue', '	 Married', '1978-10-24', '16478334297', 'Female'),
(20, 'Tallulah', 'Kelsey', 'Selma', 'o+', '6689 Mauris Rd.', 'Un-Married', '1974-06-11', '12661312729', 'Female'),
(21, 'Yoshi', 'Hunter', 'Desirae', 'O-', 'P.O. Box 173, 7536 Augue. Street', 'Un-Married', '1973-04-22', '13048111357', 'Female'),
(22, 'Shahabuddin', 'Rezaul karim', 'Anowara khatun', 'B+', 'satkhira', 'Un-Married', '2000-11-28', '01778106683', 'Men'),
(23, 'sdsd', 'sds', 'sds', 'O+', 'sds', 'Married', '2023-03-01', '12121212121', 'Men');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `P_ID` bigint(20) NOT NULL,
  `DEMAND` int(11) NOT NULL,
  `PAID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`P_ID`, `DEMAND`, `PAID`) VALUES
(1, 1000, 512),
(2, 1000, 0),
(3, 1000, 0),
(4, 1000, 0),
(5, 1000, 0),
(6, 1000, 0),
(7, 1000, 0),
(8, 1000, 0),
(9, 1000, 0),
(10, 1000, 0),
(11, 1000, 0),
(12, 1000, 0),
(13, 1000, 0),
(14, 1000, 0),
(15, 1000, 0),
(16, 1000, 0),
(17, 1000, 0),
(18, 1000, 0),
(19, 1000, 0),
(20, 1000, 0),
(21, 1000, 0),
(22, 1000, 1000),
(23, 1000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pre_medicine`
--

CREATE TABLE `pre_medicine` (
  `P_ID` bigint(20) NOT NULL,
  `DATE` date NOT NULL,
  `MEDI_NAMES` text NOT NULL,
  `PROBLEMS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pre_medicine`
--

INSERT INTO `pre_medicine` (`P_ID`, `DATE`, `MEDI_NAMES`, `PROBLEMS`) VALUES
(1, '2023-03-22', 'Napa - 500mg\r\nSurgel - 20', 'Fever(Last 3 days)\r\nCa ugh\r\nBad Headache'),
(1, '2023-03-22', 'Saline \r\nNapa\r\nSurgel', 'Diariah\r\nFever '),
(1, '2023-03-22', 'xxx', 'xxx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `common_diseases`
--
ALTER TABLE `common_diseases`
  ADD KEY `P_ID` (`P_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`,`PHONE NUMBER`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD KEY `P_ID` (`P_ID`);

--
-- Indexes for table `pre_medicine`
--
ALTER TABLE `pre_medicine`
  ADD KEY `P_ID` (`P_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `common_diseases`
--
ALTER TABLE `common_diseases`
  ADD CONSTRAINT `common_diseases_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `patient` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `patient` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pre_medicine`
--
ALTER TABLE `pre_medicine`
  ADD CONSTRAINT `pre_medicine_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `patient` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
