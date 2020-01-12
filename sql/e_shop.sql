-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 26, 2018 at 10:53 AM
-- Server version: 5.7.19
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
-- Database: `e_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `ad_user` varchar(50) NOT NULL,
  `ad_pass` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `ad_user`, `ad_pass`, `email`, `details`, `role`) VALUES
(1, 'Md Abdullah', 'abd', '202cb962ac59075b964b07152d234b70', 'abdullah001rti@gmail.com', 'I am a programmer.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Iphone'),
(7, 'Samsung'),
(8, 'Acer'),
(9, 'Canon');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sessionId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(26, '4b2n2u6qlv4e41ddllrs7u70d3', 8, 'Galaxy s7 edge', 35000.00, 1, 'uploads/products/a0d5b72c62.jpg'),
(27, 'e4sugudqmu0c40h2bq8cfufilk', 7, 'i phone 6+', 40000.00, 4, 'uploads/products/d14f0354a0.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(255) NOT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(7, 'Somethin'),
(8, 'Mobile Phone'),
(9, 'Cloth'),
(10, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

DROP TABLE IF EXISTS `tbl_compare`;
CREATE TABLE IF NOT EXISTS `tbl_compare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `csId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `csId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`csId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`csId`, `name`, `city`, `zip`, `email`, `address`, `country`, `phone`, `pass`) VALUES
(1, 'sdf', 'sdf', 'sdf', 'ssd', 'sd', 'fsdf', 'ssdf', 'sfd'),
(2, 'Md. Abdullah', 'Dhaka', '1230', 'abdullah001rti@gmail.com', 'uttara', 'Bangladesh', '01738868597', '202cb962ac59075b964b07152d234b70'),
(4, 'ABD', 'Dhaka', '1230', '15103029@iubat.edu', 'Shasangacha', 'Bangladesh', '01685396439', '4911e516e5aa21d327512e0c8b197616'),
(5, 'Roni', 'Barisal', '1256', 'roni@weebros.com', 'barisal', 'Bangladesh', '01837237303', '912ec803b2ce49e4a541068d495ab570'),
(6, 'Tipu', 'Dhaka', '12300', 'tipu@gmail.com', 'uttara sector-10', 'Bangladesh', '01837237303', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `csId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `csId`, `productId`, `productName`, `quantity`, `price`, `image`, `Date`, `status`) VALUES
(66, 6, 7, 'i phone 6+', 4, 160000.00, 'uploads/products/d14f0354a0.png', '2017-07-26 02:07:25', 2),
(67, 6, 11, 'Canon Nikon D3', 1, 20000.00, 'uploads/products/f289301898.jpg', '2017-07-26 02:07:37', 2),
(68, 6, 9, 'Acer', 1, 20000.00, 'uploads/products/2f36520cb9.jpg', '2017-07-26 02:54:23', 0),
(69, 6, 9, 'Acer', 1, 20000.00, 'uploads/products/2f36520cb9.jpg', '2017-07-26 03:39:16', 0),
(70, 2, 7, 'i phone 6+', 2, 80000.00, 'uploads/products/d14f0354a0.png', '2018-07-26 00:03:18', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,3) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pid`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(6, 'I Phone', 8, 6, '<p>asd sdfsd s sdsd</p>', 70000.000, 'uploads/products/1f63644ebe.jpg', 2),
(7, 'i phone 6+', 8, 6, '<p>This is a iphone description</p>', 40000.000, 'uploads/products/d14f0354a0.png', 1),
(8, 'Galaxy s7 edge', 8, 7, '<p>Samsung description</p>', 35000.000, 'uploads/products/a0d5b72c62.jpg', 1),
(9, 'Acer', 10, 8, '<p>Acer descriptions will be go here..</p>', 20000.000, 'uploads/products/2f36520cb9.jpg', 2),
(11, 'Canon Nikon D3', 10, 9, '<p>Caanonn &nbsp; df sdfsdfds</p>', 20000.000, 'uploads/products/f289301898.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

DROP TABLE IF EXISTS `tbl_wishlist`;
CREATE TABLE IF NOT EXISTS `tbl_wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `csId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
