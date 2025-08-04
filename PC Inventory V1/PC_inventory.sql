-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2025 at 05:52 AM
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
-- Database: `pc_inventory`
--
CREATE DATABASE IF NOT EXISTS `pc_inventory` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pc_inventory`;

-- --------------------------------------------------------

--
-- Table structure for table `pcs`
--

CREATE TABLE `pcs` (
  `id` bigint(255) NOT NULL,
  `serial_no` varchar(50) NOT NULL,
  `section` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `computer_name` varchar(100) DEFAULT NULL,
  `monitor_brand_size` varchar(100) DEFAULT NULL,
  `cpu_type` varchar(100) DEFAULT NULL,
  `cpu_brand` varchar(100) DEFAULT NULL,
  `processor` varchar(100) DEFAULT NULL,
  `ram` varchar(50) DEFAULT NULL,
  `hard_disk_gb` varchar(50) DEFAULT NULL,
  `operating_system` varchar(100) DEFAULT NULL,
  `system_type` varchar(100) DEFAULT NULL,
  `office_package` varchar(100) DEFAULT NULL,
  `teamviewer_id` varchar(100) DEFAULT NULL,
  `nav_user_name` varchar(100) DEFAULT NULL,
  `other_software` text DEFAULT NULL,
  `mobile_email` varchar(100) DEFAULT NULL,
  `service_tag` varchar(100) DEFAULT NULL,
  `date_of_issue` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pcs`
--

INSERT INTO `pcs` (`id`, `serial_no`, `section`, `user_name`, `computer_name`, `monitor_brand_size`, `cpu_type`, `cpu_brand`, `processor`, `ram`, `hard_disk_gb`, `operating_system`, `system_type`, `office_package`, `teamviewer_id`, `nav_user_name`, `other_software`, `mobile_email`, `service_tag`, `date_of_issue`) VALUES
(11, '1', 'Stores', 'Pawani Nimasha', 'CPNW10MRN03', 'Terra 23.6', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7300U CPU @ 2.60GHz   2.71 GHz', '8GB', '500GB  SSD', 'Windows 10 Pro', '64 Bit', 'Microsoft Office Standard 2016', '462017088', 'Ushani', 'Sophos,Mozilla Thunderbird,OpenOffice,Teamviewer,AnyDesk,InfraView', NULL, '', NULL),
(12, '2', 'Stores', 'Nimeshika Maduwanthi', 'CPNW11ST-DEMAND', 'Terra 23.6', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB NVMe SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2010', '486 692 798', 'Nimeshika', 'Sophos,TeamViewer', NULL, '', NULL),
(13, '3', 'Stores', 'Rangana Kawmadi', 'CPNW11KAUSHIKA', 'ViewSonic 23\"', 'NUC', 'Terra micro pc', ' Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '500GB  SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2016', '1 038 069 677', 'karishma', 'Mozilla Firefox,InfraView,Sophos', NULL, '', NULL),
(14, '4', 'Stores', 'Hasini pravishika', 'CPNW11STORESMRN', 'Dell 2421HN Monitor', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB NVMe SSD', 'Windows 11 Pro', '64bit', 'Micosoft Office Standard 2010', '482 607 802 ', 'Hasini', 'AnyDesk,Mozilla Firefox,Mozilla ThunderBird,TeamView,Sophos', NULL, '', NULL),
(15, '5', 'Stores', 'Piyumi Athukorala', 'CPNW10PIYUMI', 'Terra 23.6\"', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2016', '1 549 437 357', 'Piyumi', 'AnyDesk,Mozilla Firefox,TeamView,Sophos', NULL, '', NULL),
(16, '6', 'Stores', 'Ushani Piumika', 'CPNW10USHANI', 'ViewSonic 23.8', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice 24.2.1.2', '887 307 814 ', 'Thiloka', 'AnyDesk,Mozilla ThunderBird,OpenOffice4.1.6,TeamViewer,Sophos', NULL, '', NULL),
(17, '7', 'Stores', 'Rohitha Mahaliyana ', 'CPNW10ROHITHA', 'Terra 23.8', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2016', '406 685 110', 'Rohitha', 'Anydesk,Google Chrome,PDF24 Creator,TeamViewer,Sophos', NULL, '', NULL),
(18, '8', 'Stores', 'Charminda Wewelpanawa', 'CPLW11CHAMI24', 'Samsung 24', 'Laptop', 'Dell Latitude 3540', '13th Gen Intel®Core™ i5-1335U 1.30GHz', '16GB', '512 NVMe SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2016', '1 203 457 303', 'Charminda', 'Anydesk,InfraView,Sophos,TeamViewer,FileZilla', NULL, '66XZLX3', '2024-11-26'),
(19, '9', 'Stores', 'Thushara Perera', 'CPDW10THUSHARA', 'Terra 23.8\"', 'Desktop', 'Dell Optiplex 5080 ', 'Intel(R) Core(TM) i5-10500 CPU @ 3.10GHz   3.10 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2010', '258 053 433', 'Thushara', 'InfraView,Mozilla Firefox,Sophos,TeamViewer', NULL, '', NULL),
(20, '10', 'Stores', 'Nisansala Madhushani', 'CPDW10JAYASINGH', 'ViewSonic 23\"', 'Desktop', 'Dell Optipex 3040', 'Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz   3.19 GHz', '8GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2010', '1 265 712 317', 'Sasini', 'LibreOffice 7.5.1.2,TeamViewer,Bar tender', NULL, '', NULL),
(21, '11', 'Stores', 'Sasini Dilshani', 'CPNW10SASINI', 'Samsung 24\" ', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2010', '1 003 693 513', 'Sasini', 'Open Office,Teamviewer,Sophos,NSClient++', NULL, '', NULL),
(22, '12', 'Stores Lab', 'Nelum', 'CPLW11NELUM-LAB', '', 'Laptop', ' Terrra Mobile 1516', 'Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz   2.11 GHz', '8GB', '512GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2016', '663 547 488', 'pt', 'Filezila,Mozilla Firefox,Zoom,TeammViewer,Sophos', NULL, '', NULL),
(24, '13', 'Stores Lab', 'Shantha Kumara', 'CPLW11SANTHA23', '', 'Laptop', 'Dell Latitude 3520', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   1.38 GHz', '8GB', '512 NVMe SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2016', '1 111 436 114', 'shantha', 'webex meeting,FileZilla 3.65.0,Shrew Soft VPN Client,Zoom,VLC', NULL, '', NULL),
(25, '14', 'Stores Lab', 'Lab Store', 'CPNW11ST-LAB2', 'Terra 23.8', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2010', '1 499 189 846', 'shantha', 'Mozilla ThunderBird,TeamViewer,Sophos', NULL, '', NULL),
(27, '15', 'Stores Lab', 'Lab Store', 'CPNW11STLAB', 'ViewSonic 23', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2010', '196 572 684', 'Shantha', 'InfraView 4.66,TeamViewer,Sophos', NULL, '', NULL),
(28, '16', 'Cutting', 'Swarna', 'CPDW10LECTRA', 'Samsung 22', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz   3.60 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2016', '1 189 855 185', 'Swarna', 'InfraView,Sophos,TeamViewer', NULL, '', NULL),
(29, '17', 'Cutting', 'Yoga Geetha', 'CPNW11LECTRA25', 'Terra 23.6”', 'NUC', 'Terra micro pc', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '500GB NVMe', 'Windows 11 Pro', '64bit', 'LibreOffice 24.1.2.1', '1 862 746 062', 'Geetha', 'Anydesk,Sophos', NULL, '', NULL),
(30, '18', 'Cutting', 'Vectorq50', 'CPNW10LEC-Q50', 'ViewSonic', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7300U CPU @ 2.60GHz   2.71 GHz', '8GB', '512GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice 24.2.1.2', '162 733 628', '', 'Bibliobus, Modaservice, Vector V4R1SP2 Hotfix 5, TeamViewer, Lectra Services', NULL, '', NULL),
(31, '19', 'Cutting', 'Vector', 'CPNW10LEC-IX24', 'Planar 22”', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7300 U CPU @ 2.60GHz   2.71 GHz', '8GB', '512GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice 7.6.0.3', '1 777 738 508', '', 'Bibliobus,Modaservice,vector V4R1SP2 Hotfix 5, VectorPilotSuiteV4R1SP2, TeamViewer', NULL, '', NULL),
(32, '20', 'HR Dep', 'Nimakshi Jayawardana', 'CPLW11NIMAKSHI', 'Terra 23.8\"', 'Laptop', 'Terra Mobile 1516', 'Intel®Core™ i5-7200U CPU @ 2.50GHz 2.71GHz', '8GB', '480GB SSD', 'Windows 11 Pro', '64bit', 'Micosoft Office Standard 2010', '587 492 291', '', 'Sophos,TeamViewer,PDF24 Creator', NULL, '', '2025-01-16'),
(33, '21', 'HR Dep', 'Menakahr', 'CPLW11MENAKA25', 'Terra 23.8', 'Laptop', 'Dell Latitude 3520', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   1.38 GHz', '8GB', '512GB NVMe SSD ', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2016', '356 889 860', '', 'PDF24 Creator,Sophos,TeamViewer,Zoom', NULL, '3SCB9G3', '2025-04-09'),
(34, '22', 'HR Dep', 'Nadeeka Dassanayake', 'CPLW10NADEEKA', '-', 'Laptop', 'Acer Aspire 5', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '4GB', '256GB NVMe SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Professional Plus 2010', '225 329 573', '-', 'Anydesk,Google Chrome,InfraView,Mozilla Firefox,Sophos,TeamViewer,VLC,Zoom', NULL, '', NULL),
(35, '23', 'HR Dep', 'Dilini Jayasinghe', 'CPNW11DILINI', 'Terra 23.8\"', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 11 Pro', '64bit', 'Micosoft Ofice Standard 2010', '1 347 024 349', '', 'InfraView,Sophos,TeamViewer,PDF24 Creator', NULL, '', NULL),
(36, '24', 'HR Dep', 'Shanika Perera', 'CPNW11SHANI', 'Terra 23.8\"', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '240GB SSD + 256GB SSD', 'Windows 11 Pro', '64bit', 'Micosoft Office Standard 2010', '1 347 775 584', '', 'InfraView,Sophos,TeamViewer,PDF24 Creator', NULL, '', NULL),
(37, '25', 'Planning', 'Chathuri Thilinika', 'CPLW11THILINIKA', 'Terra 23.8', 'Laptop', 'Dell Latitude 3410', 'Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz   2.11 GHz', '8GB', '512 GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2010', '1 165 773 965', 'Thilinika', 'Gimp,Anydesk,Mozilla Firefox,Zoom,Sophos,TeamViewer,InfraView', NULL, 'BVVFT93', NULL),
(38, '26', 'Planning', 'Madhawa Rajapaksha', 'CPNW10MADAWA20', 'Terra 23.8', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7300U CPU @ 2.60GHz   2.71 GHz', '8GB', '512GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Professional Plus 2010', '425 220 044', 'Madhawa', 'Anydesk,Mozilla Firefox,Sophos,TeamViewer', NULL, '', NULL),
(39, '27', 'Planning', 'Raja Anthony', 'CPNW11RAJA24', 'Terra 23.8', 'NUC', 'Terra micro pc', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '500GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2016', '1 626 082 798', 'Raja', 'InfraView,TeamViewer,Sophos', NULL, '', '2024-02-08'),
(40, '28', 'Planning', 'Dinali', 'CPNW11CALYIN3', 'Terra 23.8', 'NUC', 'Terra micro pc', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '500GBSSD NVMe', 'Windows 11 Pro', '64bit', 'Micosoft Office Standard 2010', '1 046 434 140', 'Dilki', 'Gemini Cut Plan,Gemini nest Expert,Gemini Pattern Editor,Gemini Photot Digitizer,Gemini PLT Spooler,Sophos,TeamViewer', NULL, '', NULL),
(41, '29', 'Planning', 'Keerthana S', 'CPDW7PLOTING', 'Samsung 22', 'Desktop', 'Lenovo ThinkCentre', 'intel(R) Core(TM) i5-2400 CPU @ 3.10GHz 3.10GHz', '4GB', '500GB ', 'Windows 7 Professional', '64bit', 'LibreOffice 24.2.1.2', '1 230 392 094', 'Dilki', 'CPComp,Google Chrome,Modaservice,OpenOffice 4.1.5,PDF234 Creator,Sophos,TeamViewer,YinCAD Pattern Designer,YinCAD Sheild,', NULL, '', NULL),
(42, '30', 'Planning', 'Yincad3', 'CPDW10SANDUN', 'Samsung 24”', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4150 CPU @ 3.50GHz   3.50 GHz', '4GB', '250GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice', '1 115 283 664', 'Yin cad 1', 'Gemini, Thunderbird,Sophos', NULL, '6LHC32', NULL),
(43, '31', 'Planning', 'Yinmarker', 'CPDW10YIN23', 'Samsung 22', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i5-4570 CPU @ 3.20GHz   3.20 GHz', '8GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice 7.5.1.2', '223 256 545', 'Yincad 2', 'Gemini, Thunderbird', NULL, '', NULL),
(44, '32', 'Planning', 'Lectra Lectra', 'CPNW10MODARIAS', 'Terra 23.6\"', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'OpenOffice 4.1.6', '1 123 808 960', 'Sameera', 'Lectra Software, MS VS Tool, ModarisV6R1, Modaservice, Pidign, Sophos,', NULL, '', NULL),
(45, '33', 'Planning', 'jayamali', 'CPDW7SURENI', 'Samsung 22', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz   3.60 GHz', '8GB', '500GB ', 'Windows 7 Professional', '64bit', 'LibreOffice 7.5.1.2', '1 203 967 066', 'Dilki', 'Anydesk,Sophos,TeamViewer,OpenOffice,Lectra3D  Prototyping,LectraFlexnetLM,LectraFlexid,Digitizer2.1c3,CpComp,Buttonbox1.1c4', NULL, '', NULL),
(46, '34', 'Planning', 'Dilki', 'CPNW10DILKI', 'Terra 23.8\"', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2010', '994 625 223', 'Dinali', 'Anydesk,Sophos,TeamViewer', NULL, '', NULL),
(47, '35', 'Planning', 'Nagomi', 'CPNW10NAGOMI', 'ViewSonic 23.8', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Professional Plus 2010', '242 590 904', 'Nagomi', 'Anydesk,Sophos,TeamViewer,OpenOffice,LectraFlexnetLM,LectraFlexid,CpComp,Buttonbox1.1c4', NULL, '', NULL),
(48, '36', 'Planning', 'Optiplan', 'CPDW7OPTIPLAN', 'Terra 23.6”', 'Desktop', 'Dell Optiplex 3020', 'IIntel(R) Core(TM) i5-4590 CPU @ 3.30GHz 3.30GHz', '8GB', '256GB', 'Windows 7 Professional', '64bit', 'OpenOffice 4.1.6', '1 165 930 214', 'Optiplan', 'Optiplan V3R4,Anydesk,Sophos,TeamViewer,OpenOffice,Mozilla ThuderBird,Sophos,TeamViewer', NULL, '', NULL),
(49, '37', 'Maintanance Office', 'Adeesha Nethmi', 'CPNW10ADEESHA', 'Terra 23.8\"', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 069 186 238', '', 'InfraView (32bit),InfraView (64bit)PDF24 Creator,Sophos,TeamViewer', NULL, '', NULL),
(50, '38', 'Maintanance Office', 'Waruna', 'CPLW11WARUNA23', '', 'Laptop', 'Dell Inspiration 13 5000', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   1.38 GHz', '8GB', '512 NVMe SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Home And Business 2021', '1 435 067 564', '', 'InfraView,Microsoft Teams,Mozilla Firefox,Sophos,TeamViewer,VLC,Zoom Workplace', NULL, '', NULL),
(51, '39', 'Sample', 'Kumari Deyalage', 'CPDW7KUMARI', 'Samsung 23', 'Desktop', 'Lenovo ThinkCentre', 'intel(R) Core(TM) i5-2400 CPU @ 3.10GHz 3.10GHz', '4GB', '500GB ', 'Windows 7 Professional', '64bit', 'Microsoft Office Standard 2010', '1 000 234 402', 'label', 'Anydesk,TeamViewer, Sophos, TeamViewer', NULL, '', NULL),
(52, '40', 'Sample', 'Saman Karunarathne', 'CPDW11SUMUDU24', 'Terra 23.8\"', 'Desktop', 'Dell Vostro 3020', '13th Gen Intel®Core™ i7-13700 2.10GHz', '32GB', '1TB NVMe SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Home and Business 2010', '878 243 395', '', 'Adobe Photoshop Element 15, CorelDraw Graphics Suite 2018/ 2023, Gemini, Microsoft Visual Studio 2017/2019, Sophos, TeamViewer, Wilcom Embroidery Studio', NULL, 'JL5C324', '2024-09-09'),
(53, '41', 'Sample', 'Prasangi Fernando', 'CPLW11PRASANGI2', 'Terra 21.5', 'Laptop', 'Dell Latitude 3410', 'Intel(R) Core(TM) i7-10510U CPU @ 1.80GHz   2.30 GHz', '8GB', '512GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2016', '1 136 870 546', 'Prasangi', 'Anydesk, FileZilla3.60\".2,InfraView,Mailstore Client, Microsoft Teams, Sophos,Teamviewer, Zoom', NULL, 'HRF65B3', NULL),
(54, '42', 'Sample', 'Ishani', 'CPDW10SHOWROOM', 'Terra 23.6\"', 'Desktop', 'Dell Optiplex 3010', 'Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz   3.40 GHz', '4GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice 7.6.3.2', '1 356 655 089', '', 'InfraView,TeamViewer', NULL, 'HRF65B3', NULL),
(55, '43', 'Sample', 'Yin Cad', 'CPNW11YIN24', 'Terra 23.6', 'NUC', 'Terra micro pc ', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '16GB', '512GB SSD NVMe', 'Windows 11 Pro', '64bit', 'LibreOffice 24.2.1.2', '392 233 499', 'Tharidu', 'FileZilla Client,Gemini Cut Plan,Gemini Nest Expert,Gemini Pattern Editor,Gemini Photo Digitizer,Gemini PLT Spooler,Google Chrome,TeamViewer,Sophos, Mozilla thunderbird', NULL, '', NULL),
(56, '44', 'Sample', 'Yin Cad1', 'CPNW11GEMINI24', 'Terra 23.6\"', 'NUC', 'Terra micro pc', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '16GB', '512GB SSD', 'Windows 11 Pro', '64bit', 'LibreOffice 24.2.1.2', '1 083 459 247', 'Gayani', 'Adobe Illustrator CS6,Anydesk,FileZilla Client,CorelDraw,Gemini Cut Plan,Gemini Nest Expert,Gemini Pattern Editor,Gemini Photo Digitizer,Gemini PLT Spooler, TeamViewer, Sophos', NULL, 'R7796478', NULL),
(57, '45', 'Sample', 'Divya', 'CPNW10DHIVYA', 'Terra 21.6', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-5300U CPU @ 2.30GHz   2.30 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 010 312 490', 'Divya', 'Sophos,TeamViewer', NULL, '', NULL),
(59, '46', 'Sample', 'Sudili Nirunika', 'CPDW10SUDILI', 'ViewSonic 23\"', 'Desktop', 'Dell Optiplex 7010', 'Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz   3.40 GHz', '8GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '748 342 034', '', 'Bernina Embroidery 8,CorelDraw,Gemini Pattern Editor,Microsoft Visual Studio Tool 2015,OpenOffice 4.1.6, Thunderbird, Sophos,TeamViewer', NULL, '', NULL),
(60, '47', 'Sample', 'Udeshika Athapattu', 'CPDW10EMB-DIGI', 'Terra 23.6', 'Desktop', 'Dell Optiples 3010', 'Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz   3.40 GHz', '8GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 327 227 468', '-', 'Bernina Embroidery 8,CorelDraw,Ghostscript GPL,Microsoft Visual Studio Tool 2015, Wilcom Embroidery Studio, Sophos,TeamViewer', NULL, '', NULL),
(61, '48', 'Sample', 'Working Instructions', 'CPDW10WORKINGIN', 'ViewSonic VX2209', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz   3.60 GHz', '4GB', '480GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '334 125 875', 'pt', 'Sophos,TeamViewer,Open office 4.1.15', NULL, '', NULL),
(62, '49', 'Sample', 'Uditha Asuntha Perera', 'CPLW11UDITHA24', 'Dell 2421HN 24” ', 'Laptop', 'MSI CYBORG 15 A13U', '13th Gen Intel®Core™i7-13620H  2.40 GHz', '32GB', '1TB NVMe SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2010', '160 186 566', '', 'Movavi Suite, Adobe Bridge 2025,Adobe Creative Cloud,Adobe Illustrator 2025,Adobe Photoshop 2025,Adobe Premiere Rush,Affinity Photo,Anydesk,Bernina Embroidery 8,CorelDraw,Ghostscipt GPL,Madhura Dictionary,Microsoft Visual Studio 2015,Sophos,TeamViewer, LibreOffice 24.2.1.2, FileZilla 3.68.1, Zoom', NULL, 'S/N: K2407N0176639', '2024-09-10'),
(63, '50', 'Sample', 'Photoshop', 'CPDW11PHOTOSHOP', 'ViewSonic 32”', 'Desktop', 'Dell Vostro 3910', '12th Gen Intel(R) Core(TM) i7-12700   2.10 GHz', '32GB', '960GB SSD', 'Windows 11 Pro', '64bit', 'OpenOffice 24.2.1.2', '1 311 919 497', 'aruni', 'Adobe Creative Cloud,TeamViewer, Adobe Bridge 2025, Adobe Illustrator 2025,Adobe Illustrator (beta)Adobe Bridge 2024, Gemini, Thunderbird', NULL, '', NULL),
(64, '51', 'Sample', 'Madumali', 'CPNW10SAM-CAL2', 'Terra 23.6', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-8259U CPU @ 2.30GHz   2.30 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '140 336 699', 'Madhushika', 'InfraView,TeamViewer,Sophos,MADHURA Dictionary', NULL, '', NULL),
(65, '52', 'Sample', 'Nimna Maduwanthi', 'CPNW10WORKING2', 'Terra 23.8', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '225 921 401', 'Nimna', 'Sophos,TeamViewer', NULL, '', NULL),
(66, '53', 'Sample', 'Poorni Sewwandi', 'CPDW10SEWWANDI', 'Samsung 22', 'Desktop', 'Optiplex 3010', 'Intel(R) Core(TM) i3-3240 CPU @ 3.40GHz   3.40 GHz', '4GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 541 717 104', 'Keshala', 'Sophos,TeamViewer', NULL, '', NULL),
(67, '54', 'Sample', 'Ranshila Madushini', 'CPNW11SHENALI', 'ViewSonic 23', 'NUC', 'Terra micro pc', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '256GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2010', '1 119 006 850', 'Ranshila', 'Bernina Embroidery 9 trial, CorelDraw Graphics Suite, Microsoft Visual Studio,TeamViewer, Sophos', NULL, '', '2025-03-10'),
(68, '55', 'Sample', 'Viraj Nuwantha ***', 'CPDW10SAMPLEROOM', 'Terra 23.6', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i5-4590 CPU @ 3.30GHz   3.30 GHz', '8GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'OpenOffice 4.1.1', '464 744 381', 'Lakshmitha', 'Anydesk,Picasa 3,Sophos,TeamViewer,Mozilla thunderbird, Mozila maintenance Service', NULL, '', NULL),
(69, '56', 'Sample', 'Chathurangi Costa', 'CPDW10SAM-CAL', 'Samsung 22', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4130 CPU @ 3.40GHz   3.40 GHz', '4GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 835 508 621', 'Chathu', 'Sophos,TeamViewer,Mozilla firefox', NULL, '', NULL),
(70, '57', 'Sample', 'Photoshop', 'CPNW11PHOTO2', 'Dell 2421HN 24”  ', 'NUC', 'Terra micro pc', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '16GB', '500GB  SSD', 'Windows 11 Pro', '64bit', 'LibreOffice 24.2.0.3', '1 668 687 026', '', 'Adobe Bridge 2025, 2024,Adobe Creative Cloud, Adobe Photoshop 2025, Adobe Photoshop 2024, TeamViewer, Sophos', NULL, '', NULL),
(71, '58', 'Sample', 'Apex', 'CPDW10APEX', 'Shima Seika 24\" LCD', 'Desktop', 'Shima Seiki', 'Intel(R) Core(TM) i7-6700 CPU @ 3.40GHz   3.40 GHz', '8GB', '2TB HDD', 'Windows ', '64bit', 'OpenOffice 4.1.1', '590 970 529', '', 'ColorNavigator 6,KNITMC3D2008,SDS-ONE 3Dmodelist,SDS-ONE Design,SDS-ONE Draw,SDS-ONE Embroidery,SDS-ONE KnitPaint,SDS-ONE Main Title SDS-ONE PGM,Zoom,AnyDesk', NULL, '', NULL),
(72, '59', 'Sample', 'Madushanka ', 'CPDW10MADUSANKA', 'Terra 23.8 *2', 'Desktop', 'Dell Optiplex 7060', 'Intel(R) Core(TM) i7-8700 CPU @ 3.20GHz   3.19 GHz', '64GB', '480GB SSD, 500GB HDD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 294 006 053', '', 'Adobe Bridge(2024,2025),Creative Adobe Cloud,Adobe Illustrator 2025,,Affinity Photo,Affinity Publisher,Anydesk,BarTender,CapCut,CorelDraw Graphics,CpComp,Dihitizer,Gemini Cut Plan,Gemini Nest Expert,Gemini Pattern Editor,Gemini Photo Digitizer,Gemini PLT Spooler,Microsoft Teams,LectraFLEXid,LectraFLEXnetLM,PDF24 Creator,Sophos,TreeSize,VLC,Zoom,TeamViewer,Mozilla firefox, Mozilla Maintenance Service,Thunderbolt software, sentinel protection installer', NULL, '', NULL),
(73, '60', 'Sample', 'Susith Priyadarshana', 'CPNW10SUSITH', 'Terra 23.6\"', 'NUC ', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 429 998 088', 'Sampath', 'Microsoft Teams,Zoom, AnyDesk, TeamViewer,Sophos, MailStore Client, FileZilla 3.67.1', NULL, '', NULL),
(74, '61', 'Sample', 'Chathuri Nisansala', 'CPDW11DESIGN', 'Dell 2421HN 24”  ', 'Desktop', 'Dell Optiplex 5080 ', 'Intel(R) Core(TM) i5-10500 CPU @ 3.10GHz   3.10 GHz', '24GB', '500GB HDD + 512GB SSD', 'Windows 11 Pro', '64bit', 'LibreOffice 24.2.1.2', '1 084 158 534', '', 'Adobe Creative Cloud, TeamViewer, Sophos, Adobe Illustrator 2024, 2025, Laser CAD V7.96.2, RDWorks 8.01.18', NULL, '4LP8H73', '2024-10-07'),
(75, '62', 'Sample', 'Rohin Fernando', 'CPDW10PATTERN', 'Terra 23.6', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i5-4570 CPU @ 3.20GHz   3.20 GHz', '8GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'OpenOffice 4.1.0', '433 418 737', 'Rohin', 'Google Chrome, Thunderbird, TeamViewer, Sophos', NULL, '', NULL),
(76, '63', 'Sample', 'Laser03', 'CPDW10SA-LASER', 'Samsung 22', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM)i5-4570 CPU @ 3.20GHz   3.20 GHz', '4GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice 24.2.1.2', '1 140 285 373', 'pt', 'TeamViewer,Sophos', NULL, '', NULL),
(77, '64', 'Quality Dep', 'Gayani Deniyagoda', 'CPLW11QLTGAYANI', '-', 'Laptop', 'Acer Aspire E5-575', 'Intel(R) Core (TM) i5-6200U CPU @ 2.30GHz (2.40 GHz)', '8GB', '256GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2010', '479223775', 'deniyagoda', 'TeamViewer, Sophos', NULL, '', '2025-07-25'),
(78, '65', 'Quality Dep', 'Hansani Nadeeshani', 'CPLW10NADEESHAN', '', 'Laptop', 'Dell Latitude 3410', 'Intel(R) Core(TM) i7-10510U CPU @ 1.80GHz   2.30 GHz', '8GB', '512GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Home And Business 2010', '607 767 421', 'Nadeeshani', 'InfraView,Filezilla Client,MailStore Client,Microsoft Teams,Mozilla Firefox,Shrew soft VPN Client,Sophos,TeamViewer,Zoom', NULL, '2JF65B3', NULL),
(79, '66', 'Quality Dep', 'Shalini Fernando', 'CPLW11SHALINI22', '', 'Laptop', 'Dell Latitude 3520', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   1.38 GHz', '8GB', '256GB NVMe SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2010', '328 281 954', 'Shalini', 'InfraView,Filezilla Client,MailStore Client,Shrew Soft VPN Client,Sophos,TeamViewer,VLC', NULL, '1NFB9G3', NULL),
(80, '67', 'Quality Dep', 'Prabash jayakody', 'CPLW10PRABASH23', '', 'Laptop', 'Acer Aspire E5-575', 'Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz   2.70 GHz', '4GB', '128GBSSD + 500GB HDD ', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 602 404 415', 'Prabash', 'InfraView,Sophos,TeamViewer', NULL, '', NULL),
(81, '68', 'Production Office', 'Dilshan Silva', 'CPLW11DILSHAN22', 'ViewSonic 23\"', 'Laptop', 'Dell Latitude 3520', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   1.38 GHz', '8GB', '240GB SSD + 256GB NVMe SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Home And Business 2021', '705904566', 'dilshan', 'Mendeley Reference Manager,Anydesk,Shrew Soft VPN Client', NULL, 'DSCB9G3 ', NULL),
(82, '69', 'Production Office', 'Eranda Corea', 'CPLW10ERANDA21', '', 'Laptop', 'Dell Latitude 3410', 'Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz   2.11 GHz', '8GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Home and Business 2010', '309520783', 'eranda', 'Webex,FileZilla Client 3.57.0,Shrew Soft VPN Client,Zoom,MailStore Client 23.4.0.22136', NULL, 'CDYFT93', NULL),
(83, '70', 'Production Office', 'Charith Attanayaka', 'CPLW11ATTA24', '-', 'Laptop', 'Dell Latitude 3540', '13th Gen Intel(R) Core(TM) i5-1335U 1.30GHz', '8GB', '512GB NVMe SSD', 'Windows 11 Pro', '64bit', 'Micosoft Office Standard 2010', '1573496762', 'attanayaka', '-', NULL, '4J34KS3', NULL),
(84, '71', 'Finishing', 'Finishingpt', 'CPNW10MANJULA', 'Samsung 22', 'NUC', 'Terra micro pc ', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 037 904 183', 'tm', 'Mozilla Firefox, Sophos, TeamViewer', NULL, '', NULL),
(85, '72', 'AQL', 'Achini Mekala', 'CPDW10AQL23', 'Terra 23.8', 'Desktop', 'Dell Optiplex 3010', 'Intel(R) Core(TM) i3-3240 CPU @ 3.40GHz   3.40 GHz', '8GB', '240GB SSD + 500GB HDD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 141 473 827', 'aql', 'TeamViewer', NULL, '', NULL),
(86, '73', 'AQL', 'Achini Mekala', 'CPNW10PRABASH', 'Terra 23.6', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 302 312 049', 'pt', 'Anydesk,Sophos,TeamViewer', NULL, '', NULL),
(87, '74', 'Packing', 'Finishing', 'CPNW10FINISHING', 'Terra 23.6', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 144 554 566', 'tm', 'Sophos,TeamViewer', NULL, '', NULL),
(88, '75', 'Packing', 'Imalsha Dilrukshi', 'CPDW10SANDAMALI', 'Terra 23.8', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-5250U CPU @ 1.60GHz   1.60 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Home And Business 2010', '1 689 649 940', 'Sadamali', 'Sophos,TeamViewer,Anydesk', NULL, '', NULL),
(89, '76', 'Packing', 'Gayan Manuranga ', 'CPLW11MANURANGA', 'Terra 23.6', 'Laptop', 'Terra Mobile 1516', 'Intel(R) Core(TM) i5-10210U CPU @ 1.60 GHz   2.11 GHz', '8GB', '512GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Home And Business 2021', '1 002 106 077', 'manuranga', 'FileZilla 3.52.2,MailStore Outlook Add in,Microsoft Teams,Oneplus USB Driver,Shrew Soft VPN Client ', NULL, '', NULL),
(90, '77', 'Packing', 'Devthilini Fernando', 'CPNW10THILINI', 'Terra 23.8', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 359 443 368', 'Hiruni', 'OpenOffice,Sophos,TeamViewer', NULL, '', NULL),
(91, '78', 'Packing', 'Packing', 'CPDW10PACKGRN', 'HP 19”', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz   3.60 GHz', '4GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'OpenOffice 4.1.0', '1 574 118 235', 'Nirosha', 'Sophos,TeamViewer', NULL, '', NULL),
(92, '79', 'Packing', 'Uthpala Gunathilaka', 'CPDW7UTHPALA', 'Lenovo 19\"', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM)i3-4150 CPU @ 3.50GHz   3.50 GHz', '4GB', '500GB ', 'Windows 7 Professional', '64bit', 'Microsoft Office Standard 2010', '466 308 894', 'Thilini', 'BarTender 10.1,TeamViewer,Sophos', NULL, '', NULL),
(93, '80', 'Packing', 'Linga Darshi', 'CPDW7MADU0815', 'Lenovo 19”', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz   3.60 GHz', '4GB', '480GB SSD', 'Windows 7 Professional', '64bit', 'OpenOffice 4.1.5', '1 209 975 460', 'Maheshi', 'Sophos,TeamViewer,BarTender 10.1, Libreoffice. 24.2, Anydesk', NULL, '', NULL),
(94, '81', 'Packing', 'Packingind', 'CPNW10PACKING', 'ViewSonic 23\"', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 907 639 423', '-', 'Sophos,TeamViewer', NULL, '', NULL),
(95, '82', 'Packing', 'Rejitha', 'CPNW10SUMALI', 'Terra 23.8', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Home And Business 2010', '329 689 891', 'tm', 'Sophos,TeamViewer,OpenOffice 4.1.5', NULL, '', NULL),
(96, '83', 'EMB', 'Nalin Karunasena', 'CPLW11NALIN23', '', 'Laptop', 'Acer Aspire 5', 'Intel(R) Core(TM) i3-1005G1 CPU @ 1.20GHz   1.19 GHz', '4GB', '240GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Home And Business 2021', '886 560 590', 'nalin', 'Shrew soft VPN Client,Sophos,TeamViewer,Zoom', NULL, '', NULL),
(97, '84', 'EMB', 'Supipi Madubashini', 'CPNW11EMB', 'Terra 21.5', 'NUC', 'Terra micro pc', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '500GB SSD NVMe', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2010', '1 152 409 021', 'Lorena ', 'Sophos,TeamViewer', NULL, '', NULL),
(98, '85', 'EMB', 'Sureni', 'CPNW10LASERDEP', 'Terra 23.6\"', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 098 213 227', 'Dinesha', 'Sophos,TeamViewer', NULL, '', NULL),
(99, '86', 'EMB', 'Ranushka', 'CPLW10RANUSHKA', '-', 'Laptop', 'Dell Latitude E5540', 'Intel(R) Core(TM) i5-4310U CPU @ 2.00GHz   2.60 GHz', '8GB', '250GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice 7.5.2.2', '1 940 021 628', 'ranushka', 'Sophos,TeamViewer', NULL, '2RN8J12', NULL),
(100, '87', 'EMB', 'Sanduni Sulakshi', 'CPDW10SANDUNI', 'Terra 23.6\"', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4150 CPU @ 3.50GHz   3.50 GHz', '4GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010', '1 285 604 467', 'sanduni', 'Sophos, TeamViewer', NULL, '', NULL),
(101, '88', 'EMB', 'Hasitha Prasanga', 'CPDW10EMB23', 'Terra 23.6”', 'Desktop', 'Dell Optiplex', 'Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz   3.40 GHz', '8GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice 7.6.0.3', '118824314', '', 'Bernina Embroidery Software 8,CorelDraw Graphics,Microsoft Visual Studios Tool For Application 2015,TeamViewer,Sophos', NULL, '', NULL),
(102, '89', 'EMB', 'Adminstrator', 'Vision Box', 'Terra 23.8\"', '', 'Mini Computer', ' Intel(R) Atom(TM) CPU E3845 @1.91GHz 1.91GHz', '4GB', '128GBSSD ', 'Windows Embeded Standard', '64bit', '', '', '', 'Carvasoft,Vision Master', NULL, '', NULL),
(103, '90', 'EMB', 'Priyadarshani', 'CPNW11EMB25', 'Samsung 24', 'NUC', 'Terra micro pc 6000', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '512 NVMe SSD', 'Windows 11 Pro', '64bit', 'LibreOffice 7.6.3.2', '695 490 017', 'pt', 'TeamViewer, ThunderBird', NULL, '', '2025-02-06'),
(104, '91', 'Sewing', 'Needle', 'CPDW10NEEDLE25', 'ViewSonic 23\"', 'Desktop', 'Dell Optiplex 3010', 'Intel(R) Core(TM) i5-3470 CPU @ 3.20 GHz   3.20 GHz', '8GB', '480GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Standard 2010 ', '357 865 967', 'pt', 'Mozilla Firefox,TeamViewer,Sophos', NULL, '34K1GY1', '2025-03-31'),
(105, '92', 'Sewing', 'Sewing', 'CPNW10SEWING', 'ViewSonic 23\"', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Professional Plus 2010', '1 048 267 298', 'tm', 'Sophos,TeamViewer,Anydesk', NULL, '', NULL),
(106, '93', 'Sewing', 'Sewing', 'CPNW10SEWING', 'Terra 23.6\"', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Professional Plus 2010', '1 048 267 298', 'tm', 'Sophos,TeamViewer,Anydesk', NULL, '', NULL),
(107, '94', 'Sewing', 'Sewing1', 'CPNW11SEWING25', 'Terra 23.6', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '240GB SSD', 'Windows 11 Pro', '64bit', 'LibreOffice', '176 015 858', 'pt', 'Sophos,TeamViewer', NULL, '', '2025-07-02'),
(108, '95', 'Printing', 'Mutoh Printer', 'CPDW11MUTOH2024', 'Terra 23.8\"', 'Desktop', 'Dell Vostro', '13th Gen Intel(R) Core(TM) i7-13700   2.10 GHz', '16GB', '256GB NVMe + 960GB SSD', 'Windows 11 Pro', '64bit', 'LibreOffice 24.2.0.3', '1 647 857 671', '', 'Anydesk,TeamViewer,Mutoh service assistance,Wasatch SoftRip Version 8.0,Sophos', NULL, 'J2C49X3', NULL),
(109, '96', 'Printing', 'Mutoh Printer', 'CPDW10MUTOH', 'Terra 23.8\"', 'Desktop', 'Dell Optiplex 7070', 'Intel(R) Core(TM) i7-9700 CPU @ 3.00GHz   3.00 GHz', '16GB', '500GB SSD + 1TB', 'Windows 10 pro', '64bit', 'Microsoft Office Standard 2010', '212 998 999', '', 'TeamViewer.Mutoh Service,Wasatch SoftRip Version 7.4,Sophos', NULL, '54MHNX2', NULL),
(110, '97', 'Printing', 'Gigcutting', 'CPDW7GIGCUTTING', 'Lenovo 19”', 'Desktop', 'Dell Optiplex 3010', 'intel(R) Core(TM)i3-3240 CPU @ 3.40GHz   3.40 GHz', '4GB', '500GB  ', 'Windows 7 Professional', '64bit', 'OpenOffice 4.1.5', '602 044 352', '', 'Kimo 2016 V17,Sophos,TeamViewer', NULL, '', NULL),
(111, '98', 'Printing', 'Hosonsoft', 'CPDW10PRINT22', 'Samsung 20\"', 'Desktop', 'Dell Optiplex 7010', 'Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz   3.40 GHz', '4GB', '240GB SSD + 500GB HDD', 'Windows 10 Pro', '64bit', 'LibreOffice 24.8.3.2', '1 434 244 805', '', 'TeamViewer, Hosonsoft, RIPrint, PrintExp ', NULL, '', NULL),
(112, '99', 'Laser', 'Chathurika Navodani', 'CPNW11LASER-MRN', 'Dell 24', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7260U CPU @ 2.20GHz   2.21 GHz', '8GB', '256GB SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2016', '1 672 289 030', 'navodani', 'Anydesk,TeamViewer,Sophos', NULL, '', NULL),
(113, '100', 'Laser', 'Laser Digi', 'CPNW10YAPA', 'ViewSonic 22', 'NUC', 'terra micro pc 6000', 'Intel(R) Core(TM) i5-5300U CPU @ 2.30GHz   2.30 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2010', '1 010 576 563', 'navodani', 'Shrew Soft VPN Client,TeamViewer,Sophos,LaserCAD', NULL, '', NULL),
(114, '101', 'Laser', 'Camera Laser Overhead *** Remove**', 'CPDW7OHCA', 'Lenovo 19”', 'Desktop', 'Dell Optiplex 3010', 'Intel(R) Core(TM) i3-3240 CPU @ 3.40GHz   3.40 GHz', '4GB', '500GB HDD', 'Windows 7 Professional', '64bit', 'OpenOffice 4.1.1 ', '193271431', '', 'KkVisionCut 2.0,TeamViewer', NULL, '', NULL),
(115, '102', 'Laser', 'Adminstrator', 'CPDW10LASERSTC', 'Ifound 19\"', 'Desktop', 'Lenovo ThinkCentre', 'intel(R) Core(TM) i5-2400 CPU @ 3.10GHz 3.10GHz', '4GB', '500GB HDD', 'Windows 10 Pro', '64bit', 'OpenOffice 4.1.0', '374 729 875', '', 'KKVisionCut 2.1.7.54', NULL, '', NULL),
(116, '103', 'Laser', 'laseroh', 'CPDW10LASEROH25', 'Lenovo 19\"', 'Desktop', 'Hp Pro', 'intel(R) Core(TM) i5-2400 CPU @ 3.10GHz 3.10GHz', '4GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice 7.5.2.2', '-', '', 'Shrew Soft VPN Client,EverCut', NULL, '', NULL),
(117, '104', 'Laser', 'User', 'CPDW7LASERSTC23', 'Ifound 20\"', 'Desktop', 'Dell Optiplex 3010', 'Intel(R) Core(TM) i3-3240 CPU @ 3.40GHz   3.40 GHz', '4GB', '500GB HDD', 'Windows 7 Professional', '32bit', 'OpenOffice 4.1.0', '-', '', 'LibreOffice 7.5.2.2,KKVision 2.1.7.54', NULL, '', NULL),
(118, '105', 'Laser', 'laseroh', 'CPDW10LASEROH06', 'philips 19', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz   3.60 GHz', '4GB', '480GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice 24.2.1.2', '-', '', 'EverSCCDCut v6.18', NULL, '', NULL),
(119, '106', 'Laser', 'User', 'CPDW7LASERCCD', 'Lenovo 19', 'Desktop', 'Lenovo ThinkCentre', 'intel(R) Core(TM) i5-2400 CPU @ 3.10GHz 3.10GHz', '4GB', '240GB SSD', 'Windows 7 Professional', '32bit', 'OpenOffice 4.1.0', '-', '', 'KKVision', NULL, '', NULL),
(120, '107', 'Laser', 'laseroh', 'CPDW7OHCALA23', 'philips 19', 'Desktop', 'Hp Pro', 'intel(R) Core(TM) i5-2400 CPU @ 3.10GHz 3.10GHz', '4GB', '500GB HDD', 'Windows 7 Professional', '64bit', 'LibreOffice 24.2.1.2', '1745072437', '', 'KkVisionCut 2.0,TeamViewer,open offive 4.1.1', NULL, '', NULL),
(121, '108', 'Laser', 'User', 'CPDW7LASERCCD', 'Ifound 20', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz   3.60 GHz', '4GB', '240GB SSD', 'Windows 7 Professional', '32bit', 'LibreOffice 24.2.1.2', '-', '', 'KKVisionCut 2.1.7.54,OpenOffice 4.1.0', NULL, '', NULL),
(122, '109', 'Laser', 'Laseroh6', 'CPDW7OHLASER007', 'Lenovo 19\"', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz   3.60 GHz', '4GB', '500GB', 'Windows 7 Professional', '64bit', 'LibreOffice 24.2.1.2', '746 376 381', '', 'EverSCCDCut v6.18,Sophos,TeamViewer,Shrew Soft VPN Client,OpenOffice 4.1.0', NULL, '', NULL),
(123, '110', 'Laser', 'Velcro', 'CPDW7VELCRO', 'Lenovo ThinkVision \'\'20\'\'', 'Desktop', 'Lenovo ThinkCentre', 'intel(R) Core(TM) i5-2400 CPU @ 3.10GHz 3101 MHz 4 core (s) 4 Logical Processors', '4GB', '250GB Hdd', 'Windows 7 Professional', '64bit', 'LibreOffice 24.2.1.2', '1553900745', 'Laser', 'Navition,OpenOffice 4.1.6,Sophos,TeamViewer,Madhura Dictionary', NULL, '', NULL),
(124, '111', 'Laser', 'User', 'CPDW10LSMINI', '20\"', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i5-4590 CPU @ 3.30GHz   3.30 GHz', '4GB', '240GB SSD', 'Windows 10 Pro', '32bit', '-', '-', '', 'KKVision2.1.7.54,CCD 2.0', NULL, '', NULL),
(125, '112', 'Laser', 'Laseroh', 'CPDW10LASER24', 'Samsung 20', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i5-4570 CPU @ 3.20GHz   3.20 GHz', '4GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'LibreOffice 7.5.2.2', '-', '', 'Shrew Soft VPN Client,OpenOffice 4.1.1,KKVisionCut2.0', NULL, '', NULL),
(126, '113', 'Supply', 'TM Supply', 'CPDW10TMSUPPLY', 'Samsung 20', 'Desktop', 'Dell Optiplex 3020', 'Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz   3.60 GHz', '4GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'OpenOffice 4.1.0', '1059533952', 'Laser', 'Sophos,TeamViewer', NULL, '', NULL),
(127, '114', 'Accounts Office', 'Radushini', 'CPNW11ACCCHEQUE', 'Dell 24', 'NUC', 'Terra micro pc', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   2.42 GHz', '8GB', '500GB SSD NVMe', 'Windows 11 Pro', '64bit', 'Microsoft Office Professional Plus 2010', '1 065 762 317', 'Madushika', '-', NULL, '', NULL),
(128, '115', 'Accounts Office', 'Dulanjali Nayanathara', 'CPNW10PETTYCASH', 'Terra 23', 'NUC', 'Terra micro pc', 'Intel(R) Core (TM) i5-7300U CPU @ 2.60GHz   2.71 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Professional Plus 2010', '1 091 982 798', 'Imalshi', '-', NULL, '', NULL),
(129, '116', 'Accounts Office', 'Accvat', 'CPNW10ACCVAT', 'Terra 23.6', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-8259U CPU @ 2.30GHz   2.30 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2010', '1 510 478 267', 'Madushika', 'Anydesk', NULL, '', NULL),
(130, '117', 'Accounts Office', 'Dharsha', 'CPLW11DHARSHA24', '', 'Laptop', 'Dell Latitude 3540', '13th Gen Intel®Core™ i5-1335U 1.30GHz', '16GB', '512GB NVMe SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2016', '1 217 705 985', 'darsha', 'TeamViewer,Sophos', NULL, 'JFSLGX3', '2024-10-29'),
(131, '118', 'Accounts Office', 'Chathurani Priyadarshani', 'CPLW11CHATHU25', '-', 'Laptop', 'Dell Latitude 3550', '13th Gen Intel(R) Core(TM) i5-1335U   1.30 GHz', '16GB', '512 NVMe SSD', 'Windows 11 Pro', '64bit', 'Micosoft Office Standard 2010', '1 838 616 076', 'chathurani', 'Shrew Soft VPN Client,ControlCenter 3.0 Package v2.34,Anydesk', NULL, 'CS59X54', '2025-01-02'),
(132, '119', 'Accounts Office', 'Shanika Dananjani', 'CPNW10DANANJANI', 'Dell 24\"', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2016', '1 384 459 541', 'dananjani', '', NULL, '', NULL),
(133, '120', 'Accounts Office', '- (Removed)', '-', '-', 'Laptop', 'Terrra Mobile 1516', 'Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz   2.11 GHz', '8GB', '-', '-', '64bit', '-', '-', '-', '-', NULL, '-', NULL),
(134, '121', 'Accounts Office', 'Lakshika Rasadari', 'CPNW10LAKSHIKA', 'Terra 23.6', 'NUC', 'Terra micro pc ', 'Intel(R) Core (TM) i5-7300U CPU @ 2.60GHz   2.71 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Home and Business 2010', '1 066 162 112', 'Lakshika', 'Anydesk,Shrew Soft VPN Client,Cyberoam SSLVPN Client 1.3.1.10,Python 3.12.2, MongoDB', NULL, '', NULL),
(135, '122', 'Accounts Office', 'Sisira Fernando', 'CPLW10SISIRA21', '', 'Laptop', 'Dell Latitute 3410', 'Intell (R) Core (TM) i5-1021 U CPU @ 1.60 Ghz 2.11 GHz', '8GB', '512GB PCIe SSD', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2016', '461348323', 'Sisira', 'Shrew Soft VPN Client,MailStore Outlook Add in', NULL, 'GN075B3', NULL),
(136, '123', 'Main Office', 'Malaka Wickramanayaka', 'CPLW10MALAKA21', 'Terra 21.5\"', 'Laptop', 'Dell Inspiron 15 3000', '11th Gen Intel(R) Core(TM) i7-1165G7 @ 2.80GHz   2.80 GHz', '8GB', '512GB NVMe SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2016', '227 802 210', 'malaka', 'FingerPrint Reader Driver 2.3.2,Shrew Soft VPN Client,Anydesk,Zoom,ZKTime5.0,MailStore Outlook Add in 13.1.0.20288', NULL, '', NULL),
(137, '124', 'Main Office', 'Sandali Perera', 'CPLW10MALAKA21', 'Terra 21.5\"', 'Laptop', 'Dell Inspiron 15 3000', '11th Gen Intel(R) Core(TM) i7-1165G7 @ 2.80GHz   2.80 GHz', '8GB', '512GB NVMe SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2016', '227 802 210', 'malaka', 'FingerPrint Reader Driver 2.3.2,Shrew Soft VPN Client,Anydesk,Zoom,ZKTime5.0,MailStore Outlook Add in 13.1.0.20288', NULL, '', NULL),
(138, '125', 'Main Office', 'Sandali Perera', 'CPLW10SANDALI', 'Terra 23.6\"', 'Laptop', 'Dell Latitude 3520', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   1.38 GHz', '8GB', '256GB NVMe SSD', 'Windows 10 Pro', '64bit', 'Microsoft Office Professional Plus 2010', '611 852 503', '', 'Shrew Soft VPN Client,Panasonic Multi Fuction Station Software', NULL, 'HGFB9G3', NULL),
(139, '126', 'Main Office', 'Hansani Dilhara', 'CPLW10HANSANI', 'Terra 21.5', 'Laptop', 'Acer Aspire 5', 'Intel(R) Core(TM) i3-1005G1 CPU @ 1.20GHz 1.19 GHz', '8GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2010', '923 094 430', 'hansani', 'MailStore Outlook Add in ,Shrew Soft VPN Client', NULL, '', NULL),
(140, '127', 'Main Office', 'Udeni Thilakrathne', 'CPLW10UDENI22', '', 'Laptop', 'Dell Latitude 3510', 'Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz   2.11 GHz', '8GB', '240GB SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2016', '305893484', 'Udeni', 'MailStore Outlook Add in ,Shrew Soft VPN Client,MailStore Outlook Client 23.4.0.22136', NULL, '29ZTT93', NULL),
(141, '128', 'Main Office', 'Shalini Jerome', 'CPNW10SJEROME', 'Terra 23.6\"', 'NUC', 'Terra micro pc', 'Intel(R) Core(TM) i5-7300U CPU @ 2.60GHz   2.71 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2010', '883034545', 'shalinij', '', NULL, '', NULL),
(142, '129', 'Maintanance Lab', 'Amanda Sanjani', 'CPNW10AMANDA', 'Terra 23.6\"', 'NUC', 'Terra micro pc 6000', 'Intel(R) Core(TM) i5-6260U CPU @ 1.80GHz   1.80 GHz', '8GB', '256GB SSD', 'Windows 10 Pro', '64bit', 'Micosoft Office Standard 2010', '983 190 619', '', 'OpenOffice 4.1.1,Sophos,TeamViewer,Anydesk', NULL, '', NULL),
(143, '130', 'Canteen', 'Canteen', 'CPLW11CANTEEN', '', 'Laptop', 'Acer Aspire 5', 'Intel® Core™ i5-6200U @ 2.30GHz', '4GB', '240GB SSD', 'Windows 11 Pro', '64bit', 'LibreOffice 24.2.1.2', '', '', '', NULL, '', '2024-10-27'),
(144, '131', 'Sample', 'Kumari Deyalage', 'CPLW11LABEL2', '', 'Laptop', 'Terra Mobile 1515', 'Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz   2.70 GHz', '8GB', '256 GB SSD (SATA)', 'Windows 11 Pro', '64 bit', 'Microsoft Office Standard 2010', '1 034 239 050', 'label', 'Sophos', NULL, '', NULL),
(145, '132', 'Accounts Office', 'Priyashini', 'CPLW10PRIYASHI ( Removed )', '-', 'Laptop', 'Terra Mobile 1460', 'Intell (R) Core (TM) i5-7Y54 CPU @ 1.20Ghz  1.61 Ghz', '8GB', '-', 'Windows 10', '64Bit', '-', '-', 'priyashini', '-', NULL, '', NULL),
(146, '133', 'Laser', 'laseroh', 'CPDW7LSCANCUT', 'ViewSonic 22', 'Desktop', 'Dell Optiplex 3010', 'Intel(R) Core(TM) i3-3240 CPU @ 3.40GHz 3.40GHz', '4GB', '480GB SSD', 'Windows 7 Professional', '64bit', 'LibreOffice ', '-', '', 'KkVisionCut 2.0', NULL, '', NULL),
(149, '134', 'Printing', 'Hosonsoft', 'CPNW11PRINTIN24', 'Dell 19\"', 'NUC', 'Terra Micro pc', 'Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz   2.71 GHz', '8GB', '240GB SSD', 'Windows 11 Pro', '64Bit', '-', '1 474 686 291', '-', 'RIIN v7.0, TeamViewer', NULL, '', NULL),
(150, '135', 'IT', 'Test', 'CPLW10IT-DEP3', 'Terra 21.5\"', 'Laptop', 'Terra Mobile 1451', 'Intel(R) Core(TM) i5-5200U CPU @ 2.20GHz', '8GB', '240 GB SSD', 'Microsoft Windows 10 Pro', '64bit', 'LibreOffice 7.6.0.3', '618 463 703', '-', 'TeamViewer', NULL, '-', NULL),
(151, '151', 'IT', 'Sadeepa Gayashan', 'CPLW11IT-DEP2', '-', 'Laptop', 'Terra Mobile 1516', 'Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz   2.11 GHz', '8GB', '480GB SSD', 'Windows 11 Pro', '64Bit', 'Microsoft Office Standard 2010', '119 501 585', '-', 'Sophos, TeamViewer, Mozilla ThunderBird', NULL, '', NULL),
(152, '152', 'Accounts Office', 'chathuri', 'CPLW11KAUHALY22', '-', 'Laptop', 'Dell Latitude 3520', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz   1.38 GHz', '8Gb', '256GB NVMe', 'Windows 11 Pro', '64bit', 'Microsoft Office Standard 2010', '1 136 087 631', 'chathuri', 'Microsoft Dynamic NAV 2009 Classic, Microsoft Teams, Shrew Soft VPN Client,Zoom', NULL, '8FCB9G3', NULL),
(153, '153', 'Accounts Office', 'tharanga', 'CPLW11THUSITHA', '-', 'Laptop', 'Dell Latitude 3550', '13th Gen Intel(R) Core(TM) i5-1335U 1.30GHz', '16GB', '512GB NVMe SSD', 'Windows 11 Pro', '64Bit', 'Microsoft Office Standard 2016', '512891041', 'thusitha', 'Sophos, TeamViewer,', NULL, '7W59X54', '2025-07-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pcs`
--
ALTER TABLE `pcs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serial_no` (`serial_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pcs`
--
ALTER TABLE `pcs`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"false\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'Export', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"pc_inventory\",\"phpmyadmin\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"pc_inventory\",\"table\":\"pcs\"},{\"db\":\"inventory_db\",\"table\":\"issued_items\"},{\"db\":\"inventory_db\",\"table\":\"departments\"},{\"db\":\"inventory_db\",\"table\":\"inventory\"},{\"db\":\"inventory_db\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-08-04 05:52:31', '{\"lang\":\"en_GB\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Users and their assignments to user groups';

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
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
