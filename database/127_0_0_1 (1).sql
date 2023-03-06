-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 05:51 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--
CREATE DATABASE IF NOT EXISTS `assignment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `assignment`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `Qty` varchar(100) DEFAULT NULL,
  `Price` varchar(100) DEFAULT NULL,
  `Date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `Image`, `Title`, `Description`, `Qty`, `Price`, `Date`) VALUES
(5, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/camera.jpg', 'camera', 'quality very good,easy to use', '12', '100000', '2022-12-07'),
(6, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/car.jpg', 'car', 'electric,Elegant · Engineered ,Faster ', '2', '200000', '2022-12-29'),
(7, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/banana.jpg', 'banana', 'good for health', '1222', '1123', '2022-12-30'),
(8, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/cosmetics.jpg', 'cosmetic', 'Toner Kajal Makeup Mirror BB cream Brightener Hand Cream Makeup kit', '152', '254860', '2022-12-09'),
(9, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/potato.jpg', 'patoto', 'good for health', '121', '45455', '2022-12-21'),
(10, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/images.jpg', 'little child', 'very beautifull', '1', '5000', '2022-12-14'),
(11, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/toys.jpg', 'toys', 'for children ', '12', '12345', '2022-12-28'),
(12, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/toys.jpg', 'aeroplain', 'airlines', '741', '741852', '2022-12-21'),
(13, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/images.jpg', 'small child', 'child ', '7416', '74185', '2022-12-28'),
(14, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/toys.jpg', 'toy', 'small toy', '12', '12122', '2023-01-11'),
(15, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/banana.jpg', 'car', 'sdfghjk', '12', '123456', '11/01/2023'),
(16, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/cosmetics.jpg', 'car', 'aaa', '15', '12345', '11/01/2024'),
(17, 'https://companytaskbucket.s3.ap-south-1.amazonaws.com/images.jpg', 'child data', 'baby doll toy', '1', '2000', '2023-01-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Database: `bazar`
--
CREATE DATABASE IF NOT EXISTS `bazar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bazar`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `category`, `name`, `price`, `qty`) VALUES
('1', 'electronics', 'television', '5000', '5'),
('6', 'cvbn', 'cvbn', '852', '1');
--
-- Database: `classpratice`
--
CREATE DATABASE IF NOT EXISTS `classpratice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `classpratice`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gendar` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `adminId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230206105829-create-admin.js'),
('20230206190457-create-employee.js');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminId` (`adminId`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`);
--
-- Database: `irctc`
--
CREATE DATABASE IF NOT EXISTS `irctc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `irctc`;

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cancle`
--

CREATE TABLE `cancle` (
  `user_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `recepit_no` varchar(50) DEFAULT NULL,
  `fare` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cityid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pincode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` varchar(50) DEFAULT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fare`
--

CREATE TABLE `fare` (
  `Train_no` varchar(50) DEFAULT NULL,
  `fare` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `user_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `user_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `recepit_no` varchar(50) NOT NULL,
  `card_no` varchar(50) NOT NULL,
  `card_exp` date DEFAULT NULL,
  `cvv_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pnr`
--

CREATE TABLE `pnr` (
  `recepit_no` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `Origin` varchar(50) DEFAULT NULL,
  `Destination` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seat_slot`
--

CREATE TABLE `seat_slot` (
  `seat_no` varchar(50) NOT NULL,
  `seat_type` varchar(50) DEFAULT NULL,
  `fare` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `Station_id` varchar(50) NOT NULL,
  `Station_name` varchar(50) NOT NULL,
  `Station_code` varchar(50) NOT NULL,
  `cityid` varchar(50) NOT NULL,
  `Total_Plateform` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticketbooking`
--

CREATE TABLE `ticketbooking` (
  `user_id` varchar(50) DEFAULT NULL,
  `Train_no` varchar(50) DEFAULT NULL,
  `Train_name` varchar(50) NOT NULL,
  `Origin` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `fare` varchar(10) NOT NULL,
  `class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `Train_no` varchar(50) NOT NULL,
  `Train_name` varchar(50) NOT NULL,
  `Depart_time` varchar(50) NOT NULL,
  `Arrive_time` varchar(50) NOT NULL,
  `Origin` date DEFAULT NULL,
  `Destination` date DEFAULT NULL,
  `Fair` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `mob_no` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `seat_no` varchar(50) DEFAULT NULL,
  `fare` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `cancle`
--
ALTER TABLE `cancle`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fare` (`fare`),
  ADD KEY `recepit_no` (`recepit_no`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cityid`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class`);

--
-- Indexes for table `fare`
--
ALTER TABLE `fare`
  ADD KEY `Train_no` (`Train_no`),
  ADD KEY `fare` (`fare`),
  ADD KEY `class` (`class`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`recepit_no`);

--
-- Indexes for table `pnr`
--
ALTER TABLE `pnr`
  ADD KEY `recepit_no` (`recepit_no`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `seat_slot`
--
ALTER TABLE `seat_slot`
  ADD PRIMARY KEY (`seat_no`,`fare`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`Station_id`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `ticketbooking`
--
ALTER TABLE `ticketbooking`
  ADD PRIMARY KEY (`fare`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `Train_no` (`Train_no`),
  ADD KEY `class` (`class`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`Train_no`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `seat_no` (`seat_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cancle`
--
ALTER TABLE `cancle`
  ADD CONSTRAINT `cancle_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`user_id`),
  ADD CONSTRAINT `cancle_ibfk_2` FOREIGN KEY (`fare`) REFERENCES `ticketbooking` (`fare`),
  ADD CONSTRAINT `cancle_ibfk_3` FOREIGN KEY (`recepit_no`) REFERENCES `payment` (`recepit_no`);

--
-- Constraints for table `fare`
--
ALTER TABLE `fare`
  ADD CONSTRAINT `fare_ibfk_1` FOREIGN KEY (`Train_no`) REFERENCES `train` (`Train_no`),
  ADD CONSTRAINT `fare_ibfk_2` FOREIGN KEY (`fare`) REFERENCES `ticketbooking` (`fare`),
  ADD CONSTRAINT `fare_ibfk_3` FOREIGN KEY (`class`) REFERENCES `class` (`class`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`user_id`);

--
-- Constraints for table `pnr`
--
ALTER TABLE `pnr`
  ADD CONSTRAINT `pnr_ibfk_1` FOREIGN KEY (`recepit_no`) REFERENCES `payment` (`recepit_no`),
  ADD CONSTRAINT `pnr_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`user_id`);

--
-- Constraints for table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `station_ibfk_1` FOREIGN KEY (`cityid`) REFERENCES `city` (`cityid`);

--
-- Constraints for table `ticketbooking`
--
ALTER TABLE `ticketbooking`
  ADD CONSTRAINT `ticketbooking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`user_id`),
  ADD CONSTRAINT `ticketbooking_ibfk_2` FOREIGN KEY (`Train_no`) REFERENCES `train` (`Train_no`),
  ADD CONSTRAINT `ticketbooking_ibfk_3` FOREIGN KEY (`class`) REFERENCES `class` (`class`);

--
-- Constraints for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD CONSTRAINT `userlogin_ibfk_1` FOREIGN KEY (`seat_no`) REFERENCES `seat_slot` (`seat_no`);
--
-- Database: `multerpratice`
--
CREATE DATABASE IF NOT EXISTS `multerpratice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `multerpratice`;

-- --------------------------------------------------------

--
-- Table structure for table `multer`
--

CREATE TABLE `multer` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `multer`
--

INSERT INTO `multer` (`name`, `email`, `password`, `image`) VALUES
('toy', 'toy@gmail.com', '12345', 'uploads\\image_1678074460235.jpg');
--
-- Database: `online`
--
CREATE DATABASE IF NOT EXISTS `online` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `online`;
--
-- Database: `onlinebazar`
--
CREATE DATABASE IF NOT EXISTS `onlinebazar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onlinebazar`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `role_id` varchar(2) NOT NULL,
  `role_name` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`role_id`, `role_name`) VALUES
('R5', 'ac'),
('R1', 'ad'),
('R3', 'cl'),
('R4', 'hr'),
('R2', 'ma');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"multerpratice\",\"table\":\"multer\"},{\"db\":\"classpratice\",\"table\":\"users\"},{\"db\":\"assignment\",\"table\":\"product\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-03-06 04:50:56', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pratice`
--
CREATE DATABASE IF NOT EXISTS `pratice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pratice`;
--
-- Database: `railway`
--
CREATE DATABASE IF NOT EXISTS `railway` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `railway`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `contact_no` varchar(10) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `contact_no`, `role`) VALUES
('0b2805b7-99fe-4397-b902-b9b18046489c', 'shanu', 'shanu@gmail.com', '$2b$08$iFbUoAvMV4wa7Veof9NIVO7baq/febjAhWjY7MjUvtG', '9074524012', 'admin'),
('2', 'ashu', 'ashu@gmail.com', '$2b$08$Mkh4j3CMhtBn22RvmwOL7O0j5KztMisRZaAlsZjAHRO', '9074524058', 'admin'),
('2e768441-a384-4fa5-b6ab-8abe195530e1', 'gourav', 'gourav@gmail.com', '$2b$08$s2Iz67zc9KImXw8aTgTxPeaCkTg/YCgAy1CUkQWv0aTfShRfhQdg2', '9074524052', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `boggy`
--

CREATE TABLE `boggy` (
  `train_no` varchar(50) DEFAULT NULL,
  `boggy_no` varchar(50) NOT NULL,
  `boggy_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `user_id` varchar(50) DEFAULT NULL,
  `massage` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `user_id` varchar(50) DEFAULT NULL,
  `ticket_id` varchar(50) DEFAULT NULL,
  `card_no` varchar(50) DEFAULT NULL,
  `card_exp` date DEFAULT NULL,
  `cvv_no` varchar(50) NOT NULL,
  `PNR_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seat_slot`
--

CREATE TABLE `seat_slot` (
  `train_no` varchar(50) DEFAULT NULL,
  `boggy_no` varchar(50) DEFAULT NULL,
  `seat_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `station_id` varchar(50) NOT NULL,
  `station_name` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `pin_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`station_id`, `station_name`, `state`, `city`, `location`, `pin_code`) VALUES
('', '', '', '', '', ''),
('1', 'Bhopal_Station', 'M.P', 'Bhopal', 'Bhopal', '462001'),
('10', '', '', '', '', ''),
('11', '', '', '', '', ''),
('12', 'delhi station', 'delhi', 'delhi', 'delhi', '55555'),
('13', 'mahir statijon', 'mp', 'mahir', 'mahir', '784512'),
('5', '', '', '', '', ''),
('6', 'Bzu', 'M.P', 'Betul', 'Betul', '465555'),
('9', 'knp', 'up', 'kanpur', 'kanpur', '460025');

-- --------------------------------------------------------

--
-- Table structure for table `ticketbooking`
--

CREATE TABLE `ticketbooking` (
  `user_id` varchar(50) DEFAULT NULL,
  `train_no` varchar(50) DEFAULT NULL,
  `ticket_id` varchar(50) NOT NULL,
  `fare` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL CHECK (`status` in ('Confirm','Waiting'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `total_revenue`
--

CREATE TABLE `total_revenue` (
  `id` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `revenue` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `total_revenue`
--

INSERT INTO `total_revenue` (`id`, `date`, `revenue`) VALUES
('5b6aa797-7217-4006-85de-e884af731d98', '2022-12-14', '50000'),
('5b6aa797-7217-4006-85de-e884af731d98', '2022-12-15', '40000'),
('5b6aa797-7217-4006-85de-e884af731d98', '2022-12-15', '10000'),
('5b6aa797-7217-4006-85de-e884af731d98', '2022-12-15', '30000');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `train_no` varchar(50) NOT NULL,
  `train_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`train_no`, `train_name`) VALUES
('', ''),
('12185', 'Rewanchal Express'),
('12186', 'rewanchal express'),
('12187', 'satna express'),
('123453', 'ghkjkdg'),
('22175', 'kerla express');

-- --------------------------------------------------------

--
-- Table structure for table `train_schedule`
--

CREATE TABLE `train_schedule` (
  `train_no` varchar(50) DEFAULT NULL,
  `station_id` varchar(50) DEFAULT NULL,
  `arrivel_time` datetime DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `day` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `contact_no` varchar(10) NOT NULL,
  `gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`user_id`, `user_name`, `email`, `password`, `contact_no`, `gender`) VALUES
('e6574dcc-1a4c-4d1c-9dbb-5028babf5650', 'anu', 'anu@gmail.com', '$2b$08$AvJq81hHQB0LxrBBJN.ci.pXVUGIkCscHt4SzAXZFE4bY/JLg0Cjm', '999374412', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`, `role`) VALUES
('2eb98d6b-65be-4506-869b-1a0a34c0c1e3', 'ashish', 'ashish@gmail.com', '$2b$08$B0Uv19PsZiuVK9g00/1XZev5sixnfk9lXvOFapeBxnNGlWLNwtS7q', 'user'),
('5b6aa797-7217-4006-85de-e884af731d98', 'aman', 'aman@gmail.com', '$2b$08$lktHUN4BPAT.m7Kakno/kOnLm2JwpAtPNrxL9s.UsX5EecVu4lCQe', 'admin'),
('d89d3e3a-3398-426d-b657-6b590b8dc41a', 'mayank', 'mayank@gmail.com', '$2b$08$x1FXuXnyVJ.yEljF7Snr6.hy1lIHPhpnE0Y0kclRh3I2NBJEGCLvS', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boggy`
--
ALTER TABLE `boggy`
  ADD PRIMARY KEY (`boggy_no`),
  ADD KEY `train_no` (`train_no`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PNR_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `seat_slot`
--
ALTER TABLE `seat_slot`
  ADD PRIMARY KEY (`seat_no`),
  ADD KEY `train_no` (`train_no`),
  ADD KEY `boggy_no` (`boggy_no`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `ticketbooking`
--
ALTER TABLE `ticketbooking`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `train_no` (`train_no`);

--
-- Indexes for table `total_revenue`
--
ALTER TABLE `total_revenue`
  ADD KEY `id` (`id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`train_no`);

--
-- Indexes for table `train_schedule`
--
ALTER TABLE `train_schedule`
  ADD KEY `train_no` (`train_no`),
  ADD KEY `station_id` (`station_id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PNR_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boggy`
--
ALTER TABLE `boggy`
  ADD CONSTRAINT `boggy_ibfk_1` FOREIGN KEY (`train_no`) REFERENCES `train` (`train_no`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`user_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`user_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`ticket_id`) REFERENCES `ticketbooking` (`ticket_id`);

--
-- Constraints for table `seat_slot`
--
ALTER TABLE `seat_slot`
  ADD CONSTRAINT `seat_slot_ibfk_1` FOREIGN KEY (`train_no`) REFERENCES `train` (`train_no`),
  ADD CONSTRAINT `seat_slot_ibfk_2` FOREIGN KEY (`boggy_no`) REFERENCES `boggy` (`boggy_no`);

--
-- Constraints for table `ticketbooking`
--
ALTER TABLE `ticketbooking`
  ADD CONSTRAINT `ticketbooking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`user_id`),
  ADD CONSTRAINT `ticketbooking_ibfk_2` FOREIGN KEY (`train_no`) REFERENCES `train` (`train_no`);

--
-- Constraints for table `total_revenue`
--
ALTER TABLE `total_revenue`
  ADD CONSTRAINT `total_revenue_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usertable` (`id`);

--
-- Constraints for table `train_schedule`
--
ALTER TABLE `train_schedule`
  ADD CONSTRAINT `train_schedule_ibfk_1` FOREIGN KEY (`train_no`) REFERENCES `train` (`train_no`),
  ADD CONSTRAINT `train_schedule_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `station` (`station_id`);
--
-- Database: `shanu`
--
CREATE DATABASE IF NOT EXISTS `shanu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shanu`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `token`
--
CREATE DATABASE IF NOT EXISTS `token` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `token`;

-- --------------------------------------------------------

--
-- Table structure for table `pratice_user`
--

CREATE TABLE `pratice_user` (
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(10) NOT NULL,
  `mobilenu` varchar(20) NOT NULL,
  `id` int(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobileNumber` varchar(12) NOT NULL,
  `id` int(11) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `mobileNumber`, `id`, `password`) VALUES
('rkumar', 'sahu@gmail', '64698350', 9, '$2b$08$gyVhJXpVR5L2BGLg/CnT6uj0NPnYKTEheM4bq/ixpfgV7IUh.y26q'),
('gourav', 'gourav@gmail.com', '886568982', 28, '$2b$09$rgeYSkOuOAqploEKT0Fhye6u5Z0a.nkvPxp46aP.8A.eyUhST2y.W'),
('sumit', 'sumit@gmail.com', '9425165986', 87, '$2b$09$KS/jrB8X1TSFpxntZrv42O2drhZUwYv2jePoIGmjYuE'),
('Anku', 'anku69@gmail.com', '9893763783', 39018837, '$2b$10$rdpJbQNXrwdzdWs/T8q/R.0q7ACxKcPNmjXB/qaAKmU'),
('anku', 'anku@gmail', '993747127', 39018838, '$2b$09$2BT/wH3Eag.OVnhYa2VpeePQKX/61cjscw6bO2aYtPI'),
('ansh', 'ansh@gmail', '993747127', 39018839, '$2b$09$2pTyIWzTAhG6wiMxPMXUEu1eQQFq1XtwI0ndeHCr9U7'),
('deepak', 'ansh@gmail', '8305478705', 39018840, '$2b$09$VdGpA4v33G4iXVgdsUhwlujID1NLlZwauZXHw4tenbI'),
('mahesh', 'mahesh@gmail', '942516598', 39018841, '$2b$08$4rnvZd5T.iDEo2Oyzfr5k.sM0Iqr4b0BjLs7wN134YdOa74v67Le.'),
('mahi', 'mahi@gmail', '942516598', 39018847, '$2b$08$n79i2zbuMwJnJRduXUh3uOmphOvY/xVeO1TjAJ8qSiXYYDSv75TVi'),
('ravi', 'ravi@gmail', '64698340', 39018848, '$2b$08$SE71N4R1.grvG3WHEzX8A.RfAA1yf4teUi/fbUrJ8iLYWywi0Vzsm'),
('ritesh', 'ritesg@gmail.com', '904758623', 95289062, '[object Promise]'),
('shivam', 'shivam@gmail.com', '904758625', 95289065, '$2b$08$cMwOvMBEAuAdIa3GbeNnAe4ZsXsd1PalvpzmVG5yi2oQf3VlLKM.i'),
('rishi', 'rishi@gmail.com', '9993747125', 95289066, '$2b$08$seHuJDjWIAcL50Q8Of22n.pr8sAXLSAeotET50I5SUifGHIw/FbSy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pratice_user`
--
ALTER TABLE `pratice_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`,`mobileNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pratice_user`
--
ALTER TABLE `pratice_user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95289067;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
