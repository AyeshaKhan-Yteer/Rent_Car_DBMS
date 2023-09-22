-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 19, 2021 at 05:49 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lahmotors`
--

-- --------------------------------------------------------

--
-- Table structure for table `carbrands`
--

DROP TABLE IF EXISTS `carbrands`;
CREATE TABLE IF NOT EXISTS `carbrands` (
  `brand_id` int NOT NULL,
  `brand_name` varchar(250) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carbrands`
--

INSERT INTO `carbrands` (`brand_id`, `brand_name`) VALUES
(1, 'Toyota'),
(2, 'Honda'),
(3, 'Suzuki'),
(4, 'Range Rover'),
(5, 'BMW');

-- --------------------------------------------------------

--
-- Table structure for table `carmodels`
--

DROP TABLE IF EXISTS `carmodels`;
CREATE TABLE IF NOT EXISTS `carmodels` (
  `model_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `car_models` varchar(250) NOT NULL,
  PRIMARY KEY (`model_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carmodels`
--

INSERT INTO `carmodels` (`model_id`, `brand_id`, `car_models`) VALUES
(1, 1, 'Toyota Yaris'),
(2, 1, 'Toyota RAV4'),
(3, 1, 'Toyota Highlander'),
(4, 2, 'Honda Civic'),
(5, 2, 'Honda Odyssey'),
(6, 3, 'Swift'),
(7, 3, 'Celerio'),
(8, 3, 'Vitara'),
(9, 4, 'RANGE ROVER PHEV'),
(10, 4, 'RANGE ROVER EVOQUE'),
(11, 4, 'RANGE ROVER VELAR'),
(12, 5, 'BMW X3'),
(13, 5, 'BMW M5'),
(14, 5, 'BMW X7');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carmodels`
--
ALTER TABLE `carmodels`
  ADD CONSTRAINT `carmodels_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `carbrands` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
