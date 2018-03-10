-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 23, 2017 at 03:22 AM
-- Server version: 5.6.32-78.1
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ydbuedum_metal`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_notification`
--

CREATE TABLE `company_notification` (
  `Id` int(11) NOT NULL,
  `Document` int(11) NOT NULL,
  `First_Opened_User` int(11) NOT NULL,
  `Receiving_Company` int(11) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `Open_Status` int(11) NOT NULL,
  `Created_Date` datetime NOT NULL,
  `Created_By` varchar(45) NOT NULL,
  `Modified_Date` datetime DEFAULT NULL,
  `Modified_By` varchar(45) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_notification`
--

INSERT INTO `company_notification` (`Id`, `Document`, `First_Opened_User`, `Receiving_Company`, `Message`, `Open_Status`, `Created_Date`, `Created_By`, `Modified_Date`, `Modified_By`, `Status`, `Type`) VALUES
(1, 1, 3, 7, 'AAAAA has invited you to participate in RFQ, RFQ_Submitted_1', 22, '2017-11-19 11:18:57', '3', NULL, NULL, 1, 'Invited'),
(2, 3, 8, 3, 'EEEEE has interested on your RFQ_Submitted_1.', 22, '2017-11-19 11:19:34', '8', NULL, NULL, 1, 'Create_Quotation	'),
(3, 3, 8, 3, 'EEEEE has registered interest.', 22, '2017-11-19 11:20:13', '8', NULL, NULL, 1, 'Create_Quotation'),
(4, 3, 8, 3, 'EEEEE has registered interest.', 22, '2017-11-19 11:29:13', '8', NULL, NULL, 1, 'Create_Quotation'),
(5, 4, 12, 10, 'CHOON HIN STAINLESS STEEL PTE LTD has invited you to participate in RFQ, RFQ_Submitted_2', 22, '2017-11-20 10:31:03', '12', NULL, NULL, 1, 'Invited'),
(6, 5, 11, 11, 'A1 STAINLESS STEEL INDUSTRIES PTE LTD has interested on your RFQ_Submitted_2.', 22, '2017-11-20 10:42:16', '11', NULL, NULL, 1, 'Create_Quotation	'),
(7, 5, 11, 11, 'A1 STAINLESS STEEL INDUSTRIES PTE LTD has registered interest.', 22, '2017-11-20 10:47:56', '11', NULL, NULL, 1, 'Create_Quotation'),
(8, 5, 12, 10, 'Your Quotation(5) has been awareded to your company.', 22, '2017-11-20 10:59:45', '12', NULL, NULL, 1, 'Accepted'),
(9, 6, 12, 12, 'CHOON HIN STAINLESS STEEL PTE LTD has invited you to participate in RFQ, RFQ_Submitted_3', 22, '2017-11-21 08:50:45', '12', NULL, NULL, 1, 'Invited'),
(10, 6, 12, 10, 'CHOON HIN STAINLESS STEEL PTE LTD has invited you to participate in RFQ, RFQ_Submitted_3', 22, '2017-11-21 08:50:45', '12', NULL, NULL, 1, 'Invited'),
(11, 7, 13, 11, 'CHONG CHEONG FOUNDRY WORKS PTE LTD  has interested on your RFQ_Submitted_3.', 22, '2017-11-21 08:58:00', '13', NULL, NULL, 1, 'Create_Quotation	'),
(12, 7, 13, 11, 'CHONG CHEONG FOUNDRY WORKS PTE LTD  has registered interest.', 22, '2017-11-21 09:13:45', '13', NULL, NULL, 1, 'Create_Quotation'),
(13, 8, 3, 7, 'AAAAA has invited you to participate in RFQ, RFQ_Submitted_4', 22, '2017-11-21 13:24:33', '3', NULL, NULL, 1, 'Invited'),
(14, 9, 8, 3, 'EEEEE has interested on your RFQ_Submitted_4.', 22, '2017-11-21 13:25:41', '8', NULL, NULL, 1, 'Create_Quotation	'),
(15, 10, 3, 7, 'AAAAA has invited you to participate in RFQ, RFQ_Submitted_5', 22, '2017-11-22 04:32:22', '3', NULL, NULL, 1, 'Invited'),
(16, 10, 3, 12, 'AAAAA has invited you to participate in RFQ, RFQ_Submitted_5', 22, '2017-11-22 04:32:22', '3', NULL, NULL, 1, 'Invited'),
(17, 11, 13, 3, 'CHONG CHEONG FOUNDRY WORKS PTE LTD  has interested on your RFQ_Submitted_5.', 22, '2017-11-22 04:34:29', '13', NULL, NULL, 1, 'Create_Quotation	'),
(18, 9, 8, 3, 'Demo Supplier 1 has registered interest.', 22, '2017-11-22 04:46:08', '8', NULL, NULL, 1, 'Create_Quotation'),
(19, 12, 3, 13, 'Demo Buyer 2 has invited you to participate in RFQ, RFQ_Submitted_6', 22, '2017-11-28 03:17:33', '3', NULL, NULL, 1, 'Invited'),
(20, 13, 15, 13, 'Sing Chow Metal Works (Pte) Ltd has invited you to participate in RFQ, RFQ_Submitted_7', 22, '2017-11-29 01:29:41', '15', NULL, NULL, 1, 'Invited'),
(21, 13, 15, 12, 'Sing Chow Metal Works (Pte) Ltd has invited you to participate in RFQ, RFQ_Submitted_7', 22, '2017-11-29 01:29:41', '15', NULL, NULL, 1, 'Invited'),
(22, 13, 15, 10, 'Sing Chow Metal Works (Pte) Ltd has invited you to participate in RFQ, RFQ_Submitted_7', 22, '2017-11-29 01:29:41', '15', NULL, NULL, 1, 'Invited'),
(23, 14, 15, 13, 'Sing Chow Metal Works (Pte) Ltd has invited you to participate in RFQ, RFQ_Submitted_8', 22, '2017-12-01 05:56:04', '15', NULL, NULL, 1, 'Invited'),
(24, 14, 15, 12, 'Sing Chow Metal Works (Pte) Ltd has invited you to participate in RFQ, RFQ_Submitted_8', 22, '2017-12-01 05:56:04', '15', NULL, NULL, 1, 'Invited'),
(25, 15, 18, 13, 'Uniqlix has invited you to participate in RFQ, RFQ_Submitted_9', 22, '2017-12-12 06:36:19', '18', NULL, NULL, 1, 'Invited'),
(26, 15, 18, 10, 'Uniqlix has invited you to participate in RFQ, RFQ_Submitted_9', 22, '2017-12-12 06:36:19', '18', NULL, NULL, 1, 'Invited'),
(27, 15, 18, 12, 'Uniqlix has invited you to participate in RFQ, RFQ_Submitted_9', 22, '2017-12-12 06:36:19', '18', NULL, NULL, 1, 'Invited'),
(28, 15, 17, 13, 'Fortunea has invited you to participate in RFQ, RFQ_Submitted_10', 22, '2017-12-15 01:10:51', '17', NULL, NULL, 1, 'Invited'),
(29, 17, 19, 23, 'Sunlink Engineering Pte Ltd has interested on your RFQ_Submitted_10.', 22, '2017-12-15 01:59:36', '19', NULL, NULL, 1, 'Create_Quotation	'),
(30, 17, 19, 23, 'Sunlink Engineering Pte Ltd has registered interest.', 22, '2017-12-19 01:29:22', '19', NULL, NULL, 1, 'Create_Quotation'),
(31, 17, 17, 13, 'Your Quotation(17) has been awareded to your company.', 22, '2017-12-19 02:24:57', '17', NULL, NULL, 1, 'Accepted'),
(32, 18, 21, 13, 'TOPMAST ENGINEERING PTE. LTD. has invited you to participate in RFQ, RFQ_Submitted_11', 22, '2017-12-19 03:17:57', '21', NULL, NULL, 1, 'Invited'),
(33, 18, 21, 24, 'TOPMAST ENGINEERING PTE. LTD. has invited you to participate in RFQ, RFQ_Submitted_11', 22, '2017-12-19 03:17:57', '21', NULL, NULL, 1, 'Invited');

-- --------------------------------------------------------

--
-- Table structure for table `c_codecategory`
--

CREATE TABLE `c_codecategory` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `Status` int(11) NOT NULL,
  `Version` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_codecategory`
--

INSERT INTO `c_codecategory` (`Id`, `Name`, `Description`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Status`, `Version`) VALUES
(1, 'UserType', 'User Type', '2017-10-13 00:00:00', 'system', '2017-10-13 00:00:00', 'system', 1, NULL),
(2, 'Metal_Type', 'Metal Type', '2017-10-13 00:00:00', 'system', '2017-10-13 00:00:00', 'system', 1, NULL),
(3, 'Doc Type', 'Documentation Type', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, NULL),
(4, 'RFQ Status', 'RFQ Status', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, NULL),
(5, 'Quotation Status', 'Quotation Status', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, NULL),
(6, 'Notification Status', 'Notification Status', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_codetable`
--

CREATE TABLE `c_codetable` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `Status` int(11) NOT NULL,
  `C_CodeCategory_Id` int(11) NOT NULL,
  `C_ParentCode` int(11) NOT NULL,
  `Version` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_codetable`
--

INSERT INTO `c_codetable` (`Id`, `Name`, `Description`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Status`, `C_CodeCategory_Id`, `C_ParentCode`, `Version`) VALUES
(1, 'Admin', 'Administrator', '2017-10-13 00:00:00', 'system', '2017-10-13 00:00:00', 'system', 1, 1, 1, NULL),
(2, 'Supplier', 'Administrator', '2017-10-13 00:00:00', 'system', '2017-10-13 00:00:00', 'system', 1, 1, 1, NULL),
(3, 'Buyer', 'Administrator', '2017-10-13 00:00:00', 'system', '2017-10-13 00:00:00', 'system', 1, 1, 1, NULL),
(4, 'A Metal', 'A', '2017-10-13 00:00:00', 'system', '2017-10-13 00:00:00', 'system', 1, 2, 1, NULL),
(5, 'B Metal', 'B', '2017-10-13 00:00:00', 'system', '2017-10-13 00:00:00', 'system', 1, 2, 1, NULL),
(6, 'RFQ', 'RFQ', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 3, 1, NULL),
(7, 'Quotation', 'Quotation', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 3, 1, NULL),
(8, '-', '-', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 4, 1, NULL),
(9, 'Draft', 'Draft', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 4, 1, NULL),
(10, 'Bidding', 'Bidding', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 4, 1, NULL),
(11, 'Closed', 'Closed', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 4, 1, NULL),
(12, 'Awarded', 'Awarded', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 4, 1, NULL),
(13, 'No Award', 'No Award', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 4, 1, NULL),
(14, 'Withdrawn', 'Withdrawn', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 4, 1, NULL),
(15, 'Draft', 'Draft', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 5, 1, NULL),
(16, 'Submitted', 'Submitted', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 5, 1, NULL),
(17, 'Closed', 'Closed', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 5, 1, NULL),
(18, 'Accepted', 'Accepted', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 5, 1, NULL),
(19, 'Rejected', 'Rejected', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 5, 1, NULL),
(20, 'Withdrawn', 'Withdrawn', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 5, 1, NULL),
(21, 'Read', 'Read', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 6, 1, NULL),
(22, 'Unread', 'Unread', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 6, 1, NULL),
(23, 'Delete', 'Delete', '2017-10-16 00:00:00', 'system', '2017-10-16 00:00:00', 'system', 1, 6, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_tags`
--

CREATE TABLE `c_tags` (
  `Id` int(11) NOT NULL,
  `TagName` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `Status` int(11) NOT NULL,
  `Version` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_tags`
--

INSERT INTO `c_tags` (`Id`, `TagName`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Status`, `Version`) VALUES
(1, 'Metal', '2017-11-01 00:00:00', 'system', '2017-11-01 00:00:00', 'system', 1, NULL),
(2, 'ABC', '2017-11-01 00:00:00', 'system', '2017-11-01 00:00:00', 'system', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document_number`
--

CREATE TABLE `document_number` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Prefix` varchar(45) NOT NULL,
  `Suffix` varchar(45) NOT NULL,
  `Format` varchar(45) NOT NULL,
  `Running_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_number`
--

INSERT INTO `document_number` (`Id`, `Name`, `Prefix`, `Suffix`, `Format`, `Running_Number`) VALUES
(1, 'RFQ', 'Draft', 'RFQ', 'RFQ', 1),
(2, 'RFQ', 'Draft', 'RFQ', 'RFQ', 2),
(3, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 1),
(4, 'RFQ', 'Draft', 'RFQ', 'RFQ', 3),
(5, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 2),
(6, 'RFQ', 'Draft', 'RFQ', 'RFQ', 4),
(7, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 3),
(8, 'RFQ', 'Draft', 'RFQ', 'RFQ', 5),
(9, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 4),
(10, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 5),
(11, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 6),
(12, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 7),
(13, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 8),
(14, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 9),
(15, 'RFQ', 'Draft', 'RFQ', 'RFQ', 6),
(16, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 10),
(17, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 11);

-- --------------------------------------------------------

--
-- Table structure for table `md_companyrating`
--

CREATE TABLE `md_companyrating` (
  `Id` int(11) NOT NULL,
  `Company_Id` int(11) DEFAULT NULL,
  `User_Id` int(11) DEFAULT NULL,
  `SpeedOfQuotation` int(11) DEFAULT NULL,
  `SpeedofDelivery` int(11) DEFAULT NULL,
  `ServiceQuality` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `SpeedofProcessing` int(11) DEFAULT NULL,
  `Payment` int(11) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `Title` varchar(500) DEFAULT NULL,
  `Description` varchar(60000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_companyrating`
--

INSERT INTO `md_companyrating` (`Id`, `Company_Id`, `User_Id`, `SpeedOfQuotation`, `SpeedofDelivery`, `ServiceQuality`, `Price`, `SpeedofProcessing`, `Payment`, `Status`, `Created`, `CreatedBy`, `Title`, `Description`) VALUES
(6, 13, 17, 4, 4, 4, 4, NULL, NULL, 1, '2017-12-15 02:12:57', '17', 'Very Good Supplier', 'Very good');

-- --------------------------------------------------------

--
-- Table structure for table `md_serviceparameter`
--

CREATE TABLE `md_serviceparameter` (
  `Id` int(11) NOT NULL,
  `ParameterName` varchar(45) DEFAULT NULL,
  `ParameterDefaultValues` varchar(15) DEFAULT NULL,
  `M_Services_Id` int(11) NOT NULL,
  `Uom` varchar(10) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Version` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `md_supplierserviceparameter`
--

CREATE TABLE `md_supplierserviceparameter` (
  `Id` int(11) NOT NULL,
  `MD_SupplierServices_Id` int(11) NOT NULL,
  `ParameterName` varchar(45) DEFAULT NULL,
  `MinValue` varchar(45) DEFAULT NULL,
  `MaxValue` varchar(45) DEFAULT NULL,
  `Uom` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `md_supplierservices`
--

CREATE TABLE `md_supplierservices` (
  `Id` int(11) NOT NULL,
  `M_Services_Id` int(11) NOT NULL COMMENT 'Sub_category',
  `M_Company_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_supplierservices`
--

INSERT INTO `md_supplierservices` (`Id`, `M_Services_Id`, `M_Company_Id`) VALUES
(1, 6, 2),
(2, 7, 2),
(3, 4, 4),
(4, 5, 4),
(5, 6, 4),
(6, 4, 6),
(7, 5, 6),
(8, 6, 6),
(9, 11, 7),
(10, 12, 7),
(11, 13, 7),
(12, 17, 7),
(13, 31, 7),
(14, 34, 7),
(15, 56, 7),
(16, 57, 7),
(17, 58, 7),
(18, 63, 7),
(19, 125, 7),
(20, 128, 7),
(21, 129, 7),
(22, 130, 7),
(23, 11, 9),
(24, 12, 9),
(25, 13, 9),
(26, 14, 9),
(27, 15, 9),
(28, 16, 9),
(29, 30, 9),
(30, 48, 9),
(31, 50, 9),
(32, 51, 9),
(33, 56, 9),
(34, 57, 9),
(35, 58, 9),
(36, 59, 9),
(37, 11, 10),
(38, 12, 10),
(39, 13, 10),
(40, 18, 10),
(41, 19, 10),
(42, 20, 10),
(43, 21, 10),
(44, 14, 10),
(45, 22, 10),
(46, 23, 10),
(47, 24, 10),
(48, 25, 10),
(49, 15, 10),
(50, 26, 10),
(51, 27, 10),
(52, 28, 10),
(53, 29, 10),
(54, 16, 10),
(55, 17, 10),
(56, 31, 10),
(57, 36, 10),
(58, 37, 10),
(59, 38, 10),
(60, 39, 10),
(61, 32, 10),
(62, 40, 10),
(63, 41, 10),
(64, 42, 10),
(65, 43, 10),
(66, 34, 10),
(67, 35, 10),
(68, 30, 10),
(69, 48, 10),
(70, 49, 10),
(71, 50, 10),
(72, 51, 10),
(73, 52, 10),
(74, 53, 10),
(75, 54, 10),
(76, 55, 10),
(77, 125, 10),
(78, 128, 10),
(79, 129, 10),
(80, 130, 10),
(81, 131, 10),
(82, 132, 10),
(83, 133, 10),
(84, 134, 10),
(85, 135, 10),
(86, 136, 10),
(87, 137, 10),
(88, 138, 10),
(89, 139, 10),
(90, 140, 10),
(91, 141, 10),
(92, 142, 10),
(93, 143, 10),
(94, 144, 10),
(95, 145, 10),
(96, 146, 10),
(97, 147, 10),
(98, 148, 10),
(99, 149, 10),
(100, 150, 10),
(101, 151, 10),
(102, 152, 10),
(103, 153, 10),
(104, 154, 10),
(105, 155, 10),
(106, 156, 10),
(107, 157, 10),
(108, 158, 10),
(109, 159, 10),
(110, 160, 10),
(111, 161, 10),
(112, 162, 10),
(113, 163, 10),
(114, 164, 10),
(115, 165, 10),
(116, 166, 10),
(117, 167, 10),
(118, 168, 10),
(119, 169, 10),
(120, 170, 10),
(121, 171, 10),
(122, 172, 10),
(123, 173, 10),
(124, 174, 10),
(125, 175, 10),
(126, 176, 10),
(127, 177, 10),
(128, 11, 12),
(129, 12, 12),
(130, 13, 12),
(131, 18, 12),
(132, 19, 12),
(133, 20, 12),
(134, 21, 12),
(135, 14, 12),
(136, 22, 12),
(137, 23, 12),
(138, 24, 12),
(139, 25, 12),
(140, 15, 12),
(141, 26, 12),
(142, 27, 12),
(143, 28, 12),
(144, 29, 12),
(145, 16, 12),
(146, 17, 12),
(147, 31, 12),
(148, 36, 12),
(149, 37, 12),
(150, 38, 12),
(151, 39, 12),
(152, 32, 12),
(153, 40, 12),
(154, 41, 12),
(155, 42, 12),
(156, 43, 12),
(157, 33, 12),
(158, 44, 12),
(159, 45, 12),
(160, 46, 12),
(161, 47, 12),
(162, 34, 12),
(163, 35, 12),
(164, 30, 12),
(165, 48, 12),
(166, 49, 12),
(167, 50, 12),
(168, 51, 12),
(169, 52, 12),
(170, 53, 12),
(171, 54, 12),
(172, 55, 12),
(173, 125, 12),
(174, 128, 12),
(175, 129, 12),
(176, 130, 12),
(177, 131, 12),
(178, 132, 12),
(179, 133, 12),
(180, 134, 12),
(181, 135, 12),
(182, 136, 12),
(183, 137, 12),
(184, 138, 12),
(185, 139, 12),
(186, 140, 12),
(187, 141, 12),
(188, 142, 12),
(189, 143, 12),
(190, 144, 12),
(191, 145, 12),
(192, 146, 12),
(193, 147, 12),
(194, 148, 12),
(195, 149, 12),
(196, 150, 12),
(197, 151, 12),
(198, 152, 12),
(199, 153, 12),
(200, 154, 12),
(201, 155, 12),
(202, 156, 12),
(203, 157, 12),
(204, 158, 12),
(205, 159, 12),
(206, 160, 12),
(207, 161, 12),
(208, 162, 12),
(209, 163, 12),
(210, 164, 12),
(211, 165, 12),
(212, 166, 12),
(213, 167, 12),
(214, 168, 12),
(215, 169, 12),
(216, 170, 12),
(217, 171, 12),
(218, 172, 12),
(219, 173, 12),
(220, 174, 12),
(221, 175, 12),
(222, 176, 12),
(223, 177, 12),
(224, 0, 13),
(225, 0, 13),
(226, 11, 24),
(227, 12, 24),
(228, 13, 24),
(229, 18, 24),
(230, 19, 24),
(231, 20, 24),
(232, 21, 24),
(233, 14, 24),
(234, 22, 24),
(235, 23, 24),
(236, 24, 24),
(237, 25, 24),
(238, 15, 24),
(239, 26, 24),
(240, 27, 24),
(241, 28, 24),
(242, 29, 24),
(243, 16, 24),
(244, 17, 24),
(245, 31, 24),
(246, 36, 24),
(247, 37, 24),
(248, 38, 24),
(249, 39, 24),
(250, 32, 24),
(251, 40, 24),
(252, 41, 24),
(253, 42, 24),
(254, 33, 24),
(255, 44, 24),
(256, 45, 24),
(257, 46, 24),
(258, 47, 24),
(259, 34, 24),
(260, 35, 24),
(261, 30, 24),
(262, 48, 24),
(263, 49, 24),
(264, 50, 24),
(265, 51, 24),
(266, 52, 24),
(267, 53, 24),
(268, 54, 24),
(269, 55, 24),
(270, 56, 24),
(271, 57, 24),
(272, 58, 24),
(273, 59, 24),
(274, 60, 24),
(275, 61, 24),
(276, 62, 24),
(277, 63, 24),
(278, 64, 24),
(279, 65, 24),
(280, 66, 24),
(281, 67, 24),
(282, 68, 24),
(283, 69, 24),
(284, 70, 24),
(285, 71, 24),
(286, 72, 24),
(287, 73, 24),
(288, 74, 24),
(289, 75, 24),
(290, 76, 24),
(291, 77, 24),
(292, 78, 24),
(293, 79, 24),
(294, 80, 24),
(295, 81, 24),
(296, 82, 24),
(297, 83, 24),
(298, 84, 24),
(299, 85, 24),
(300, 86, 24),
(301, 87, 24),
(302, 88, 24),
(303, 89, 24),
(304, 90, 24),
(305, 91, 24),
(306, 92, 24),
(307, 93, 24),
(308, 94, 24),
(309, 95, 24),
(310, 96, 24),
(311, 97, 24),
(312, 98, 24),
(313, 99, 24),
(314, 100, 24),
(315, 101, 24),
(316, 102, 24),
(317, 103, 24),
(318, 104, 24),
(319, 105, 24),
(320, 106, 24),
(321, 107, 24),
(322, 108, 24),
(323, 109, 24),
(324, 110, 24),
(325, 111, 24),
(326, 112, 24),
(327, 113, 24),
(328, 114, 24),
(329, 115, 24),
(330, 116, 24),
(331, 117, 24),
(332, 118, 24),
(333, 119, 24),
(334, 120, 24),
(335, 121, 24),
(336, 122, 24),
(337, 123, 24),
(338, 124, 24),
(339, 125, 24),
(340, 128, 24),
(341, 129, 24),
(342, 130, 24),
(343, 131, 24),
(344, 132, 24),
(345, 133, 24),
(346, 134, 24),
(347, 135, 24),
(348, 136, 24),
(349, 137, 24),
(350, 138, 24),
(351, 139, 24),
(352, 140, 24),
(353, 141, 24),
(354, 142, 24),
(355, 143, 24),
(356, 144, 24),
(357, 145, 24),
(358, 146, 24),
(359, 147, 24),
(360, 148, 24),
(361, 149, 24),
(362, 150, 24),
(363, 151, 24),
(364, 152, 24),
(365, 153, 24),
(366, 154, 24),
(367, 155, 24),
(368, 156, 24),
(369, 157, 24),
(370, 158, 24),
(371, 159, 24),
(372, 160, 24),
(373, 161, 24),
(374, 162, 24),
(375, 163, 24),
(376, 164, 24),
(377, 165, 24),
(378, 166, 24),
(379, 167, 24),
(380, 168, 24),
(381, 169, 24),
(382, 170, 24),
(383, 171, 24),
(384, 172, 24),
(385, 173, 24),
(386, 174, 24),
(387, 175, 24),
(388, 176, 24),
(389, 177, 24),
(390, 178, 24),
(391, 179, 24),
(392, 183, 24),
(393, 184, 24),
(394, 185, 24),
(395, 186, 24),
(396, 187, 24),
(397, 180, 24),
(398, 188, 24),
(399, 189, 24),
(400, 190, 24),
(401, 191, 24),
(402, 192, 24),
(403, 181, 24),
(404, 193, 24),
(405, 194, 24),
(406, 195, 24),
(407, 196, 24),
(408, 197, 24),
(409, 182, 24),
(410, 198, 24),
(411, 199, 24),
(412, 200, 24),
(413, 201, 24),
(414, 202, 24),
(415, 203, 24),
(416, 204, 24),
(417, 205, 24),
(418, 206, 24),
(419, 207, 24),
(420, 208, 24),
(421, 209, 24),
(422, 210, 24),
(423, 211, 24),
(424, 212, 24),
(425, 213, 24),
(426, 214, 24),
(427, 215, 24),
(428, 220, 24),
(429, 221, 24),
(430, 222, 24),
(431, 216, 24),
(432, 223, 24),
(433, 224, 24),
(434, 225, 24),
(435, 226, 24),
(436, 227, 24),
(437, 217, 24),
(438, 228, 24),
(439, 218, 24),
(440, 229, 24),
(441, 230, 24),
(442, 231, 24),
(443, 232, 24),
(444, 233, 24),
(445, 219, 24),
(446, 234, 24),
(447, 235, 24),
(448, 236, 24),
(449, 237, 24);

-- --------------------------------------------------------

--
-- Table structure for table `md_suppliertags`
--

CREATE TABLE `md_suppliertags` (
  `Id` int(11) NOT NULL,
  `M_User_Id` int(11) NOT NULL,
  `C_Tags_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_suppliertags`
--

INSERT INTO `md_suppliertags` (`Id`, `M_User_Id`, `C_Tags_Id`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 7, 1),
(4, 7, 2),
(5, 8, 1),
(6, 10, 1),
(7, 13, 1),
(8, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `md_userrating`
--

CREATE TABLE `md_userrating` (
  `Id` int(11) NOT NULL,
  `M_User_Id` int(11) NOT NULL,
  `UserRating` int(11) NOT NULL,
  `Comment` varchar(200) NOT NULL,
  `M_UserRatingcol` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `Version` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_buyer`
--

CREATE TABLE `m_buyer` (
  `M_User_Id` int(11) NOT NULL,
  `RfqCount` int(11) NOT NULL DEFAULT '0',
  `TotalClosedRfqCount` int(11) DEFAULT '0',
  `TotalWithdrawRfqCount` int(11) DEFAULT '0',
  `TotalAwardRfqCount` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_company`
--

CREATE TABLE `m_company` (
  `Id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Domain` varchar(45) DEFAULT NULL,
  `Reg_No` varchar(45) DEFAULT NULL,
  `Code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_company`
--

INSERT INTO `m_company` (`Id`, `Name`, `Address`, `Domain`, `Reg_No`, `Code`) VALUES
(1, 'Demo Buyer 3', 'Singapore', 'abc.com.sg', 'SG123456', 'ABC'),
(2, 'Demo Supplier 2', 'Singapore', 'def.com.sg', 'Sup12345', 'DEF'),
(3, 'Demo Buyer 2', '', '', '11111', ''),
(4, 'Demo Supplier 3', '', '', '22222', ''),
(5, 'Demo Buyer 4', '', '', '33333', ''),
(6, 'Demo Supplier  4', '', '', '44444', ''),
(7, 'Demo Supplier 1', '', '', '999999', ''),
(8, 'Demo Buyer 1', '', '', '7777', ''),
(9, 'Demo Supplier 5', '', '', '8888', ''),
(10, 'A1 STAINLESS STEEL INDUSTRIES PTE LTD', '', '', '198200238', ''),
(11, 'CHOON HIN STAINLESS STEEL PTE LTD', '', '', '199305976', ''),
(12, 'CHONG CHEONG FOUNDRY WORKS PTE LTD ', '', '', '198703939', ''),
(13, 'Sunlink Engineering Pte Ltd', '', '', '123123123S', ''),
(14, 'Sing Chow Metal Works (Pte) Ltd', '', '', '197501206', ''),
(15, 'Mr IT', '', '', '123456789a', ''),
(16, 'Metalpolis Pte ltd', '', '', '201705340C', ''),
(17, 'Metalpolis', '', '', '201705340A', ''),
(18, 'Uniqlix', '', '', '201712345A', ''),
(19, 'YLC', '', '', '201612345B', ''),
(20, 'Test Company', '', '', '123456789S', ''),
(21, 'dfdafsd', '', '', '123456789c', ''),
(22, 'ddsfasdfsadf', '', '', '454354534w', ''),
(23, 'Fortunea', '', '', '981298123A', ''),
(24, 'Metal Bending Company Pte ltd', '', '', '201823237A', ''),
(25, 'TOPMAST ENGINEERING PTE. LTD.', '', '', '200915138K', ''),
(26, 'AICTSS Myanmar Co., Ltd', '', '', '112325679S', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_services`
--

CREATE TABLE `m_services` (
  `Id` int(11) NOT NULL,
  `M_Parent_Services_Id` int(11) DEFAULT NULL,
  `ServiceName` varchar(500) DEFAULT NULL,
  `C_Metal_Type` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Version` timestamp NULL DEFAULT NULL,
  `CommonShapeImage` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_services`
--

INSERT INTO `m_services` (`Id`, `M_Parent_Services_Id`, `ServiceName`, `C_Metal_Type`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Status`, `Version`, `CommonShapeImage`) VALUES
(1, NULL, 'Custom Fabrication', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(2, 1, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(3, 2, 'General Fabrication', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(4, 3, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(5, 3, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(6, 3, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(7, 3, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(8, 2, 'Sheet Metal Fabrication (Thickness < 3mm)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(9, 8, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(10, 8, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(11, 8, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(12, 8, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(13, 2, 'Skid', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(14, 13, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(15, 13, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(16, 13, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(17, 13, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(18, 2, 'Ducting', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(19, 2, 'Grating', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(20, 1, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(21, 20, 'General Fabrication', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(22, 21, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(23, 21, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(24, 21, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(25, 21, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(26, 20, 'Sheet Metal Fabrication (Thickness < 3mm)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(27, 26, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(28, 26, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(29, 26, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(30, 26, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(31, 20, 'F & B Applications', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(32, 31, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(33, 31, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(34, 31, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(35, 31, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(36, 20, 'Ducting', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(37, 20, 'Grating', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(38, 1, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(39, 38, 'General Fabrication', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(40, 39, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(41, 39, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(42, 39, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(43, 39, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(44, 38, 'Sheet Metal Fabrication (Thickness < 3mm)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(45, 44, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(46, 44, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(47, 44, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(48, 44, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(49, 38, 'Ducting', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(50, 38, 'Grating', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(51, 1, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(52, 51, 'General Fabrication', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(53, 52, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(54, 52, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(55, 52, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(56, 52, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(57, 51, 'Sheet Metal Fabrication (Thickness < 3mm)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(58, 57, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(59, 57, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(60, 57, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(61, 57, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(62, NULL, 'Metal Materials', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(63, 62, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(64, 63, 'Sheet (Thickness < 3mm)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(65, 63, 'Plate', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(66, 63, 'Chequered Plate', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(67, 63, 'Mesh', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(68, 63, 'Flat Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(69, 63, 'Angle Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(70, 63, 'C-Channel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(71, 63, 'I-Beam', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(72, 63, 'Pipe', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(73, 63, 'Circular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(74, 63, 'Rectangular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(75, 63, 'Square Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(76, 63, 'Round Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(77, 63, 'Square Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(78, 63, 'Wire', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(79, 63, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(80, 62, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(81, 80, 'Sheet (Thickness < 3mm)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(82, 80, 'Plate', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(83, 80, 'Chequered Plate', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(84, 80, 'Mesh', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(85, 80, 'Flat Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(86, 80, 'Angle Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(87, 80, 'C-Channel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(88, 80, 'I-Beam', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(89, 80, 'Pipe', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(90, 80, 'Circular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(91, 80, 'Rectangular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(92, 80, 'Square Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(93, 80, 'Round Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(94, 80, 'Square Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(95, 80, 'Wire', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(96, 80, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(97, 62, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(98, 98, 'Sheet (Thickness < 3mm)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(99, 98, 'Plate', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(100, 98, 'Chequered Plate', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(101, 98, 'Mesh', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(102, 98, 'Flat Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(103, 98, 'Angle Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(104, 98, 'C-Channel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(105, 98, 'I-Beam', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(106, 98, 'Pipe', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(107, 98, 'Circular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(108, 98, 'Rectangular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(109, 98, 'Square Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(110, 98, 'Round Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(111, 98, 'Square Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(112, 98, 'Wire', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(113, 98, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(114, 62, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(115, 114, 'Sheet (Thickness < 3mm)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(116, 114, 'Plate', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(117, 114, 'Chequered Plate', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(118, 114, 'Mesh', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(119, 114, 'Flat Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(120, 114, 'Angle Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(121, 114, 'C-Channel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(122, 114, 'I-Beam', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(123, 114, 'Pipe', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(124, 114, 'Circular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(125, 114, 'Rectangular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(126, 114, 'Square Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(127, 114, 'Round Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(128, 114, 'Square Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(129, 114, 'Wire', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(130, 114, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(131, NULL, 'Fabrication Services', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(132, 131, 'Provide Material (Yes, No)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(133, 131, 'Provide Transport (Yes, No)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(134, 131, 'CNC Cutting (Plate/Sheet only)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(135, 134, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(136, 135, 'Oxy-Fuel (Flame)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(137, 135, 'Plasma', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(138, 135, 'Laser', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(139, 135, 'Water Jet', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(140, 135, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(141, 134, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(142, 141, 'Oxy-Fuel (Flame)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(143, 141, 'Plasma', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(144, 141, 'Laser', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(145, 141, 'Water Jet', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(146, 141, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(147, 134, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(148, 147, 'Oxy-Fuel (Flame)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(149, 147, 'Plasma', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(150, 147, 'Laser', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(151, 147, 'Water Jet', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(152, 147, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(153, 134, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(154, 153, 'Oxy-Fuel (Flame)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(155, 153, 'Plasma', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(156, 153, 'Laser', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(157, 153, 'Water Jet', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(158, 153, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(159, 131, 'Cutting (Non-CNC)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(160, 159, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(161, 160, 'Oxy-Fuel (Flame)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(162, 160, 'Plasma', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(163, 160, 'Band Saw', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(164, 160, 'Shearing', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(165, 160, 'Circular Saw', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(166, 160, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(167, 159, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(168, 167, 'Oxy-Fuel (Flame)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(169, 167, 'Plasma', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(170, 167, 'Band Saw', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(171, 167, 'Shearing', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(172, 167, 'Circular Saw', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(173, 167, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(174, 159, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(175, 174, 'Oxy-Fuel (Flame)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(176, 174, 'Plasma', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(177, 174, 'Band Saw', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(178, 174, 'Shearing', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(179, 174, 'Circular Saw', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(180, 174, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(181, 159, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(182, 181, 'Oxy-Fuel (Flame)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(183, 181, 'Plasma', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(184, 181, 'Band Saw', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(185, 181, 'Shearing', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(186, 181, 'Circular Saw', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(187, 181, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(188, 131, 'Bending (Plate/Sheet)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(189, 188, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(190, 189, 'Length to Bend < 3m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(191, 190, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(192, 190, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(193, 190, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(194, 190, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(195, 189, 'Length to Bend < 6m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(196, 195, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(197, 195, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(198, 195, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(199, 195, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(200, 199, 'Length to Bend > 6m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(201, 200, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(202, 200, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(203, 200, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(204, 200, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(205, 188, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(206, 205, 'Length to Bend < 3m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(207, 206, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(208, 206, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(209, 206, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(210, 206, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(211, 205, 'Length to Bend < 6m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(212, 211, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(213, 211, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(214, 211, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(215, 211, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(216, 205, 'Length to Bend > 6m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(217, 216, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(218, 216, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(219, 216, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(220, 216, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(221, 188, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(222, 221, 'Length to Bend < 3m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(223, 222, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(224, 222, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(225, 222, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(226, 222, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(227, 221, 'Length to Bend < 6m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(228, 227, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(229, 227, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(230, 227, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(231, 227, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(232, 221, 'Length to Bend > 6m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(233, 232, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(234, 232, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(235, 232, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(236, 232, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(237, 188, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(238, 237, 'Length to Bend < 3m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(239, 238, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(240, 238, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(241, 238, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(242, 238, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(243, 237, 'Length to Bend < 6m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(244, 243, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(245, 243, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(246, 243, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(247, 243, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(248, 237, 'Length to Bend > 6m', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(249, 248, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(250, 248, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(251, 248, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(252, 248, 'Thickness > 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(253, 131, 'Pipe Bending', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(254, 253, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(255, 253, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(256, 253, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(257, 253, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(258, 254, 'Outer Diameter < 50mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(259, 254, 'Outer Diameter < 100mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(260, 254, 'Outer Diameter > 100mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(261, 255, 'Outer Diameter < 50mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(262, 255, 'Outer Diameter < 100mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(263, 255, 'Outer Diameter > 100mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(264, 256, 'Outer Diameter < 50mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(265, 256, 'Outer Diameter < 100mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(266, 256, 'Outer Diameter > 100mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(267, 257, 'Outer Diameter < 50mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(268, 257, 'Outer Diameter < 100mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(269, 257, 'Outer Diameter > 100mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(270, 131, 'Rolling (Plate)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(271, 270, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(272, 270, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(273, 270, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(274, 270, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(275, 271, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(276, 271, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(277, 271, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(278, 271, 'Thickness < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(279, 271, 'Thickness > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(280, 272, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(281, 272, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(282, 272, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(283, 272, 'Thickness < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(284, 272, 'Thickness > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(285, 273, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(286, 273, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(287, 273, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(288, 273, 'Thickness < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(289, 273, 'Thickness > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(290, 274, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(291, 274, 'Thickness < 10mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(292, 274, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(293, 274, 'Thickness < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(294, 274, 'Thickness > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(295, 131, 'Rolling (Structure/Profile)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(296, 295, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(297, 295, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(298, 295, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(299, 295, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(300, 296, 'Angle Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(301, 296, 'C-Channel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(302, 296, 'Circular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(303, 296, 'Flat Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(304, 296, 'I-Beam', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(305, 296, 'Pipe', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(306, 296, 'Rectangular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(307, 296, 'Round Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(308, 296, 'Square Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(309, 296, 'Square Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(310, 296, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(311, 297, 'Angle Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(312, 297, 'C-Channel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(313, 297, 'Circular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(314, 297, 'Flat Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(315, 297, 'I-Beam', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(316, 297, 'Pipe', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(317, 297, 'Rectangular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(318, 297, 'Round Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(319, 297, 'Square Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(320, 297, 'Square Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(321, 297, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(322, 298, 'Angle Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(323, 298, 'C-Channel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(324, 298, 'Circular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(325, 298, 'Flat Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(326, 298, 'I-Beam', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(327, 298, 'Pipe', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(328, 298, 'Rectangular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(329, 298, 'Round Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(330, 298, 'Square Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(331, 298, 'Square Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(332, 298, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(333, 299, 'Angle Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(334, 299, 'C-Channel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(335, 299, 'Circular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(336, 299, 'Flat Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(337, 299, 'I-Beam', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(338, 299, 'Pipe', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(339, 299, 'Rectangular Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(340, 299, 'Round Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(341, 299, 'Square Bar', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(342, 299, 'Square Hollow Section', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(343, 299, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(344, 300, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(345, 300, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(346, 300, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(347, 300, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(348, 300, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(349, 300, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(350, 301, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(351, 301, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(352, 301, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(353, 301, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(354, 301, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(355, 301, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(356, 302, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(357, 302, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(358, 302, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(359, 302, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(360, 302, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(361, 302, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(362, 303, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(363, 303, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(364, 303, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(365, 303, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(366, 303, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(367, 303, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(368, 304, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(369, 304, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(370, 304, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(371, 304, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(372, 304, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(373, 304, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(374, 305, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(375, 305, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(376, 305, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(377, 305, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(378, 305, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(379, 305, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(380, 306, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(381, 306, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(382, 306, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(383, 306, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(384, 306, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(385, 306, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(386, 307, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(387, 307, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(388, 307, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(389, 307, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(390, 307, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(391, 307, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(392, 308, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(393, 308, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(394, 308, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(395, 308, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(396, 308, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(397, 308, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(398, 309, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(399, 309, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(400, 309, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(401, 309, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(402, 309, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(403, 309, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(404, 310, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(405, 310, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(406, 310, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(407, 310, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(408, 310, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(409, 310, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(410, 311, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(411, 311, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(412, 311, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(413, 311, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(414, 311, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(415, 311, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(416, 312, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(417, 312, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(418, 312, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(419, 312, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(420, 312, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(421, 312, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(422, 313, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(423, 313, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(424, 313, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(425, 313, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(426, 313, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(427, 313, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(428, 314, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(429, 314, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(430, 314, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(431, 314, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(432, 314, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(433, 314, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(434, 315, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(435, 315, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(436, 315, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(437, 315, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(438, 315, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(439, 315, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(440, 316, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(441, 316, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(442, 316, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(443, 316, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(444, 316, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(445, 316, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(446, 317, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(447, 317, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(448, 317, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(449, 317, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(450, 317, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(451, 317, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(452, 318, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(453, 318, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(454, 318, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(455, 318, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(456, 318, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(457, 318, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(458, 319, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(459, 319, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(460, 319, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(461, 319, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(462, 319, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(463, 319, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(464, 320, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(465, 320, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(466, 320, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL);
INSERT INTO `m_services` (`Id`, `M_Parent_Services_Id`, `ServiceName`, `C_Metal_Type`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Status`, `Version`, `CommonShapeImage`) VALUES
(467, 320, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(468, 320, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(469, 320, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(470, 321, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(471, 321, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(472, 321, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(473, 321, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(474, 321, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(475, 321, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(476, 322, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(477, 322, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(478, 322, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(479, 322, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(480, 322, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(481, 322, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(482, 323, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(483, 323, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(484, 323, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(485, 323, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(486, 323, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(487, 323, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(488, 324, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(489, 324, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(490, 324, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(491, 324, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(492, 324, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(493, 324, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(494, 325, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(495, 325, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(496, 325, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(497, 325, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(498, 325, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(499, 325, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(500, 326, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(501, 326, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(502, 326, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(503, 326, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(504, 326, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(505, 326, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(506, 327, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(507, 327, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(508, 327, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(509, 327, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(510, 327, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(511, 327, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(512, 328, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(513, 328, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(514, 328, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(515, 328, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(516, 328, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(517, 328, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(518, 329, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(519, 329, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(520, 329, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(521, 329, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(522, 329, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(523, 329, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(524, 330, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(525, 330, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(526, 330, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(527, 330, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(528, 330, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(529, 330, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(530, 331, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(531, 331, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(532, 331, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(533, 331, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(534, 331, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(535, 331, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(536, 332, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(537, 332, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(538, 332, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(539, 332, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(540, 332, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(541, 332, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(542, 333, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(543, 333, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(544, 333, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(545, 333, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(546, 333, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(547, 333, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(548, 334, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(549, 334, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(550, 334, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(551, 334, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(552, 334, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(553, 334, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(554, 335, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(555, 335, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(556, 335, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(557, 335, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(558, 335, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(559, 335, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(560, 336, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(561, 336, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(562, 336, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(563, 336, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(564, 336, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(565, 336, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(566, 337, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(567, 337, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(568, 337, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(569, 337, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(570, 337, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(571, 337, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(572, 338, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(573, 338, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(574, 338, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(575, 338, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(576, 338, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(577, 338, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(578, 339, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(579, 339, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(580, 339, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(581, 339, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(582, 339, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(583, 339, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(584, 340, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(585, 340, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(586, 340, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(587, 340, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(588, 340, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(589, 340, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(590, 341, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(591, 341, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(592, 341, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(593, 341, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(594, 341, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(595, 341, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(596, 342, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(597, 342, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(598, 342, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(599, 342, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(600, 342, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(601, 342, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(602, 343, 'Item Size ( < 50mm[H] x 50mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(603, 343, 'Item Size ( < 100mm[H] x 100mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(604, 343, 'Item Size ( < 150mm[H] x 150mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(605, 343, 'Item Size ( < 200mm[H] x 200mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(606, 343, 'Item Size ( < 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(607, 343, 'Item Size ( > 250mm[H] x 250mm[W] x 12m[L])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(608, 131, 'CNC Machining (Milling/Turning)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(609, 608, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(610, 608, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(611, 608, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(612, 608, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(613, 609, 'Item Size ( < 1000mm[L] x 100mm[W] x 100mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(614, 609, 'Item Size ( < 2500mm[L] x 250mm[W] x 250mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(615, 609, 'Item Size ( < 4000mm[L] x 400mm[W] x 400mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(616, 609, 'Item Size ( > 4000mm[L] x 400mm[W] x 40mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(617, 610, 'Item Size ( < 1000mm[L] x 100mm[W] x 100mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(618, 610, 'Item Size ( < 2500mm[L] x 250mm[W] x 250mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(619, 610, 'Item Size ( < 4000mm[L] x 400mm[W] x 400mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(620, 610, 'Item Size ( > 4000mm[L] x 400mm[W] x 40mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(621, 611, 'Item Size ( < 1000mm[L] x 100mm[W] x 100mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(622, 611, 'Item Size ( < 2500mm[L] x 250mm[W] x 250mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(623, 611, 'Item Size ( < 4000mm[L] x 400mm[W] x 400mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(624, 611, 'Item Size ( > 4000mm[L] x 400mm[W] x 40mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(625, 612, 'Item Size ( < 1000mm[L] x 100mm[W] x 100mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(626, 612, 'Item Size ( < 2500mm[L] x 250mm[W] x 250mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(627, 612, 'Item Size ( < 4000mm[L] x 400mm[W] x 400mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(628, 612, 'Item Size ( > 4000mm[L] x 400mm[W] x 40mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(629, 131, 'Non-CNC Machining', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(630, 629, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(631, 629, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(632, 629, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(633, 629, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(634, 630, 'Item Size ( < 1000mm[L] x 100mm[W] x 100mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(635, 630, 'Item Size ( < 2500mm[L] x 250mm[W] x 250mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(636, 630, 'Item Size ( < 4000mm[L] x 400mm[W] x 400mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(637, 630, 'Item Size ( > 4000mm[L] x 400mm[W] x 40mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(638, 631, 'Item Size ( < 1000mm[L] x 100mm[W] x 100mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(639, 631, 'Item Size ( < 2500mm[L] x 250mm[W] x 250mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(640, 631, 'Item Size ( < 4000mm[L] x 400mm[W] x 400mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(641, 631, 'Item Size ( > 4000mm[L] x 400mm[W] x 40mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(642, 632, 'Item Size ( < 1000mm[L] x 100mm[W] x 100mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(643, 632, 'Item Size ( < 2500mm[L] x 250mm[W] x 250mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(644, 632, 'Item Size ( < 4000mm[L] x 400mm[W] x 400mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(645, 632, 'Item Size ( > 4000mm[L] x 400mm[W] x 40mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(646, 633, 'Item Size ( < 1000mm[L] x 100mm[W] x 100mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(647, 633, 'Item Size ( < 2500mm[L] x 250mm[W] x 250mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(648, 633, 'Item Size ( < 4000mm[L] x 400mm[W] x 400mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(649, 633, 'Item Size ( > 4000mm[L] x 400mm[W] x 40mm[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(650, 131, 'Welding', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(651, 650, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(652, 650, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(653, 650, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(654, 650, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(655, 651, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(656, 651, 'Thickness < 12mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(657, 651, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(658, 651, 'Thickness < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(659, 651, 'Thickness > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(660, 651, 'Thickness < 3mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(661, 651, 'Thickness < 12mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(662, 651, 'Thickness < 25mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(663, 651, 'Thickness < 40mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(664, 651, 'Thickness > 40mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(665, 652, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(666, 652, 'Thickness < 12mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(667, 652, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(668, 652, 'Thickness < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(669, 652, 'Thickness > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(670, 652, 'Thickness < 3mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(671, 652, 'Thickness < 12mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(672, 652, 'Thickness < 25mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(673, 652, 'Thickness < 40mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(674, 652, 'Thickness > 40mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(675, 653, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(676, 653, 'Thickness < 12mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(677, 653, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(678, 653, 'Thickness < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(679, 653, 'Thickness > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(680, 653, 'Thickness < 3mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(681, 653, 'Thickness < 12mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(682, 653, 'Thickness < 25mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(683, 653, 'Thickness < 40mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(684, 653, 'Thickness > 40mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(685, 654, 'Thickness < 3mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(686, 654, 'Thickness < 12mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(687, 654, 'Thickness < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(688, 654, 'Thickness < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(689, 654, 'Thickness > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(690, 654, 'Thickness < 3mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(691, 654, 'Thickness < 12mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(692, 654, 'Thickness < 25mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(693, 654, 'Thickness < 40mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(694, 654, 'Thickness > 40mm, WPS/WQT required', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(695, 131, 'Drill/Punch', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(696, 695, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(697, 695, 'Stainless Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(698, 695, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(699, 695, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(700, 696, 'Hole Diameter < 5mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(701, 696, 'Hole Diameter < 12mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(702, 696, 'Hole Diameter < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(703, 696, 'Hole Diameter < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(704, 696, 'Hole Diameter > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(705, 696, 'Punch non Circular Shapes', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(706, 696, 'Turret Punching', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(707, 697, 'Hole Diameter < 5mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(708, 697, 'Hole Diameter < 12mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(709, 697, 'Hole Diameter < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(710, 697, 'Hole Diameter < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(711, 697, 'Hole Diameter > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(712, 697, 'Punch non Circular Shapes', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(713, 697, 'Turret Punching', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(714, 698, 'Hole Diameter < 5mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(715, 698, 'Hole Diameter < 12mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(716, 698, 'Hole Diameter < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(717, 698, 'Hole Diameter < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(718, 698, 'Hole Diameter > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(719, 698, 'Punch non Circular Shapes', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(720, 698, 'Turret Punching', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(721, 700, 'Hole Diameter < 5mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(722, 700, 'Hole Diameter < 12mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(723, 700, 'Hole Diameter < 25mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(724, 700, 'Hole Diameter < 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(725, 700, 'Hole Diameter > 40mm', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(726, 700, 'Punch non Circular Shapes', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(727, 700, 'Turret Punching', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(728, NULL, 'Testing/Inspection (NDT)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(729, 728, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(730, 728, 'Stainless Steel ', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(731, 728, 'Aluminium', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(732, 728, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(733, 729, 'Magnetic particle Inspection (MPI)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(734, 729, 'Ultrasonic Testing (UT)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(735, 729, 'X-Ray Test', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(736, 729, 'Liquid Penetration Test', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(737, 729, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(738, 730, 'Magnetic particle Inspection (MPI)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(739, 730, 'Ultrasonic Testing (UT)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(740, 730, 'X-Ray Test', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(741, 730, 'Liquid Penetration Test', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(742, 730, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(743, 731, 'Magnetic particle Inspection (MPI)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(744, 731, 'Ultrasonic Testing (UT)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(745, 731, 'X-Ray Test', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(746, 731, 'Liquid Penetration Test', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(747, 731, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(748, 732, 'Magnetic particle Inspection (MPI)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(749, 732, 'Ultrasonic Testing (UT)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(750, 732, 'X-Ray Test', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(751, 732, 'Liquid Penetration Test', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(752, 732, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(753, NULL, 'Finishing ', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(754, 753, 'Painting (Brush/Roller)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(755, 753, 'Painting (Spray Paint)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(756, 753, 'Sand Blasting', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(757, 753, 'Sand Blasting + Paint', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(758, 753, 'Galvanising (Hot Dip)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(759, 753, 'Galvanising (Cold Dip)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(760, 753, 'Anodize', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(761, 753, 'Powder Coat', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(762, 753, 'Polishing/Buffing', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(763, 753, 'Others', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(764, NULL, 'Logistics', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(765, 764, 'Transportation (People)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(766, 764, 'Transportation (Item/Structure)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(767, 764, 'Transportation (Document)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(768, 764, 'Lifting (People)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(769, 764, 'Lifting (Item/Structure)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(770, 765, 'Lorry/Truck', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(771, 765, 'Van', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(772, 765, 'Bus', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(773, 766, 'Van', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(774, 766, 'Lorry/Truck (Covered)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(775, 766, 'Lorry/Truck (Open)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(776, 766, 'Trailer', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(777, 766, 'Lorry Crane', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(778, 767, 'Courier', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(779, 768, 'Gondola', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(780, 768, 'Scissor Lift', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(781, 768, 'Boom Lift (Telescopic)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(782, 768, 'Boom Lift (Articulating)', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(783, 768, 'Bucket Truck', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(784, 769, 'Crane', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(785, 769, 'Mobile Crane', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(786, 769, 'Forklift', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(787, 769, 'Telescopic Forklift', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `M_User_Id` int(11) NOT NULL,
  `M_ServiceTags` varchar(400) DEFAULT NULL,
  `TotalSubmittedQuotes` int(11) DEFAULT '0',
  `TotalQuotesWon` int(11) DEFAULT '0',
  `TotalQuotesMissed` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `Id` int(11) NOT NULL,
  `EmailAddress` varchar(55) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `UserName` varchar(45) NOT NULL,
  `C_UserType` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `ModifiedBy` varchar(45) NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  `Status` int(11) NOT NULL COMMENT 'Unverified\nActive\nDisabled',
  `RfqCount` int(11) DEFAULT '0',
  `QuoteCount` varchar(45) DEFAULT '0',
  `Version` timestamp NULL DEFAULT NULL,
  `Title` varchar(500) DEFAULT NULL,
  `ContactNumbers` varchar(45) DEFAULT NULL,
  `M_Company_Id` int(11) NOT NULL,
  `Confirmed` int(11) NOT NULL DEFAULT '0',
  `Company_Admin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`Id`, `EmailAddress`, `Password`, `UserName`, `C_UserType`, `CreatedDate`, `CreatedBy`, `ModifiedBy`, `ModifiedDate`, `Status`, `RfqCount`, `QuoteCount`, `Version`, `Title`, `ContactNumbers`, `M_Company_Id`, `Confirmed`, `Company_Admin`) VALUES
(1, 'galles.cs@gmail.com', '12345678', 'galles', 3, '2017-10-13 00:00:00', 'system', 'system', '2017-10-13 00:00:00', 1, 0, '0', NULL, NULL, '123459876', 1, 1, 0),
(3, 'manager@aaaaa.com', 'nnhhyy66', 'buyer_demo', 3, '2017-11-18 07:26:38', 'system', 'system', '2017-11-18 07:26:38', 1, 0, '0', NULL, 'manag', '123456', 3, 1, 0),
(4, 'manger@bbb.com', 'nnhhyy66', 'bbb_manager', 2, '2017-11-18 07:33:57', 'system', 'system', '2017-11-18 07:33:57', 1, 0, '0', NULL, 'Manager', '123435', 4, 1, 0),
(5, 'staff@aaaa.com', 'nnhhyy66', 'aaaaa_staff', 3, '2017-11-18 07:39:51', 'system', 'system', '2017-11-18 07:39:51', 1, 0, '0', NULL, 'staff', '123456', 3, 1, 0),
(6, 'manager@ccc.com', 'nnhhyy66', 'ccc_manager', 3, '2017-11-18 09:26:55', 'system', 'system', '2017-11-18 09:26:55', 1, 0, '0', NULL, 'Manager', '75857', 5, 1, 0),
(7, 'staff@ddd.com', 'nnhhyy66', 'ddd_staff', 2, '2017-11-18 09:28:03', 'system', 'system', '2017-11-18 09:28:03', 1, 0, '0', NULL, 'staff', '94847', 6, 1, 0),
(8, 'staff@eee.com', 'nnhhyy66', 'supplier_demo', 2, '2017-11-18 10:17:54', 'system', 'system', '2017-11-18 10:17:54', 1, 0, '0', NULL, 'staff', '98765', 7, 1, 0),
(9, 'staff@rrr.com', 'nnhhyy66', 'rrr_staff', 3, '2017-11-18 11:26:40', 'system', 'system', '2017-11-18 11:26:40', 1, 0, '0', NULL, 'staff', '484940', 8, 1, 0),
(10, 'manager@ttt.com', 'nnhhyy66', 'ttt_manager', 2, '2017-11-18 11:27:49', 'system', 'system', '2017-11-18 11:27:49', 1, 0, '0', NULL, 'manager', '0987', 9, 1, 0),
(11, 'mail@a1ss.com', '12345678', 'Business Development', 2, '2017-11-20 08:29:37', 'system', 'system', '2017-11-20 08:29:37', 1, 0, '0', NULL, 'BDM', '6288 9920', 10, 1, 0),
(12, 'info@choonhingroup.com', '12345678', 'choonhin', 3, '2017-11-20 10:13:53', 'system', 'system', '2017-11-20 10:13:53', 1, 0, '0', NULL, 'BDM', '6442 8080', 11, 1, 0),
(13, 'ccfwpl@singnet.com.sg', '12345678', 'chongcheong', 2, '2017-11-21 08:42:24', 'system', 'system', '2017-11-21 08:42:24', 1, 0, '0', NULL, 'BDM', '6861 0770', 12, 1, 0),
(15, '123@yahoo.com', '12345678', 'singchow', 3, '2017-11-29 01:20:50', 'system', 'system', '2017-11-29 01:20:50', 1, 0, '0', NULL, '', '', 14, 1, 0),
(16, 'thantsinaung@mritmyanmar.com', 'nnhhyy66', 'Peter', 2, '2017-12-09 04:03:48', 'system', 'system', '2017-12-09 04:03:48', 1, 0, '0', NULL, 'MD', 'dsfadf', 21, 1, 0),
(17, 'alfeo.silvestro@live.com', 'pass123', 'Alfonso Dante', 3, '2017-12-12 01:11:57', 'system', 'system', '2017-12-12 01:11:57', 1, 0, '0', NULL, 'Buyer', '98764563', 23, 1, 0),
(18, 'yinloong@uniqlix.com', 'password', 'Hello', 3, '2017-12-12 02:54:38', 'system', 'system', '2017-12-12 02:54:38', 1, 0, '0', NULL, 'Chief Hello Officer', '92730333', 18, 1, 0),
(19, 'aung.myatkhaing@omdg.biz', 'pass123', 'Soe San Win', 2, '2017-12-15 01:30:52', 'system', 'system', '2017-12-15 01:30:52', 1, 0, '0', NULL, 'Account Manager', '654342546', 13, 1, 0),
(20, 'william.chao@ylcconsultants.com', 'password', 'Chaw Chaw', 2, '2017-12-15 04:13:24', 'system', 'system', '2017-12-15 04:13:24', 1, 0, '0', NULL, 'Chief Metal Rollder', '94209202', 24, 1, 0),
(21, 'info@metalpolis.com', '12345678', 'topmast', 3, '2017-12-19 02:38:32', 'system', 'system', '2017-12-19 02:38:32', 1, 0, '0', NULL, 'BDM', '12345', 25, 1, 0),
(22, 'kyawhtutlin@bbccdddee.net', '11223344', 'Kyaw Htut Lin', 3, '2017-12-22 15:05:52', 'system', 'system', '2017-12-22 15:05:52', 1, 0, '0', NULL, 'TT', '222333333', 26, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `td_requiredservices`
--

CREATE TABLE `td_requiredservices` (
  `Id` int(11) NOT NULL,
  `M_ServiceName` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL COMMENT '	',
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Version` timestamp NULL DEFAULT NULL,
  `T_RFQ_Id` int(11) NOT NULL,
  `M_Service_Id` int(11) DEFAULT NULL,
  `Supplier_Provide_Material` int(11) DEFAULT NULL,
  `Supplier_Provide_Transport` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `td_requiredservices`
--

INSERT INTO `td_requiredservices` (`Id`, `M_ServiceName`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Status`, `Version`, `T_RFQ_Id`, `M_Service_Id`, `Supplier_Provide_Material`, `Supplier_Provide_Transport`) VALUES
(1, '', '2017-11-19 11:18:57', '3', NULL, NULL, 1, NULL, 1, 13, NULL, NULL),
(2, '', '2017-11-19 11:18:57', '3', NULL, NULL, 1, NULL, 1, 19, NULL, NULL),
(3, '', '2017-11-20 10:30:33', '12', NULL, NULL, 0, NULL, 4, 19, NULL, NULL),
(4, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', '2017-11-20 10:31:03', '12', NULL, NULL, 1, NULL, 4, 19, NULL, NULL),
(5, '', '2017-11-21 08:49:42', '12', NULL, NULL, 0, NULL, 6, 24, NULL, NULL),
(6, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', '2017-11-21 08:50:45', '12', NULL, NULL, 1, NULL, 6, 24, NULL, NULL),
(7, '', '2017-11-21 13:24:11', '3', NULL, NULL, 0, NULL, 8, 13, NULL, NULL),
(8, 'General Fabrication', '2017-11-21 13:24:33', '3', NULL, NULL, 1, NULL, 8, 13, NULL, NULL),
(9, '', '2017-11-22 04:32:22', '3', NULL, NULL, 1, NULL, 10, 13, NULL, NULL),
(10, '', '2017-11-29 01:29:41', '15', NULL, NULL, 1, NULL, 13, 23, NULL, NULL),
(11, '', '2017-12-01 05:56:04', '15', NULL, NULL, 1, NULL, 14, 20, NULL, NULL),
(12, '', '2017-12-12 06:36:19', '18', NULL, NULL, 1, NULL, 15, 49, NULL, NULL),
(13, '', '2017-12-12 06:36:19', '18', NULL, NULL, 1, NULL, 15, 92, NULL, NULL),
(14, '', '2017-12-15 01:05:58', '17', NULL, NULL, 0, NULL, 16, 13, NULL, NULL),
(15, 'General Fabrication', '2017-12-15 01:10:51', '17', NULL, NULL, 1, NULL, 16, 13, NULL, NULL),
(16, '', '2017-12-19 03:17:57', '21', NULL, NULL, 1, NULL, 18, 227, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_clarifications`
--

CREATE TABLE `t_clarifications` (
  `Id` int(11) NOT NULL,
  `ClarificationQuestion` varchar(400) DEFAULT NULL,
  `ClarificationAnswer` varchar(400) DEFAULT NULL COMMENT 'All documents will have clarifications\nthere will be 2 types of verification\n',
  `AnswerType` int(11) DEFAULT NULL COMMENT 'Public Answer\nPrivate Answer',
  `M_Asking_Person_Id` int(11) NOT NULL,
  `T_Document_Id` int(11) NOT NULL,
  `Version` timestamp NULL DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `make_public` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_clarifications`
--

INSERT INTO `t_clarifications` (`Id`, `ClarificationQuestion`, `ClarificationAnswer`, `AnswerType`, `M_Asking_Person_Id`, `T_Document_Id`, `Version`, `CreatedDate`, `CreatedBy`, `Status`, `make_public`) VALUES
(1, 'hello', NULL, NULL, 12, 5, NULL, '2017-11-20 10:51:23', 'system', 1, 0),
(2, 'What price u want?', NULL, NULL, 11, 4, NULL, '2017-11-20 10:54:27', 'system', 1, 0),
(3, 'I would like to clarify that, xxx is the correct measurement', 'Yes, it is the correct measurement.', NULL, 8, 10, NULL, '2017-11-22 04:40:33', 'system', 1, 0),
(4, 'Please confirm, transport is provided', 'Yes, it covers in our quote', NULL, 3, 9, NULL, '2017-11-22 04:48:02', 'system', 1, 0),
(5, 'How soon you need this?', 'by 5th Dec', NULL, 13, 13, NULL, '2017-11-29 01:32:46', 'system', 1, 0),
(6, 'Please provide dimensions', '1000mmx1000mmx500mm', NULL, 13, 14, NULL, '2017-12-01 05:57:09', 'system', 1, 0),
(7, 'Test clarifications ', 'Test', NULL, 19, 16, NULL, '2017-12-15 01:33:50', 'system', 1, 1),
(8, 'abc', 'def', NULL, 17, 17, NULL, '2017-12-19 01:32:35', 'system', 1, 0),
(9, 'Test public clarifications', NULL, NULL, 17, 16, NULL, '2017-12-19 01:36:02', 'system', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_document`
--

CREATE TABLE `t_document` (
  `Id` int(11) NOT NULL,
  `Title` varchar(45) NOT NULL,
  `C_DocumentType` int(11) NOT NULL,
  `ShortDescription` varchar(45) DEFAULT NULL,
  `LongDescription` varchar(500) DEFAULT NULL,
  `SubmissionDate` varchar(45) DEFAULT NULL,
  `C_QuotationStatus` int(11) NOT NULL,
  `C_RfqStatus` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL COMMENT 'RFQ\nRFI\nBQ\nQuotation\nInvoice (future)',
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Version` timestamp NULL DEFAULT NULL,
  `M_User_Id` int(11) NOT NULL,
  `DocumentNo` varchar(45) NOT NULL,
  `ContactPersonFName` varchar(255) DEFAULT NULL,
  `ContactPersonLName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_document`
--

INSERT INTO `t_document` (`Id`, `Title`, `C_DocumentType`, `ShortDescription`, `LongDescription`, `SubmissionDate`, `C_QuotationStatus`, `C_RfqStatus`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Status`, `Version`, `M_User_Id`, `DocumentNo`, `ContactPersonFName`, `ContactPersonLName`) VALUES
(1, 'P1', 6, '', '', NULL, 8, 10, '2017-11-19 11:18:57', '3', NULL, NULL, 1, NULL, 3, 'RFQ_Submitted_1', 'Jame', 'Smith'),
(2, '', 6, '', '', NULL, 8, 14, '2017-11-19 11:17:27', '3', '2017-11-19 11:17:37', '3', 1, NULL, 3, 'RFQ_Draft_2', 'Peter', ''),
(3, '', 7, '', '', NULL, 20, 8, '2017-11-19 11:19:34', '8', '2017-11-20 13:49:35', '8', 1, NULL, 8, 'RFQ_Submitted_1', '', ''),
(4, 'Test1', 6, '', '', NULL, 8, 12, '2017-11-20 10:31:03', '12', '2017-11-20 10:59:45', '12', 1, NULL, 12, 'RFQ_Submitted_2', 'TT', 'F'),
(5, '', 7, '', '', NULL, 18, 8, '2017-11-20 10:42:16', '11', '2017-11-20 10:59:45', '12', 1, NULL, 11, 'RFQ_Submitted_2', 'business', 'business'),
(6, 'RFQ 123', 6, '', '', NULL, 8, 10, '2017-11-21 08:50:45', '12', NULL, NULL, 1, NULL, 12, 'RFQ_Submitted_3', 'TT', 'ABC'),
(7, '', 7, '', '', NULL, 16, 8, '2017-11-21 08:58:00', '13', '2017-11-21 09:13:45', '13', 1, NULL, 13, 'RFQ_Submitted_3', 'AA', 'AA'),
(8, '', 6, '', '', NULL, 8, 10, '2017-11-21 13:24:33', '3', NULL, NULL, 1, NULL, 3, 'RFQ_Submitted_4', 'OMG', 'User'),
(9, '', 7, '', '', NULL, 16, 8, '2017-11-21 13:25:41', '8', '2017-11-22 04:46:08', '8', 1, NULL, 8, 'RFQ_Submitted_4', 'TT', 'Foo'),
(10, '', 6, '', '', NULL, 8, 10, '2017-11-22 04:32:22', '3', NULL, NULL, 1, NULL, 3, 'RFQ_Submitted_5', 'Test Person', 'Test Person'),
(11, '', 7, '', '', NULL, 15, 8, '2017-11-22 04:34:29', '13', NULL, NULL, 1, NULL, 13, 'RFQ_Submitted_5', '', ''),
(12, 'Tru-Marine', 6, '', '', NULL, 8, 10, '2017-11-28 03:17:33', '3', NULL, NULL, 1, NULL, 3, 'RFQ_Submitted_6', 'Yih', 'Loong'),
(13, 'I want metal', 6, '', '', NULL, 8, 10, '2017-11-29 01:29:41', '15', NULL, NULL, 1, NULL, 15, 'RFQ_Submitted_7', 'TT', 'F'),
(14, 'Skid Work', 6, '', '', NULL, 8, 10, '2017-12-01 05:56:04', '15', NULL, NULL, 1, NULL, 15, 'RFQ_Submitted_8', 'Pau', 'Lee'),
(15, 'Buying some services for my metal working par', 6, '', '', NULL, 8, 10, '2017-12-12 06:36:19', '18', NULL, NULL, 1, NULL, 18, 'RFQ_Submitted_9', 'Hello', 'Hello'),
(16, 'Milling', 6, '', '', NULL, 8, 12, '2017-12-15 01:10:51', '17', '2017-12-19 02:24:57', '17', 1, NULL, 17, 'RFQ_Submitted_10', 'Alfonso Dante', 'Alfonso Dante'),
(17, '', 7, '', '', NULL, 18, 8, '2017-12-15 01:59:36', '19', '2017-12-19 02:24:57', '17', 1, NULL, 19, 'RFQ_Submitted_10', '', ''),
(18, 'Top project', 6, '', '', NULL, 8, 10, '2017-12-19 03:17:57', '21', NULL, NULL, 1, NULL, 21, 'RFQ_Submitted_11', 'topmast', 'topmast');

-- --------------------------------------------------------

--
-- Table structure for table `t_fileattachments`
--

CREATE TABLE `t_fileattachments` (
  `Id` int(11) NOT NULL,
  `T_Document_Id` int(11) NOT NULL,
  `FileName` varchar(150) NOT NULL,
  `FileBinary` blob NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedBy` varchar(45) NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `Version` timestamp NULL DEFAULT NULL,
  `Subject` varchar(500) DEFAULT NULL,
  `Message` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_fileattachments`
--

INSERT INTO `t_fileattachments` (`Id`, `T_Document_Id`, `FileName`, `FileBinary`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Status`, `Version`, `Subject`, `Message`) VALUES
(1, 1, '20171119111849_AttendanceReport-26122016161619.xls', '', '2017-11-19 11:18:57', '3', NULL, NULL, 1, NULL, 'S1', 'M2'),
(2, 3, '20171119111954_AttendanceReport-26122016152438.xls', '', '2017-11-19 11:20:13', '8', NULL, NULL, 0, NULL, 'S3', 'M3'),
(3, 3, '20171119111954_AttendanceReport-26122016152438.xls', '', '2017-11-19 11:29:13', '8', NULL, NULL, 1, NULL, 'S3', 'M3'),
(4, 5, '20171120104457_', '', '2017-11-20 10:47:27', '11', NULL, NULL, 0, NULL, 'Price Quote from A1', 'please review attached quotation'),
(5, 5, '20171120104556_how-to-start-a-startup-as-told-by-PG-infographic.png', '', '2017-11-20 10:47:27', '11', NULL, NULL, 0, NULL, '', ''),
(6, 5, '20171120104457_', '', '2017-11-20 10:47:56', '11', NULL, NULL, 1, NULL, 'Price Quote from A1', 'please review attached quotation'),
(7, 5, '20171120104556_how-to-start-a-startup-as-told-by-PG-infographic.png', '', '2017-11-20 10:47:56', '11', NULL, NULL, 1, NULL, '', ''),
(8, 6, '20171121084844_ICT_Impact+of+AI+on+Singapore.pdf', '', '2017-11-21 08:49:42', '12', NULL, NULL, 0, NULL, 'RFQ', 'Please refer to attached and quote asap'),
(9, 6, '20171121084844_ICT_Impact+of+AI+on+Singapore.pdf', '', '2017-11-21 08:50:45', '12', NULL, NULL, 1, NULL, 'RFQ', 'Please refer to attached and quote asap'),
(10, 7, '20171121090253_How to be Wise_funder&founder.png', '', '2017-11-21 09:07:39', '13', NULL, NULL, 0, NULL, 'See my quote', 'let me know if u need any further info'),
(11, 7, '20171121090253_How to be Wise_funder&founder.png', '', '2017-11-21 09:13:45', '13', NULL, NULL, 1, NULL, 'See my quote', 'let me know if u need any further info'),
(12, 9, '20171122044528_setup.sh', '', '2017-11-22 04:46:08', '8', NULL, NULL, 1, NULL, 'Quotation Pricing', 'All Pricing information'),
(13, 12, '20171128031708_11Sep2017.txt', '', '2017-11-28 03:17:33', '3', NULL, NULL, 1, NULL, '', 'this is a diagram of a turbine part'),
(14, 13, '20171129012919_Request for Metal Railing.pdf', '', '2017-11-29 01:29:41', '15', NULL, NULL, 1, NULL, 'Pix', 'Picture of railing'),
(15, 14, '20171201055517_skid sample.jpg', '', '2017-12-01 05:56:04', '15', NULL, NULL, 1, NULL, 'Skid', 'Please see attached picture'),
(16, 15, '20171212063520_UniQlix.png', '', '2017-12-12 06:36:19', '18', NULL, NULL, 1, NULL, '', 'This is my logo. can it be made by using metal ?'),
(17, 16, '20171215005144_18450B83-B920-49CF-88B1-4036CA1F9D7E.jpeg', '', '2017-12-15 00:51:49', '17', NULL, NULL, 0, NULL, '', ''),
(18, 16, '20171215005144_18450B83-B920-49CF-88B1-4036CA1F9D7E.jpeg', '', '2017-12-15 01:05:58', '17', NULL, NULL, 0, NULL, '', ''),
(19, 16, '20171215005144_18450B83-B920-49CF-88B1-4036CA1F9D7E.jpeg', '', '2017-12-15 01:10:51', '17', NULL, NULL, 1, NULL, '', ''),
(20, 17, '20171219012800_10_Penguins-Of-Madagascar.jpg', '', '2017-12-19 01:28:22', '19', NULL, NULL, 0, NULL, '', ''),
(21, 18, '20171219024223_skid sample.jpg', '', '2017-12-19 03:17:57', '21', NULL, NULL, 1, NULL, '', 'Skid Diagram');

-- --------------------------------------------------------

--
-- Table structure for table `t_requestforquotation`
--

CREATE TABLE `t_requestforquotation` (
  `Document_Id` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `FinalClosingDate` datetime DEFAULT NULL,
  `FirstClosingDate` datetime DEFAULT NULL,
  `RevisedClosingDate1` datetime DEFAULT NULL,
  `RevisedClosingDate2` datetime DEFAULT NULL,
  `TotalSubmittedQuotes` int(11) NOT NULL DEFAULT '0',
  `RequireServiceTags` varchar(400) DEFAULT NULL,
  `IsSelected` bit(1) DEFAULT NULL,
  `PreferredPaymentTerms` varchar(255) DEFAULT NULL,
  `Supplier_Provide_Material` int(11) DEFAULT '0',
  `Supplier_Provide_Transport` int(11) DEFAULT '0',
  `Remark` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_requestforquotation`
--

INSERT INTO `t_requestforquotation` (`Document_Id`, `Title`, `FinalClosingDate`, `FirstClosingDate`, `RevisedClosingDate1`, `RevisedClosingDate2`, `TotalSubmittedQuotes`, `RequireServiceTags`, `IsSelected`, `PreferredPaymentTerms`, `Supplier_Provide_Material`, `Supplier_Provide_Transport`, `Remark`) VALUES
(1, 'P1', '2017-12-19 00:00:00', '2017-12-19 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'Remark test'),
(2, '', '2017-12-19 00:00:00', '2017-12-19 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 0, 0, ''),
(4, 'Test1', '2017-12-20 00:00:00', '2017-12-20 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'Send asap'),
(6, 'RFQ 123', '2017-12-21 00:00:00', '2017-12-21 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'Send me quote'),
(8, '', '2017-12-21 00:00:00', '2017-12-21 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, ''),
(10, '', '2017-12-22 00:00:00', '2017-12-22 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, ''),
(12, 'Tru-Marine', '2017-11-30 00:00:00', '2017-11-30 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'I need a turbine part very urgently'),
(13, 'I want metal', '2017-12-29 00:00:00', '2017-12-29 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'please get back asap'),
(14, 'Skid Work', '2017-12-09 00:00:00', '2017-12-09 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'Please quote me asap, very very urgent'),
(15, 'Buying some services for my metal working parts', '2017-12-31 00:00:00', '2017-12-31 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'Hello i need metal services!'),
(16, 'Milling', '2017-12-22 00:00:00', '2017-12-22 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, ''),
(18, 'Top project', '2017-12-26 00:00:00', '2017-12-26 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'Please get back asap\r\nmndaj\r\nsdnakdaj\r\nadjakfhkh\r\najfahf\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `t_supplierquotation`
--

CREATE TABLE `t_supplierquotation` (
  `Document_Id` int(11) NOT NULL COMMENT 'Quotation Details will be attached as file\nAssumptions will be attached as file\nCompliance will be attached as file',
  `T_Rfq_Id` int(11) NOT NULL,
  `QuotedFigure` decimal(13,2) NOT NULL,
  `ValidToDate` datetime NOT NULL,
  `RevisionNo` int(11) NOT NULL,
  `Comments` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_supplierquotation`
--

INSERT INTO `t_supplierquotation` (`Document_Id`, `T_Rfq_Id`, `QuotedFigure`, `ValidToDate`, `RevisionNo`, `Comments`) VALUES
(3, 1, '0.00', '2017-11-19 00:00:00', 3, 'OK					'),
(5, 4, '2000.00', '2017-11-20 00:00:00', 4, 'let us know the result asap					'),
(7, 6, '5000.00', '2017-11-21 00:00:00', 4, 'Please move fast					'),
(9, 8, '50000.00', '2017-11-21 00:00:00', 4, 'Please feel free to let us know, if you should require any clarifications regards to our quote.'),
(11, 10, '0.00', '2017-11-22 00:00:00', 1, ''),
(17, 16, '10000.00', '2017-12-15 00:00:00', 4, 'BACKBONE OF MANUFACTURING\r\nPrecision engineering is the crucial enabler for industries as diverse as aerospace, oil & gas, medical devices and electronics. It is the essential ingredient in the manufacturing of the smallest semiconductor chips, to the most cutting-edge of medical devices, and the largest drill bits used in oil exploration.\r\n\r\nSingapore’s precision engineering activities began in the 1970s to support the first manufacturing investments. Today, there are some 2,700 companies, rang');

-- --------------------------------------------------------

--
-- Table structure for table `t_targetedsuppliers`
--

CREATE TABLE `t_targetedsuppliers` (
  `Id` int(11) NOT NULL,
  `T_Document_Id` int(11) NOT NULL,
  `M_Company_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_targetedsuppliers`
--

INSERT INTO `t_targetedsuppliers` (`Id`, `T_Document_Id`, `M_Company_Id`) VALUES
(1, 1, 7),
(2, 4, 10),
(3, 4, 10),
(4, 6, 12),
(5, 6, 10),
(6, 6, 12),
(7, 6, 10),
(8, 8, 7),
(9, 8, 7),
(10, 10, 7),
(11, 10, 12),
(12, 12, 13),
(13, 13, 13),
(14, 13, 12),
(15, 13, 10),
(16, 14, 13),
(17, 14, 12),
(18, 15, 13),
(19, 15, 10),
(20, 15, 12),
(21, 16, 13),
(22, 16, 13),
(23, 18, 13),
(24, 18, 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_notification`
--
ALTER TABLE `company_notification`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `c_codecategory`
--
ALTER TABLE `c_codecategory`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id_UNIQUE` (`Id`);

--
-- Indexes for table `c_codetable`
--
ALTER TABLE `c_codetable`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id_UNIQUE` (`Id`),
  ADD KEY `fk_C_CodeTable_C_CodeCategory_idx` (`C_CodeCategory_Id`),
  ADD KEY `fk_C_CodeTable_C_CodeTable1_idx` (`C_ParentCode`);

--
-- Indexes for table `c_tags`
--
ALTER TABLE `c_tags`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `TagName_UNIQUE` (`TagName`);

--
-- Indexes for table `document_number`
--
ALTER TABLE `document_number`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `md_companyrating`
--
ALTER TABLE `md_companyrating`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `md_serviceparameter`
--
ALTER TABLE `md_serviceparameter`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_MD_ServiceParameter_M_Services1_idx` (`M_Services_Id`);

--
-- Indexes for table `md_supplierserviceparameter`
--
ALTER TABLE `md_supplierserviceparameter`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_MD_SupplierServiceParameter_MD_SupplierServices1_idx` (`MD_SupplierServices_Id`);

--
-- Indexes for table `md_supplierservices`
--
ALTER TABLE `md_supplierservices`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_MD_SupplierServices_M_Services1_idx` (`M_Services_Id`),
  ADD KEY `fk_MD_SupplierServices_M_Company1_idx` (`M_Company_Id`);

--
-- Indexes for table `md_suppliertags`
--
ALTER TABLE `md_suppliertags`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `md_userrating`
--
ALTER TABLE `md_userrating`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_M_UserRating_M_User1_idx` (`M_User_Id`);

--
-- Indexes for table `m_buyer`
--
ALTER TABLE `m_buyer`
  ADD PRIMARY KEY (`M_User_Id`),
  ADD KEY `fk_Buyer_M_User1_idx` (`M_User_Id`);

--
-- Indexes for table `m_company`
--
ALTER TABLE `m_company`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `m_services`
--
ALTER TABLE `m_services`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`M_User_Id`),
  ADD KEY `fk_Supplier_M_User1_idx` (`M_User_Id`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `EmailAddress_UNIQUE` (`EmailAddress`),
  ADD KEY `fk_M_User_C_CodeTable1_idx` (`C_UserType`),
  ADD KEY `fk_M_User_M_Company1_idx` (`M_Company_Id`);

--
-- Indexes for table `td_requiredservices`
--
ALTER TABLE `td_requiredservices`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_TD_RequiredServices_T_Document1_idx` (`T_RFQ_Id`);

--
-- Indexes for table `t_clarifications`
--
ALTER TABLE `t_clarifications`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_T_Clarifications_M_User1_idx` (`M_Asking_Person_Id`),
  ADD KEY `fk_T_Clarifications_T_Document1_idx` (`T_Document_Id`);

--
-- Indexes for table `t_document`
--
ALTER TABLE `t_document`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_Document_C_CodeTable1_idx` (`C_DocumentType`),
  ADD KEY `fk_T_Document_C_CodeTable1_idx` (`C_QuotationStatus`),
  ADD KEY `fk_T_Document_C_CodeTable2_idx` (`C_RfqStatus`),
  ADD KEY `fk_T_Document_M_User1_idx` (`M_User_Id`);

--
-- Indexes for table `t_fileattachments`
--
ALTER TABLE `t_fileattachments`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_T_FileAttachments_T_Document1_idx` (`T_Document_Id`);

--
-- Indexes for table `t_requestforquotation`
--
ALTER TABLE `t_requestforquotation`
  ADD PRIMARY KEY (`Document_Id`),
  ADD KEY `fk_RequestForQuotation_Document1_idx` (`Document_Id`);

--
-- Indexes for table `t_supplierquotation`
--
ALTER TABLE `t_supplierquotation`
  ADD PRIMARY KEY (`Document_Id`),
  ADD KEY `fk_SupplierQuote_Document1_idx` (`Document_Id`),
  ADD KEY `fk_SupplierQuote_Document2_idx` (`T_Rfq_Id`);

--
-- Indexes for table `t_targetedsuppliers`
--
ALTER TABLE `t_targetedsuppliers`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_T_TargetedSuppliers_T_Document1_idx` (`T_Document_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_notification`
--
ALTER TABLE `company_notification`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `c_tags`
--
ALTER TABLE `c_tags`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `document_number`
--
ALTER TABLE `document_number`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `md_companyrating`
--
ALTER TABLE `md_companyrating`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `md_serviceparameter`
--
ALTER TABLE `md_serviceparameter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_supplierserviceparameter`
--
ALTER TABLE `md_supplierserviceparameter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_userrating`
--
ALTER TABLE `md_userrating`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `td_requiredservices`
--
ALTER TABLE `td_requiredservices`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `t_clarifications`
--
ALTER TABLE `t_clarifications`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `t_targetedsuppliers`
--
ALTER TABLE `t_targetedsuppliers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `c_codetable`
--
ALTER TABLE `c_codetable`
  ADD CONSTRAINT `fk_C_CodeTable_C_CodeCategory` FOREIGN KEY (`C_CodeCategory_Id`) REFERENCES `c_codecategory` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_C_CodeTable_C_CodeTable1` FOREIGN KEY (`C_ParentCode`) REFERENCES `c_codetable` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `md_supplierserviceparameter`
--
ALTER TABLE `md_supplierserviceparameter`
  ADD CONSTRAINT `fk_MD_SupplierServiceParameter_MD_SupplierServices1` FOREIGN KEY (`MD_SupplierServices_Id`) REFERENCES `md_supplierservices` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `md_userrating`
--
ALTER TABLE `md_userrating`
  ADD CONSTRAINT `fk_M_UserRating_M_User1` FOREIGN KEY (`M_User_Id`) REFERENCES `m_user` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `m_buyer`
--
ALTER TABLE `m_buyer`
  ADD CONSTRAINT `fk_Buyer_M_User1` FOREIGN KEY (`M_User_Id`) REFERENCES `m_user` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD CONSTRAINT `fk_Supplier_M_User1` FOREIGN KEY (`M_User_Id`) REFERENCES `m_user` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `m_user`
--
ALTER TABLE `m_user`
  ADD CONSTRAINT `fk_M_User_C_CodeTable1` FOREIGN KEY (`C_UserType`) REFERENCES `c_codetable` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_M_User_M_Company1` FOREIGN KEY (`M_Company_Id`) REFERENCES `m_company` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_clarifications`
--
ALTER TABLE `t_clarifications`
  ADD CONSTRAINT `fk_T_Clarifications_M_User1` FOREIGN KEY (`M_Asking_Person_Id`) REFERENCES `m_user` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_Clarifications_T_Document1` FOREIGN KEY (`T_Document_Id`) REFERENCES `t_document` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_document`
--
ALTER TABLE `t_document`
  ADD CONSTRAINT `fk_Document_C_CodeTable1` FOREIGN KEY (`C_DocumentType`) REFERENCES `c_codetable` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_Document_C_CodeTable1` FOREIGN KEY (`C_QuotationStatus`) REFERENCES `c_codetable` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_Document_C_CodeTable2` FOREIGN KEY (`C_RfqStatus`) REFERENCES `c_codetable` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_Document_M_User1` FOREIGN KEY (`M_User_Id`) REFERENCES `m_user` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_fileattachments`
--
ALTER TABLE `t_fileattachments`
  ADD CONSTRAINT `fk_T_FileAttachments_T_Document1` FOREIGN KEY (`T_Document_Id`) REFERENCES `t_document` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_requestforquotation`
--
ALTER TABLE `t_requestforquotation`
  ADD CONSTRAINT `fk_RequestForQuotation_Document1` FOREIGN KEY (`Document_Id`) REFERENCES `t_document` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_supplierquotation`
--
ALTER TABLE `t_supplierquotation`
  ADD CONSTRAINT `fk_SupplierQuote_Document1` FOREIGN KEY (`Document_Id`) REFERENCES `t_document` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SupplierQuote_Document2` FOREIGN KEY (`T_Rfq_Id`) REFERENCES `t_document` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
