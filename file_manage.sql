-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2026 at 11:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file_manage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `sr_no` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `is_on` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`sr_no`, `email`, `password`, `is_on`) VALUES
(1, 'admin@gmail.com', 'admin@123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `also_included`
--

CREATE TABLE `also_included` (
  `sr_no` int(11) NOT NULL,
  `include_name` varchar(500) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `date` text NOT NULL,
  `user_id` text NOT NULL,
  `time` text NOT NULL,
  `is_on` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `also_included`
--

INSERT INTO `also_included` (`sr_no`, `include_name`, `file_name`, `date`, `user_id`, `time`, `is_on`) VALUES
(2, 'test', '21fe0168-ca55-440e-b9d8-a97e39fbe8ca-removebg-preview.png', '', '', '', '0'),
(3, 'Test contact', 'PHPMailer(1).zip', '', '', '', '0'),
(4, 'Test contact', 'logo-mobile.png', '', '', '', '0'),
(5, 'anshul kathait', 'AgilevsWaterfall.docx', '27-04-2024', 'admin', '00:19:48', '0'),
(8, 'akshit', 'fpcyber.pdf', '09-11-2025', '1', '15:39:23', '0'),
(9, '', '', '09-11-2025', '', '16:00:05', '0'),
(11, 'daksh', 'Artificial+Intelligence+and+Machine+Learning+Internship+(30days).pdf', '11-11-2025', '4', '10:53:21', '0'),
(12, 'daksh', 'Screenshot2023-12-04180619.png', '30-11-2025', '', '19:36:44', '0'),
(13, 'daksh', 'Screenshot2023-12-04180619.png', '30-11-2025', '6', '19:42:33', '0'),
(14, 'kunal', 'Screenshot2023-12-04180735.png', '01-12-2025', 'admin', '10:21:22', '0'),
(15, 'kunal', 'Screenshot2023-12-04180735.png', '01-12-2025', '6', '10:45:21', '0'),
(16, 'daksh', 'Screenshot2023-12-04180735.png', '01-12-2025', 'admin', '10:58:27', '0'),
(18, 'daksh', 'fpcyber.pdf', '27-04-2026', 'admin', '03:21:10', '0'),
(19, 'daksh', '', '28-04-2026', 'admin', '10:17:29', '0'),
(20, 'daksh', 'fpcyber.pdf', '28-04-2026', 'admin', '10:17:48', '0'),
(21, 'daksh', 'file_manage(5).sql', '30-04-2026', '10', '15:46:59', '0'),
(22, 'kunal', 'SIP25.pdf', '30-04-2026', '10', '15:47:21', '1'),
(23, 'akshit', 'ospf.pdf', '30-04-2026', '10', '15:47:37', '1'),
(24, 'krishna ', 'PROJECTREPORTfp.pdf', '06-05-2026', 'admin', '11:03:30', '0'),
(25, 'efbg', '', '06-05-2026', '', '11:04:46', '0'),
(26, 'daksh', 'PROJECTREPORTfp.pdf', '06-05-2026', '', '11:05:36', '1'),
(27, 'chetan', 'DCminiproject.pdf', '06-05-2026', 'admin', '14:15:47', '1'),
(28, 'kri', '', '06-05-2026', '10', '16:47:46', '0'),
(29, 'krishna', '', '06-05-2026', '10', '16:47:59', '0');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `massage` text NOT NULL,
  `product` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `name`, `address`, `mobile`, `massage`, `product`) VALUES
(1, 'Grace Baird', 'Consequatur earum iu', 'Quis aut sint minus ', 'Sapiente cillum offi', 'footware'),
(2, 'Orli Pratt', 'Laboriosam et place', 'Id autem inventore d', 'Qui officia quo ipsa', 'gadget'),
(3, 'Orli Pratt', 'Laboriosam et place', 'Id autem inventore d', 'Qui officia quo ipsa', 'gadget'),
(4, 'Orli Pratt', 'Laboriosam et place', 'Id autem inventore d', 'Qui officia quo ipsa', 'gadget'),
(5, 'Orli Pratt', 'Laboriosam et place', 'Id autem inventore d', 'Qui officia quo ipsa', 'gadget'),
(6, 'Orli Pratt', 'Laboriosam et place', 'Id autem inventore d', 'Qui officia quo ipsa', 'gadget');

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `sr_no` int(11) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `phone2` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `facebook_link` varchar(500) NOT NULL,
  `twitter_link` varchar(500) NOT NULL,
  `linkedin_link` varchar(500) NOT NULL,
  `pinterest_link` varchar(500) NOT NULL,
  `footer_name` varchar(200) NOT NULL,
  `is_on` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hosting_details`
--

CREATE TABLE `hosting_details` (
  `sr_no` int(11) NOT NULL,
  `hosting_id` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(1) NOT NULL,
  `is_on` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hosting_plan`
--

CREATE TABLE `hosting_plan` (
  `sr_no` int(11) NOT NULL,
  `plan_name` varchar(100) NOT NULL,
  `plan_des` varchar(500) NOT NULL,
  `plan_price` varchar(100) NOT NULL,
  `24months` varchar(10) NOT NULL,
  `48months` varchar(10) NOT NULL,
  `ssd_storage` varchar(100) NOT NULL,
  `unlimited_websites` varchar(100) DEFAULT NULL,
  `custom_themes` varchar(100) DEFAULT NULL,
  `customer_support` varchar(100) DEFAULT NULL,
  `optimized_cpu_resources` varchar(100) DEFAULT NULL,
  `free_doamin_1_year` varchar(100) DEFAULT NULL,
  `free_cdn_include` varchar(100) DEFAULT NULL,
  `free_ssl_certiicate` varchar(100) DEFAULT NULL,
  `free_domain_privacy` varchar(100) DEFAULT NULL,
  `free_automatic_backup` varchar(100) DEFAULT NULL,
  `free_dedicated_ip` varchar(100) DEFAULT NULL,
  `yearly_plan_price` varchar(100) NOT NULL,
  `is_on` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `sr_no` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `plan_id` varchar(10) NOT NULL,
  `month` varchar(10) NOT NULL,
  `domain_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `is_on` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_features`
--

CREATE TABLE `top_features` (
  `sr_no` int(11) NOT NULL,
  `feature_name` varchar(500) NOT NULL,
  `is_on` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `password` varchar(50) NOT NULL,
  `is_on` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sr_no`, `name`, `phone`, `email`, `address`, `password`, `is_on`) VALUES
(3, 'daksh', '', 'meten85952@dxice.com', '', '12345678', 1),
(4, 'daksh', '', 'meten85952@dxice.com', '', '123456', 1),
(5, 'daksh', '', 'admin@gmail.com', '', 'vaibhav', 1),
(6, 'daksh', '', 'meten85952@dxice.com', '', '12345', 1),
(10, 'daksh', '', 'jinepob484@finfave.com', '', 'daksh', 1),
(11, 'krishna', '', 'krishna@gmail.com', '', '12345678', 1),
(12, 'krishna', '', 'krishna@gmail.com', '', '12345', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `also_included`
--
ALTER TABLE `also_included`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `hosting_details`
--
ALTER TABLE `hosting_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `hosting_plan`
--
ALTER TABLE `hosting_plan`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `top_features`
--
ALTER TABLE `top_features`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `also_included`
--
ALTER TABLE `also_included`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hosting_details`
--
ALTER TABLE `hosting_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hosting_plan`
--
ALTER TABLE `hosting_plan`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `top_features`
--
ALTER TABLE `top_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
