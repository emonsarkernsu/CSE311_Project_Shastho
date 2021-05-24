-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 11:39 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shashto`
--

-- --------------------------------------------------------

--
-- Table structure for table `allergy`
--

CREATE TABLE `allergy` (
  `ID` int(20) DEFAULT NULL,
  `Severity` varchar(20) DEFAULT NULL,
  `Medical_Name` varchar(20) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blood_pressure`
--

CREATE TABLE `blood_pressure` (
  `TrackerID` int(20) DEFAULT NULL,
  `Date4` date DEFAULT NULL,
  `Value4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_pressure`
--

INSERT INTO `blood_pressure` (`TrackerID`, `Date4`, `Value4`) VALUES
(1, '2021-05-23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blood_sugar`
--

CREATE TABLE `blood_sugar` (
  `TrackerID` int(20) DEFAULT NULL,
  `Date1` date DEFAULT NULL,
  `Value1` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blood_sugar`
--

INSERT INTO `blood_sugar` (`TrackerID`, `Date1`, `Value1`) VALUES
(102, '2015-01-16', 5),
(102, '2021-02-12', 8),
(1, '2021-05-24', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cholesterol`
--

CREATE TABLE `cholesterol` (
  `TrackerID` int(20) DEFAULT NULL,
  `Date2` date DEFAULT NULL,
  `Value2` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cholesterol`
--

INSERT INTO `cholesterol` (`TrackerID`, `Date2`, `Value2`) VALUES
(1, '2021-05-20', 2),
(1, '2021-05-13', 2),
(1, '2021-05-24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `ID` int(20) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Hospial` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fh_cardiac_diseases`
--

CREATE TABLE `fh_cardiac_diseases` (
  `ID` int(20) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Relation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fh_diabetes`
--

CREATE TABLE `fh_diabetes` (
  `ID` int(20) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Relation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fh_genetic`
--

CREATE TABLE `fh_genetic` (
  `ID` int(20) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Relation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fh_mental_illness`
--

CREATE TABLE `fh_mental_illness` (
  `ID` int(20) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Relation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fh_obesity`
--

CREATE TABLE `fh_obesity` (
  `ID` int(20) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Relation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `health_status`
--

CREATE TABLE `health_status` (
  `ID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `Serial` int(10) DEFAULT NULL,
  `Medicine` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mental_health`
--

CREATE TABLE `mental_health` (
  `ID` int(20) DEFAULT NULL,
  `Date_of_Diagnosis` varchar(20) DEFAULT NULL,
  `Name_of_Disorder` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `miscellaneous`
--

CREATE TABLE `miscellaneous` (
  `ID` int(20) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Relation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_allergy`
--

CREATE TABLE `status_allergy` (
  `serial` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_allergy`
--

INSERT INTO `status_allergy` (`serial`, `title`, `description`) VALUES
(2, 'allergy ', 'allergy'),
(3, 'allergy2', 'allergy2');

-- --------------------------------------------------------

--
-- Table structure for table `status_cardiac`
--

CREATE TABLE `status_cardiac` (
  `serial` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_cardiac`
--

INSERT INTO `status_cardiac` (`serial`, `title`, `description`) VALUES
(1, 'obesity', 'obesity'),
(2, 'obesity2', 'obesity2');

-- --------------------------------------------------------

--
-- Table structure for table `status_diabetes`
--

CREATE TABLE `status_diabetes` (
  `serial` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_diabetes`
--

INSERT INTO `status_diabetes` (`serial`, `title`, `description`) VALUES
(1, 'diabetes', 'diabetes');

-- --------------------------------------------------------

--
-- Table structure for table `status_genetic`
--

CREATE TABLE `status_genetic` (
  `serial` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_genetic`
--

INSERT INTO `status_genetic` (`serial`, `title`, `description`) VALUES
(1, 'genetic', 'genetic');

-- --------------------------------------------------------

--
-- Table structure for table `status_mental`
--

CREATE TABLE `status_mental` (
  `serial` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_mental`
--

INSERT INTO `status_mental` (`serial`, `title`, `description`) VALUES
(2, 'Tahrima is insane', 'Literally pagol'),
(3, 'Parinda is a good gi', 'JK');

-- --------------------------------------------------------

--
-- Table structure for table `status_obesity`
--

CREATE TABLE `status_obesity` (
  `serial` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_obesity`
--

INSERT INTO `status_obesity` (`serial`, `title`, `description`) VALUES
(2, 'obesity', 'obesity'),
(3, 'obesity 3', 'obesity 3');

-- --------------------------------------------------------

--
-- Table structure for table `surgery`
--

CREATE TABLE `surgery` (
  `ID` int(20) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Complications` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `TrackerID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(15) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `DOB` varchar(15) DEFAULT NULL,
  `Active` varchar(30) DEFAULT NULL,
  `TrackID` int(15) DEFAULT NULL,
  `HealthID` int(15) DEFAULT NULL,
  `visitID` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `serial` int(10) DEFAULT NULL,
  `Date` int(20) DEFAULT NULL,
  `Title` varchar(50) NOT NULL,
  `DocName` varchar(50) NOT NULL,
  `Issue` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visits_expanded`
--

CREATE TABLE `visits_expanded` (
  `Serial` int(10) DEFAULT NULL,
  `Name_of_Hospital` varchar(100) DEFAULT NULL,
  `Chief_Complaint` varchar(100) DEFAULT NULL,
  `Follow_Up_Date` varchar(20) DEFAULT NULL,
  `Diagnosis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visit_min`
--

CREATE TABLE `visit_min` (
  `serial` int(10) DEFAULT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `Time` varchar(30) DEFAULT NULL,
  `Date` int(30) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Name_of_Doctor` varchar(30) DEFAULT NULL,
  `Department` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `weight`
--

CREATE TABLE `weight` (
  `TrackerID` int(20) DEFAULT NULL,
  `Date3` date DEFAULT NULL,
  `Value3` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weight`
--

INSERT INTO `weight` (`TrackerID`, `Date3`, `Value3`) VALUES
(1, '0000-00-00', 0),
(1, '2021-05-10', 2),
(1, '2021-05-11', 3),
(1, '2021-05-21', 1),
(1, '2021-05-05', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `status_allergy`
--
ALTER TABLE `status_allergy`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `status_cardiac`
--
ALTER TABLE `status_cardiac`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `status_diabetes`
--
ALTER TABLE `status_diabetes`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `status_genetic`
--
ALTER TABLE `status_genetic`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `status_mental`
--
ALTER TABLE `status_mental`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `status_obesity`
--
ALTER TABLE `status_obesity`
  ADD PRIMARY KEY (`serial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `status_allergy`
--
ALTER TABLE `status_allergy`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status_cardiac`
--
ALTER TABLE `status_cardiac`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_diabetes`
--
ALTER TABLE `status_diabetes`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status_genetic`
--
ALTER TABLE `status_genetic`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status_mental`
--
ALTER TABLE `status_mental`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status_obesity`
--
ALTER TABLE `status_obesity`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
