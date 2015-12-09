-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Dec 08, 2015 at 09:38 PM
-- Server version: 5.5.41-log
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `landlord`
--

CREATE TABLE IF NOT EXISTS `landlord` (
`lid` bigint(11) NOT NULL,
  `price` bigint(5) NOT NULL,
  `bedrooms` tinyint(1) NOT NULL,
  `bathrooms` tinyint(1) NOT NULL,
  `cats` tinyint(1) NOT NULL,
  `dogs` tinyint(1) NOT NULL,
  `smoking/nonsmoking` tinyint(1) NOT NULL,
  `location` varchar(25) NOT NULL,
  `moving_date` varchar(10) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `landlord info`
--

CREATE TABLE IF NOT EXISTS `landlord info` (
`liid` bigint(20) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `password` char(8) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `renter`
--

CREATE TABLE IF NOT EXISTS `renter` (
`rid` bigint(11) NOT NULL,
  `min` int(5) NOT NULL,
  `max` int(5) NOT NULL,
  `bedrooms` tinyint(2) NOT NULL,
  `bathrooms` tinyint(2) NOT NULL,
  `pets` tinyint(1) NOT NULL,
  `smoking` tinyint(1) NOT NULL,
  `location` varchar(25) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` int(4) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `renter info`
--

CREATE TABLE IF NOT EXISTS `renter info` (
`riid` bigint(20) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `password` char(8) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `landlord`
--
ALTER TABLE `landlord`
 ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `landlord info`
--
ALTER TABLE `landlord info`
 ADD PRIMARY KEY (`liid`);

--
-- Indexes for table `renter`
--
ALTER TABLE `renter`
 ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `renter info`
--
ALTER TABLE `renter info`
 ADD PRIMARY KEY (`riid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `landlord`
--
ALTER TABLE `landlord`
MODIFY `lid` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `landlord info`
--
ALTER TABLE `landlord info`
MODIFY `liid` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `renter`
--
ALTER TABLE `renter`
MODIFY `rid` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `renter info`
--
ALTER TABLE `renter info`
MODIFY `riid` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
