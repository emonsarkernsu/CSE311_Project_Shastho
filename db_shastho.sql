-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2021 at 12:43 PM
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
-- Database: `db_shastho`
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
-- Table structure for table `blood_sugar`
--

CREATE TABLE `blood_sugar` (
  `TrackerID` int(20) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Value` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cholesterol`
--

CREATE TABLE `cholesterol` (
  `TrackerID` int(20) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Value` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `Date` int(20) DEFAULT NULL
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
  `Date` varchar(20) DEFAULT NULL,
  `Value` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
