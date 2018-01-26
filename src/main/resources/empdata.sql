-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 26, 2018 at 12:54 AM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `EMP`
--

CREATE TABLE `EMP` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EMP`
--

INSERT INTO `EMP` (`id`, `name`, `email`, `address`, `telephone`) VALUES
(27, 'EMPLOYEE1', 'EMAIL1@GMAIL.COM', 'ADDRESS_USA_1', '+126 26543210'),
(30, 'EMPLOYEE2', 'EMAIL2@GMAIL.COM', 'ADDRESS_USA_2', '+12 123456789'),
(31, 'EMPLOYEE3', 'EMAIL3@GMAIL.COM', 'ADDRESS_USA_3', '+123 123456'),
(32, 'EMPLOYEE4', 'EMAIL4@GMAIL.COM', 'ADDRESS_USA_4', '+216 554327711'),
(34, 'EMPLOYEE5', 'EMAIL5@GMAIL.COM', 'ADDRESS_USA_5', '+126 99888777');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EMP`
--
ALTER TABLE `EMP`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EMP`
--
ALTER TABLE `EMP`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
