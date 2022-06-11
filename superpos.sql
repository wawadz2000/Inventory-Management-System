-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2022 at 02:00 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superpos`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `ID` int(11) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`ID`, `Brand`, `Status`) VALUES
(4, 'ps', 'Active'),
(5, 'xbox', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `ID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`ID`, `Username`, `Password`, `Status`) VALUES
(3, 'wawadz200', '159874236', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `ID` int(11) NOT NULL,
  `Categorie` text NOT NULL,
  `Status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`ID`, `Categorie`, `Status`) VALUES
(4, 'fenetres', 'Active'),
(10, 'les pores', 'Active'),
(11, 'les pieces des taches', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `BrandID` int(11) NOT NULL,
  `CostPrice` int(11) NOT NULL,
  `RetailPrice` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `BarCode` varchar(255) NOT NULL,
  `Status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `ProductName`, `Description`, `CategoryID`, `BrandID`, `CostPrice`, `RetailPrice`, `Qty`, `BarCode`, `Status`) VALUES
(5, 'un fénetre', '24*30m', 10, 3, 4000, 5000, 7, '31642', 'Active'),
(8, 'ire', 'fdsfsdf', 4, 3, 1231, 23123, 520, '3165', 'Active'),
(9, 'caisse', '152315', 11, 3, 125, 2525, 12, '12351', 'Active'),
(16, 'delaa', 'green + red', 10, 3, 500, 2500, 400, 'dl3', 'Active'),
(17, 'nitendo', 'black + 4kg + collection', 4, 4, 45, 50, 150, 'netblack', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `ID` int(11) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Cashier` varchar(255) NOT NULL,
  `Subtotal` int(11) NOT NULL,
  `Pay` int(11) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`ID`, `Date`, `Cashier`, `Subtotal`, `Pay`, `Balance`) VALUES
(1, '2022/05/27', '', 25250, 30000, 4750),
(2, '2022/05/27', '', 12625, 12000, -625),
(3, '2022/06/05', '', 25250, 20000, -5250),
(4, '2022/06/05', '', 25250, 25000, -250),
(5, '2022/06/05', '', 25250, 25000, -250),
(6, '2022/06/05', '', 25250, 25000, -250),
(7, '2022/06/05', '', 25250, 1232, -24018),
(8, '2022/06/05', '', 25250, 152423, 127173),
(9, '2022/06/05', '', 25250, 2123, -23127),
(10, '2022/06/05', '', 25250, 211, -25039),
(11, '2022/06/06', '', 25250, 125, -25125),
(12, '2022/06/06', '', 25250, 11462, -13788),
(13, '2022/06/06', '', 25250, 25000, -250),
(14, '2022/06/06', '', 5050, 25, -5025),
(15, '2022/06/06', '', 40400, 2500, -37900),
(16, '2022/06/06', '', 25250, 15000, -10250),
(17, '2022/06/06', '', 30300, 15222, -15078),
(18, '2022/06/06', '', 30300, 12351, -17949),
(19, '2022/06/07', '', 500, 200, -300),
(20, '2022/06/08', 'wawadz2000', 25250, 25250, 0),
(21, '2022/06/08', 'wawadz2000', 25250, 25000, -250),
(22, '2022/06/08', 'wawadz200', 250, 200, -50),
(23, '2022/06/08', 'wawadz200', 250, 200, -50);

-- --------------------------------------------------------

--
-- Table structure for table `sales_products`
--

CREATE TABLE `sales_products` (
  `ID` int(11) NOT NULL,
  `SalesID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `SellPrice` int(255) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sales_products`
--
ALTER TABLE `sales_products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sales_products`
--
ALTER TABLE `sales_products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
