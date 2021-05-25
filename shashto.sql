-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 07:21 AM
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
-- Table structure for table `blood_pressure`
--

CREATE TABLE `blood_pressure` (
  `userID` int(20) NOT NULL,
  `Date4` date DEFAULT NULL,
  `Value4` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blood_sugar`
--

CREATE TABLE `blood_sugar` (
  `userID` int(20) NOT NULL,
  `Date1` date DEFAULT NULL,
  `Value1` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cholesterol`
--

CREATE TABLE `cholesterol` (
  `userID` int(20) NOT NULL,
  `Date2` date DEFAULT NULL,
  `Value2` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_allergy`
--

CREATE TABLE `status_allergy` (
  `serial` int(11) NOT NULL,
  `userID` int(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_cardiac`
--

CREATE TABLE `status_cardiac` (
  `serial` int(11) NOT NULL,
  `userID` int(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_diabetes`
--

CREATE TABLE `status_diabetes` (
  `serial` int(20) NOT NULL,
  `userID` int(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_genetic`
--

CREATE TABLE `status_genetic` (
  `serial` int(20) NOT NULL,
  `userID` int(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_mental`
--

CREATE TABLE `status_mental` (
  `serial` int(20) NOT NULL,
  `userID` int(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_miscellaneous`
--

CREATE TABLE `status_miscellaneous` (
  `serial` int(20) NOT NULL,
  `userID` int(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status_obesity`
--

CREATE TABLE `status_obesity` (
  `serial` int(20) NOT NULL,
  `userID` int(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_shastho`
--

CREATE TABLE `user_shastho` (
  `userID` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `serial` int(11) NOT NULL,
  `userID` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Title` varchar(50) DEFAULT NULL,
  `DocName` varchar(50) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `weight`
--

CREATE TABLE `weight` (
  `userID` int(20) NOT NULL,
  `Date3` date DEFAULT NULL,
  `Value3` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_pressure`
--
ALTER TABLE `blood_pressure`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `blood_sugar`
--
ALTER TABLE `blood_sugar`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `cholesterol`
--
ALTER TABLE `cholesterol`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `status_allergy`
--
ALTER TABLE `status_allergy`
  ADD PRIMARY KEY (`serial`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `status_cardiac`
--
ALTER TABLE `status_cardiac`
  ADD PRIMARY KEY (`serial`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `status_diabetes`
--
ALTER TABLE `status_diabetes`
  ADD PRIMARY KEY (`serial`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `status_genetic`
--
ALTER TABLE `status_genetic`
  ADD PRIMARY KEY (`serial`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `status_mental`
--
ALTER TABLE `status_mental`
  ADD PRIMARY KEY (`serial`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `status_miscellaneous`
--
ALTER TABLE `status_miscellaneous`
  ADD PRIMARY KEY (`serial`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `status_obesity`
--
ALTER TABLE `status_obesity`
  ADD PRIMARY KEY (`serial`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user_shastho`
--
ALTER TABLE `user_shastho`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`serial`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `weight`
--
ALTER TABLE `weight`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_pressure`
--
ALTER TABLE `blood_pressure`
  MODIFY `userID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_sugar`
--
ALTER TABLE `blood_sugar`
  MODIFY `userID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cholesterol`
--
ALTER TABLE `cholesterol`
  MODIFY `userID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_allergy`
--
ALTER TABLE `status_allergy`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_cardiac`
--
ALTER TABLE `status_cardiac`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_diabetes`
--
ALTER TABLE `status_diabetes`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_genetic`
--
ALTER TABLE `status_genetic`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_mental`
--
ALTER TABLE `status_mental`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_miscellaneous`
--
ALTER TABLE `status_miscellaneous`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_obesity`
--
ALTER TABLE `status_obesity`
  MODIFY `serial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_shastho`
--
ALTER TABLE `user_shastho`
  MODIFY `userID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weight`
--
ALTER TABLE `weight`
  MODIFY `userID` int(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_pressure`
--
ALTER TABLE `blood_pressure`
  ADD CONSTRAINT `blood_pressure_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);

--
-- Constraints for table `blood_sugar`
--
ALTER TABLE `blood_sugar`
  ADD CONSTRAINT `blood_sugar_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);

--
-- Constraints for table `cholesterol`
--
ALTER TABLE `cholesterol`
  ADD CONSTRAINT `cholesterol_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);

--
-- Constraints for table `status_allergy`
--
ALTER TABLE `status_allergy`
  ADD CONSTRAINT `status_allergy_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);

--
-- Constraints for table `status_cardiac`
--
ALTER TABLE `status_cardiac`
  ADD CONSTRAINT `status_cardiac_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);

--
-- Constraints for table `status_diabetes`
--
ALTER TABLE `status_diabetes`
  ADD CONSTRAINT `status_diabetes_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);

--
-- Constraints for table `status_genetic`
--
ALTER TABLE `status_genetic`
  ADD CONSTRAINT `status_genetic_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);

--
-- Constraints for table `status_mental`
--
ALTER TABLE `status_mental`
  ADD CONSTRAINT `status_mental_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);

--
-- Constraints for table `status_miscellaneous`
--
ALTER TABLE `status_miscellaneous`
  ADD CONSTRAINT `status_miscellaneous_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);

--
-- Constraints for table `status_obesity`
--
ALTER TABLE `status_obesity`
  ADD CONSTRAINT `status_obesity_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);

--
-- Constraints for table `weight`
--
ALTER TABLE `weight`
  ADD CONSTRAINT `weight_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_shastho` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
