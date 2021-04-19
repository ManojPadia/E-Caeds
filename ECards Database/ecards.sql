-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2019 at 05:20 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecards`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `password`) VALUES
('admin@admin.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `all_orders`
--

CREATE TABLE `all_orders` (
  `order_id` int(100) NOT NULL,
  `product_id` int(100) DEFAULT NULL,
  `id` int(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Address` text,
  `quantity` int(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `card_image` varchar(255) DEFAULT NULL,
  `pin_code` int(100) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_orders`
--

INSERT INTO `all_orders` (`order_id`, `product_id`, `id`, `email`, `Address`, `quantity`, `price`, `card_image`, `pin_code`, `user_name`, `contact`, `status`) VALUES
(40, 63, 1, 'huzefakhety@gmail.com', 'Khodpara,\nStreet No E9,\nJetpur', 24, 72, '40.png', 360370, 'Huzefa Khety', '9099179209', ''),
(41, 66, 3, 'hdpandya00@gmail.com', 'Jetpur', 244, 488, '41.png', 360370, 'Hardik Pandya', '54548684', ''),
(42, 68, 1, 'hdpandya00@gmail.com', 'Krishna Park,\nJunagadh Road,\nJetpur', 23, 57.5, '42.png', 360370, 'Hardik Pandya', '7990267370', ''),
(43, 63, 2, 'padiya.manoj@gmail.com', 'Panch Pipda Road,\nJetpur', 56, 168, '43.png', 360370, 'Manoj Padiya', '7434071830', ''),
(44, 39, 3, 'hdpandya00@gmail.com', 'Krsihna Park,\nJunagadh Road,\nJetpur', 23, 46, '44.png', 360370, 'Hardik Pandya', '7990267370', 'Delivered'),
(45, 69, 3, 'huzefakhety@gmail.com', 'Khodpara,\nStreet No E9,\nJetpur', 78, 156, '45.png', 360370, 'Huzefa Khety', '9099179209', ''),
(46, 70, 1, 'huzefakhety@gmail.com', 'Khodpara, \nStreet No E9,\nJetpur', 334, 1002, '46.png', 360370, 'Huzefa Khety', '9099179209', ''),
(47, 69, 5, 'ahmedkhety.ak@gmail.com', 'khodpara street no E5 jetpur ', 100, 200, '47.png', 360370, 'Ahmed Khety', '9998373470', 'Delivered'),
(48, 72, 1, 'abbaskhety@gmail.com', 'Khodpara,\nStreet No E9,\nJetpur', 100, 150, '48.png', 360370, 'Abbas Khety', '7567565152', ''),
(50, 69, 1, 'hdpandya00@gmail.com', 'Krishna Park,\nJunagadh Road,\nJetpur', 60, 120, '50.png', 360370, 'Hardik Pandya', '7990267370', ''),
(51, 73, 2, 'padiya.manoj@gmail.com', 'Shree Park,\nPanch Pipda Road,\nJetpur', 60, 60, '51.png', 360370, 'Manoj Padiya', '7434071830', ''),
(52, 73, 3, 'hdpandya00@gmail.com', 'Krishna Park,\nJunagadh Road,\nJetpur', 120, 120, '52.png', 360370, 'Hardik Pandya', '7990267370', ''),
(53, 69, 1, 'huzefakhety@gmail.com', 'Khodapara', 100, 200, '53.png', 360370, 'Huzefa Khety', '9099179209', ''),
(54, 69, 1, 'huzefakhety@gmail.com', 'Khodpara,\nStreet No E9,\nJetpur', 255, 510, '54.png', 360370, 'Huzefa Khety', '9099179209', ''),
(55, 74, 3, 'hdpandya00@gmail.com', 'Krishna Park,\nJunagadh Road,\nJetpur', 70, 105, '55.png', 360370, 'Hardik Pandya', '7990267370', ''),
(56, 75, 2, 'padiya.manoj@gmail.com', 'Shree Park,\nPanch Pipda Road,\nJetpur', 356, 712, '56.png', 360370, 'Padiya Manoj', '7434071830', '');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(255) NOT NULL,
  `imgFront` varchar(255) NOT NULL,
  `imgBack` varchar(255) NOT NULL,
  `imgEmpty` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `cmt` varchar(255) NOT NULL,
  `cml` varchar(255) NOT NULL,
  `cfs` varchar(255) NOT NULL,
  `cfc` varchar(255) NOT NULL,
  `nmt` varchar(255) NOT NULL,
  `nml` varchar(255) NOT NULL,
  `nfs` varchar(255) NOT NULL,
  `nfc` varchar(255) NOT NULL,
  `a1mt` varchar(255) NOT NULL,
  `a1ml` varchar(255) NOT NULL,
  `a1fs` varchar(255) NOT NULL,
  `a1fc` varchar(255) NOT NULL,
  `a2mt` varchar(255) NOT NULL,
  `a2ml` varchar(255) NOT NULL,
  `a2fs` varchar(255) NOT NULL,
  `a2fc` varchar(255) NOT NULL,
  `cnmt` varchar(255) NOT NULL,
  `cnml` varchar(255) NOT NULL,
  `cnfs` varchar(255) NOT NULL,
  `cnfc` varchar(255) NOT NULL,
  `emt` varchar(255) NOT NULL,
  `eml` varchar(255) NOT NULL,
  `efs` varchar(255) NOT NULL,
  `efc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `imgFront`, `imgBack`, `imgEmpty`, `price`, `cmt`, `cml`, `cfs`, `cfc`, `nmt`, `nml`, `nfs`, `nfc`, `a1mt`, `a1ml`, `a1fs`, `a1fc`, `a2mt`, `a2ml`, `a2fs`, `a2fc`, `cnmt`, `cnml`, `cnfs`, `cnfc`, `emt`, `eml`, `efs`, `efc`) VALUES
(69, '14718.jpg', '14718.jpg', '14718.jpg', 2, '0', '235', '27', '#00ce00', '34', '236', '19', '#00ce00', '132', '278', '11', '#ffffff', '143', '278', '11', '#ffffff', '156', '277', '11', '#ffffff', '171', '277', '11', '#ffffff'),
(70, '412374-PDGFP8-138.jpg', '412374-PDGFP8-138.jpg', '412374-PDGFP8-138.jpg', 3, '108', '242', '26', '#ff0080', '139', '243', '18', '#ff8040', '45', '87', '15', '#ff0080', '60', '87', '16', '#ff0080', '127', '89', '16', '#ff0080', '87', '89', '16', '#ff0080'),
(72, '818 - Copy.jpg', '818 - Copy.jpg', '818 - Copy.jpg', 1.5, '156', '249', '25', '#c40005', '31', '72', '18', '#ffffff', '94', '63', '10', '#ffffff', '107', '62', '10', '#ffffff', '155', '63', '12', '#ffffff', '126', '63', '12', '#ffffff'),
(73, '459203-PFNOGT-955.jpg', '459203-PFNOGT-955.jpg', '459203-PFNOGT-955.jpg', 1, '115', '30', '24', '#ffb300', '22', '237', '19', '#000000', '74', '258', '15', '#ffb300', '89', '258', '15', '#000000', '113', '260', '14', '#ffb300', '143', '260', '14', '#000000'),
(74, '490334-PH56GH-935.jpg', '490334-PH56GH-935.jpg', 'c.jpg', 1.5, '0', '21', '29', '#ffffff', '36', '22', '19', '#ffffff', '128', '69', '13', '#016c78', '141', '68', '13', '#016c78', '99', '69', '13', '#016c78', '165', '70', '13', '#016c78'),
(75, '225161-P1LHF2-26.jpg', '225161-P1LHF2-26.jpg', '225161-P1LHF2-26.jpg', 2, '124', '36', '18', '#ff0000', '105', '281', '15', '#ff0000', '185', '280', '13', '#ff0000', '198', '279', '13', '#ff0000', '137', '281', '13', '#ff0000', '162', '281', '14', '#ff0000'),
(76, '2167053.jpg', '2167053.jpg', '2167053.jpg', 3, '7', '26', '23', '#ff00ff', '36', '27', '16', '#ff00ff', '216', '248', '13', '#b900b9', '230', '248', '13', '#b900b9', '158', '248', '14', '#b900b9', '186', '249', '14', '#b900b9'),
(77, '6277.jpg', '6277.jpg', '6277.jpg', 2.5, '61', '30', '23', '#00ffff', '92', '47', '15', '#00dddd', '49', '281', '12', '#008080', '63', '281', '12', '#008080', '92', '281', '13', '#008080', '128', '279', '12', '#008080');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `review`) VALUES
(1, '1', 'Your website is amazing!!!!'),
(3, '1', 'Hey There!!!'),
(4, '1', 'Awesome Cards Design');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `user_id`, `email`, `fname`, `subject`, `msg`) VALUES
(1, '1', 'huzefakhety@gmail.com', 'Huzefa Khety', 'About this website', 'Your website is amazing!'),
(2, '2', 'padiya.manoj@gmail.com', 'Manoj Padiya', 'website na barama', 'Jordar Jordar'),
(3, '3', 'hdpandya00@gmail.com', 'Hardik Pandya', 'About Website', 'Website\r\nbav\r\nmast\r\nche'),
(4, '1', 'huzefakhety@gmail.com', 'Huzefa Khety', 'Important', 'I have some new card designs. ');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `password`, `name`, `email`) VALUES
(1, '12345678', 'Huzefa Khety', 'huzefakhety@gmail.com'),
(2, '12345678', 'Manoj Padiya', 'padiya.manoj@gmail.com'),
(3, '12345678', 'Hardik Pandya', 'hdpandya00@gmail.com'),
(4, 'moiz2000', 'moiz812', 'mmkheti812@gmail.com'),
(5, 'ahmedkhety53', 'ahmed', 'ahmedkhety.ak@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_orders`
--
ALTER TABLE `all_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_orders`
--
ALTER TABLE `all_orders`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
