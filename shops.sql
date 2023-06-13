-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 04:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shops`
--

-- --------------------------------------------------------

--
-- Table structure for table `magasins`
--

CREATE TABLE `magasins` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_type` varchar(255) NOT NULL,
  `shop_location` varchar(255) NOT NULL,
  `shop_timesheet` text NOT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `magasins`
--

INSERT INTO `magasins` (`id`, `shop_name`, `shop_type`, `shop_location`, `shop_timesheet`, `deleted`) VALUES
(1, 'Promod', 'Femme', '88 Rue Des Bons Enfants', '9:00 à 17:00', NULL),
(3, 'Jules', 'Homme', 'CC Sacré Cœur', '9:00 à 17:00', NULL),
(4, 'Okaïdi', 'Enfant', '23 rue du Moulin - Portail Village', '9:00 à 18:00', NULL),
(7, 'hello', 'Enfant', 'wawd', 'wawa', 1),
(8, 'test', 'Famille', 'tst', 'wda', 1),
(9, 'wwawa', 'Famille', 'awwa', 'awaw', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `magasins`
--
ALTER TABLE `magasins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `magasins`
--
ALTER TABLE `magasins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
