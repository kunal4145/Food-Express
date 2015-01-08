-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2015 at 10:58 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodexpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE IF NOT EXISTS `rating_review` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `shop` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL,
  `rating` int(1) NOT NULL,
  `review` varchar(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `station` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`id`, `shop`, `item`, `rating`, `review`, `name`, `station`) VALUES
(1, 'North Indian', 'Pav Bhaji', 5, 'nothing', 'kunal', 'Patna'),
(2, 'North Indian', 'Pav Bhaji', 0, 'fcszzc', 'cxcx', 'Patna'),
(3, 'North Indian', 'Pav Bhaji', 0, 'fcszzc', 'cxcx', 'Patna'),
(4, 'North Indian', 'Pav Bhaji', 5, 'this is the first ever review thru the avd', 'kunal shubham', 'Patna'),
(5, 'North Indian', 'Pav Bhaji', 5, 'another', 'kunal', 'Patna'),
(6, 'North Indian', 'Pav Bhaji', 2, 'hot fuzz', 'kunal', 'Patna'),
(7, 'North Indian', 'Pav Bhaji', 4, 'avd', 'dlsndsa', 'Patna'),
(8, 'North Indian', 'Pav Bhaji', 4, 'hot fuzz', 'kunal', 'Patna'),
(9, 'North Indian', 'Pav Bhaji', 2, '27 oct', 'kunal', 'Patna'),
(10, 'North Indian', 'Pav Bhaji', 1, 'halo', 'estermont', 'Patna'),
(11, 'South Indian', 'Idli', 5, '', '', 'Patna'),
(12, 'South Indian', 'Idli', 4, 'quality is not upto par. Idi is too hard', 'kunal', 'Patna'),
(13, 'South Indian', 'Idli', 2, 'Idli is too hard. Sambhar doesn''t taste remotely like sambhar', 'kunal shubham', 'Patna'),
(14, 'South Indian', 'Idli', 5, 'Idli is too hard. Chutney has more peanut than coconut.', 'Rohan', 'Patna'),
(15, 'South Indian', 'dosa', 4, 'This app is fully working', 'Kunal Shubham', 'Patna'),
(16, 'Vada Stall', 'vada', 5, 'good', 'gurpi', 'Patna'),
(17, 'South Indian', 'vada', 4, 'app working', 'kunal', 'Patna'),
(18, 'Vada Stall', 'idli', 5, 'vadadadadadada', 'kunak', 'Patna'),
(19, 'Vada Stall', 'idli', 3, 'not good.', 'hari', 'Patna');

-- --------------------------------------------------------

--
-- Table structure for table `shop_location`
--

CREATE TABLE IF NOT EXISTS `shop_location` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `station` varchar(50) NOT NULL,
  `shop` varchar(50) NOT NULL,
  `offset` int(5) NOT NULL,
  `item` varchar(50) NOT NULL,
  `ratingsum` int(5) NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `shop_location`
--

INSERT INTO `shop_location` (`id`, `station`, `shop`, `offset`, `item`, `ratingsum`, `count`) VALUES
(1, 'Patna', 'South Indian', 20, 'Dosa', 31, 7),
(2, 'Patna', 'South Indian', 20, 'Idli', 19, 5),
(3, 'Patna', 'South Indian', 20, 'Vada', 30, 8),
(4, 'Patna', 'Vada Stall', 70, 'Vada', 34, 8),
(5, 'Patna', 'Vada Stall', 70, 'Idli', 27, 10);

-- --------------------------------------------------------

--
-- Table structure for table `station_location`
--

CREATE TABLE IF NOT EXISTS `station_location` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `station` varchar(50) NOT NULL,
  `latitude` varchar(7) NOT NULL,
  `longitude` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `station_location`
--

INSERT INTO `station_location` (`id`, `station`, `latitude`, `longitude`) VALUES
(1, 'Patna', '25.611', '85.144'),
(2, 'Lucknow', '26.847', '80.946'),
(3, 'Mughalsarai', '25.281', '83.119'),
(4, 'Delhi', '28.635', '77.225'),
(5, 'Kolkata', '22.572', '88.364');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE IF NOT EXISTS `trains` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `train` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`id`, `train`) VALUES
(1, 'Farakka Express'),
(2, 'North East Express'),
(3, 'Brahmputra Mail'),
(4, 'Vikramshila Express');

-- --------------------------------------------------------

--
-- Table structure for table `train_bogey`
--

CREATE TABLE IF NOT EXISTS `train_bogey` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `train` varchar(50) NOT NULL,
  `bogey` varchar(50) NOT NULL,
  `offset` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `train_bogey`
--

INSERT INTO `train_bogey` (`id`, `train`, `bogey`, `offset`) VALUES
(1, 'Farakka Express', 'a1', 50),
(2, 'Farakka Express', 'a2', 90),
(3, 'Farakka Express', 'ac', 130),
(4, 'Farakka Express', 'sl', 190),
(5, 'Brahmputra Mail', 'sl', 50),
(6, 'Brahmputra Mail', 'b1', 100),
(7, 'Brahmputra Mail', 'ac', 150),
(8, 'North East Express', 'ac1', 40),
(9, 'North East Express', 'ac2', 80),
(10, 'North East Express', 'ac3', 120);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
