-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2021 at 04:04 PM
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
-- Database: `interests`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Movie_name` varchar(20) DEFAULT NULL,
  `Actor` varchar(30) DEFAULT NULL,
  `Actress` varchar(30) DEFAULT NULL,
  `Director` varchar(30) DEFAULT NULL,
  `YOR` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Movie_name`, `Actor`, `Actress`, `Director`, `YOR`) VALUES
('Spiderman-Homecoming', 'Tom Holland', 'Zendaya', 'John Watts', 2017),
('Interstellar', 'Matthew McConaughey', 'Anne Hathaway', 'Christopher Nolan ', 2007),
('Ironman', 'Robert Downey Jr', 'Gwyneth Paltrow', 'Jon Favreau', 2008),
('Thor', 'Chris Hemsworth', 'Janet', 'Russo', 2009);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
