-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 04:00 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_categories`
--

CREATE TABLE `db_categories` (
  `catid` int(11) NOT NULL,
  `catname` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_categories`
--

INSERT INTO `db_categories` (`catid`, `catname`) VALUES
(72741, 'MATEMATIKA'),
(71138, 'SAINS'),
(57861, 'DONGENG'),
(28556, 'IOT'),
(84389, 'RELIGI');

-- --------------------------------------------------------

--
-- Table structure for table `db_customers`
--

CREATE TABLE `db_customers` (
  `cusid` int(11) NOT NULL,
  `cusname` varchar(250) DEFAULT NULL,
  `cuscontact` varchar(250) DEFAULT NULL,
  `cusaddress` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_customers`
--

INSERT INTO `db_customers` (`cusid`, `cusname`, `cuscontact`, `cusaddress`) VALUES
(75441, 'ADAM', '082138876452', 'KLATEN');

-- --------------------------------------------------------

--
-- Table structure for table `db_orders`
--

CREATE TABLE `db_orders` (
  `invodate` varchar(250) DEFAULT NULL,
  `invono` varchar(250) DEFAULT NULL,
  `cusid` varchar(250) DEFAULT NULL,
  `cusname` varchar(250) DEFAULT NULL,
  `contact` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `grandtotal` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_orders`
--

INSERT INTO `db_orders` (`invodate`, `invono`, `cusid`, `cusname`, `contact`, `address`, `grandtotal`) VALUES
('12/01/2023', '42774', '75441', 'ADAM', '082138876452', 'KLATEN', '90000');

-- --------------------------------------------------------

--
-- Table structure for table `db_procards`
--

CREATE TABLE `db_procards` (
  `invoid` varchar(250) DEFAULT NULL,
  `cusid` varchar(250) DEFAULT NULL,
  `proid` varchar(250) DEFAULT NULL,
  `proname` varchar(250) DEFAULT NULL,
  `proqut` varchar(250) DEFAULT NULL,
  `proprice` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_procards`
--

INSERT INTO `db_procards` (`invoid`, `cusid`, `proid`, `proname`, `proqut`, `proprice`) VALUES
('42774', '75441', '19268', 'SANG KANCIL', '2', '90000');

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `proid` int(11) NOT NULL,
  `proname` varchar(250) DEFAULT NULL,
  `proqut` varchar(250) DEFAULT NULL,
  `proprice` varchar(250) DEFAULT NULL,
  `prodesc` varchar(250) DEFAULT NULL,
  `procategorie` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`proid`, `proname`, `proqut`, `proprice`, `prodesc`, `procategorie`) VALUES
(19268, 'SANG KANCIL', '50', '45000', 'CERITA SANG KANCIL', 'DONGENG');

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `uid` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `ufullname` varchar(250) DEFAULT NULL,
  `upassword` varchar(250) DEFAULT NULL,
  `umobailno` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`uid`, `username`, `ufullname`, `upassword`, `umobailno`) VALUES
(4, 'sidiq', 'MUHAMMAD SIDIQ FIRMANSYAH', '123', '085740031048');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
