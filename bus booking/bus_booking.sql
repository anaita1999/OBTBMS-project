-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 09:53 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email_Id` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Phone_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Name`, `Email_Id`, `Password`, `Phone_Number`) VALUES
(1, 'Narendra Nath Panda', 'narendranath@2021gmail.com', 'narendranath', 123456789),
(2, 'Akash Saha', 'akashsaha65403@gmail.com', 'akash', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(200) NOT NULL,
  `BusName` varchar(100) NOT NULL,
  `source` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `date1` varchar(100) NOT NULL,
  `time1` varchar(100) NOT NULL,
  `meridiem` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `period` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `BusName`, `source`, `destination`, `date1`, `time1`, `meridiem`, `type`, `period`) VALUES
(1, '', 'Kolkata', 'Delhi', '03/10/2020', '7:30', 'AM', '', ''),
(2, '', 'Kolkata', 'Mumbai', '04/10/2020', '7:00', 'PM', '', ''),
(3, '', 'Kolkata', 'Pune', '16/10/2020', '7:42', 'PM', '', ''),
(4, '', 'Kolkata', 'Jaipur ', '16/10/2020', '7:30', 'AM', '', ''),
(5, '', 'Barasat', 'Kolkata', '20/01/2021', '7:30', 'AM', '', ''),
(6, 'Barasat Barrakpore DN-81', 'Barasat', 'Barrakpore', '16/5/2021', '7:30', 'AM', 'Standard', 'Daily');

-- --------------------------------------------------------

--
-- Table structure for table `contact us`
--

CREATE TABLE `contact us` (
  `Name` text NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Email` varchar(100) NOT NULL,
  `Message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email_Id` varchar(200) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Phone_Number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `Email_Id`, `Password`, `Phone_Number`) VALUES
(1, 'Akash Saha', 'mr.akashsaha574@gmail.com', '12345', '6289061862');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
