-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 10, 2019 at 08:02 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `Model` varchar(200) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Price` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`Model`, `Color`, `Price`) VALUES
('AirPods with Wireless Charging Case', 'White', 1599),
('HomePod', 'White', 2399),
('HomePod', 'Black', 2399),
('AppleTV 4K', 'Black', 1388),
('AppleTV HD', 'Black', 1188),
('Magic Mouse 2', 'Black', 729),
('Magic Keyboard', 'Black', 999),
('Beats Studio 3 Wireless', 'Blue', 2288),
('Beats Studio 3 Wireless', 'Red', 2288),
('Beats Studio 3 Wireless', 'Gold', 2288);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Model` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Capacity` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customerorder`
--

CREATE TABLE `customerorder` (
  `Model` varchar(100) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Capacity` varchar(100) NOT NULL,
  `Price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`first_name`, `last_name`, `contact_no`, `comment`) VALUES
('123', '123', '1111111', 'Happy:)'),
('None', 'None', 'None', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `imac`
--

CREATE TABLE `imac` (
  `Model` varchar(100) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Capacity` varchar(100) NOT NULL,
  `Price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imac`
--

INSERT INTO `imac` (`Model`, `Color`, `Capacity`, `Price`) VALUES
('MacBook (Retina, 12-inch, 2019)', 'Gold', '256GB SSD', 9988),
('MacBook (Retina, 12-inch, 2019)', 'Space Gray', '256GB SSD', 9988),
('MacBook (Retina, 12-inch, 2019)', 'Silver', '256GB SSD', 9988),
('MacBook (Retina, 12-inch, 2019)', 'Gold', '512GB SSD', 11988),
('MacBook (Retina, 12-inch, 2019)', 'Space Gray', '512GB SSD', 11988),
('MacBook (Retina, 12-inch, 2019)', 'Silver', '512GB SSD', 11988),
('MacBookAir (Retina, 13.3-inch, 2019)', 'Gold', '128GB SSD', 9499),
('MacBookAir (Retina, 13.3-inch, 2019)', 'Space Gray', '128GB SSD', 9499),
('MacBookAir (Retina, 13.3-inch, 2019)', 'Silver', '128GB SSD', 9499),
('MacBookAir (Retina, 13.3-inch, 2019)', 'Gold', '256GB SSD', 10999),
('MacBookAir (Retina, 13.3-inch, 2019)', 'Space Gray', '256GB SSD', 10999),
('MacBookAir (Retina, 13.3-inch, 2019)', 'Silver', '256GB SSD', 10999),
('MacBookPro (13-inch, 2019)', 'Silver', '128GB SSD', 9988),
('MacBookPro (13-inch, 2019)', 'Space Gray', '128GB SSD', 9988),
('MacBookPro (13-inch, 2019)', 'Silver', '256GB SSD', 11488),
('MacBookPro (13-inch, 2019)', 'Space Gray', '256GB SSD', 11488),
('MacBookPro (15-inch,Touch Bar, 2019)', 'Silver', '256GB SSD', 18988),
('MacBookPro (15-inch,Touch Bar, 2019)', 'Space Gray', '256GB SSD', 18988),
('MacBookPro (15-inch,Touch Bar, 2019)', 'Silver', '512GB SSD', 21988),
('MacBookPro (15-inch,Touch Bar, 2019)', 'Space Gray', '512GB SSD', 21988),
('iMac (21.5-inch)', 'Silver', '1TB', 8488),
('iMac (21.5-inch, 4K)', 'Silver', '1TB', 9999),
('iMac (21.5-inch, 4K)', 'Silver', '1TB SSD', 11499),
('iMac (27-inch, 5K)', 'Silver', '1TB', 13899),
('iMac (27-inch, 5K)', 'Silver', '1TB SSD', 15399),
('iMac (27-inch, 5K)', 'Silver', '2TB SSD', 17799),
('iMac Pro (27-inch, 5K)', 'Space Gray', '1TB SSD', 38888);

-- --------------------------------------------------------

--
-- Table structure for table `ipad`
--

CREATE TABLE `ipad` (
  `Model` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Capacity` varchar(255) NOT NULL,
  `Price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipad`
--

INSERT INTO `ipad` (`Model`, `Color`, `Capacity`, `Price`) VALUES
('iPad mini', 'Black', '16GB', 980),
('iPad mini', 'White', '16GB', 980),
('iPad mini', 'Black', '32GB', 1080),
('iPad mini', 'White', '32GB', 1080),
('iPad mini', 'Black', '64GB', 1180),
('iPad mini', 'White', '64GB', 1180),
('iPad mini 2', 'Black', '16GB', 1180),
('iPad mini 2 ', 'White', '16GB', 1180),
('iPad mini 2', 'Black', '32GB', 1280),
('iPad mini 2', 'White', '32GB', 1280),
('iPad mini 2', 'Black', '64GB', 1480),
('iPad mini 2', 'White', '64GB', 1480),
('iPad mini 2', 'Black', '128GB', 1680),
('iPad mini 3', 'Silver', '16GB', 1680),
('iPad mini 3', 'Space Gray', '16GB', 1680),
('iPad mini 3', 'Gold', '16GB ', 1680),
('iPad mini 3', 'Silver', '64GB', 1880),
('iPad mini 3', 'Space Gray', '64GB', 1880),
('iPad mini 3', 'Gold', '64GB', 1880),
('iPad mini 3', 'Silver', '128GB', 2080),
('iPad mini 3', 'Space Gray', '128GB ', 2080),
('iPad mini 3', 'Gold', '128GB', 2080),
('iPad mini 4', 'Silver', '16GB ', 2280),
('iPad mini 4', 'Space gray', '16GB', 2280),
('iPad mini 4', 'Gold', '16GB ', 2280),
('iPad mini 4', 'Silver', '64GB', 2580),
('iPad mini 4', 'Space gray', '64GB ', 2580),
('iPad mini 4', 'Gold', '64GB', 2580),
('iPad mini 4', 'Silver', '128GB', 2880),
('iPad mini 5', 'Silver', '64GB', 2588),
('iPad mini 5', 'Space gray', '64GB', 2588),
('iPad mini 5', 'Gold', '64GB', 2588),
('iPad mini 5', 'Silver', '256GB', 3088),
('iPad mini 5', 'Space Gray', '256GB', 3088),
('iPad Air 2', 'Silver', '16GB', 2588),
('iPad Air 2', 'Space Gray', '16GB', 2588),
('iPad Air 2', 'Gold', '16GB', 2588),
('iPad Air 2', 'Silver', '32GB', 2588),
('iPad Air 2', 'Space Gray', '32GB', 2588),
('iPad Air 2', 'Gold', '32GB', 2588),
('iPad Air 2', 'Sliver', '64GB', 2988),
('iPad Air 2', 'Space Gray', '64GB', 2988),
('iPad Air 2', 'Gold', '64GB ', 2988),
('iPad Air 2', 'Sliver', '128GB', 3188),
('iPad Air 2', 'Space Gray', '128GB', 3188),
('iPad Air 2', 'Gold', '128GB', 3188),
('iPad Air 3', 'Silver', '64GB', 3188),
('iPad Air 3', 'Space Gray', '64GB', 3188),
('iPad Air 3', 'Gold', '64GB', 3188),
('iPad Air 3', 'Silver', '256GB', 3488),
('iPad Air 3', 'Space Gray', '256GB ', 3488),
('iPad Air 3', 'Gold', '256GB', 3488),
('iPad Pro (12.9-inch)', 'Silver', '32GB', 4388),
('iPad Pro (12.9-inch)', 'Space Gray', '32GB', 4388),
('iPad Pro (12.9-inch)', 'Gold', '32GB', 4388),
('iPad Pro (12.9-inch)', 'Silver', '128GB', 4688),
('iPad Pro (12.9-inch)', 'Space Gray', '128GB', 4688),
('iPad Pro (12.9-inch)', 'Gold', '128GB', 4688),
('iPad Pro (12.9-inch)', 'Silver', '256GB', 4988),
('iPad Pro (12.9-inch)', 'Space Gray', '256GB', 4988),
('iPad Pro (12.9-inch)', 'Gold', '256GB', 4988),
('iPad Pro (10.5-inch)', 'Silver', '64GB', 4388),
('iPad Pro (10.5-inch)', 'Space Gray', '64GB', 4388),
('iPad Pro (10.5-inch)', 'Gold', '64GB', 4388),
('iPad Pro (10.5-inch)', 'Rose Gold', '64GB', 4388),
('iPad Pro (10.5-inch)', 'Silver', '256GB', 4588),
('iPad Pro (10.5-inch)', 'Space Gray', '256GB', 4588),
('iPad Pro (10.5-inch)', 'Gold', '256GB', 4588),
('iPad Pro (10.5-inch)', 'Rose Gold', '256GB', 4588);

-- --------------------------------------------------------

--
-- Table structure for table `iphone`
--

CREATE TABLE `iphone` (
  `Model` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Capacity` varchar(255) NOT NULL,
  `Price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iphone`
--

INSERT INTO `iphone` (`Model`, `Color`, `Capacity`, `Price`) VALUES
('iPhone 8', 'Gold', '64GB', 4180),
('iPhone 8', 'Silver', '64GB', 4180),
('iPhone 8', 'Space Gray', ' 64GB', 4180),
('iPhone 8', '(PRODUCT)RED', '64GB', 4180),
('iPhone 8', 'Gold', '256GB', 4480),
('iPhone 8', 'Silver', '256GB', 4480),
('iPhone 8', 'Space Gray', '256GB', 4480),
('iPhone 8', '(PPRODUCT) RED', '256GB', 4480),
('iPhone 8 Plus', 'Gold', '64GB', 4680),
('iPhone 8 Plus', 'Silver', '64GB', 4680),
('iPhone 8 Plus', 'Space Gray', '64GB', 4680),
('iPhone 8 Plus', '(PRODUCT)RED', '64GB', 4680),
('iPhone 8 Plus', 'Gold', '256GB', 4980),
('iPhone 8 Plus', 'Silver', '256GB', 4980),
('iPhone 8 Plus', 'Space Gray', '256GB', 4980),
('iPhone 8 Plus', '(PRODUCT)RED', '256GB', 4980),
('iPhone X', 'Silver ', '64GB', 6380),
('iPhone X', 'Space Gray', '64GB', 6380),
('iPhone X', 'Silver', '256GB', 6980),
('iPhone X ', 'Space Gray', '256GB', 6980),
('iPhone Xs', 'Silver', '64GB', 8588),
('iPhone Xs', 'Space Gray', '64GB', 8588),
('iPhone Xs', 'Gold', '64GB', 8588),
('iPhone Xs ', 'Silver', '256GB', 8888),
('iPhone Xs', 'Space Gray', '256GB', 8888),
('iPhone Xs', 'Gold', '256GB', 8888),
('iPhone Xs', 'Silver', '512GB', 9588),
('iPhone Xs', 'Space Gray', '512GB', 9588),
('iPhone Xs', 'Gold', '512GB', 9588),
('iPhone XR', 'Black', '64GB', 6388),
('iPhone XR', 'White', '64GB', 6388),
('iPhone XR', 'Blue', '64GB', 6388),
('iPhone XR ', 'Yellow', '64GB', 6388),
('iPhone XR', 'Coral', '64GB', 6388),
('iPhone XR ', '(PRODUCT)RED', '64GB', 6388),
('iPhone XR', 'Black', '128GB', 6688),
('iPhone XR', 'White', '128GB', 6688),
('iPhone XR', 'Blue', '128GB', 6688),
('iPhone XR', 'Yellow', '128GB', 6688),
('iPhone XR', 'Coral', '128GB', 6688),
('iPhone XR', '(PRODUCT)RED', '128GB', 6688),
('iPhone XR', 'Black', '256GB', 7188),
('iPhone XR', 'White', '256GB', 7188),
('iPhone XR', 'Blue', '256GB', 7188),
('iPhone XR', 'Yellow', '256GB', 7188),
('iPhone XR', 'Coral', '256GB', 7188),
('iPhone XR', '(PRODUCT)RED', '256GB', 7188),
('iPhone Xs Max', 'Silver', '64GB', 9588),
('iPhone Xs Max', 'Space Gray', '64GB ', 9588),
('iPhone Xs Max', 'Gold', '64GB', 9588),
('iPhone Xs Max', 'Silver', '256GB', 10588),
('iPhone Xs Max', 'Space Gray', '256GB', 10588),
('iPhone Xs Max', 'Gold', '256GB', 10588),
('iPhone Xs Max', 'Silver', '512GB', 11888),
('iPhone Xs Max', 'Space Gray', '512GB', 11888),
('iPhone Xs Max', 'Gold', '512GB', 11888);

-- --------------------------------------------------------

--
-- Table structure for table `User_info`
--

CREATE TABLE `User_info` (
  `user_id` int(8) NOT NULL,
  `user_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_pwd` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_pwdrepeat` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_email` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User_info`
--

INSERT INTO `User_info` (`user_id`, `user_name`, `user_pwd`, `user_pwdrepeat`, `user_email`) VALUES
(84, 'ccc', '123456', '', '123@gmail.com'),
(86, '205CDE', '123123', '', 'kk@gmail.com'),
(87, '123123', '55555', '', '55555@gmail.com'),
(88, '123123123', '123123123', '', '123123123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `User_info`
--
ALTER TABLE `User_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `User_info`
--
ALTER TABLE `User_info`
  MODIFY `user_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
