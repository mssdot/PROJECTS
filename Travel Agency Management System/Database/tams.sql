-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2023 at 02:26 PM
-- Server version: 5.7.40-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tams`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookinghistory`
--

CREATE TABLE `bookinghistory` (
  `sno` int(11) NOT NULL,
  `customer` varchar(30) NOT NULL,
  `car` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `damount` int(10) NOT NULL,
  `bookedDate` varchar(20) NOT NULL,
  `bookedtime` varchar(20) NOT NULL,
  `returnedDate` varchar(20) DEFAULT NULL,
  `returnedtime` varchar(20) DEFAULT NULL,
  `totalamount` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookinghistory`
--

INSERT INTO `bookinghistory` (`sno`, `customer`, `car`, `type`, `damount`, `bookedDate`, `bookedtime`, `returnedDate`, `returnedtime`, `totalamount`, `status`) VALUES
(33, 'mss', 'Ambassadors', 'AC', 4050, '26-02-2023', '23:00:54', '27-02-2023', '10:47:33', '32350', 'RETURNED'),
(34, 'mss', 'Ambassadors', 'AC', 4050, '26-02-2023', '23:02:44', '27-02-2023', '12:47:32', '6250', 'RETURNED'),
(35, 'mss', 'Ambassadors', 'AC', 4050, '27-02-2023', '12:48:13', '16-03-2023', '19:23:56', '87675', 'RETURNED'),
(36, 'mss', 'Mahindra Armada', 'NON-AC', 2300, '14-03-2023', '18:48:23', '16-03-2023', '19:43:22', '115040', 'RETURNED'),
(37, 'mss', 'Mahindra Armada', 'AC', 3400, '16-03-2023', '21:14:29', '16-03-2023', '21:15:21', '366920', 'RETURNED'),
(38, 'mss', 'Ambassadors', 'AC', 4050, '16-03-2023', '22:31:44', '16-03-2023', '22:39:00', '4650', 'RETURNED'),
(39, 'mss', 'Ambassadors', 'AC', 4050, '17-03-2023', '10:18:22', '17-03-2023', '10:19:08', '91650', 'RETURNED'),
(40, 'mss', 'Ambassadors', 'AC', 4050, '17-03-2023', '10:23:59', '17-03-2023', '10:35:15', '33944', 'RETURNED'),
(41, 'mss', 'Ambassadors', 'AC', 4050, '17-03-2023', '10:34:06', '17-03-2023', '19:14:05', '4650', 'RETURNED'),
(42, 'mss', 'Ambassadors', 'AC', 4050, '17-03-2023', '20:45:04', NULL, NULL, NULL, 'NOT RETURNED'),
(43, 'test', 'Ambassadors', 'AC', 4050, '18-03-2023', '14:23:46', '18-03-2023', '14:25:24', '85125', 'RETURNED');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `sno` int(11) NOT NULL,
  `car` varchar(20) NOT NULL,
  `type` varchar(15) NOT NULL,
  `price` int(10) NOT NULL,
  `total` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `repair` int(11) NOT NULL,
  `rentedout` int(11) NOT NULL,
  `expenses` int(11) NOT NULL,
  `revenue` int(11) NOT NULL,
  `totalcustomers` int(11) NOT NULL,
  `profit` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`sno`, `car`, `type`, `price`, `total`, `available`, `repair`, `rentedout`, `expenses`, `revenue`, `totalcustomers`, `profit`) VALUES
(1, 'Ambassadors', 'NON-AC', 27000, 10, 10, 0, 0, 0, 0, 0, 0),
(2, 'Ambassadors', 'AC', 40500, 4, 3, 0, 1, 372922, 220019, 6, 0),
(3, 'Tata Sumo', 'NON-AC', 10000, 10, 10, 0, 0, 0, 0, 0, 0),
(4, 'Tata Sumo', 'AC', 15000, 2, 2, 0, 0, 0, 0, 0, 0),
(5, 'Maruti Omni', 'NON-AC', 7000, 10, 10, 0, 0, 0, 0, 0, 0),
(6, 'Maruti Omni', 'AC', 10500, 2, 2, 0, 0, 0, 0, 0, 0),
(7, 'Maruti Esteem', 'NON-AC', 20000, 10, 10, 0, 0, 0, 0, 0, 0),
(8, 'Maruti Esteem', 'AC', 30000, 2, 2, 0, 0, 0, 0, 0, 0),
(9, 'Mahindra Armada', 'NON-AC', 23000, 10, 10, 0, 0, 0, 0, 0, 0),
(10, 'Mahindra Armada', 'AC', 34000, 2, 2, 0, 0, 332920, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `sno` int(11) NOT NULL,
  `car` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `deposit` int(11) NOT NULL,
  `min_charge` int(11) NOT NULL,
  `charge_pkm` int(11) NOT NULL,
  `charge_phr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`sno`, `car`, `type`, `deposit`, `min_charge`, `charge_pkm`, `charge_phr`) VALUES
(1, 'Ambassadors', 'NON-AC', 2700, 1777, 8, 450),
(2, 'Ambassadors', 'AC', 400, 2400, 20, 2000),
(3, 'Tata Sumo', 'NON-AC', 1000, 600, 12, 150),
(4, 'Tata Sumo', 'AC', 1500, 450, 18, 225),
(5, 'Maruti Omni', 'NON-AC', 700, 480, 10, 120),
(6, 'Maruti Omni', 'AC', 1050, 720, 15, 180),
(7, 'Maruti Esteem', 'NON-AC', 2000, 333, 13, 83),
(8, 'Maruti Esteem', 'AC', 3000, 500, 17, 125),
(9, 'Mahindra Armada', 'NON-AC', 2300, 380, 20, 95),
(10, 'Mahindra Armada', 'AC', 3400, 427, 30, 142);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `sno` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `pno` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`sno`, `name`, `username`, `password`, `pno`) VALUES
(3, 'SUMAN', 'mss', '1', '1'),
(8, 'raj', 'raj', '1', '1'),
(9, 'John Smith', '30', '1', '1'),
(11, 'uday', 'udys', '1', '1'),
(12, 'uday', 'udy', '123', '1'),
(13, 'naga', 'ng', '123', '1'),
(14, 'JANI', 'jan', '1', '1'),
(16, 'bantu', 'bantu', '12', '123'),
(17, 'test', 'test', '123', '9701578675');

-- --------------------------------------------------------

--
-- Table structure for table `repair`
--

CREATE TABLE `repair` (
  `sno` int(11) NOT NULL,
  `car` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `count` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repair`
--

INSERT INTO `repair` (`sno`, `car`, `type`, `count`) VALUES
(1, 'Ambassadors', 'AC', 0),
(2, 'Ambassadors', 'NON-AC', 0),
(3, 'Tata Sumo', 'AC', 0),
(4, 'Tata Sumo', 'NON-AC', 0),
(5, 'Maruti Omni', 'AC', 0),
(6, 'Maruti Omni', 'NON-AC', 0),
(7, 'Maruti Esteem', 'AC', 0),
(8, 'Maruti Esteem', 'NON-AC', 0),
(9, 'Mahindra Armada', 'AC', 0),
(10, 'Mahindra Armada', 'NON-AC', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookinghistory`
--
ALTER TABLE `bookinghistory`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `repair`
--
ALTER TABLE `repair`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookinghistory`
--
ALTER TABLE `bookinghistory`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `repair`
--
ALTER TABLE `repair`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
