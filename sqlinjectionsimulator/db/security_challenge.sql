-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 10, 2016 at 09:40 PM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `security_challenge`
--
CREATE DATABASE IF NOT EXISTS `security_challenge` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `security_challenge`;

-- --------------------------------------------------------

--
-- Table structure for table `challenge_clue`
--

CREATE TABLE IF NOT EXISTS `challenge_clue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `challenge_clue`
--

INSERT INTO `challenge_clue` (`id`, `info`) VALUES
(1, 'Looking to simulate SQL Injection for your College Project?'),
(2, 'You have just done it');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE IF NOT EXISTS `offices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `city`, `address`, `phone`) VALUES
(1, 'Mumbai', 'Bandra Kurla Complex, Bandra East, Mumbai', '+91 8879685635'),
(2, 'Delhi', 'Lodhi Rd, CGO Complex, New Delhi', '+91 1124369975'),
(3, 'Gurugram', 'Sector 15 Part 2, Sector 15, Haryana', '+91 1244512900'),
(4, 'Haridwar', 'Mayapur, Haridwar', '+91 2334227025'),
(5, 'Pune', 'Cybercity, Hadapsar, Pune, Maharashtra', '+91 18001209088'),
(6, 'Bangalore', 'Temple Tree Building, Koramangala', '+91 7022306925'),
(7, 'Noida', 'World Trade Tower, Tower B', '+91 1206829400'),
(8, 'Chennai', 'Anna Salai, Chennai', '+91 8428881000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` char(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'Welc0meT0NetlightEdgeC0nferenceInSt0ckh0lm!');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- Create database user
--
GRANT SELECT ON `security_challenge`.* TO 'sec_user'@'localhost';
SET PASSWORD FOR 'sec_user'@'localhost' = '*D8D83CD772490A5A5E41D880C313D3AE8C95EB3E';
FLUSH PRIVILEGES;