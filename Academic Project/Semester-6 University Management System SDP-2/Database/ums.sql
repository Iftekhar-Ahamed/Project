-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 11:00 AM
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
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_info`
--

CREATE TABLE `academic_info` (
  `ID` bigint(20) NOT NULL,
  `BOARD_EXAM` varchar(10) NOT NULL,
  `YEAR` int(8) NOT NULL,
  `GRADE` double NOT NULL,
  `GROUP` varchar(50) NOT NULL,
  `INST` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_info`
--

INSERT INTO `academic_info` (`ID`, `BOARD_EXAM`, `YEAR`, `GRADE`, `GROUP`, `INST`) VALUES
(7, 'SSC', 2017, 3.97, 'Science ', 'Biralia High School'),
(7, 'HSC', 2019, 5, 'Science ', 'Mohammadpur Kendriya College'),
(10, 'SSC', 2017, 3, 'Science ', 'Badartala JC highschool'),
(10, 'HSC', 2019, 4.17, 'Science ', 'BN college, Khulna'),
(11, 'SSC', 2017, 5, 'Science ', 'Biralia High School'),
(11, 'HSC', 2019, 4.87, 'Science ', 'Mohammadpur Kendriya College'),
(12, 'SSC', 2017, 3.26, 'Science ', 'Nawab Habibullah Model School & College'),
(12, 'HSC', 2019, 4.5, 'Science ', 'Milestone College'),
(13, 'SSC', 2017, 5, 'Science ', 'Keshabpur Pilot School and College'),
(13, 'HSC', 2019, 5, 'Science ', 'Bonophool Adibashi Green Heart College'),
(14, 'SSC', 2017, 4.71, 'Science ', 'Jinnahnagar High School '),
(14, 'HSC', 2019, 4, 'Science ', 'Govt.Sheikh Hasina Padmapukur Degree College '),
(15, 'SSC', 2017, 3.61, 'Science ', 'barishal Govt High school '),
(15, 'HSC', 2019, 4.97, 'Science ', 'BM College Barishal'),
(16, 'SSC', 2017, 4, 'Science ', 'Jonail M. L High School'),
(16, 'HSC', 2019, 4.16, 'Science ', 'Zonail Degree College'),
(17, 'SSC', 2017, 3.62, 'Science ', 'Baushia M A Azher  High School'),
(17, 'HSC', 2019, 4.7, 'Science ', 'Monipur school & college '),
(18, 'SSC', 2017, 3.05, 'Science ', 'Bhakurta Union Hingh School & College '),
(18, 'HSC', 2019, 4.19, 'Science ', 'Savar Model College'),
(19, 'SSC', 2017, 5, 'Science ', 'Govt R.S.K.H. Institution Mohammadpur,Magura'),
(19, 'HSC', 2019, 4.67, 'Science ', 'Aminur Rahman Collage Mohammadpur,Magura'),
(3, 'SSC', 2017, 4.67, 'Science', 'Lemua khajura PK High School'),
(3, 'HSC', 2019, 4.61, 'Science', 'Borguna Govt. College'),
(4, 'SSC', 2017, 4.61, 'Science', 'Syed Abul Hossain Academy'),
(4, 'HSC', 2019, 3.75, 'Science', 'Syed Abul Hossain College'),
(5, 'SSC', 2017, 4.68, 'Science', 'Badartala JC highschool'),
(5, 'HSC', 2019, 4.61, 'Science', 'BN college, Khulna'),
(6, 'SSC', 2017, 4.61, 'Science', 'Hunululu School'),
(6, 'HSC', 2019, 3.75, 'Science', 'Hunululu College'),
(20, 'SSC', 2020, 5, 'Science', 'UI School'),
(20, 'HSC', 2022, 4.21, 'Science', 'Shashikor Moha biddaloy'),
(20, 'BSC', 0, 4, 'English', 'DU'),
(21, 'SSC', 2017, 2.12, 'Science ', 'mirpur High school '),
(21, 'HSC', 2019, 3.25, 'Science ', 'Mirpur govt college Dhaka'),
(22, 'SSC', 2017, 5, 'Science ', 'mirpur High school Dhaka'),
(22, 'HSC', 2019, 3.57, 'Science ', 'Mirpur-10 govt college Dhaka'),
(23, 'SSC', 2017, 4.21, 'Science ', 'Khulna High school Dhaka'),
(23, 'HSC', 2019, 3.6, 'Science ', '  Khulna Govt college '),
(24, 'SSC', 2017, 4.55, 'Science ', 'K. H. N High school Dhaka'),
(24, 'HSC', 2019, 3.96, 'Science ', '  Barguna Govt college '),
(25, 'SSC', 2017, 4, 'Science ', 'chunkhali High school Dhaka'),
(25, 'HSC', 2019, 3.69, 'Science ', 'nature Govt college '),
(26, 'SSC', 2017, 4.87, 'Science ', 'parvoti High school Dhaka'),
(26, 'HSC', 2019, 3.98, 'Science ', 'BN college khulan'),
(27, 'SSC', 2017, 4.87, 'Science ', 'parvoti High school Dhaka'),
(27, 'HSC', 2019, 3.98, 'Science ', 'BN college khulan'),
(28, 'SSC', 2017, 4.61, 'Science ', 'parvoti High school Dhaka'),
(28, 'HSC', 2019, 4, 'Science ', 'BN college khulan'),
(29, 'SSC', 2017, 5, 'Science ', 'pirgachha j n hish school'),
(29, 'HSC', 2019, 4, 'Science ', 'Rangpur Govt college '),
(30, 'SSC', 2017, 4.5, 'Science ', 'Rangpur  j n hish school'),
(30, 'HSC', 2019, 4.89, 'Science ', 'kalkani Govt college '),
(31, 'SSC', 2017, 4.7, 'Science ', ' Mirpur hish school'),
(31, 'HSC', 2019, 4.79, 'Science ', 'Mirpur  Govt college '),
(32, 'SSC', 2017, 4.87, 'Science ', 'monipur hish school'),
(32, 'HSC', 2019, 4.32, 'Science ', 'kalkani  Govt college '),
(33, 'SSC', 2017, 4.9, 'Science ', '10 No kalkani hish school'),
(33, 'HSC', 2019, 3.39, 'Science ', 'samuli  Govt college '),
(34, 'SSC', 2017, 5, 'Science ', 'lokkhipur hish school'),
(34, 'HSC', 2019, 4.9, 'Science ', 'lokkhipur   Govt college,lokkhipur '),
(35, 'SSC', 2017, 4.96, 'Science ', 'Gazipur hish school'),
(35, 'HSC', 2019, 3.97, 'Science ', 'Gazipur  Govt college,Gazipur '),
(36, 'SSC', 2017, 5, 'Science ', 'Gazipur,tungi hish school'),
(36, 'HSC', 2019, 3.65, 'Science ', 'Tungi  Govt college,Gazipur '),
(37, 'SSC', 2017, 4, 'Science ', 'Jonail M. L High School'),
(37, 'HSC', 2019, 3.85, 'Science ', 'Keshabpur Pilot School and College'),
(38, 'SSC', 2017, 4.8, 'Science ', ' M. L High School'),
(38, 'HSC', 2019, 4.69, 'Science ', 'KeshabpurSchool and College'),
(39, 'SSC', 2017, 4.21, 'Science ', 'Jinnahnagar High School '),
(39, 'HSC', 2019, 4, 'Science ', 'Jinnahnagar College'),
(40, 'SSC', 2017, 4.21, 'Science ', 'Bhakurta  High School '),
(40, 'HSC', 2019, 4, 'Science ', 'Bhakurta College'),
(41, 'SSC', 2017, 4.86, 'Science ', 'Khatul F. T  High School '),
(41, 'HSC', 2019, 4.54, 'Science ', 'Barguna College'),
(42, 'SSC', 2001, 4.78, 'Science ', 'Badartala JC highschool'),
(42, 'HSC', 2003, 5, 'Science ', 'Mohammadpur Kendriya College'),
(42, 'BSC', 0, 3.67, 'Science ', 'BUBT'),
(43, 'SSC', 2003, 4.8, 'Science ', 'JC highschool'),
(43, 'HSC', 2005, 4.9, 'Science ', 'Mohammadpur  College'),
(43, 'BSC', 0, 3, 'Science ', 'Bangladesh University of Business and Technology (BUBT)'),
(44, 'SSC', 2002, 3.97, 'Science ', 'Baushia M A Azher  High School'),
(44, 'HSC', 2004, 5, 'Science ', 'Savar Model College'),
(44, 'BSC', 0, 3.87, 'Science ', 'Dhaka University '),
(45, 'SSC', 2003, 3.76, 'Science ', 'K A Azher  High School'),
(45, 'HSC', 2005, 4.09, 'Science ', 'Savar Govt Model College'),
(45, 'BSC', 0, 3.21, 'Science ', 'Barishal University '),
(46, 'SSC', 2005, 3.8, 'Science ', 'BM High School'),
(46, 'HSC', 2007, 4.24, 'Science ', 'Rafi Govt Model College'),
(46, 'BSC', 0, 3.09, 'Science ', 'Rajhsi University '),
(47, 'SSC', 2001, 3.9, 'Science ', 'v High School'),
(47, 'HSC', 2003, 4.89, 'Science ', 'Mohammadpur  Govt Model College'),
(47, 'BSC', 0, 3, 'Science ', ''),
(48, 'SSC', 2016, 3.87, 'Science ', 'Sheikh Hasina Padmapukur High School '),
(48, 'HSC', 2018, 4, 'Science ', 'Govt.Sheikh Hasina Padmapukur Degree College '),
(49, 'SSC', 2017, 4.94, 'Science', 'Gopinathpur School and college'),
(49, 'HSC', 2019, 4.11, 'Science', 'Govt. Bir mukti joddha Asadujjaman College'),
(50, 'SSC', 2017, 4.67, 'Science', 'Kumarkhali M.N. pilot high school'),
(50, 'HSC', 2019, 4, 'Science', 'Kushtia golt collage'),
(51, 'SSC', 1999, 5, 'science ', 'moscow University '),
(51, 'HSC', 2001, 5, 'science ', 'moscow University '),
(52, 'SSC', 2017, 5, 'Science', 'Mohammaida Alia madrasha'),
(52, 'HSC', 2019, 5, 'Science', 'Tamirul millat Madrasha'),
(53, 'SSC', 2017, 4.76, 'science', 'skjfksj'),
(53, 'HSC', 2019, 4.33, 'science', 'fhfkshfiw');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `DEPARTMENT_NAME` varchar(100) NOT NULL,
  `COURSE_CODE` varchar(50) NOT NULL,
  `COURSE_NAME` varchar(100) NOT NULL,
  `PREREQUISITE` varchar(100) DEFAULT NULL,
  `CREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`DEPARTMENT_NAME`, `COURSE_CODE`, `COURSE_NAME`, `PREREQUISITE`, `CREDIT`) VALUES
('Computer Science and Engineering (CSE)', 'CSE 206', 'Digital Logic Design Lab', '', 1.5),
('Computer Science and Engineering (CSE)', 'CSE 111', 'Structured Programming Language', '', 3),
('Computer Science and Engineering (CSE)', 'CSE 100	', 'Software Development I', 'CSE 111', 0.75),
('Computer Science and Engineering (CSE)', 'CSE 112', 'Structured Programming Language Lab', '', 1.5),
('Computer Science and Engineering (CSE)', 'CSE 103', 'Discrete Mathematics', '', 3),
('Computer Science and Engineering (CSE)', 'CSE 221', 'Object Oriented Programming Language', '', 3),
('Computer Science and Engineering (CSE)', 'CSE 231', 'Data Structures', 'CSE 221', 3),
('Computer Science and Engineering (CSE)', 'CSE 241', 'Algorithms', 'CSE 231', 3),
('Computer Science and Engineering (CSE)', 'CSE 205', 'Digital Logic Design', '', 3),
('Computer Science and Engineering (CSE)', 'CSE 208', 'Database Systems Lab', 'CSE 111', 1.5),
('Computer Science and Engineering (CSE)', 'CSE 121', 'Object Oriented Programming Language', 'CSE 111', 3),
('Computer Science and Engineering (CSE)', 'CSE 232', 'Data Structures Lab', 'CSE 121', 1.5),
('Computer Science and Engineering (CSE)', 'CSE 242', 'Algorithms Lab', 'CSE 231', 1.5),
('Computer Science and Engineering (CSE)', 'CSE 213', 'Theory of Computing & Automata Theory', 'CSE 103', 3),
('Electrical and Electronics Engineering (EEE)', 'EEE 101', 'Electrical Technology', '', 3),
('Electrical and Electronics Engineering (EEE)', 'EEE 212', 'Electronic Devices and Circuits Lab', 'EEE 101', 1.5),
('Electrical and Electronics Engineering (EEE)', 'EEE 102', 'Electrical Technology Lab', '', 1.5),
('Electrical and Electronics Engineering (EEE)', 'EEE 211', 'Electronic Devices and Circuits', 'EEE 101', 3),
('English', 'ENG 101', 'English Language-I', '', 3),
('English', 'ENG 111', 'English Language-II', 'ENG 101', 3),
('Mathematics', 'MAT 101', 'Differential and Integral Calculus', '', 3),
('Mathematics', 'MAT 111', 'Co-Ordinate Geometry and Vector Calculus', 'MAT 101', 3),
('Mathematics', 'MAT 121', 'Linear Algebras and Differential Equations', 'MAT 111', 3),
('Mathematics', 'MAT 231', 'Complex Variable and Fourier Analysis', 'MAT 121', 3),
('Physics', 'PHY 101', 'Physics', '', 3),
('Accounting', 'ACT 201', 'Accounting Fundamentals', '', 3),
('Economics', 'ECO 101', 'Principles of Economics', '', 3),
('Mathematics', 'STA 231', 'Statistics', 'MAT 121', 3),
('Computer Science and Engineering (CSE)', 'CSE 207', 'Database Systems', 'CSE 111', 3),
('Computer Science and Engineering (CSE)', 'CSE 122', 'Object Oriented Programming Language Lab', 'CSE 111', 1.5),
('Department of Textile', 'TXE 101', 'Introduction to Textile Engineering', '', 2),
('Electrical and Electronics Engineering (EEE)', 'EEE 210', 'Energy Conversion II Lab', '', 1.5);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPARTMENT_ID` int(11) NOT NULL,
  `DEPARTMENT_NAME` varchar(100) NOT NULL,
  `TOTALCREDIT` double NOT NULL,
  `TYPE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPARTMENT_ID`, `DEPARTMENT_NAME`, `TOTALCREDIT`, `TYPE`) VALUES
(0, 'Computer Science and Engineering (CSE)', 72.75, 'ACADEMIC'),
(0, 'Electrical and Electronics Engineering (EEE)', 55.5, 'ACADEMIC'),
(0, 'Mathematics', 0, 'ACADEMIC'),
(0, 'English', 0, 'ACADEMIC'),
(0, 'Accounting', 0, 'ACADEMIC'),
(0, 'Physics', 0, 'ACADEMIC'),
(0, 'Economics', 0, 'ACADEMIC'),
(0, 'Statistics', 0, 'ACADEMIC'),
(0, 'IT', 0, 'EMPLOYEE'),
(0, 'Department of Textile', 0, 'ACADEMIC');

-- --------------------------------------------------------

--
-- Table structure for table `intake`
--

CREATE TABLE `intake` (
  `INTAKEID` int(11) NOT NULL,
  `STUDENTID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intake`
--

INSERT INTO `intake` (`INTAKEID`, `STUDENTID`) VALUES
(1, '1'),
(1, '2'),
(1, '3'),
(1, '4'),
(1, '7'),
(1, '8'),
(1, '9'),
(1, '10'),
(1, '11'),
(1, '12'),
(1, '13'),
(1, '14'),
(1, '15'),
(1, '16'),
(1, '17'),
(1, '18'),
(1, '19'),
(1, '5'),
(1, '6'),
(1, '21'),
(1, '22'),
(1, '23'),
(1, '24'),
(1, '25'),
(1, '26'),
(1, '27'),
(1, '28'),
(1, '29'),
(1, '30'),
(1, '31'),
(1, '32'),
(1, '33'),
(1, '34'),
(1, '35'),
(1, '36'),
(1, '37'),
(1, '38'),
(1, '39'),
(1, '40'),
(1, '41'),
(1, '48'),
(1, '49'),
(1, '50'),
(1, '51'),
(1, '52'),
(1, '53');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(3000) NOT NULL,
  `DESCRIPTION` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `ID` bigint(20) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(10) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `PHONE_NUMBER` varchar(11) NOT NULL,
  `PHONE_NUMBER2` varchar(11) DEFAULT NULL,
  `ID_TYPE` varchar(20) NOT NULL,
  `ID_NO` varchar(20) NOT NULL,
  `BLOOD_GROUP` varchar(3) NOT NULL,
  `DOB` date NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `FATHERSNAME` varchar(100) NOT NULL,
  `MOTHERSNAME` varchar(100) NOT NULL,
  `NATIONALITY` varchar(20) NOT NULL,
  `USERTYPE` varchar(100) NOT NULL,
  `DEPARTMENT` varchar(100) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `ADDRESS`, `PHONE_NUMBER`, `PHONE_NUMBER2`, `ID_TYPE`, `ID_NO`, `BLOOD_GROUP`, `DOB`, `EMAIL`, `FATHERSNAME`, `MOTHERSNAME`, `NATIONALITY`, `USERTYPE`, `DEPARTMENT`, `PASSWORD`) VALUES
(1, 'Iftekhar Ahamed', 'Siddiquee', 'Male', 'Mirpur-14,Dhaka.', '01612158329', NULL, 'NID', '3762416158', 'O+', '2001-05-21', 'iftekharahamed56@gmail.com', 'Abu Bakar Siddique', 'Khaleda Siddique', 'Bangladeshi', 'ADMIN', '', '1'),
(3, 'MD.', 'NAEEM', 'Male', 'Barguna', '01318596108', '01650143221', 'NID', '1508433271', 'A+', '2001-12-10', 'maksudhossin.991@gmail.com ', 'Abdul Aziz', 'Mst Maya begum', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(4, 'Md.', 'Redoan', 'Male', 'Kalkini,Madaripur, Dhaka', '01799276760', '', 'NID', '1234567', 'O+', '2000-10-03', '19202103475@cse.bubt.edu.bd', 'Abba', 'Ma', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(5, 'Sudipto ', 'Ghosh', 'Male', 'Parulia, Debhata, Satkhira', '01715421908', '01317654890', 'NID', '4211478971', 'O+', '3395-02-10', 'sudiptoghosh555@gmail.com', 'Dipankar Ghosh', 'Kalpona Ghosh', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(6, 'Sudipto ', 'Ghosh', 'Male', 'Parulia, Debhata, Satkhira', '01715421908', '01317654890', 'NID', '4211478971', 'O+', '3395-02-10', 'sudiptoghosh555@gmail.com', 'Dipankar Ghosh', 'Kalpona Ghosh', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(7, 'Md. Moshiur ', 'Rahman', 'Male', 'Ganda, Savar, Dhaka-1340', '01316591205', '', 'NID', '4211476991', 'A+', '1999-02-16', '19202103480@cse.bubt.edu.bd', 'Md. Moshiur Rahman', 'Rikta Rahman', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(8, 'Md. Moshiur ', 'Rahman', 'Male', 'Ganda, Savar, Dhaka-1340', '01316591205', '', 'NID', '4211476991', 'A+', '1999-02-16', '19202103480@cse.bubt.edu.bd', 'Md. Moshiur Rahman', 'Rikta Rahman', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(9, 'Md. Moshiur ', 'Rahman', 'Male', 'Ganda, Savar, Dhaka-1340', '01316591205', '', 'NID', '4211476991', 'A+', '1999-02-16', '19202103480@cse.bubt.edu.bd', 'Md. Moshiur Rahman', 'Rikta Rahman', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(10, 'Sudipto', 'Ghosh', 'Male', 'Ganda, Savar, Dhaka-1340', '01316591130', '', 'NID', '4211476980', 'A-', '1999-03-12', '1920210hgo@cse.bubt.edu.bd', 'Dipankar Ghosh', 'Kalpona Ghosh', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(11, 'MD Alamgir ', 'Hossain', 'Male', 'Ganda, Savar, Dhaka-1340', '01316575321', '', 'NID', '4211483191', 'AB+', '1998-03-12', 'puto9412@cse.bubt.edu.bd', 'MD Alamgir Hossain', 'Nurjahan begum', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(12, 'Hasnine Ahmed', 'Shawon', 'Male', 'Ganda, Savar, Dhaka-1340', '01916575366', '', 'NID', '4299483191', 'AB+', '2000-07-02', 'hasnineahmedshawon@gmail.com', 'MD Alamgir ', 'Rikta Rahman', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(13, 'Anika Tahsin ', 'Prokriti', 'Female', '39/3 East Baishteki(Aina Bibi mosjid), Hazi Ali Ho', '01816575833', '', 'NID', '2415407271', 'O+', '2003-12-05', 'anikaneha9@gmail.com', 'Md Abdus Samad', 'Bilara Yesmin', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(14, 'MD Nahid ', 'Hasan ', 'Male', 'Kazirber Jinnahnagar 7340 Maheshpur Jhenidah ', '01516575896', '', 'NID', '1615407230', 'A+', '2003-12-05', '19202103453@cse.bubt.edu.bd', 'MD Alibuddin Bishu', 'Mst Julekha Khatun Rita', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(15, 'Sahasa ', 'Debnath ', 'Female', 'Kazirber Jinnahnagar 7340 Maheshpur Jhenidah ', '01516575896', '', 'NID', '1615407231', 'B+', '2003-07-02', '19202103453@cse.bubt.edu.bd', 'Shusanto Debnath ', 'Eti Debnath ', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(16, 'Showlin ', 'Akter', 'Female', 'Baraigram,Natore,Rajshahi ', '01316575110', '', 'NID', '1615407765', 'ab-', '2003-07-10', '19202103476@cse.bubt.edu.bd', 'Saidur Rahman', 'Jabun nahar Begum', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(17, 'md ifran', ' ahamad', 'Male', 'Mirpur 1 , A block , Road no 1 , house no 28', '01416575260', '', 'NID', '1615407890', 'B+', '2001-06-14', '19202103490@cse.bubt.edu.bd', 'Ibrahim kholil', 'Helali Parvin', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(18, 'Pranto', '  Chandra Das ', 'Male', 'Mirpur 1 , A block , Road no 1 , house no 28', '01726575995', '', 'NID', '1415407763', 'B+', '2001-06-14', '19202103490@cse.bubt.edu.bd', 'Hori Chandra Das', 'Zhorna Rani Das', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(19, 'Nabil', ' Hasan Pranto ', 'Male', 'Magura,Mohammadpur ', '01726578651', '', 'Birth Certificate', '14154079076463477537', 'A+', '2000-08-29', 'nh7225252@gmail.com', 'Mehedi Hasan Palash', 'Shahanaz Parvin', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(20, 'Shahriar', 'Rahman', 'Male', 'Madaripur,Dhaka', '12435465', '13546', 'NID', '234567', 'O+', '2000-07-20', 'shahriar@gmail.com', 'Shakhwat', 'Hiron', 'Bangladeshi', 'EMPLOYEE', 'IT', '1234'),
(21, 'Faiyaj Ibna ', 'Zubayer', 'Female', 'Mirpur -1', '01741129235', '', 'NID', '12315689', 'B+', '1999-06-12', '19202108002@bubt.edu.bd', 'K.B.M. Zubayrul Islam Rajat', 'Mamun ', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(22, 'Nadim Mahmud ', 'Amanullah', 'Male', 'Mirpur -10', '01941129675', '', 'NID', '123155986', 'A-', '2000-03-01', '19202108002@bubt.edu.bd', 'Md. Asadul Alam', 'Mamun begum', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(23, ' Sahadat hossain ', 'Sani', 'Male', 'Mirpur -10', '01967169189', '', 'NID', '123155986', 'B+', '2001-02-22', '19202108003@bubt.edu.bd', 'Md. Gias Uddin', 'rajiya begum', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(24, 'Partha Protim ', 'Majumder', 'Male', 'Mirpur -10', '01967169189', '', 'NID', '123155542', 'B+', '2002-05-20', '19202108006@bubt.edu.bd', 'Debashis Majumder', 'koil', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(25, 'Shovan ', 'Sarker', 'Male', 'Rupnagar R/A, Mirpur-2, Dhaka-1216, Bangladesh', '01767168009', '', 'NID', '123155532', 'B+', '2002-05-20', '19202108006@bubt.edu.bd', 'Tarun Kumer Sarker', 'Rahina Akter', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(26, 'Assadujjaman ', 'Mim', 'Female', 'Rupnagar, Mirpur-2,-1216', '01767168985', '', 'NID', '197155532', 'B+', '2004-03-23', '19202108006@bubt.edu.bd', 'Anowarul Haque Feroz', 'Habiba Akter', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(27, 'Atia Ibnat ', 'Etu', 'Female', 'Rupnagar, Mirpur-2,-1216,india', '01767754218', '', 'NID', '197155553', 'B+', '2004-03-23', '192021080074@bubt.edu.bd', 'Md. Nazrul Islam', 'Nabila Akter', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(28, 'Mohammad xahid', 'Hassan', 'Male', 'Rahinkhula, Mirpur-1,-1216,india', '01734545598', '', 'NID', '58894206520', 'A+', '2002-07-22', '20211103072@bubt.edu.bd', 'Md.Moazzem Hossain', 'johura khatun', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(29, 'Hasan', 'Khan', 'Male', 'Rupnagar ', '01619754389', '', 'NID', '1264837625', 'A-', '1999-06-23', '11132103465@bubt.edu.bd', ' Moazzem Hossain', 'RANI ', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(30, 'MD', 'Rabby', 'Male', 'Rupnagar ', '01619755609', '', 'NID', '126483754', 'A-', '1999-07-28', '121321035673@bubt.edu.bd', ' Hossain', 'Ranu Mondol', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(31, 'Md. Mohin ', 'Uddin', 'Male', ' Mirpur-14, Dhaka', '01619755749', '', 'NID', '126457903', 'ab-', '1999-07-28', '121321035456@bubt.edu.bd', 'Rony Gazi', 'kulsum', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(32, 'Md', 'Kabila', 'Male', 'ponipur', '01619755749', '', 'NID', '126457903', 'ab-', '1999-07-28', 'texting9810@bubt.edu.bd', 'Harun', 'Fatima', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(33, 'Md', 'Bappy', 'Male', 'ponipur', '01619836524', '', 'NID', '1268893257', 'ab-', '1999-07-28', '19202103853@bubt.edu.bd', 'MD Kirun Khan', 'Najni ', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(34, 'Mst', 'Sumia', 'Female', 'lokkhipur', '016186132', '', 'NID', '0906871221', 'ab-', '1999-07-28', 'khulna71@bubt.edu.bd', 'D. M. Khirul', 'Nasrin ', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(35, 'kiron', 'Mala', 'Female', 'Gazipur', '01891642643', '', 'NID', '538765372', 'B+', '1999-07-28', 'Gazipur6865@bubt.edu.bd', 'Khairul Islam', 'Oishi ', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(36, 'Md. Moshiur ', 'Kamal ', 'Male', 'Gazipur,tungi', '01891816423', '', 'NID', '1486326398', 'A+', '1999-08-10', 'Gazipur6865@bubt.edu.bd', 'Rahman', 'adiba', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(37, 'Saidur ', 'Bishu', 'Male', 'Kazirber Jinnahnagar 7340 Maheshpur Jhenidah ', '0189185743', '', 'NID', '653217983', 'B+', '1999-08-10', 'Jhenidah21@bubt.edu.bd', 'kalam', 'Aisha ', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(38, 'Aisha ', '', 'Male', 'Maheshpur Jhenidah ', '01436767484', '', 'NID', '6671284356', 'A-', '1999-02-23', 'aisga321@bubt.edu.bd', 'harun', 'halima', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(39, 'Rikta ', 'Rahman', 'Female', 'Jinnahnagar ', '01436767484', '', 'NID', '6671284356', 'A-', '1999-02-23', 'aisga321@bubt.edu.bd', 'Md. Mizu', 'Mst Nilufa', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(40, 'Rikta ', 'Rahman', 'Female', 'Bhakurta ', '01436767484', '', 'NID', '6671284356', 'A-', '1991-02-23', '19202143490@bubt.edu.bd', 'MD Salehin', 'Nijhum', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(41, 'Puja', 'Ray', 'Female', 'Bhakurta Barguna', '0196527647', '', 'NID', '765328756', 'A+', '1991-02-23', '19202143475@bubt.edu.bd', 'Ratun', 'Nishe', 'Bangladeshi', 'STUDENT', 'Electrical and Electronics Engineering (EEE)', '1234'),
(42, 'Sumi ', 'Khatun', 'Female', 'Parulia, Debhata, Satkhira', '01754368031', '', 'NID', '8713468467', 'AB-', '2022-03-19', 'sumi32451@gmail.com', 'D. M. Najmul', 'Aimun', 'Bangladeshi', 'EMPLOYEE', 'IT', '1234'),
(43, 'Mukatter', 'Fuad', 'Male', 'Parulia-1200', '01757658965', '', 'NID', '87134648736', 'B+', '2022-03-19', 'mukatter981gmail.com', 'kirun', 'Nila', 'Bangladeshi', 'EMPLOYEE', 'IT', '1234'),
(44, 'Ali Azgor', '', 'Male', '39/3 East Baishteki(Aina Bibi mosjid), Hazi Ali Ho', '01719875346', '', 'NID', '674533235', 'O+', '2022-03-19', 'aliazgor@gmail.com', 'MD. Khairul', 'Habiba ', '', 'TEACHER', 'Computer Science and Engineering (CSE)', '1234'),
(45, 'Babiba', '', 'Male', ' Hazi Ali Hossain road, Mirpur 13, Dhaka', '01719875346', '', 'NID', '674533235', 'O+', '2022-03-19', 'aliazgor@gmail.com', 'MD. Niloy', 'Rafiya', '', 'TEACHER', 'Mathematics', '1234'),
(46, 'Md Abdus ', 'Samad', 'Male', 'Magura,Mohammadpur ', '0171987644', '', 'NID', '785534323', 'B+', '2022-03-19', 'aliazgor@gmail.com', 'Saidur Rahman', 'Bilara Yesmin', 'Bangladeshi', 'TEACHER', 'Mathematics', '1234'),
(47, 'Hori ', 'Chandra Das', 'Male', 'Mohammadpur ', '0171975183', '', 'NID', '785586654', 'A-', '2022-03-19', 'haridas21@gmail.com', 'MD. Rahman', 'Mst Yesmin', 'Bangladeshi', 'TEACHER', 'English', '1234'),
(48, ' Md. ', 'Tanvir Alam', 'Male', 'Kazirber Jhenidah ', '0196657872', '', 'Birth Certificate', '71352825864576458', 'A-', '2022-03-19', 'tanvir21@gmail.com', 'Tanvir Alam', 'Tanisha', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(49, 'Md Eyamin', 'Molla', 'Male', 'Magura', '1233456678', '', 'Birth Certificate', '23425345', 'B+', '2001-03-08', 'eyamin@gmail.com', 'Md. Ful mia Molla', 'Mst. Nazma Khatun', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(50, 'Rahat alfaz ', 'Abir', 'Male', 'mirpur 2, shyalbari, road 4, basa- 1/4', '01938971534', '', 'NID', '54545165465165', 'B+', '2001-03-08', 'rahatabir016@gmail.com', 'MD. alfaz uddin', 'Rahela khatun', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(51, 'Mikhail Kalashnikov ', 'Ak', 'Male', 'Moscow,Russia', '6545464646', '54464646644', 'NID', '646466969', 'p+', '2001-03-08', 'vladimirputin@gmail.komuna', 'Vladimir Lenin ', 'vladimir rose', '', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(52, 'Md Sahenul', 'Islam', 'Male', 'vasantek,mirpur 1', '2345678568', '', 'NID', '234567878', 'O+', '2001-03-30', 'sahenul@gmail.com', 'Sofikul islam', 'Shahida akter', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234'),
(53, 'Maharin ', 'Afroj', 'Female', 'Mirpur ', '22932498228', '', 'NID', '1348190502808206', 'o+', '2022-03-22', 'maharinshova@gmail.com', 'Md.Mofazzal hossain', 'Fatema Khatun', 'Bangladeshi', 'STUDENT', 'Computer Science and Engineering (CSE)', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
