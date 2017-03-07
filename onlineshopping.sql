-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2017 at 12:44 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `pk_int_cart_id` int(11) NOT NULL,
  `fk_int_product_id` int(11) NOT NULL,
  `fk_int_user_id` int(11) NOT NULL,
  `dat_date` date NOT NULL,
  `float_toatal_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `pk_int_id` int(11) NOT NULL,
  `dat_date` date NOT NULL,
  `vchr_name` varchar(255) NOT NULL,
  `vchr_email` varchar(255) NOT NULL,
  `vchr_feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pdt_category`
--

CREATE TABLE `tbl_pdt_category` (
  `pk_int_pdtcat_id` int(11) NOT NULL,
  `vchr_pdtcat_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_details`
--

CREATE TABLE `tbl_product_details` (
  `pk_int_product_id` int(11) NOT NULL,
  `fk_int_subcat_id` int(11) NOT NULL,
  `vchr_product_name` varchar(255) NOT NULL,
  `vchr_product_description` varchar(255) NOT NULL,
  `float_price` float NOT NULL,
  `int_num` int(11) NOT NULL,
  `vchr_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `pk_int_purchase_id` int(11) NOT NULL,
  `fk_int_product_id` int(11) NOT NULL,
  `fk_int_user_id` int(11) NOT NULL,
  `int_item` int(11) NOT NULL,
  `dat_purchase_date` date NOT NULL,
  `int_total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `pk_int_user_id` int(11) NOT NULL,
  `vchr_first_name` varchar(255) DEFAULT NULL,
  `vchr_last_name` varchar(255) DEFAULT NULL,
  `vchr_username` varchar(255) DEFAULT NULL,
  `vchr_password` varchar(255) DEFAULT NULL,
  `vchr_gender` varchar(20) DEFAULT NULL,
  `vchr_address` varchar(255) DEFAULT NULL,
  `vchr_email` varchar(255) DEFAULT NULL,
  `dat_dob` date DEFAULT NULL,
  `int_phone` int(11) DEFAULT NULL,
  `vchr_power` varchar(25) DEFAULT 'user',
  `vchr_status` varchar(25) DEFAULT 'pending',
  `int_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `pk_int_subcat_id` int(11) NOT NULL,
  `fk_int_pdtcat_id` int(11) DEFAULT NULL,
  `vchr_subcat_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`pk_int_cart_id`),
  ADD KEY `fk_int_product_id` (`fk_int_product_id`),
  ADD KEY `fk_int_user_id` (`fk_int_user_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`pk_int_id`);

--
-- Indexes for table `tbl_pdt_category`
--
ALTER TABLE `tbl_pdt_category`
  ADD PRIMARY KEY (`pk_int_pdtcat_id`);

--
-- Indexes for table `tbl_product_details`
--
ALTER TABLE `tbl_product_details`
  ADD PRIMARY KEY (`pk_int_product_id`),
  ADD KEY `fk_int_subcat_id` (`fk_int_subcat_id`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`pk_int_purchase_id`),
  ADD KEY `fk_int_user_id` (`fk_int_user_id`),
  ADD KEY `fk_int_product_id` (`fk_int_product_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`pk_int_user_id`),
  ADD UNIQUE KEY `int_phone` (`int_phone`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`pk_int_subcat_id`),
  ADD KEY `fk_int_pdtcat_id` (`fk_int_pdtcat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `pk_int_cart_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `pk_int_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pdt_category`
--
ALTER TABLE `tbl_pdt_category`
  MODIFY `pk_int_pdtcat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product_details`
--
ALTER TABLE `tbl_product_details`
  MODIFY `pk_int_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `pk_int_purchase_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `pk_int_user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `pk_int_subcat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`fk_int_product_id`) REFERENCES `tbl_product_details` (`pk_int_product_id`),
  ADD CONSTRAINT `tbl_cart_ibfk_2` FOREIGN KEY (`fk_int_user_id`) REFERENCES `tbl_registration` (`pk_int_user_id`);

--
-- Constraints for table `tbl_product_details`
--
ALTER TABLE `tbl_product_details`
  ADD CONSTRAINT `tbl_product_details_ibfk_1` FOREIGN KEY (`fk_int_subcat_id`) REFERENCES `tbl_sub_category` (`pk_int_subcat_id`);

--
-- Constraints for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD CONSTRAINT `tbl_purchase_ibfk_1` FOREIGN KEY (`fk_int_user_id`) REFERENCES `tbl_registration` (`pk_int_user_id`),
  ADD CONSTRAINT `tbl_purchase_ibfk_2` FOREIGN KEY (`fk_int_product_id`) REFERENCES `tbl_product_details` (`pk_int_product_id`);

--
-- Constraints for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD CONSTRAINT `tbl_sub_category_ibfk_1` FOREIGN KEY (`fk_int_pdtcat_id`) REFERENCES `tbl_pdt_category` (`pk_int_pdtcat_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
