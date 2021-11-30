-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 06:31 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `common_diseases`
--

INSERT INTO `common_diseases` (`P_ID`, `DIABETICS`, `HIGH_PRESSURE`, `HIV`, `ASMA`) VALUES
(28, '1', '0', '1', '0'),
(29, '0', '1', '0', '1'),
(30, '0', '0', '0', '0'),
(31, '0', '0', '1', '1'),
(32, '1', '1', '1', '1'),
(33, '0', '0', '1', '1'),
(34, '0', '0', '0', '0'),
(35, 'Yes', 'No', 'No', 'Yes'),
(36, 'No', 'No', 'No', 'Yes'),
(37, 'Yes', 'Yes', 'No', 'Yes'),
(38, 'No', 'No', 'No', 'Yes'),
(39, 'Yes', 'Yes', 'Yes', 'Yes'),
(41, 'No', 'No', 'No', 'Yes'),
(42, 'Yes', 'Yes', 'Yes', 'Yes'),
(43, 'No', 'Yes', 'Yes', 'Yes');

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
  `PHONE NUMBER` varchar(11) NOT NULL,
  `SEX` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `NAME`, `FATHER'S NAME`, `MOTHER'S NAME`, `BLOOD GROUP`, `ADDRESS`, `MARITAL STATUS`, `DOB`, `PHONE NUMBER`, `SEX`) VALUES
(3, 'IFTEKHAR AHAMED SIDDIQUEE', 'Abu Bakar Siddique', 'Khaleda Begum Siddique', 'O+', 'Mirpur-14,Dhaka.', 'Un-Married', '2001-05-21', '01612158329', 'Men'),
(4, 'Samima Akhtar', 'Md Alauddin', 'Kohenur Bagam', 'O-', 'Mirpur-14,Dhaka.', 'Married', '2021-11-04', '01769699964', 'Women'),
(5, 'IFTEKHAR AHAMED SIDDIQUEE', 'ax', 'Kohenur Bagam', 'O+', 'Ax', 'Married', '2021-11-04', '0176969964', 'Women'),
(6, 'IFTEKHAR AHAMED SIDDIQUEE', 'ax', 'xa', 'O+', 'Ax', 'Married', '2021-11-04', '01612158329', 'Women'),
(7, 'xx', 'xx', 'xx', 'xx', 'xx', 'Un-Married', '2021-11-05', '11', 'Men'),
(8, 'zz', 'zz', 'zz', 'zz', 'zz', 'Married', '2021-11-05', '22', 'Men'),
(9, 'cc', 'cc', 'cc', 'cc', 'cc', 'Married', '2021-11-05', '33', 'Men'),
(10, 'vv', 'vv', 'vv', 'vv', 'vv', 'Un-Married', '2021-11-05', '66', 'Women'),
(11, 'vv', 'vv', 'vv', 'vv', 'vv', 'Un-Married', '2021-11-05', '66', 'Women'),
(12, 'cc', 'cc', 'cc', 'cc', 'cc', 'Married', '2021-11-05', '33', 'Men'),
(13, 'xx', 'xx', 'xx', 'xx', 'xx', 'Married', '2021-11-05', '0176969988', 'Men'),
(14, 'xx', 'xx', 'xx', 'xx', 'xx', 'Married', '2021-11-05', '0176969988', 'Men'),
(15, 'xx', 'xx', 'xx', 'xx', 'xx', 'Married', '2021-11-05', '0176969988', 'Men'),
(16, 'xx', 'xx', 'xx', 'xx', 'xx', 'Married', '2021-11-05', '0176969988', 'Men'),
(17, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xa', 'cc', 'xx', 'Married', '2021-11-05', '0176969964', 'Men'),
(18, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xx', 'xx', 'Ax', 'Married', '2021-11-05', '66', 'Men'),
(19, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xx', 'xx', 'Ax', 'Married', '2021-11-05', '66', 'Men'),
(20, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xx', 'O+', 'Ax', 'Married', '2021-11-05', '33', 'Men'),
(21, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xx', 'xx', 'Ax', 'Married', '2021-11-05', '66', 'Men'),
(22, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xx', 'O+', 'Ax', 'Married', '2021-11-05', '33', 'Men'),
(23, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xx', 'O+', 'Ax', 'Married', '2021-11-05', '33', 'Men'),
(24, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xx', 'vv', 'Ax', 'Married', '2021-11-05', '0176969964', 'Men'),
(25, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xa', 'xx', 'Ax', 'Married', '2021-11-05', '01612158329', 'Men'),
(26, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xx', 'O+', 'Ax', 'Married', '2021-11-05', '66', 'Men'),
(27, 'xx', 'xx', 'xx', 'xx', 'xx', 'Married', '2021-11-05', '01769699964', 'Men'),
(28, 'cc', 'c', 'c', 'O-', 'cc', 'Married', '2021-11-05', '01612158329', 'Men'),
(29, 'vv', 'xx', 'xx', 'O+', 'xx', 'Married', '2021-11-05', '01769699964', 'Men'),
(30, 'xx', 'ax', 'xx', 'O+', 'xx', 'Married', '2021-11-17', '01769699964', 'Others'),
(31, 'Samiul Alim', 'xx', 'xx', 'O+', 'Dhaka', 'Married', '2021-11-22', '66', 'Men'),
(32, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xx', 'O-', 'Ax', 'Un-Married', '2021-12-05', '33', 'Men'),
(33, 'Sahinul Islam', 'xx', 'xx', 'O+', 'Mirpur-10,Dhaka', 'Married', '2021-11-02', '33', 'Men'),
(34, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xx', 'O+', 'Ax', 'Married', '2021-11-01', '01612158329', 'Men'),
(35, 'IFTEKHAR AHAMED SIDDIQUEE', 'Abu Bakar Siddique', 'Khaleda Begum Siddique', 'O-', 'Ax', 'Un-Married', '2021-11-23', '01612158329', 'Men'),
(36, 'IFTEKHAR AHAMED SIDDIQUEE', 'xx', 'xx', 'O+', 'Ax', 'Married', '2021-11-23', '0176969988', 'Men'),
(37, 'Imtiyaz', 'xx', 'xx', 'cc', 'Alexander', 'Un-Married', '2021-11-23', '01612158329', 'Men'),
(38, 'IFTEKHAR AHAMED SIDDIQUEE', 'Abu Bakar Siddique', 'Khaleda Begum Siddique', 'O+', 'Mirpur-14,Dhaka.', 'Un-Married', '2001-05-21', '01612158329', 'Men'),
(39, 'IFTEKHAR AHAMED SIDDIQUEE', 'x', 'vv', 'O+', 'Ax', 'Married', '2021-10-31', '01612158329', 'Men'),
(40, 'xx', 'xx', 'xa', 'O+', 'xx', 'Married', '2021-11-24', '01612158329', 'Men'),
(41, 'IFTEKHAR AHAMED SIDDIQUEE', 'Abu Bakar Siddique', 'Khaleda Begum Siddique', 'O+', 'Mirpur-14,Dhaka.', 'Un-Married', '2021-11-25', '01612158329', 'Men'),
(42, '', '', '', '', '', 'Married', '0000-00-00', '', 'Men'),
(43, 'Md Viewer ', 'vv', 'cc', 'O+', 'Mirpur-14,Dhaka.', 'Un-Married', '2021-11-01', '33', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `P_ID` bigint(20) NOT NULL,
  `DEMAND` int(11) NOT NULL,
  `PAID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`P_ID`, `DEMAND`, `PAID`) VALUES
(30, 1000, 0),
(31, 1000, 0),
(32, 1000, 0),
(33, 1000, 0),
(34, 1000, 0),
(35, 1000, 0),
(36, 1000, 0),
(37, 1000, 0),
(38, 1000, 0),
(39, 1000, 0),
(40, 1000, 0),
(41, 1000, 500),
(42, 1000, 0),
(43, 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `pre_medicine`
--

CREATE TABLE `pre_medicine` (
  `P_ID` bigint(20) NOT NULL,
  `DATE` date NOT NULL,
  `MEDI_NAMES` text NOT NULL,
  `PROBLEMS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pre_medicine`
--

INSERT INTO `pre_medicine` (`P_ID`, `DATE`, `MEDI_NAMES`, `PROBLEMS`) VALUES
(3, '2021-11-17', 'dd', '1.hata'),
(3, '2021-11-22', 'xx', 'ds'),
(3, '2021-11-22', '1\r\neeeeeeeeeeeeeeee\r\n2ddddddddddddddddddddd\r\n3fffffffffffffffffffffffffffff\r\n4dddddddddddd', '1.bou nai\r\n2.more jai\r\n3. jontre somossa'),
(33, '2021-11-22', '', ''),
(33, '2021-11-22', '', ''),
(33, '2021-11-22', '1.mula khaba\r\n2. vat khaba', '1.hafani\r\n2. dat nai'),
(35, '2021-11-23', '', ''),
(35, '2021-11-23', '', ''),
(35, '2021-11-24', 'adsad', 'asdasd'),
(39, '2021-11-24', 'v', 'v'),
(38, '2021-11-24', '1.Napa', '1.Jor'),
(38, '2021-11-24', 'Abacavir\r\nAcyclovir\r\nAllopurinol\r\nAmifostine\r\nNapa\r\nAce Puls\r\nReboplabin', 'Blue-green Algae\r\nCancer Colon\r\nCancer Liver\r\nChancroid\r\nCancer Ovarian'),
(41, '2021-11-25', '1.Napa\r\n2.ace', '1.Jor'),
(41, '2021-11-25', '', ''),
(43, '2021-11-30', 'Napa', 'Jor,Thanda.');

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
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
