-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 10:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `approval` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `phoneno`, `email`, `cdate`, `approval`) VALUES
(3, 'kashim kyari', 2147483647, 'kashimkyari@gmail.com', '2020-06-10', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'Admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `newsletterlog`
--

CREATE TABLE `newsletterlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`) VALUES
(2, 'Dr.', 'kashim', 'kyari', 'Superior Room', 'Single', 1, '2020-06-12', '2020-06-11', -320.00, -323.20, 0.00, 'Room only', -3.20, -1),
(3, 'Mrs.', 'kashim', 'kyari', 'Deluxe Room', 'Single', 1, '2020-06-12', '2020-06-19', 1540.00, 1586.20, 30.80, 'Breakfast', 15.40, 7),
(4, 'Dr.', 'kashim', 'kyari', 'Superior Room', 'Single', 1, '2020-06-18', '2020-06-11', -2240.00, -2262.40, 0.00, 'Room only', -22.40, -7),
(5, 'Dr.', 'kashim', 'kyari', 'Superior Room', 'Single', 1, '2020-06-11', '2020-06-27', 5120.00, 5171.20, 0.00, 'Room only', 51.20, 16),
(6, 'Miss.', 'kashim', 'kyari', 'Guest House', 'Double', 2, '2020-06-27', '2020-07-09', 4320.00, 4536.00, 172.80, 'Full Board', 43.20, 12),
(11, 'Dr.', 'kashim', 'kyari', 'Superior Room', 'Single', 1, '2020-06-12', '2020-06-19', 2240.00, 2262.40, 0.00, 'Room only', 22.40, 7);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(17, 'Superior Room', 'Single', 'NotFree', 11),
(18, 'Superior Room', 'Double', 'Free', NULL),
(19, 'Guest House', 'Double', 'NotFree', 6),
(20, 'Single Room', 'Single', 'Free', NULL),
(21, 'Deluxe Room', 'Double', 'Free', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text DEFAULT NULL,
  `LName` text DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text DEFAULT NULL,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `Country`, `Phone`, `TRoom`, `Bed`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`) VALUES
(5, 'Dr.', 'kashim', 'kyari', 'kashim@gmail.com', 'Nigeria', '+2348063462333', 'Superior Room', 'Single', '1', 'Room only', '2020-06-11', '2020-06-27', 'Confirm', 16),
(6, 'Miss.', 'kashim', 'kyari', 'a@gmail.com', 'Mauritius', '+2348063462333', 'Guest House', 'Double', '2', 'Full Board', '2020-06-27', '2020-07-09', 'Confirm', 12),
(7, 'Dr.', 'kashim', 'kyari', 'qw@gmail.com', 'Mauritius', '+2348063462333', 'Superior Room', 'Quad', '2', 'Full Board', '2020-06-19', '2020-06-27', 'Not Confirmed', 8),
(8, 'Miss.', 'kashim', 'kyari', 'werw@gmail.com', 'Mauritius', '+2348063462333', 'Superior Room', 'Triple', '2', 'Full Board', '2020-06-11', '2020-06-12', 'Not Confirmed', 1),
(9, 'Dr.', 'kashim', 'kyari', 'dwcwc@gmail.com', 'Mauritius', '+2348063462333', 'Superior Room', 'Quad', '2', 'Room only', '2020-06-11', '2020-06-18', 'Not Confirmed', 7),
(10, 'Dr.', 'kashim', 'kyari', 'kashicwdecwmkyari@gmail.com', 'Mauritius', '+2348063462333', 'Superior Room', 'Single', '2', 'Room only', '2020-06-11', '2020-06-25', 'Not Confirmed', 14),
(11, 'Dr.', 'kashim', 'kyari', 'kashimkyari@gmail.com', 'Mauritius', '+2348063462333', 'Superior Room', 'Single', '1', 'Room only', '2020-06-12', '2020-06-19', 'Confirm', 7),
(12, 'Miss.', 'xww', 'kyari', 'kashimkyari@gmail.comwww', 'Mauritius', '+2348063462333', 'Superior Room', 'Single', '1', 'Room only', '2020-06-12', '2020-06-19', 'Not Conform', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
