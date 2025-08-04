-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2025 at 05:51 AM
-- Server version: 10.11.6-MariaDB-0+deb12u1
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `item_name`, `quantity`, `created_at`, `department_id`) VALUES
(1, 'UPS Battery', 16, '2025-02-05 06:11:01', NULL),
(2, 'Mouse', 11, '2025-02-05 06:11:20', NULL),
(3, 'Key Board', 12, '2025-02-05 06:13:03', NULL),
(4, 'VGA Cable', 11, '2025-02-05 06:13:18', NULL),
(5, 'HDMI to VGA Adapter', 10, '2025-02-05 06:13:30', NULL),
(6, 'HDMI Cable', 5, '2025-02-05 06:13:50', NULL),
(7, 'Monitor', 5, '2025-02-05 06:14:09', NULL),
(8, '8GB Pen Drive', 2, '2025-02-05 06:14:56', NULL),
(9, '4GB Pen Drive', 10, '2025-02-05 06:15:11', NULL),
(10, 'NUC', 3, '2025-02-05 06:15:38', NULL),
(11, 'Kingston 480GB SSD', 12, '2025-02-05 06:15:54', NULL),
(12, 'Mousepad', 8, '2025-02-05 06:16:09', NULL),
(13, 'UPS', 5, '2025-02-05 06:17:00', NULL),
(14, 'Drum cleaning blade', 6, '2025-02-05 06:43:22', NULL),
(15, 'Upper Fusing Roller', 6, '2025-02-05 06:43:46', NULL),
(16, 'Drum', 4, '2025-02-05 06:46:03', NULL),
(17, 'USB Male to Female', 9, '2025-02-05 06:46:33', NULL),
(18, 'NUC Cooling Fan', 4, '2025-02-05 06:46:47', NULL),
(19, 'USB to LAN 1GIG', 4, '2025-02-05 06:47:12', NULL),
(20, 'Developper', 9, '2025-02-05 06:47:27', NULL),
(21, 'Fusing Unit', 2, '2025-02-05 06:47:40', NULL),
(22, 'Wifi Dongle', 6, '2025-02-05 06:47:55', NULL),
(23, 'Imagine Unit', 3, '2025-02-05 06:48:10', NULL),
(24, 'CMOS Battery', 4, '2025-02-05 06:48:29', NULL),
(25, 'Network Card', 1, '2025-02-05 06:48:45', NULL),
(26, 'Unifi POE Injector', 3, '2025-02-05 06:49:07', NULL),
(27, 'Unifi Access Point', 1, '2025-02-05 06:49:32', NULL),
(28, 'Dahao Dongle', 17, '2025-02-05 06:50:20', NULL),
(29, 'Actuator', 8, '2025-04-22 01:36:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `issued_items`
--

CREATE TABLE `issued_items` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `issued_quantity` int(11) NOT NULL,
  `issued_by` int(11) NOT NULL,
  `issued_date` date DEFAULT current_timestamp(),
  `issue_note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issued_items`
--

INSERT INTO `issued_items` (`id`, `item_id`, `issued_quantity`, `issued_by`, `issued_date`, `issue_note`) VALUES
(1, 22, 1, 2, '2025-02-14', NULL),
(2, 12, 1, 2, '2025-02-17', NULL),
(3, 7, 1, 2, '2025-02-19', NULL),
(4, 3, 1, 2, '2025-02-19', NULL),
(5, 2, 1, 2, '2025-02-19', NULL),
(6, 2, 1, 2, '2025-02-19', NULL),
(7, 13, 1, 2, '2025-02-19', NULL),
(8, 7, 1, 2, '2025-03-06', 'Mr. Dilshan'),
(13, 2, 1, 2, '2025-03-18', 'Dinushi (Sewing) Rapoo Mouse (Sample)\\'),
(14, 1, 1, 2, '2025-03-21', 'FingerPrint (EMB)'),
(15, 13, 1, 2, '2025-03-24', 'Subashini (Sewing)'),
(16, 13, 1, 2, '2025-03-24', 'Switch (Sample)'),
(17, 3, 1, 2, '2025-03-24', 'Subashini (Sewing)'),
(18, 11, 1, 2, '2025-03-24', 'Subashini (Sewing)'),
(19, 22, 1, 2, '2025-03-24', 'Subashini (Sewing)'),
(20, 7, 1, 2, '2025-03-24', 'Dulani (Stores)'),
(21, 24, 3, 2, '2025-03-24', 'Rumesh (TM)'),
(22, 24, 1, 2, '2025-03-24', 'Subashini (Sewing)'),
(23, 11, 1, 2, '2025-04-01', 'TM'),
(24, 15, 1, 2, '2025-04-01', 'Backup'),
(25, 3, 1, 2, '2025-04-03', 'Sample (TM)'),
(26, 2, 1, 2, '2025-04-03', 'Sample (TM)'),
(27, 13, 1, 2, '2025-04-03', 'Kobeigane'),
(28, 16, 1, 2, '2025-04-03', 'Printer (AQL)'),
(29, 15, 1, 2, '2025-04-03', 'Printer (AQL)'),
(30, 22, 1, 2, '2025-04-03', 'Sample (TM)'),
(31, 13, 1, 2, '2025-04-03', 'Sample (TM)'),
(32, 7, 1, 2, '2025-04-07', 'Shenali (Sample)'),
(33, 9, 1, 2, '2025-04-10', 'Rumesh (TM)'),
(34, 4, 3, 2, '2025-04-10', 'Rumesh (TM)'),
(35, 29, 1, 2, '2025-04-22', 'Printer (AQL)'),
(36, 24, 1, 2, '2025-04-22', 'Nethmi (Sample)'),
(37, 2, 1, 2, '2025-04-24', 'Mr. Sumudu (Sample)'),
(38, 1, 1, 2, '2025-04-29', 'Rumesh (TM)'),
(39, 9, 1, 2, '2025-05-05', 'Rumesh (TM)'),
(40, 7, 1, 2, '2025-05-09', 'Dinushi (Sewing)'),
(41, 12, 1, 2, '2025-05-15', 'Hansika (Planning)'),
(42, 13, 1, 2, '2025-05-19', '(Printing)'),
(43, 19, 1, 2, '2025-05-22', 'Printing'),
(44, 3, 1, 2, '2025-05-22', 'Sewwandi (Planning)'),
(45, 1, 1, 2, '2025-05-22', 'Rumesh (TM)'),
(46, 11, 1, 2, '2025-05-22', 'Nav DB (IT)'),
(47, 3, 1, 2, '2025-05-29', 'Sudili (Sample)'),
(48, 9, 1, 2, '2025-06-03', 'Nadeesha (EMB)'),
(49, 1, 1, 2, '2025-06-05', 'Panchali (Laser)'),
(50, 19, 1, 2, '2025-06-09', 'Printing'),
(51, 9, 1, 2, '2025-06-12', 'Kaushalya (Accounts Office)'),
(53, 7, 1, 2, '2025-06-16', 'Udaya (Packing)'),
(54, 13, 1, 2, '2025-06-16', 'Mr. Sumudu (Sample)'),
(55, 3, 1, 2, '2025-06-24', 'Nishadi (Stores)'),
(56, 2, 1, 2, '2025-06-30', 'Mr. Chaminda'),
(57, 1, 1, 2, '2025-06-30', 'Sachini(Packing)'),
(58, 1, 1, 2, '2025-06-30', 'Kithumini(Packing)'),
(59, 1, 1, 2, '2025-06-30', 'Nimanthika(Cutting)'),
(60, 11, 1, 2, '2025-07-03', 'Laser'),
(61, 1, 4, 2, '2025-07-07', 'Rumesh (TM)'),
(62, 22, 2, 2, '2025-07-07', 'Rumesh (TM)'),
(63, 7, 1, 2, '2025-07-09', 'Sachini(Packing)'),
(64, 1, 2, 2, '2025-07-14', 'Laser'),
(65, 8, 1, 2, '2025-07-31', 'Rumesh (TM)');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `department_id`) VALUES
(1, 'nirmal', '$2y$10$hbOVs5RiUHn4qnhVSJcZBuOqka3Tqp9l04trDQhntII.2ha58LGQC', 'user', NULL),
(2, 'sadeepa', '$2y$10$OXjPwtP5Wdft/imAyq5P4.narzPugpztGDXvzloSh4sJAO9F3DbQm', 'admin', NULL),
(3, 'vindana', '$2y$10$n99.01Dc491IE0bBeFkg1eraOGi3m50Hk9XqZgudmPpHUHH7VuJ4.', 'user', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_department` (`department_id`);

--
-- Indexes for table `issued_items`
--
ALTER TABLE `issued_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `issued_by` (`issued_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_department` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `issued_items`
--
ALTER TABLE `issued_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `fk_inventory_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `issued_items`
--
ALTER TABLE `issued_items`
  ADD CONSTRAINT `issued_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issued_items_ibfk_2` FOREIGN KEY (`issued_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
