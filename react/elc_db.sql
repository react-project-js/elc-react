-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2019 at 08:52 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `sortOrder` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `categoryName`, `sortOrder`) VALUES
(1, 'SKINCARE', 1),
(2, 'MAKEUP', 2),
(3, 'FRAGRANCE', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `subCategoryId` int(11) NOT NULL,
  `productName` varchar(70) NOT NULL,
  `productPrice` varchar(10) NOT NULL,
  `prdouctDesc` text NOT NULL,
  `productThumbImage` varchar(100) NOT NULL,
  `productLargeImage` varchar(100) NOT NULL,
  `sortOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `subCategoryId`, `productName`, `productPrice`, `prdouctDesc`, `productThumbImage`, `productLargeImage`, `sortOrder`) VALUES
(1, 1, 'Advanced Night Repair', '10', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_YF4E01_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_YF4E01_558x768_0.jpg', 1),
(2, 1, 'Anti-Oxidant 72H-Hydration Sorbet Creme SPF 15', '20', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_P3N101_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_P3N101_558x768_0.jpg', 2),
(3, 1, 'Advanced Night Repair Eye Supercharged Complex', '13', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_P48201_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_P48201_558x768_0.jpg', 3),
(4, 2, 'Concentrated Recovery PowerFoil Mask', '10', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_R6C801_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_R6C801_558x768_0.jpg', 1),
(5, 2, 'Synchronized Recovery Complex II', '22', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_YF4E01_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_YF4E01_558x768_0.jpg', 2),
(6, 2, 'Global Anti-Aging Cell Power Creme SPF 15', '14', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_RPN301_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_RPN301_558x768_0.jpg', 3),
(7, 3, 'Synchronized Recovery Complex II', '8', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_YF4E01_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_YF4E01_558x768_0.jpg', 1),
(8, 3, 'Age Reversing Line/Wrinkle Creme SPF 15', '12', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_Y6NF01_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_Y6NF01_558x768_0.jpg', 2),
(9, 3, 'Eau de Parfum Spray', '13', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_YF3101_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_YF3101_558x768_0.jpg', 3),
(10, 4, 'Stay-in-Place Matte Powder Foundation', '5', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_P9J015_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_P9J015_558x768_0.jpg', 1),
(11, 4, 'Double Wear Instant Fix Concealer', '12', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_PA8521_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_PA8521_558x768_0.jpg', 2),
(12, 4, 'Rouge Excess Lipstick', '8', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_RYKA14_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_RYKA14_558x768_0.jpg', 3),
(13, 5, 'Rosé Lips', '25', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_PA8T01_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_PA8T01_558x768_0.jpg', 1),
(14, 5, 'Pure Color Envy', '32', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_P9NR01_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_P9NR01_558x768_0.jpg', 2),
(15, 5, 'Defining EyeShadow Wet/Dry', '28', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_R2Y914_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_R2Y914_558x768_0.jpg', 3),
(16, 6, 'Multi Effects Mascara', '41', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_RJMH01_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_RJMH01_558x768_0.jpg', 1),
(17, 6, 'Makeup Pump', '17', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_R8KJ01_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_R8KJ01_558x768_0.jpg', 2),
(18, 6, 'Stay-in-Place Makeup', '25', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_YA6F15_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_YA6F15_558x768_0.jpg', 3),
(19, 6, 'Sculpting Lipstick', '18', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_YJRR13_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_YJRR13_558x768_0.jpg', 4),
(20, 7, 'Lip Volumizer', '23', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_P9NR01_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_P9NR01_558x768_0.jpg', 1),
(21, 7, 'Eau de Parfum Spray', '21', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_701701_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_701701_558x768_0.jpg', 2),
(22, 7, 'Fragrance Treasures', '28', 'Surprise her with all of her favorite scents. A gift she''ll love, during the holidays and all year long.\r\nLimited-time collection includes four Eau de Parfum Purse Sprays in an exclusive gift box', 'https://www.esteelauder.com/media/export/cms/products/558x768/el_sku_WL2EY8_558x768_0.jpg', '/media/export/cms/products/558x768/el_sku_WL2EY8_558x768_0.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `id` int(11) NOT NULL,
  `categoryId` int(10) NOT NULL,
  `subCategoryName` varchar(50) NOT NULL,
  `sortOrder` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`id`, `categoryId`, `subCategoryName`, `sortOrder`) VALUES
(1, 1, 'BY CATEGORY', 1),
(2, 1, 'BY CONCERN', 2),
(3, 1, 'COLLECTIONS', 3),
(4, 2, 'FACE', 1),
(5, 2, 'LIP', 2),
(6, 2, 'COLLECTIONS', 3),
(7, 2, 'EYE', 4),
(8, 2, 'ACCESSORIES', 5),
(9, 3, 'FRAGRANCE FAMILY', 1),
(10, 3, 'COLLECTIONS', 2),
(11, 3, 'NOTES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `name`, `email`) VALUES
(1, 'adasdasd', '36f3e344152c84112d674aa4c44f9fa187f91934f32e422d35d24cc92d260833', 'asdasd', 'asdasd@ama.com'),
(2, 'santhosh', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 'Santhosh', 'santhosh@test.com'),
(3, 'fsdfd', '4bac27393bdd9777ce02453256c5577cd02275510b2227f473d03f533924f877', 'fsdfsd', 'dfgdgf@adasd.com'),
(4, 'dfgdfg', '924b0b2b7e45d32d4f6f68e6e0afa12dd37cb110f25b94173f7257e6a194dc8f', 'dgdfg', 'gdfgdg@adas.com'),
(5, 'justin', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 'Justin', 'justin@mail.com'),
(6, 'sdfsdf', '4bac27393bdd9777ce02453256c5577cd02275510b2227f473d03f533924f877', 'gdfgdfg', 'sdfsdf@mail.com'),
(7, 'soma', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 'Somasundaram', 'soma@gmail.com'),
(8, 'somu', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 'Soma', 'Soma@css.com'),
(9, 'fghfgh', 'e7f4da38fcf33ffebc74ed681291a74be0afedca2a104b8e5b798936c3fab986', 'fghfgh', 'gfhfghfg@mail.com'),
(10, 'dinesh', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 'Dinesh', 'dinesh@test.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
