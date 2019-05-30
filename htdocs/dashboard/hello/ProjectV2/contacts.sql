-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 08:16 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contacts`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactv2`
--

CREATE TABLE `contactv2` (
  `id` int(10) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Purpose` varchar(10) NOT NULL,
  `Subject` varchar(30) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactv2`
--

INSERT INTO `contactv2` (`id`, `FirstName`, `LastName`, `Email`, `Purpose`, `Subject`, `Message`) VALUES
(1, 'D', 'D', 'D', '', 'DFGF', 'DFGFDG'),
(2, 'ROHAN', 'MAHARJAN', 'Rohan9841@gmail.com', '', 'Hello', 'My name is Rohan'),
(3, 'Shirish', 'Dangol', 'Dan@gmail.com', '', 'DKLSJFKLSDJ', 'SDLKJFKLDSJLFJLSKDF'),
(4, 'Roshik', 'Maharjan', 'Roshik9814@gmail.com', '', 'Hey ', 'Rojkdjlfs'),
(5, 'Rohan', 'abcd', 'asf@gmail.com', '', 'sdfji', 'My name is Rohan\r\n'),
(6, 'dfsdf', 'sdf', 'asdf@gmai.com', 'male', 'adsf', 'asdf'),
(7, 'dfsdf', 'sdf', 'asdf@gmai.com', 'female', 'adsf', 'asdf'),
(8, 'asdf', 'kjka', 'k@gmail.com', 'Criticize', ' jkjklj', 'kjlfadjskl'),
(9, 'fsdg', 'asdf', 'rohan9841@gmail.com', 'Criticize', 'jlkdsjf', 'Hey ths jlfkads'),
(10, 'adfjadlkfjlkadsjlkfjadsjf', 'asdf', 'ROHAN9841@Gmail.com', 'Feedback', ' Rhey', 'jsdlakjf'),
(11, 'sdaf', 'kjl', 'jklj@gmail.com', 'Criticize', 'jdklsajf', 'jskladjflk'),
(12, 'asdf', 'hjk', 'asdf@gmail.com', 'Criticize', 'jklj', 'jkldsjalfk');

-- --------------------------------------------------------

--
-- Table structure for table `heading`
--

CREATE TABLE `heading` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `heading`
--

INSERT INTO `heading` (`id`, `heading`) VALUES
(1, 'I am a Full Stack Web Developer'),
(2, 'I design and build user interfaces.'),
(3, 'Front-end, Back-end and UX-designer'),
(4, 'I am a U.S based freelancer. I\'m also working remotely on projects for clients all over the world.'),
(5, 'I\'m a web developer and programmer living in Louisiana, United States. I make web application, usually with Spring.  '),
(6, 'I create beautiful and functional websites for small businesses. Check out my portfolio to see more! '),
(7, 'I create products and companies. Innovation is my passion.'),
(8, 'My expertise is in the area of responsive design. With every line of code, I strive to make the web a beautiful place. '),
(9, 'Look no more. I\'m a web design and development specialist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactv2`
--
ALTER TABLE `contactv2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heading`
--
ALTER TABLE `heading`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactv2`
--
ALTER TABLE `contactv2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `heading`
--
ALTER TABLE `heading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
