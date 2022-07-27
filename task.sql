-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 27, 2022 at 08:39 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flags`
--

INSERT INTO `flags` (`id`, `name`, `value`) VALUES
(1, 'morning_water_last_notification', ''),
(2, 'noon_water_last_notification', ''),
(3, 'afternoon_water_last_notification', '');

-- --------------------------------------------------------

--
-- Table structure for table `flower_pots`
--

CREATE TABLE `flower_pots` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `water_morning` smallint(6) DEFAULT 0,
  `water_noon` smallint(6) NOT NULL DEFAULT 0,
  `water_afternoon` smallint(6) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flower_pots`
--

INSERT INTO `flower_pots` (`id`, `name`, `water_morning`, `water_noon`, `water_afternoon`, `created_at`, `updated_at`) VALUES
(2, 'Aster', 1, 0, 0, '2015-10-03 02:49:43', '0000-00-00 00:00:00'),
(3, 'Bird of Paradise', 0, 0, 1, '2015-10-03 02:49:54', '0000-00-00 00:00:00'),
(4, 'Blazing Star', 0, 0, 1, '2015-10-03 02:50:04', '0000-00-00 00:00:00'),
(5, 'Christmas Bells', 0, 1, 0, '2015-10-03 02:51:34', '0000-00-00 00:00:00'),
(6, 'Contra Costa Goldfields', 0, 0, 1, '2015-10-03 02:51:42', '0000-00-00 00:00:00'),
(7, 'Chilean Jasmine', 1, 1, 1, '2015-10-03 02:51:52', '0000-00-00 00:00:00'),
(8, 'Delphinium', 1, 0, 1, '2015-10-03 02:52:01', '0000-00-00 00:00:00'),
(9, 'Sunflowers', 0, 1, 0, '2015-10-03 02:57:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'user_email', 'test@mail.com'),
(2, 'morning_water_time', '6:10 AM'),
(3, 'noon_water_time', '12:00 PM'),
(4, 'afternoon_water_time', '4:30 PM'),
(5, 'alert_advance_minutes', '30');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` varchar(222) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Address`, `ProfilePic`, `CreationDate`) VALUES
(13, 'test', '', 'desc', '11', '', 'sdsd', '2022-07-27 06:36:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `flower_pots`
--
ALTER TABLE `flower_pots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`water_morning`,`created_at`,`updated_at`),
  ADD KEY `water_morning` (`water_morning`),
  ADD KEY `water_noon` (`water_noon`),
  ADD KEY `water_afternoon` (`water_afternoon`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flower_pots`
--
ALTER TABLE `flower_pots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
