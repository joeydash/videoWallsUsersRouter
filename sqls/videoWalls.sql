-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 16, 2018 at 09:46 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videoWalls`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(63) NOT NULL,
  `productName` varchar(127) NOT NULL,
  `productDetails` text NOT NULL,
  `productCategory` varchar(31) NOT NULL,
  `productStringTags` text NOT NULL,
  `totalRatings` int(11) NOT NULL,
  `totalUsersRated` int(11) NOT NULL,
  `totalHits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productName`, `productDetails`, `productCategory`, `productStringTags`, `totalRatings`, `totalUsersRated`, `totalHits`) VALUES
('a6e62837d3a9541055026dab789d381f', 'nokia 1110', 'hard phone', 'mobile', 'nokia 1110 hard phone mobile', 0, 0, 0),
('51a5869f2d3e67e79e669ef8a39373cc', 'nokia 1000', 'soft phone', 'mobile', 'nokia 1000 soft phone mobile', 0, 0, 0),
('5ad79b9921c05b0d5288b496de22bd99', 'nokia 1000', 'hard phone', 'mobile', 'nokia 1000 hard phone mobile', 0, 0, 0),
('4fba5179a39bd1ce5cd4fffd657b8bf9', 'nokia 1110', 'soft phone', 'mobile', 'nokia 1110 soft phone mobile', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

CREATE TABLE `salesman` (
  `id` varchar(63) NOT NULL,
  `userName` varchar(63) NOT NULL,
  `randomString` varchar(63) NOT NULL,
  `hashedPassword` varchar(63) NOT NULL,
  `role` varchar(31) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `isOccupied` tinyint(1) NOT NULL,
  `createdAt` int(11) NOT NULL,
  `lastSignedIn` int(11) NOT NULL,
  `authToken` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`id`, `userName`, `randomString`, `hashedPassword`, `role`, `isActive`, `isOccupied`, `createdAt`, `lastSignedIn`, `authToken`) VALUES
('74af7fc1c163ca34c65c5893993d6b58', 'joeydash', '6pc5hsaZgdiRd8mlDbsB5C1czDdQMVR', '959cbc8a1c3266f0fb177cae68b71a84', 'salesman', 0, 0, 1528972632, 1528972632, '7oiCkZpLwEwo4VkNZsAhp9Ilklfzg8N'),
('2c7a8c6b7721b39c79391e0b623031dc', '', 'CqgLaJSxvwUnNrQZuYk9mqm5yfZDO60', 'a711da0543d7efc54d91e437848b7843', 'salesman', 0, 0, 1529125961, 1529125961, '2711ukiriH7U2o6xtbWoJ6pmOp4qtdS');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;