-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2018 at 04:25 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metalpolis_database`
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
(1, 1, 3, 7, 'AAAAA has invited you to participate in RFQ, RFQ_Submitted_1', 22, '2017-11-19 12:22:29', '3', NULL, NULL, 1, 'Invited'),
(2, 2, 3, 15, 'AAAAA has invited you to participate in RFQ, RFQ_Submitted_2', 22, '2017-12-16 04:53:59', '3', NULL, NULL, 1, 'Invited'),
(3, 4, 11, 3, 'mr it has interested on your RFQ_Submitted_2.', 22, '2017-12-16 09:03:55', '11', NULL, NULL, 1, 'Create_Quotation	'),
(4, 4, 11, 3, 'mr it has registered interest.', 22, '2017-12-16 09:08:10', '11', NULL, NULL, 1, 'Create_Quotation'),
(5, 4, 3, 15, 'Your Quotation(4) has been awareded to your company.', 22, '2017-12-16 09:12:41', '3', NULL, NULL, 1, 'Accepted'),
(6, 6, 3, 15, 'AAAAA has invited you to participate in RFQ, RFQ_Submitted_4', 22, '2017-12-17 16:49:33', '3', NULL, NULL, 1, 'Invited'),
(7, 7, 11, 3, 'mr it has interested on your RFQ_Submitted_4.', 22, '2017-12-17 16:50:00', '11', NULL, NULL, 1, 'Create_Quotation	'),
(8, 7, 11, 3, 'mr it has registered interest.', 22, '2017-12-17 16:50:39', '11', NULL, NULL, 1, 'Create_Quotation'),
(9, 7, 3, 15, 'Your Quotation(7) has been awareded to your company.', 22, '2017-12-17 17:03:37', '3', NULL, NULL, 1, 'Accepted'),
(10, 7, 3, 15, 'Your Quotation(7) has been awareded to your company.', 22, '2017-12-17 17:04:50', '3', NULL, NULL, 1, 'Accepted'),
(11, 7, 3, 15, 'Your Quotation(7) has been awareded to your company.', 22, '2017-12-17 17:05:23', '3', NULL, NULL, 1, 'Accepted'),
(12, 7, 3, 15, 'Your Quotation(7) has been awareded to your company.', 22, '2017-12-17 17:08:00', '3', NULL, NULL, 1, 'Accepted'),
(13, 7, 3, 15, 'Your Quotation(7) has been awareded to your company.', 22, '2017-12-17 17:12:23', '3', NULL, NULL, 1, 'Accepted'),
(14, 7, 3, 15, 'Your Quotation(7) has been awareded to your company.', 22, '2017-12-17 17:13:37', '3', NULL, NULL, 1, 'Accepted'),
(15, 7, 3, 15, 'Your Quotation(7) has been awareded to your company.', 22, '2017-12-17 17:17:50', '3', NULL, NULL, 1, 'Accepted'),
(16, 8, 11, 15, 'mr it has invited you to participate in RFQ, RFQ_Submitted_5', 22, '2017-12-28 15:03:51', '11', NULL, NULL, 1, 'Invited'),
(17, 9, 11, 15, 'mr it has invited you to participate in RFQ, RFQ_Submitted_6', 22, '2017-12-28 15:04:04', '11', NULL, NULL, 1, 'Invited'),
(18, 10, 11, 15, 'mr it has invited you to participate in RFQ, RFQ_Submitted_7', 22, '2017-12-28 15:06:05', '11', NULL, NULL, 1, 'Invited'),
(19, 10, 11, 15, 'mr it has withdrawn in RFQ, RFQ_Submitted_7. All Quotation will be automatically locked.', 22, '2017-12-28 15:26:55', '11', NULL, NULL, 1, 'Withdrawn'),
(20, 11, 11, 4, 'mr it has invited you to participate in RFQ, RFQ_Submitted_8', 22, '2017-12-28 15:36:19', '11', NULL, NULL, 1, 'Invited'),
(21, 12, 4, 15, 'BBBBB has interested on your RFQ_Submitted_8.', 22, '2017-12-28 15:38:06', '4', NULL, NULL, 1, 'Create_Quotation	'),
(22, 12, 4, 15, 'BBBBB has registered interest.', 22, '2017-12-28 15:38:23', '4', NULL, NULL, 1, 'Create_Quotation'),
(23, 12, 11, 4, 'Your Quotation(12) has been awareded to your company.', 22, '2017-12-28 15:38:46', '11', NULL, NULL, 1, 'Accepted'),
(24, 13, 11, 4, 'mr it has invited you to participate in RFQ, RFQ_Submitted_9', 22, '2017-12-28 16:04:11', '11', NULL, NULL, 1, 'Invited'),
(25, 14, 4, 15, 'BBBBB has interested on your RFQ_Submitted_9.', 22, '2017-12-28 16:04:34', '4', NULL, NULL, 1, 'Create_Quotation	'),
(26, 14, 4, 15, 'BBBBB has registered interest.', 22, '2017-12-28 16:05:15', '4', NULL, NULL, 1, 'Create_Quotation'),
(27, 15, 11, 15, 'mr it has invited you to participate in RFQ, RFQ_Submitted_10', 22, '2018-01-03 13:43:08', '11', NULL, NULL, 1, 'Invited');

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
(1, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 1),
(2, 'RFQ', 'Draft', 'RFQ', 'RFQ', 1),
(3, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 2),
(4, 'RFQ', 'Draft', 'RFQ', 'RFQ', 2),
(5, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 3),
(6, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 4),
(7, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 5),
(8, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 6),
(9, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 7),
(10, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 8),
(11, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 9),
(12, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 10);

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
  `Description` varchar(60000) DEFAULT NULL,
  `Ref_Document_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_companyrating`
--

INSERT INTO `md_companyrating` (`Id`, `Company_Id`, `User_Id`, `SpeedOfQuotation`, `SpeedofDelivery`, `ServiceQuality`, `Price`, `SpeedofProcessing`, `Payment`, `Status`, `Created`, `CreatedBy`, `Title`, `Description`, `Ref_Document_Id`) VALUES
(1, 2, 3, 2, 3, 2, 4, NULL, NULL, 1, '2017-12-10 07:28:18', '3', 'fff', '', NULL),
(2, 2, 3, 0, 0, 0, 0, NULL, NULL, 1, '2017-12-10 09:10:09', '3', '', 'abc', NULL),
(3, 2, 3, NULL, NULL, NULL, NULL, 5, 5, 1, '2017-12-10 09:10:09', '3', '', 'abc', NULL),
(4, 3, 3, 4, 4, 3, 3, NULL, NULL, 1, '2017-12-10 09:41:20', '3', 'test', 'dkfadflajdf', NULL),
(5, 3, 3, 4, 4, 3, 3, NULL, NULL, 1, '2017-12-10 09:41:21', '3', 'test', 'dkfadflajdf', NULL),
(6, 15, 3, 5, 4, 5, 3, NULL, NULL, 1, '2017-12-17 17:18:06', '3', 'peter test', 'asdfsadf', NULL),
(7, 4, 11, 5, 5, 4, 4, NULL, NULL, 1, '2017-12-28 15:41:41', '11', 'test', 'fsadfad', NULL),
(8, 4, 11, 5, 5, 5, 5, NULL, NULL, 1, '2017-12-28 15:49:08', '11', 'testdasfadfsad', 'stafdsfasdfasdf', NULL),
(9, 4, 11, 3, 3, 5, 5, NULL, NULL, 1, '2017-12-28 15:55:05', '11', 'cdsadfas', 'fadsfasdfa', 12),
(11, 4, 11, 3, 3, 5, 5, NULL, NULL, 1, '2017-12-28 15:55:05', '11', 'cdsadfas', 'fadsfasdfa', 12),
(12, 4, 11, 3, 3, 5, 5, NULL, NULL, 1, '2017-12-28 15:55:05', '11', 'cdsadfas', 'fadsfasdfa', 12),
(13, 4, 11, 0, 3, 5, 5, NULL, NULL, 1, '2017-12-28 15:55:05', '11', 'cdsadfas', 'fadsfasdfa', 12),
(14, 4, 11, 1, 3, 5, 5, NULL, NULL, 1, '2017-12-28 15:55:05', '11', 'cdsadfas', 'fadsfasdfa', 12),
(15, 4, 11, 2, 1, 4, 2, NULL, NULL, 1, '2017-12-28 15:55:05', '11', 'cdsadfas', 'fadsfasdfa', 12),
(16, 4, 11, 2, 1, 4, 2, NULL, NULL, 1, '2017-12-28 15:55:05', '11', 'test', 'test1', 12),
(17, 4, 11, 2, 1, 4, 2, NULL, NULL, 1, '2017-12-28 15:55:05', '11', 'test', 'test1', 12),
(18, 4, 11, 2, 1, 4, 2, NULL, NULL, 1, '2017-12-28 15:55:05', '11', 'test', 'test1', 12);

--
-- Triggers `md_companyrating`
--
DELIMITER $$
CREATE TRIGGER `AvgCompanyRating` AFTER INSERT ON `md_companyrating` FOR EACH ROW BEGIN
    DECLARE AvgSpeedofQuotation decimal(10,2);

    SET @AvgSpeedofQuotation  := (Select AVG((SpeedOfQuotation + SpeedofDelivery + ServiceQuality + Price) / 4) FROM md_companyrating WHERE Company_Id = New.Company_Id GROUP BY Company_Id);

   UPDATE m_company
	SET SupplierAvgRating = @AvgSpeedofQuotation
	WHERE Id = New.Company_Id;
END
$$
DELIMITER ;

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
(37, 1, 15),
(38, 2, 15),
(39, 3, 15),
(40, 8, 15),
(41, 9, 15),
(42, 10, 15),
(43, 11, 15),
(44, 12, 15),
(45, 13, 15),
(46, 18, 15);

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
(7, 11, 1);

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
  `Code` varchar(45) DEFAULT NULL,
  `About` varchar(1000) DEFAULT NULL,
  `SupplierAvgRating` decimal(10,2) DEFAULT NULL,
  `BuyerAvgRating` decimal(10,2) DEFAULT NULL,
  `AwardedQuotation` int(11) DEFAULT NULL,
  `SubmittedQuotation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_company`
--

INSERT INTO `m_company` (`Id`, `Name`, `Address`, `Domain`, `Reg_No`, `Code`, `About`, `SupplierAvgRating`, `BuyerAvgRating`, `AwardedQuotation`, `SubmittedQuotation`) VALUES
(1, 'ABC', 'Singapore', 'abc.com.sg', 'SG123456', 'ABC', NULL, '0.00', NULL, NULL, NULL),
(2, 'DEF', 'Singapore', 'def.com.sg', 'Sup12345', 'DEF', NULL, '0.00', NULL, NULL, NULL),
(3, 'AAAAA', '', '', '11111', '', NULL, '0.00', NULL, NULL, NULL),
(4, 'BBBBB', '', '', '22222', '', NULL, '3.39', NULL, NULL, NULL),
(5, 'CCCCC', '', '', '33333', '', NULL, '0.00', NULL, NULL, NULL),
(6, 'ddddd', '', '', '44444', '', NULL, '0.00', NULL, NULL, NULL),
(7, 'EEEEE', '', '', '999999', '', NULL, '0.00', NULL, NULL, NULL),
(8, 'RRRR', '', '', '7777', '', NULL, '0.00', NULL, NULL, NULL),
(9, 'tttt', '', '', '8888', '', NULL, '0.00', NULL, NULL, NULL),
(10, '1', '', '', '1', '', NULL, '0.00', NULL, NULL, NULL),
(11, 'mrit', '', '', '123456789a', '', NULL, '0.00', NULL, NULL, NULL),
(12, 'dsfasdf', 'sfgdfsgsdfg', '', '123456789c', '', NULL, '0.00', NULL, NULL, NULL),
(13, 'dsafsd', '', '', '123456789x', '', NULL, '0.00', NULL, NULL, NULL),
(14, 'dfsd', '', '', '245345345a', '', 'fadsfasdfa', '0.00', NULL, NULL, NULL),
(15, 'mr it', '', '', '891263456a', '', 'bbb', '0.00', NULL, NULL, NULL),
(16, 'MM', '', '', '963258741q', '', 'dfasdfasdfasdfa', '0.00', NULL, NULL, NULL),
(17, 'Cititech Industrial Engineering Pte Ltd', '113 Neythal Road?Singapore 628600', '-', '-', '-', 'About\nCititech Industrial Engineering Pte Ltd, was founded in 1994 by Mr Siew Y.F . Cititech Industrial Engineering is a metal fabrication and machine shop that has been producing high quality metal products for over 20 years. Majority of our business has been producing customise products based on customers drawings and specification, but they do sometimes provide us with ideas and we are able to help them develop it into drawings and products.\n\n\nCompany\nWe started off with a rented factory in Jurong having a floor space of 2,500 sq ft and 5 staffs. In 1997, our company shifted into a larger premise of 9,000 sq ft at Woodlands and expanded our workforce to 20. In August 2001, we moved to our current premise, 113 Neythal Road with a 58,000 sq ft floor space and with a workforce of 40+ personnel.\n\n\nCapabilities\nSince 1994, we have been fulfilling our aim of being a One-Stop Manufacturing Center for sheet metal fabrication products. Cititech Industrial have invested heavily in machines an', '0.00', '0.00', 0, 0),
(18, 'Iron-Man Fabrication Pte Ltd', '9A Lok Yang Way, Singapore 628628 ', '-', '-', '-', 'IRON-MAN FABRICATION PTE LTD SINGAPORE\nWe Specialise In Custom Fabrication Of A Wide Range Of Stainless Steel Products\nOur company specialises in custom fabrication of a wide range of stainless steel products to cater to our customer?s requirements. Our management personnel and fabrication team are equipped with many years of related experience, and we are committed to provide a total quality package in ensuring competitive, functional finished products to all our customers.\nOur Products Range From:\n- Stainless Steel Fabricators\n- Electronic Industries\n- Engineering Works\n- Hospital Equipment\n- Kitchen Equipment\n- Laboratory Furniture\n- Stainless Steel Fabricators\n- Steel Fabricators\n- Trolleys\nView our Gallery for past stainless steel fabrication projects.', '0.00', '0.00', 0, 0),
(19, 'Sin Peng Engineering Pte Ltd', 'No.8 Woodlands Walk, Singapore 738397', '-', '-', '-', 'Sin Peng Engineering was established since 1980. We are specialised in Sheet Metal Fabrications, Outdoor and Indoor Cabinets, Casings, electronic Switchboards, Control Panels and customization to customers\' specification. We are an ISO certified company, giving our customers\' quality assurance and confidence.Product and services:\n- Steel Metal Fabrication and Enclosures\n- Electric Switchboard Casting Cabinets\n- Aluminium and Stainless Steel Fabricators\n- Indoor and Outdoor telecommunication Cabinets\n- Semiconductor Equipment\n- Electrical and Control Panels\n- Precision Sheet Metal Works\n- Machine Covers\n- Battery Racks\n- Subracks, TraysStrength and Expertise:\n- CAD / CAM Design\n- Laser Cutting Services\n- CNC Metal Punching\n- Bending & Welding\n- Metal Stamping & Pressing\n- Powder Coating\n- Screen Printing\n- EngravingSin Peng Engineering?s vision and values ? Commitment to Knowledge Training, Information Technology and Market-oriented mindsets. Our staffs are well trained with skill sets ', '0.00', '0.00', 0, 0),
(20, 'Sinya Industries Pte. Ltd.', '14 Senoko Cres, Singapore 758268', '-', '-', '-', 'SINYA INDUSTRIES specializes in the following business areas:\n\nComplete lift bare cage, landing door, and car door fabrications\nManufacturing of lift components and parts, including, landing jambs, hall position lanterns/indicators, hall call push buttons, car operating panels,  lift supervisory panels etc\nManufacturing of lift motor room and lift shaft mechanical parts. This includes custom made structural supports and shaft bracketries, landing sills, etc\nDesign and build of new lift cage and interior finishes\nUpgrading, inclusive of design, for existing lift cages and interiors\nDesign and construction of under truss of escalator/travelator with new cladding in the form of sheet metal or alternative finishings.\nIn addition, SINYA INDUSTRIES also provides the following services\n\nFabrication for all manners of steel structures with sheet metal claddings\nProvision of job-shop and cutting services, CNC turret punching, cutting and bending for all kinds of sheet metal finishes\nCustom made', '0.00', '0.00', 0, 0),
(21, 'M Metal Pte Ltd', '5 Kian Teck Drive, Singapore 628822', '-', '-', '-', '-', '0.00', '0.00', 0, 0),
(22, 'Alliance Panels Pte Ltd', '50A Sg Kadut St 1   Singapore 729353', '-', '-', '-', 'As a pioneer and leading manufacturer of sandwich panels, Alliance Panels Pte Ltd provides a comprehensive range of solutions and quality products for all construction and industrial needs.', '0.00', '0.00', 0, 0),
(23, 'Anderco Pte Ltd', 'No.3 Tuas View Circuit, LBG Building, Singapo', '-', '-', '-', 'At Anderco, we always strive to add value to the projects we undertake. By working closely with our clients to understand their exact requirements and tapping on our vast experience in this field, we seek to provide the best possible service. As a turnkey partner, we see all projects through to completion and beyond through services such as ordering fir-out works, after sales repair and maintenance service.\n\nHistory\nAnderco, previously LBG-NGT Corporation, is Singapore?s market leader in temporary housing and facilities. LBG-NGT was incorporated in 2003 with the merger of LBG Container (S) Pte Ltd and NGT Engineering & Construction Pte Ltd. LBG Container (S) Pte Ltd was a container depot operator specialising in container repairs and their conversion to temporary facilities. NGT Engineering & Construction was engaged in the prefabrication of modular housing. The merger brought together over 20 years of combined experience in the design and build of prefabricated and containerised tempo', '0.00', '0.00', 0, 0),
(24, 'Applied Cutting Technology Pte Ltd', '13B Tuas Road, JTC Tuas Road Terrace Factory,', '-', '-', '-', 'In 1988, Applied Cutting Technology Pte Ltd pioneered laser cutting in Singapore when it commenced business at Jurong Industrial Estate. We are now located at Tuas Road with bigger production facilities and a brand new machine to cater to the new laser technology.\n\nToday, the company not only provides laser cutting services, but also sheet metal fabrication services. Our customers are from a very diversified range of industries that includes electronic/electrical, automotive, mining, machinery/equipment fabrication, shipbuilding/marine services, interior designing, educational products, furniture and signage among many others.\n\nWe are associated to the Flexmech Group of companies, the solutions people in the machine tool industries.', '0.00', '0.00', 0, 0),
(25, 'Lee Metal Group Ltd', 'No. 7 Tuas Ave 16, Singapore 638934', '-', '-', '-', 'A public company since 4 April 2000 and incorporated in Singapore in December 1982\nLee Metal Group is an established distributor and fabricator of steel products as well as a recognized international trader of steel and steel related products in the region. Lee Metal Group employs over 200 employees and has presence in Singapore, Thailand, Malaysia, Australia, and Hong Kong.', '0.00', '0.00', 0, 0),
(26, 'Fine Sheetmetal Technologies Pte Ltd', '12 Tuas Link 1, Singapore 638595', '-', '-', '-', 'Fine SheetMetal Technologies Pte Ltd is a leading manufacturing solutions provider founded since 1979. We are ISO 9001 (since 1995) and 14001 certified (since 2002). We specialize in precision sheetmetal fabrication and machining services. ', '0.00', '0.00', 0, 0),
(27, 'G-Tech Metal Pte Ltd', '64 Woodlands Ind. Park E9, Singapore 757833', '-', '-', '-', 'G-Tech Metal Pte Ltd was founded in the 1990s to respond to a need for quality services in the local engineering and construction industry. With more than twenty years of experience today, G-Tech Metal Pte Ltd has grown to become one of the leading companies in Singapore specialising in the design, fabrication and installation of structural steel, metal and concrete work.', '0.00', '0.00', 0, 0),
(28, 'Subweld Engineering & Fabrication Pte Ltd', '19 Tuas Ave 4, Singapore 639369', '-', '-', '-', 'With more than 30 years of expertise and network in architectural fa?ade industry, SWE has positioned as an institute solution to the outsourcing of Sheet Metal fabrication coupled with Mild Steel Brackets and secondary structure as well as Stainless Steel fabrication.\n\nTogether with the integration of excellent facilities and well-trained dedicated personnel, SWE has excelled to meet its customers? expectations, requirements and specifications', '0.00', '0.00', 0, 0),
(29, 'Flows Ong Pte Ltd', '136 Woodlands Ind. Pk. E5 Singapore 757855', '-', '-', '-', 'Flows Ong was established in 1988 and we have run our business for close to 2 decades. We specialize in employing today\'s most advanced waterjet cutting and cleaning technology to meet the needs of our customers in a wide variety of industries. We are an approved jobshop for provision of high pressure waterjet cutting and cleaning services (ISO 9001: 2008).\n\nCorporate Commitment\nAt Flows Ong Pte Ltd, quality, service and value are the principles by which we have run our business for close to 2 decades. We specialize in employing today\'s most advanced waterjet cutting and cleaning technology to meet the needs of our customers. Our client list includes numerous companies in a wide variety of industries. We are an approved jobshop for the provision of high pressure waterjet cutting and cleaning services. (ISO 9001: 2008).\n\nFlows Ong Pte Ltd has the ability to integrate totally into your existing manufacturing system. When you approach Flows Ong Pte Ltd as nothing more than an extension or', '0.00', '0.00', 0, 0),
(30, 'Shi Huat Hardware Pte Ltd', '69A Joo Koon Circle Singapore 629085', '-', '-', '-', 'Established in Singapore in 1980, Shi Huat Hardware Pte Ltd is founded by Mr. Lim Chong Hock as a small hardware shop that operates a warehouse space of 400m2. Through our excellence and perseverance, we are now a leading independently-owned industrial marketing organization with more than 14,000m2 of facilities located in Joo Koon Circle. We are one of the largest metal cutting specialists for steel plates products in the country, keeping our stocks to a level of 70,000 to 80,000 tonnes of steel. Thus, we can provide the needs of our customers locally and in other parts of Asia, from small to large quantities of all types of metal cutting services.Shi Huat aims excellence and customer satisfaction by putting all our dedication and hardwork on our craft. Shi Huat is now known as a one-stop procurement centre and a centre for solutions where Metal Steel is concerned.The following are some of the products and services we offer:\n? Metal Cutting Service\n? Skids Fabrication Service\n? Metal ', '0.00', '0.00', 0, 0),
(31, 'Thong On Industries Pte Ltd', '11 Gul Street 2 Singapore 629296', '-', '-', '-', 'Thong On Industries Private Limited was established in 1990 and has over 20 years of experience in the engineering sector.\n\nThong On specializes in machining works and customized metal fabrication for various industries such as electronics, construction and chemical etc. Located at 11 Gul Street 2 with a dedicated workforce of over 40 employees, Thong On has a reputation of providing quality services and within budget to satisfy the demands of our customers.', '0.00', '0.00', 0, 0),
(32, 'Hock Tiong Ann Hardware Industries & Co', '29 Tuas Avenue 8, Singapore 639244', '-', '-', '-', 'Hock Tiong Ann Hardware Industries & CO located in Singapore is dealing with Manufacturing of Machinery, Equipment & Apparatus. \n\nThe Company provide a Metal Cutting Services, trading in hardware products, steel bars, steel plates, stainless steel products and others.', '0.00', '0.00', 0, 0),
(33, 'JSL Manufacturing Pte Ltd', 'No 37, Kallang Place Singapore 339165', '-', '-', '-', 'JSL IS AN ESTABLISHED ENGINEERING COMPANY\nwhere we emphasize in quality product and service to our valued customers since 1991. The business started out in design and fabrication of auto electro-plating and chemical cleaning line. We have shifted our direction to chassis and system fabrication, supporting the semiconductor industry for IC Burn-In-Board and provide engineering solution to reputable pipe fitting suppliers. Over the years, we have extend our services and support customers from other industries including oil and gas, water treatment, marine, energy, pharmaceutical, chemical and food&Beverages.\n\nRead more\n\nOther than machining and sheet metal fabrication department, we have variety of CNC equipment which includes laser engraving, wire-cut, EDM, autolathe and bandsaw cutting. We are equipped to cater specialized processes such as HVOF, lapping, surface grinding and sand blasting.\n\nWe have a strong engineering team to work on development of new process, product implementation', '0.00', '0.00', 0, 0),
(34, 'Leong Seng Metal Pte Ltd', '48 Toh Guan Road East, #03-119 Enterprise Hub', '-', '-', '-', 'Established in 1990, Leong Seng Metal has a vast experience in metal fabrication, providing a wide range of services and products customized to customers need.\nFrom simple cutting and bending of metal pieces to building of platforms and gates for factories, Leong Seng Metal has supported many individuals, companies and organizations in meeting their needs and goals.\n\nThere is no limit to our product range or the type of industries we serve. As long as there is a need for a metal product, we are ready to be there to serve you.', '0.00', '0.00', 0, 0),
(35, 'HG Metals Pte Ltd', '15 Jurong Port Road Singapore 619119', '-', '-', '-', 'HG Metal Manufacturing Limited (?HG Metal?) was founded in 1971 as a small retailer of steel products. Today, we are a premier steel stockist and manufacturer with close to 800,000 sq ft of state-of-the-art warehousing facilities in Singapore.\n\nWe offer a ?one-stop? end-to-end solution for our customers, ranging from distribution services to downstream and value-added activities. Equipped with strong sourcing capability from an extensive network of suppliers from countries such as China, Japan, Korea, Turkey, Russia, Ukraine, and other Eastern European countries, we carry more than 3,000 types of steel products, of various dimensions and for a wide range of industries and applications. We also offer customised steel solutions for diversified industries including energy, transportation, marine, electronics and other sectors.\n\nThrough our three main business units ? HG Distribution, HG Construction Steel and HG Industrial Steel & Services, we provide:\n\nOne-stop supply and just-in-time pr', '0.00', '0.00', 0, 0),
(36, 'Quick Master Techniques Pte Ltd', '11 Tuas View Loop Singapore 637677', '-', '-', '-', 'Quick Master Techniques Pte Ltd (?QMT?) was established in Singapore in 2004. QMT employs a total number of more than 20 employees in Singapore.\n\nQMT is specialized in the following areas:\n- Design, fabricate and supply CNC retrofit and custom made machines for both Gas & Plasma Machines; \n- Engineering, metal fabrication works, gas piping and CNC milling;\n- CNC tube panel welding; and\n- Providing high quality profile cutting services. \n\nQMT manufactures a full product line of CNC Gas and Plasma Machines and offers expert after-sale services.\n\nOver the years, QMT has gained many years of project involvement experiences with major shipyards such as Keppel Fels and PPL in building of Class Jack-up Rigs, Semi-submersible Drilling Rigs and etc. \n\nWhether you desire a new CNC Oxygen, Plasma Cutting Machine, or retrofit your current flame cutting machine to your own customized machine, we are confident that we can produce an integral solution that meets with your requirements and budget. Our', '0.00', '0.00', 0, 0),
(37, 'Richinn Technology Pte Ltd', 'No.3 Joo Koon Crescent, Jurong Industrial Est', '-', '-', '-', 'Richinn Technology is formed in 2004 to provide enhanced business solution for sheet metal processing to various industries. Our business strategy is to deliver high quality sheet metal parts within the shortest turnaround time.\n\nThis will help to improve productivity for our customers, thus cost saving.\n\nWe have leveraged on the state-of-the art technology in managing its operations while providing top-notch customer care. With the investment of the state-of the-art laser cutting machines and waterjet cutting machine, Richinn Technology is not only able to meet our customers\' needs better, but helps to increase prospective customers\' workflow & productivity.\n\nAs a result, our customers will be able to offer their clients high quality finished products & timely delivery at reasonable price.', '0.00', '0.00', 0, 0),
(38, 'Seng Leong Project Pte Ltd', '12 Tuas Basin Link, Singapore 638764', '-', '-', '-', 'Seng Leong Project Pte Ltd has come a long way since its incorporation in 2001. Over the years, we have proven ourselves to be one of the recognised leading steel structure fabricators in Singapore.\n\nToday, Seng Leong Project have the capacity to take on major projects from diverse field in public, institution, housing and commercial building sectors .\n\nWe house a wide range of machineries  for steel fabrication and metal fabrication, and are capable to provide wide range of services. With our strength, we are able to cater for all yours need in process, design and quality outsourcing arrangement to provide ancillary needs in steel structures industry.\n\nOur Beliefs\n\nTo Provide excellent customer services and to attain customers utmost satisfaction and requirement\nContinuous advancement with technology for quality and productive works\nTo Offer excellent and cost effective solutions to customers\nOur Strength\n\nOne stop for all engineering and steel fabrication solutions\nDirect in house ex', '0.00', '0.00', 0, 0),
(39, 'Sin Hong Huat Aluminium (Pte) Ltd', '22 Defu Lane 7, Singapore 539343', '-', '-', '-', 'Sin Hong Huat Aluminium (Pte) Ltd. was established in 1976, with more than 39 years in aluminium business. \n\n Stockists & Agents\n\n Wholesales & Retails\n\n Import & Export\n\n Sales & Distribution\n\n Aluminium Service Center', '0.00', '0.00', 0, 0),
(40, 'Sing Chow Metal Works (Pte) Ltd', '56 Defu Lane 1 Singapore 539497', '-', '-', '-', 'Sing Chow Metal Works (Pte) Ltd specializes in Laser Cutting, Turrect Punching, CNC Bending, Metal Fabrication, Stainless Steel Fabricators, Hinges, Metal Cutting Service, Steel Bar Bending & Cutting Service, Sheet Metal Specialties, Metal Bending Service, and Steel Errectors.', '0.00', '0.00', 0, 0),
(41, 'Siong Ann Engineering Pte Ltd', '61 Joo Koon Circle, Singapore 629074', '-', '-', '-', 'Established since 1988, Siong Ann Engineering Pte Ltd started it?s business being a steel structures fabrication workshop and specialising in conveyor systems, has over the years evolved and grow steadfast together with current markets demands. We are now an industry leader and specialist in the theatre and studio engineering, bulk-handling systems, steel structural works, design and build company. We are located in 61 Joo Koon Circle, with a manpower of up to 80 staff, having our own in-house design and project management team, equipped with a rich experience in mechanical and electrical engineering, fabrication and assembly capabilities, site installation experience, logistics planning and delivery, system testing and commissioning, system maintenance, logistics management, spares supplies, storage and handling facilities.', '0.00', '0.00', 0, 0),
(42, 'Soon Huat Heng Metal Industry', '69B Joo Koon Circle, Singapore 629086', '-', '-', '-', 'Soon Huat Heng Metal Industry started her business in the 1980s. We were then located at Penhas Road where we first started out as an oxygen acetylene cutting service company. As the industry evolved, our company also engaged in plasma cutting services. Our company grew and we decided to further diversify our business where we subsequently moved to Ang Mo Kio Industrial Park. We started welding consumables supplies in the 1990s. \n\nWe first brought in a Taiwanese brand Kuang Tai Metal Industries as our welding electrodes manufacturer. Later we were awarded as the sole agent for AvestaWelding welding consumables in Singapore. We also began to supply welding, plasma cutting and portable gas cutting machines. Our technical department had tested out a couple of brands in the market and decided to concentrate on a few brands, inclusive of HeroPower Technology and Wel & Cut.\n\nDue to the lack of factory space for our expanding business, we shifted from Ang Mo Kio Industrial Park to our present', '0.00', '0.00', 0, 0),
(43, 'Sunny Metal & Engineering Pte Ltd', '35 Changi South Ave 2, Sunny Industrial Build', '-', '-', '-', 'Sunny metal & engineering was founded in 1974 with the simple cutting tools and few workers, to fabricate sheet metal products largely demanded by the construction industry. Over the year, it has grown to become one of the leading companies to provide sophisticated solutions for electronic consoles, 19? racks, wall mounted cabinets, and many other types of high-end enclosures including those with special climate and/ or noise control. To date, we have built up a strong team of experienced engineers who are able to work independently and closely with our customers to solve any designs issues. Our skilled workforce, supported by a solid manufacturing infrastructure of advance machineries and equipments, are able to handle the most challenging sheet metal metal production. Our relationship with our suppliers and business partners are strongly founded on long term trust, and they have been contributing significantly to our quality and short delivery schedule committed to our customers. Mos', '0.00', '0.00', 0, 0),
(44, 'Van Joo Industrial Engineering Pte Ltd', '7 Tuas View Loop, Singapore 637673', '-', '-', '-', 'Van Joo Industrial Engineering Pte Ltd is renowned for its quality and designs in its products and services. The distinctive standard of its products has enabled Van Joo to steadily meet and achieve industry standards.\n\n? Cable Support System\n? Cable Ladder & Accessories\n? Perforated Cable Tray & Accessories\n? Cable Trunking & Accessories\n? Channels\n? Welding & Rolling Services\n? Cutting & Bending Services\n? Turret Punching Services\n\nVan Joo?s operations include raw materials like:\n- hot-rolled mild steel\n- aluminum\n- stainless steel\n- pre-galvanized steel\n\nVan Joo Industrial Engineering Pte Ltd also provides finishing services like electroplating, hot-dip galvanizing, special painting, and powder coating.\n', '0.00', '0.00', 0, 0),
(45, 'Zoom Engineering Pte Ltd', '68 Senoko Road, Singapore 758128', '-', '-', '-', 'Running Since 1993\nZoom Engineering Pte. Ltd. has been established in 1993, since then we are growing substantially throughout the years.\n\nThe core businesses of Zoom Engineering Pte. Ltd. are manufacturing, fabrication and designing of steel products.\n\nOur Professionalism\nZoom Engineering Pte. Ltd. is the preferred vendor of many companies, dealing with fabrication and manufacturing of Enclosure Sets, Canopies, Steel-based frames, Acoustics Attenuators, Exhaust Mufflers, Fuel Storage Tanks, Control Panels and customized components.\n\nTo-date, we have expanded significantly in scale and resources to provide better service and support to our customers. We have our in-house Laser Cutting, CNC Plasma, Punching and Milling, Bending, Plate Rolling and Certified Welders to support the industries.\n\nOur team of engineers work hard together to provide each of our trusted partners and clients the best output that no other engineering companies can offer.', '0.00', '0.00', 0, 0),
(46, 'KJW Fabrication & Services Pte Ltd', '17B Joo Yee Road, Singapore 619203', '-', '-', '-', 'Company Profile\n\nKJW Fabrication & Services Private Ltd was established in 16th November 1993 with the goal of providing customers and the community as an innovative and value oriented manufacturer.\nWe have a group of talented and skilled team to meet the needs for high precision engineering products. Our responsible, dedicated and customer oriented work force is the key in keeping existing customers at the same time attract new ones.\n\nThis is to upkeep our motto:\" WE DO OUR BEST\".\n\nAbout Us\n\nWe have vast experience in the fabrication, machining, welding and repair industries, giving our customers the edge in today\'s fast paced environment.\n\nWe have regular clients that trust us for our good quality products and speedy response to their needs.\nDoing our best is the main reason in our survival in this market. We believe in mutual trust with our clients and give every customer the special attention they require from us.\n\nOur machining capabilities have further strengthened in the recent ', '0.00', '0.00', 0, 0),
(47, 'Leong Jin Corporation Pte Ltd', '11 Benoi Crescent, Jurong Industrial Estate, ', '-', '-', '-', 'An Elite Provider of Steel\n\nFounded in 1971, Leong Jin Corporation has matured from being a purveyor of steel to becoming a premier name within the global steel industry. We pioneered the expertise of acquiring a comprehensive range of special steel and strive for prompt, efficient deliveries. Leong Jin Corporation is now a specialist, a one-stop procurement centre, and a place for special steel solutions.\n\nWidening our product offerings to include an extensive range of services like forging, state-of-the-art cutting and pre-machining, we believe in providing our customers convenience with a one-stop-shop solution. Together with our business partners and customers, we support a strong focus on quality control and safety at all times. Leong Jin Corporation has also achieved International Organization for Standardization (ISO) certifications, namely ISO 9000:2008, ISO 140001:2004 and OHSAS 18001:2007.', '0.00', '0.00', 0, 0),
(48, 'Leng Huat Steel Pte Ltd', '10 Gul Road, Singapore 629342', '-', '-', '-', 'Leng Huat Steel Supplies was incorporated in 1983, setting itself as a one-stop sheetmetal service centre. Our company focuses on steel forming and metal works tailor-made to clients? specifications suitable for use in construction, shipbuilding, mining and other engineering industries.\n\nWe have since expanded our operations to include Leng Huat Steel Pte Ltd as our subsidiary in 2009.\n\nTogether, the Leng Huat Steel Group has for the past 30 years and longer, established a reputation for excellent quality and fast completion of job requests and projects with our clients.\n\nOur factories house a number of high-performance CNC machinery including 3-pin roller, press brake bender, sectional roll and guillotine shear to process and value-add to a wide range of sheet metal engineering products for various heavy industries. These are suitable for a multitude of metal types, up to 50mm thickness and 6.1 metres (20 feet) length plate sizes. Materials we deal with include but are not limited to ', '0.00', '0.00', 0, 0),
(49, 'Joo Lee Engineering Pte Ltd', '42 Sungei Kadut Street 1, Singapore 729346', '-', '-', '-', 'Joo Lee Engineering Works is founded in 1978 however, we have shift our operation to Joo Lee Engineering Pte Ltd in 2014. Joo Lee Engineering Works manufactures high quality furnishings and equipment that are economically and ergonomically friendly. Our specialization lies in metal forming, fabrication, machining, welding and other repair industries. With our wealth of experience and expertise, we strive to complete projects in the shortest time frame possible. \n\nWe take pride in our team of motivated staff, who in turn create products of excellence to fit the needs of each individual customer. Aside from manufacturing products like stainless steel tables to certified offshore containers and cable bridges, we also provide modification services for machines, to maximize production while saving cost. \n\nMake an enquiry with our friendly staff today and bring life to your engineering blueprints.', '0.00', '0.00', 0, 0),
(50, 'Formach Asia Pte Ltd', '514 Chai Chee Lane, #03-12, Singapore 469029', '-', '-', '-', 'Formach Asia was founded in Year 2000 with a Commercial Office located in Singapore and a Manufacturing Plant located in Southern Johor, Malaysia.\n\nFormach Asia provides sheet metal, precision mechanical structure fabrication, CNC component machining, full OEM electro-mechanical assembly services and solutions to customers in High Mix ? Low Volume manufacturing which essentially targets the market Leaders in the equipment and machine makers in the industries.\n\nOur valued clients are largely from Europe and the US with operating subsidiaries and IPO in Asia. Leveraging on the experiences of our people, market exposure and technology knowhow, we are well positioned to understand and meet the needs of these MNC clients.\n\nWe are able to maintain cost competitiveness as majority of the manufacturing is carried out in-house thus enabling us to better control our Quality and Delivery. Our manufacturing plant is also strategically located in Johor, Malaysia to take advantage of Low Cost.\n\nOccu', '0.00', '0.00', 0, 0),
(51, 'Ong Kian Hin Iron Works Pte Ltd', '43 Senoko Way, Singapore 758054', '-', '-', '-', 'Ong Kian Hin Iron Works specializes in sheet metal customisation and fabrications for industrial and residential sectors. With many years of experience, our business has expanded over the years to provide full engineering support to meet the diverse needs of end consumers and industrial clients.\n\nToday, our company has a team of experienced and highly skilled fabricators, working to provide our clients with a wide range of metal and iron engineering related works and products.\n\nTo keep abreast of technological advancement, we have invested heavily in advanced equipment over the years. Our equipment include: CNC punching machines, CNC bending machine, CNC laser cutting machine.', '0.00', '0.00', 0, 0),
(52, 'Pve Metal Engineering Pte Ltd', 'Blk 2021 Bt Batok St 23 #01-216 Singapore 659', '-', '-', '-', 'PVE Metal Engineering Pte Ltd (PVE), incorporated in Singapore in year 2005, is totally committed to our customers? needs by providing products and services in meeting or exceeding their expectation in both quality and manufacturing standards.  With the present and future highly competitive nature of this segment of the market, we have created several systems, one of which is our Flexible Manufacturing System (FMS), to better manage our growth and meeting customers\' constant changing demands.\n\nWith FMS, we manage to serve our clients better in terms of lower cost on various types of product manufacturing with high complexities.  In addition, we strive to provide technical assistance, solutions, processes and material management expertise to meet clients? requirements for product quality and on-time delivery with extremely short lead time allocation.\n\nWhere there is a need for process automation, we work with our clients\' operational and engineering teams to design, build, test and comm', '0.00', '0.00', 0, 0),
(53, 'AME International Pte Ltd', '3 Joo Koon Circle, Singapore 629032', '-', '-', '-', 'AME International Pte Ltd is a leading steel engineering company in Singapore. We specialise in Precision CNC Machining, Design, Fabrication, Assembly and Installation of structural steel works for the Shipbuilding, Oil & Gas and Construction industries. Besides these, we also provide sheet metal/ precision structural steel works for the Semi-con and other related Business Sectors.In August 1996, the business started as Automated Machinery & Equipment. It was then privatised as a limited company in April 2006 and renamed as Automated Machinery & Equipment Pte Ltd. After further developments, both in our range of activities and continual increase in turnovers, the company in September 2007 was then incorporated with additional capital to become what it is known as today.We are certified for both ISO 9001 and OHSAS 18001. As your business partner, it is our aspiration to provide you with products / services that will surpass your most stringent specifications.', '0.00', '0.00', 0, 0),
(54, 'Metform Industries Pte Ltd', '23 Woodlands Terrace, Singapore 738472', '-', '-', '-', 'Metform Industries Pte Ltd was established in 1982 . The main activity then was the fabrication of sheet metal products metal door frame. The objective was to capitalize on the introduction of metal door frame to the HDB projects.\n\nMetform was listed as one of the approved supplier on the HDB List of  Approved Supplier in 1993. Details of approval can be viewed @ http://www.HDbuilders.com\n\nTo sustain growth , Metform Industries diversified into the industrial sector market in 1987 by investing in sophisticated machineries and offering our services to companies like Uniysis, Makino, Fujitec and etc. for the production of their precision sheet metal parts and components\n\nIn 1992 Metform Industries expanded into the private building sector offering a range of fire rated products such as Hoppers and fire rated Doors.\n\nIn 1997 Metform Industries diversified into the manufacturing of metal cable support system complying with Singapore Standard SS 249 for Steel Cable Trunking and Accessories.', '0.00', '0.00', 0, 0),
(55, 'Premplas Technologies Pte Ltd', '2 Woodlands Sector 1, #03-18, Woodlands Spect', '-', '-', '-', 'Premplas Technologies is a leading one-stop engineering solutions company in Singapore.\n\nFounded in 1996, we have rapidly gained customer confidence in our products and services and has thus developed and grown into a comprehensive one-stop engineering solutions company specializing in Precision Machining & Automation, Precision Sheet Metal & Frame Structure, Engineering Plastics Fabrication, Thermoplastic Welding and Facilities Maintenance. Our production facilities in Singapore have an area of 50,000 sq ft.\n\nManaged and led by a team of experienced and highly dedicated people coupled with an efficient and skilful workforce with our relentless efforts at achieving high quality through constant training and upgrading of machineries. Premplas Technologies has become a recognized name for superb quality and excellence in the engineering industries. ', '0.00', '0.00', 0, 0),
(56, 'Y.H.H Manufacturing Pte Ltd', '15 Gul Link, Singapore 629385', '-', '-', '-', 'Y.H.H Manufacturing was established in 2008. We are a technology driven manufacturing business that is committed to both product and service quality.\n\nOUR MISSION\nTo be a Total Solutions provider for all the Metals needs that deliver beyond expectations.\n\nOur team of elite engineers coupled with their outstanding skills and experience has enabled us to provide our clients with customized cost - effective solutions that go a long way.', '0.00', '0.00', 0, 0),
(57, 'Sunlink Engineering Pte Ltd', '6 Kian Teck Crescent, Singapore 628873', '-', '-', '-', 'Sunlink Engineering Pte Ltd helps Metal Fabricators Lower their Costs, Improve Product Quality, and Save Time on their Projects. Established since 1993, we provide a one-stop Metal Fabrication Service, where our clients tap on our wide range of Machines and Skilled Operators to Fabricate their Metal projects.\n\nSome of our services are: Plate Rolling, Structural Rolling, Bending, CNC Plasma Cutting, Laser Cutting and more!\n\nOur Clients are both large and small Contractors from Marine, Petrochemical, Construction and Offshore industries; such as Keppel FELS, Keppel Shipyard, Ley Choon, Eng Lee, Hiap Seng and KTC.\n\nThey choose us because we are able to provide them multiple quality services under one roof at reasonable prices. This allows them to save on infrastructure, defect/quality risk, transportation and time costs.\n\nWith our Machines and services, our clients can also confidently offer more value-add services for their own clients.\n\nSunlink Engineering Pte Ltd is certified Internati', '0.00', '0.00', 0, 0),
(58, 'Lew & Lee Engineering Pte. Ltd', '8A, Tuas Avenue 13, Singapore 638981', '-', '-', '-', 'Lew & Lee Engineering Pte Ltd was established in 1980 and has been a specialist one stop provider of CNC Metal Plates Profile Cutting Services since 1996.\n\nCompanies such as structural steel fabrication, constructions, heavy machines manufacturing, shipbuilding, oil & gas and other related industries have been continuously engaging to our services, as our services help our customers enhancing their productivity, time and costs.\n\nIn order to meet our customer expectations and improve in quality, Lew & Lee Engineering Pte Ltd is ISO 9001 and Bizsafe 3 certified since 2012 and a roadmap to ISO 14001 and Bizsafe 4 is in a process of planning.\n\nOur Company Setup:\n\nCNC Oxy-fuel Cutting Machines: 4 Units\nCNC HD Plasma CNC Cutting Machines: 3 Units\nCNC Oxy-Fuel/Plasma Pipe Cutting Machines: 1 Unit\nCNC Metal Drilling Machines: 1 Unit\nPneumatic Metal Tapping Machines: 1 Unit\nPortable Electronic Marking Machines: 1 Unit\nOur Capabilities:\n\nMax. plate size for cutting: 10ft x 40ft plate size\nMax. p', '0.00', '0.00', 0, 0),
(59, 'ENV-PRO Tech Engineering Pte Ltd', '12 Pioneer Sector 1, Singapore 628423', '-', '-', '-', 'Welcome to ENV-PRO TECH ENGINEERING PTE LTD\nA solution provider for Oil and Gas, Energy and Process Industry. We have the capability and resources to undertake challenging projects with International Oil Companies and Contractors world-wide.\n\nEnv-Pro Engineering Tech Pte Ltd was incorporated in 2004 after taking over the fabrication workshop and machinery of an existing local steel fabricator, which provides engineered equipment and integrated engineering services primarily to both Onshore / Offshore Oil & Gas and Process Industry as well as the General industry.\n\n \nTK Engineering Pte Ltd\nIn March 2012, TK Engineering Pte Ltd became the subsidiary of Env-Pro Tech Engineering Pte Ltd, it specialises in metal machining and service & repair of mechanical part.\n \nOur Capabilities\nEnv-Pro Tech has the capability to offer complete proven products and services and individual cost effective solutions and engineering services to meet customer\'s specific operating requirements.\n\nEnv-Pro Tech has', '0.00', '0.00', 0, 0),
(60, 'Farron ship repair & engineering pte ltd', '8 TUAS LINK 2, SINGAPORE 638557', '-', '-', '-', 'Farron ship repair & engineering pte ltd (Singapore) has been providing custom metal fabrication services & engineering solutions for various industries since 1990. We pride ourselves at being efficient and professional in meeting the different demands of our clients.\nMilestones\n1990 - Farron ship repair & engineering pte ltd has been incorporated in Singapore since 1990. \n                       It has since served numerous satisfied clients, providing them with custom engineering solutions.\n2002 - Became a statutory member of the Singapore Business Federation.\n2011 - Attained BizSAFE level 3\n2011 - Attained BizSAFE level 4\nMission statement\nOur mission is to provide quality services that consistently meet our clients\' needs and expectations through excellence in our operations. We aim to deliver fast and efficient engineering solutions to all our clients.\n\nSafety\nThe company believes in establishing and providing a safe work environment, and participates regularly in safety programs &', '0.00', '0.00', 0, 0),
(61, 'Rolled Alloys Singapore, Ltd', '61 Tuas South Avenue 1, Singapore 637554', '-', '-', '-', 'Our Vision: Winning in the specialty metals business by creating excellence through our people.\n\nOur Mission: Exceeding the expectations of specialty metals customers worldwide to the mutual benefit of our people, customers and suppliers.\n\n\nRolled Alloys Singapore is a leading supplier for all your specialty alloy needs (nickel-based, stainless steel and titanium).\n\n\nWe were established in 2000 and started operating as a sales office servicing all countries in the Asia Pacific, Australasia, India and Middle East Regions.\n\n\nIn November 2007, we opened a stocking and processing facility in the Tuas area on the far west side of Singapore. The facility was focused on stocking round bars and welding consumables of various grades.\n\n\nAfter various expansions over the years in both inventory and processing equipment, Rolled Alloys Singapore moved to its current facility in February 2014. Operating from Tuas South Avenue 1, Rolled Alloys Singapore?s current facility is 20,000 sq ft. Since openi', '0.00', '0.00', 0, 0),
(62, 'Systematic Engineering Pte Ltd', '27A Jurong Port Road, Blk 3, #01-39/40/41, Si', '-', '-', '-', 'SYSTEMATIC ENGINEERING PTE LTD was Established and Incorporated in Year 1975 and 1987 accordingly with Subsidiaries in Jiangsu ? Wuxi, China.\nSystematic (Wuxi) Engineering Co. Ltd\nNanjing Nanfeng Engineering Co. Ltd.\nOver the past 41 Years, our company had transformed from a Humble Mechanical Workshop into an Establishment which is capable of providing Engineering Designs, Fabrications and Constructions of various :-\n\nStorage Tanks,\nPressure Vessels,\nEquipment Process Modules / Skids,\nStorage / Mixing Tanks and Silos,\nNew Plant Design, Setup and Installation,\nPiping Fabrication,\nSteel Structure and Platforms,\nOffshore and Onshore Facilities,\nFood Process Handling Equipment,\nMaterial Handling Equipment.\nOur workshop is equipped with a wide range of Facilities consisting of:\n\n100 & 200 Ton Hydraulic CNC Press Brakes,\n16mm X 3.0m (L) CNC Power Shear,\n16mm X 3.2m (L) CNC Power Blender,\n3.0m X 12.0m (L) CNC Oxy-Acetylene / Plasma Cutting Machine,\n4.5m ? X 4m (L) 1000Amp Automatic SAW,\nTungs', '0.00', '0.00', 0, 0),
(63, 'Chong Fong Engineering Pte Ltd', '3 Tuas Ave 10, Singapore 639127', '-', '-', '-', 'About Chong Fong\nOur Founders Chong Fong was incorporated as partnership in 1976 by founders, Mr Khoo Chin Teng & Mr Ng Kok Sen, with S$18,000 capital. Through sheer determination & hard work, the company has grown into a multi million dollar enterprise, with footprints in Malaysia, Indonesia, China & Thailand.\n\nOur Philosophy\nOur growth has been build strongly based on our founders? winning philosophy reflected through the company?s name ???? , which means ?devotion? and ?success? in chinese. Devotion to our core values of honesty, trust, integrity, truthfulness & sincerity with our customers have been the key to our success.', '0.00', '0.00', 0, 0),
(64, 'Yan Shan metal Pte Ltd', '17 Tuas Avenue 4, Singapore 639368', '-', '-', '-', 'Incorporate in 1992, Yan San Metals Pte Ltd, is today, the market leader who can offer a range of Aluminium products and services that is unmatched in the industries.\n\nOur humble beginning as a leading stockist of aluminium alloy plates, extruded profiles and colour coated coils back by a wide array of inventories of various type of alloys, has growth and expanded into the manufacturing of Aluminium Honeycomb Core Composite Panel Systems. The honeycombs are available in a wide range of materials and cell configuration and are manufactured to customer specifications in tight tolerances.\n\nToday, we pride ourselves for being the only company in the Asia Pacific to have the cutting edge technology with State-Of-the Art manufacturing facilities of a complete aluminium honeycomb composite processing line and Friction Stir Welding capable of welding up to 5m x 12m plates.\n\nIn addition, we are the only company in Singapore to equip with a coil to coil, Colour Coating Line capable of coating a ', '0.00', '0.00', 0, 0),
(65, 'Kim Ann Engineering Pte. Ltd', '3C Joo Koon Circle, Singapore 629035', '-', '-', '-', 'Kim Ann Engineering Pte Ltd is a \"one-stop supply service centre\" offering a comprehensive range of specialty metals and related value-adding services such as metal cutting, sizing, machining (blanking, milling, grinding), and heat treatment.\n\nWe operate from four plant facilities in Singapore, coupled with more than 10 overseas service centres in ASEAN, China, and India. Our customer base consists of industrial players from the Electronics, Precision Engineering, Oil & Gas, and Aerospace/Defense segments.\n\nKim Ann is proud to be the leading Oil & Gas and Aerospace metal stock centre in Singapore with a strong market presence in Asia Pacific. Our sales extends to more than twenty countries world-wide.\n\nWe Offer\nProducts / Metal sales \nHeat Treatment services \nValue-added Processing services \nSupply Chain Management (SCM) services', '0.00', '0.00', 0, 0),
(66, 'Sin Cheong Engineering?(96) Pte Ltd', '132 Pandan Loop Singapore 128334', '-', '-', '-', 'Sin Cheong Engineering (96) Pte Ltd was established in the year 1979 providing services for all kinds of fabrication projects. To cater and reach out with broader spectrum of potential clients, our company was incorporated in 1996. Throughout the years, we were able to bring the most comprehensive range of services to our valuable customers. We now have decades of unparalleled experience in the field of fabrication and construction industry.Our company?s offerings involve all kinds of general, mechanical, steel structural fabrication, stainless steel and aluminium fabrication works. We also provide engineering services including CNC profile cutting, bending, rolling, mechanical overhauling, machining, and repairing works. Our vast range of service is offered to bring effective solution for the demands of various marine, manufacturing and construction industries.We are well-equipped with state-of-the-art machineries and tools for us to serve as customer?s one-stop center for all fabrica', '0.00', '0.00', 0, 0),
(67, 'Yi He Fa Enterprises Pte Ltd?', '60 Kaki Bukit Place, #01-01 Eunos Techpark, S', '-', '-', '-', 'For more than 20 years, Yi He Fa Enterprises Pte Ltd has established a track record as the premier source of steel solution for industries in Singapore. Building on a solid foundation of Trust, Loyalty and Stability, Yi He Fa has also proven itself to be essential partner to the Marine & Offshore, Construction, Engineering and Oil & Gas industries of the region. \n\n\nNow a name synonymous to reliability and quality, Yi He Fa Enterprises sets the benchmark for their supply of high quality round/hollow bars and steel pipes.', '0.00', '0.00', 0, 0),
(68, 'Hup Fatt Brothers Engineering Pte Ltd', '11 Woodlands Walk Singapore 738265', '-', '-', '-', 'HFB was established in 1970 in Singapore and has expanded to other subsidiary like Hup Fatt Brothers Engineering Pte Ltd & HFB Technologies (M) Sdn Bhd in Johor Bahru, Malaysia. We are focused on bringing in and implementing up-to-date developments and technologies into HFB group and thus giving our customers a more fullfilled one stop services centre.', '0.00', '0.00', 0, 0),
(69, 'Szu Engineering & Tech Pte Ltd', '16 Tuas South Street 3 Singapore 638054', '-', '-', '-', 'Szu Engineering is a provider of steel fabrication and design services, serving clients in a diversified range of industries such as F&B, specialty chemicals, process chemicals and offshore. Founded for more than three decades, the company has fostered strong business relations with many of the leading local and multi-national companies in Singapore.\n\nOur production encompasses 3 main activities, namely mild steel/structural steel fabrication, stainless steel fabrication and maintenance. The different competencies have broadened our scope of product and service provision, which include engineering design, fabrication & installation of structures, platforms, tanks & process pipes, as well as maintenance of plant facilities and equipment. With a team of strong and experienced workforce, we strive to inspire confidence and satisfaction in our clients with fine workmanship and high quality services.\n\nHaving vested interest in developing its human resource and operating capabilities to enha', '0.00', '0.00', 0, 0),
(70, 'Topsteel Holdings Pte Ltd', 'Blk 5064 Ang Mo Kio Ind.Park 2, #01-1357 & 13', '-', '-', '-', 'At TOPSTEEL, we aspire the businesses of both our clients and ours to be at the TOP of the scale! Very frequently, sound kitchen equipment demonstrates the effective use of materials and creative design and construction techniques.\n\nNot only will our clients have a positive experience with their kitchen and overall business turnover, TOPSTEEL is valued for our kitchen design sensitivity and manufacturing.', '0.00', '0.00', 0, 0),
(71, 'Paw Leck Engineering Pte Ltd', '21 Senoko Avenue, Woodlands East Industrial E', '-', '-', '-', '-', '0.00', '0.00', 0, 0);
INSERT INTO `m_company` (`Id`, `Name`, `Address`, `Domain`, `Reg_No`, `Code`, `About`, `SupplierAvgRating`, `BuyerAvgRating`, `AwardedQuotation`, `SubmittedQuotation`) VALUES
(72, 'Asia Pacific Spiral Pte Ltd', '11 Tuas Avenue 6, Singapore 639299', '-', '-', '-', 'Asia Pacific Spiral \'APS\' was founded in Singapore (2006) and specializes in Spiral Welded Tubing; and Spiral Welded Perforated tubing \"Shroud\" Products. Supplying to the global markets, APS offers a versatile market specialist to all Global Oilfield Screen Manufacturers devoted to procure the optimum protection for their Sand Control Screen products.\n\nUtilising in-house engineering and ingenuity APS has designed and built their precision Spiral Mills with our existing and potential customers in mind. Our speciality mills provide all our customers with \'Flexibility\' in their design requirement/s, \'Speed\' in delivery, \'Efficiency\' thus offering competitive pricing; and most importantly \'High-Quality\' end-results.\n\n \n\nOverall, APS can provide turnkey design to fabrication complementing individual customizations and specialisations. Whether it\'s carbon, stainless or exotic alloy products you are looking for; APS accomplishes all manufacturing processes in-house so you can be assured that ', '0.00', '0.00', 0, 0);

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
-- Table structure for table `m_services1`
--

CREATE TABLE `m_services1` (
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
-- Dumping data for table `m_services1`
--

INSERT INTO `m_services1` (`Id`, `M_Parent_Services_Id`, `ServiceName`, `C_Metal_Type`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Status`, `Version`, `CommonShapeImage`) VALUES
(1, NULL, 'Custom Fabrication', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(2, 1, 'Mild Steel', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(3, 2, 'General Fabrication', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(4, 4, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(5, 4, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(6, 4, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
(7, 4, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', NULL, '0000-00-00 00:00:00', 'System', NULL, 'System', 1, NULL, NULL),
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
INSERT INTO `m_services1` (`Id`, `M_Parent_Services_Id`, `ServiceName`, `C_Metal_Type`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Status`, `Version`, `CommonShapeImage`) VALUES
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
(2, 'thantsinaung@gmail.com', '12345678', 'peter', 2, '2017-10-14 00:00:00', 'system', 'system', '2017-10-14 00:00:00', 1, 0, '0', '2017-10-13 16:00:00', NULL, '12345678', 2, 1, 0),
(3, 'manager@aaaaa.com', 'nnhhyy66', 'AAAAA_manager', 2, '2017-11-18 07:26:38', 'system', 'system', '2017-11-18 07:26:38', 1, 0, '0', NULL, 'manag', '123456', 3, 1, 0),
(4, 'manger@bbb.com', 'nnhhyy66', 'bbb_manager', 2, '2017-11-18 07:33:57', 'system', 'system', '2017-11-18 07:33:57', 1, 0, '0', NULL, 'Manager', '123435', 4, 1, 0),
(5, 'staff@aaaa.com', 'nnhhyy66', 'aaaaa_staff', 3, '2017-11-18 07:39:51', 'system', 'system', '2017-11-18 07:39:51', 1, 0, '0', NULL, 'staff', '123456', 3, 1, 0),
(6, 'manager@ccc.com', 'nnhhyy66', 'ccc_manager', 3, '2017-11-18 09:26:55', 'system', 'system', '2017-11-18 09:26:55', 1, 0, '0', NULL, 'Manager', '75857', 5, 1, 0),
(7, 'staff@ddd.com', 'nnhhyy66', 'ddd_staff', 2, '2017-11-18 09:28:03', 'system', 'system', '2017-11-18 09:28:03', 1, 0, '0', NULL, 'staff', '94847', 6, 1, 0),
(8, 'staff@eee.com', 'nnhhyy66', 'eee_staff', 2, '2017-11-18 10:17:54', 'system', 'system', '2017-11-18 10:17:54', 1, 0, '0', NULL, 'staff', '98765', 7, 1, 0),
(9, 'staff@rrr.com', 'nnhhyy66', 'rrr_staff', 3, '2017-11-18 11:26:40', 'system', 'system', '2017-11-18 11:26:40', 1, 0, '0', NULL, 'staff', '484940', 8, 1, 0),
(10, 'manager@ttt.com', 'nnhhyy66', 'ttt_manager', 2, '2017-11-18 11:27:49', 'system', 'system', '2017-11-18 11:27:49', 1, 0, '0', NULL, 'manager', '0987', 9, 1, 0),
(11, 'thantsinaung@mritmyanmar.com', 'nnhhyy66', 'Peter', 3, '2017-12-16 04:21:29', 'system', 'system', '2017-12-16 04:21:29', 1, 0, '0', NULL, 'Manager', '1233333', 15, 1, 1),
(12, 'info1@mritmyanmar.com', 'nnhhyy66', 'John', 3, '2017-12-23 02:13:34', 'system', 'system', '2017-12-23 02:13:34', 1, 0, '0', NULL, 'staff', '123456', 16, 1, 1),
(13, 'peterwang@mritmyanmar.com', 'nnhhyy66', 'Peter Wang', 3, '2017-12-23 02:14:28', 'system', 'system', '2017-12-23 02:14:28', 1, 0, '0', NULL, 'staff', '123456', 16, 1, 1),
(14, 'info@mritmyanmar.com', '123456', 'TSA', 3, '2018-01-06 07:12:08', 'system', 'system', '2018-01-06 07:12:08', 1, 0, '0', NULL, 'Staff', '12333434', 12, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `public_email`
--

CREATE TABLE `public_email` (
  `Id` int(11) NOT NULL,
  `domain` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `public_email`
--

INSERT INTO `public_email` (`Id`, `domain`) VALUES
(1, 'gmail.com'),
(2, 'yahoo.com'),
(3, 'google.com'),
(4, 'outlook.com');

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
(1, '', '2017-11-19 12:22:29', '3', NULL, NULL, 1, NULL, 1, 13, NULL, NULL),
(2, '', '2017-11-19 12:22:29', '3', NULL, NULL, 1, NULL, 1, 14, NULL, NULL),
(3, '', '2017-12-16 04:50:50', '3', NULL, NULL, 0, NULL, 2, 9, NULL, NULL),
(4, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', '2017-12-16 04:53:59', '3', NULL, NULL, 1, NULL, 2, 9, NULL, NULL),
(5, '', '2017-12-16 04:53:59', '3', NULL, NULL, 1, NULL, 2, 9, NULL, NULL),
(6, '', '2017-12-16 04:57:07', '3', NULL, NULL, 0, NULL, 3, 4, NULL, NULL),
(7, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', '2017-12-16 04:57:38', '3', NULL, NULL, 1, NULL, 3, 4, NULL, NULL),
(8, '', '2017-12-17 16:46:51', '3', NULL, NULL, 1, NULL, 5, 10, NULL, NULL),
(9, '', '2017-12-17 16:49:33', '3', NULL, NULL, 1, NULL, 6, 9, NULL, NULL),
(10, '', '2017-12-28 15:03:51', '11', NULL, NULL, 1, NULL, 8, 5, NULL, NULL),
(11, '', '2017-12-28 15:03:51', '11', NULL, NULL, 1, NULL, 8, 4, NULL, NULL),
(12, '', '2017-12-28 15:03:51', '11', NULL, NULL, 1, NULL, 8, 9, NULL, NULL),
(13, '', '2017-12-28 15:04:04', '11', NULL, NULL, 1, NULL, 9, 5, NULL, NULL),
(14, '', '2017-12-28 15:04:04', '11', NULL, NULL, 1, NULL, 9, 4, NULL, NULL),
(15, '', '2017-12-28 15:04:04', '11', NULL, NULL, 1, NULL, 9, 9, NULL, NULL),
(16, '', '2017-12-28 15:06:05', '11', NULL, NULL, 1, NULL, 10, 5, NULL, NULL),
(17, '', '2017-12-28 15:06:05', '11', NULL, NULL, 1, NULL, 10, 4, NULL, NULL),
(18, '', '2017-12-28 15:06:05', '11', NULL, NULL, 1, NULL, 10, 9, NULL, NULL),
(19, '', '2017-12-28 15:36:19', '11', NULL, NULL, 1, NULL, 11, 4, NULL, NULL),
(20, '', '2017-12-28 16:04:11', '11', NULL, NULL, 1, NULL, 13, 4, NULL, NULL),
(21, '', '2018-01-03 13:43:08', '11', NULL, NULL, 1, NULL, 15, 9, NULL, NULL),
(22, '', '2018-01-03 13:43:08', '11', NULL, NULL, 1, NULL, 15, 10, NULL, NULL);

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
(1, 'hi', 'hi1', NULL, 8, 1, NULL, '2017-12-04 15:42:24', 'system', 1, 1),
(2, 'aaaa', 'aaaa', NULL, 8, 1, NULL, '2017-12-04 15:57:43', 'system', 1, 1),
(3, 'abc', '111', NULL, 3, 1, NULL, '2017-12-16 08:24:24', 'system', 1, 1),
(4, 'dfasddaf', NULL, NULL, 3, 1, NULL, '2017-12-16 08:44:45', 'system', 1, 1),
(5, 'test', 'ttt', NULL, 3, 2, NULL, '2017-12-16 08:50:38', 'system', 1, 1);

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
(1, 'dafasd', 6, '', '', NULL, 8, 11, '2017-11-19 12:22:29', '3', NULL, NULL, 1, NULL, 3, 'RFQ_Submitted_1', 'dfadf', 'dafsdf'),
(2, 'P1', 6, '', '', NULL, 8, 11, '2017-12-16 04:53:59', '3', '2017-12-16 09:12:41', '3', 1, NULL, 3, 'RFQ_Submitted_2', 'AAAAA_manager', 'AAAAA_manager'),
(3, 'Test', 6, '', '', NULL, 8, 11, '2017-12-16 04:57:38', '3', NULL, NULL, 1, NULL, 3, 'RFQ_Draft_2', 'AAAAA_manager', 'AAAAA_manager'),
(4, '', 7, '', '', NULL, 18, 8, '2017-12-16 09:03:55', '11', '2017-12-16 09:12:41', '3', 1, NULL, 11, 'RFQ_Submitted_2', '', ''),
(5, 'dsfsaf', 6, '', '', NULL, 8, 11, '2017-12-17 16:46:51', '3', NULL, NULL, 1, NULL, 3, 'RFQ_Submitted_3', 'AAAAA_manager', 'AAAAA_manager'),
(6, 'Test', 6, '', '', NULL, 8, 11, '2017-12-17 16:49:33', '3', '2017-12-17 17:17:50', '3', 1, NULL, 3, 'RFQ_Submitted_4', 'AAAAA_manager', 'AAAAA_manager'),
(7, '', 7, '', '', NULL, 18, 8, '2017-12-17 16:50:00', '11', '2017-12-17 17:17:50', '3', 1, NULL, 11, 'RFQ_Submitted_4', '', ''),
(8, 'Test', 6, '', '', NULL, 8, 10, '2017-12-28 15:03:51', '11', NULL, NULL, 1, NULL, 11, 'RFQ_Submitted_5', 'Peter', 'Peter'),
(9, 'Test', 6, '', '', NULL, 8, 10, '2017-12-28 15:04:04', '11', NULL, NULL, 1, NULL, 11, 'RFQ_Submitted_6', 'Peter', 'Peter'),
(10, 'Test', 6, '', '', NULL, 8, 14, '2017-12-28 15:06:05', '11', '2017-12-28 15:26:55', '11', 1, NULL, 11, 'RFQ_Submitted_7', 'Peter', 'Peter'),
(11, 'Test', 6, '', '', NULL, 8, 12, '2017-12-28 15:36:19', '11', '2017-12-28 15:38:46', '11', 1, NULL, 11, 'RFQ_Submitted_8', 'Peter', 'Peter'),
(12, '', 7, '', '', NULL, 18, 8, '2017-12-28 15:38:06', '4', '2017-12-28 15:38:46', '11', 1, NULL, 4, 'RFQ_Submitted_8', 'test', 'asdfasdf'),
(13, 'dsfsad', 6, '', '', NULL, 8, 11, '2017-12-28 16:04:11', '11', NULL, NULL, 1, NULL, 11, 'RFQ_Submitted_9', 'Peter', 'Peter'),
(14, '', 7, '', '', NULL, 16, 8, '2017-12-28 16:04:34', '4', '2017-12-28 16:05:15', '4', 1, NULL, 4, 'RFQ_Submitted_9', '', ''),
(15, 'adfa', 6, '', '', NULL, 8, 10, '2018-01-03 13:43:08', '11', NULL, NULL, 1, NULL, 11, 'RFQ_Submitted_10', 'Peter', 'Peter');

--
-- Triggers `t_document`
--
DELIMITER $$
CREATE TRIGGER `SaveQuotationsCount` AFTER UPDATE ON `t_document` FOR EACH ROW UPDATE m_company
	SET AwardedQuotation =1,AwardedQuotation = 1
	WHERE Id = 1
$$
DELIMITER ;

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
(1, 1, '20171119122222_AttendanceReport-26122016150733.xls', '', '2017-11-19 12:22:29', '3', NULL, NULL, 1, NULL, 'dfads', 'fdssafsd'),
(2, 2, '20171216044358_software-engineering-global.rar', '', '2017-12-16 04:50:50', '3', NULL, NULL, 0, NULL, '', 'test'),
(3, 2, '20171216044358_software-engineering-global.rar', '', '2017-12-16 04:53:59', '3', NULL, NULL, 1, NULL, '', 'test'),
(4, 3, '20171216045631_software-engineering-global.rar', '', '2017-12-16 04:57:07', '3', NULL, NULL, 0, NULL, '', 'test'),
(5, 3, '20171216045631_software-engineering-global.rar', '', '2017-12-16 04:57:38', '3', NULL, NULL, 1, NULL, '', 'test'),
(6, 4, '20171216090803_HTB1A7dlFVXXXXbxXFXX.PRXFXXXN (1).pdf', '', '2017-12-16 09:08:10', '11', NULL, NULL, 1, NULL, '', 'sdfdfsdf'),
(7, 5, '20171217164608_list_rfq.php', '', '2017-12-17 16:46:51', '3', NULL, NULL, 1, NULL, '', 'fdasdf'),
(8, 11, '20171228153602_laptop and printer receipt.jpg', '', '2017-12-28 15:36:19', '11', NULL, NULL, 1, NULL, '', 'test'),
(9, 12, '20171228153819_laptop and printer receipt.jpg', '', '2017-12-28 15:38:23', '4', NULL, NULL, 1, NULL, '', 'atestasd'),
(10, 13, '20171228160315_laptop and printer receipt.jpg', '', '2017-12-28 16:04:11', '11', NULL, NULL, 1, NULL, '', 'fdsfsadfasd');

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
(1, 'dafasd', '2017-12-19 00:00:00', '2017-12-19 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 0, 0, 'dfas'),
(2, 'P1', '2017-12-23 00:00:00', '2017-12-23 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'Remark to supplier'),
(3, 'Test', '2017-12-23 00:00:00', '2017-12-23 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'remark'),
(5, 'dsfsaf', '2017-12-24 00:00:00', '2017-12-24 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'dsfsdf'),
(6, 'Test', '2017-12-24 00:00:00', '2017-12-24 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 0, 0, 'dsfdf'),
(10, 'Test', '2018-01-04 00:00:00', '2018-01-04 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, ''),
(11, 'Test', '2018-01-04 00:00:00', '2018-01-04 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'test'),
(13, 'dsfsad', '2017-12-29 00:00:00', '2018-01-04 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'dsfsdf'),
(15, 'adfa', '2018-01-11 00:00:00', '2018-01-10 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 0, 0, 'adfas');

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
(4, 2, '0.00', '2017-12-16 00:00:00', 2, 'test'),
(7, 6, '0.00', '2017-12-17 00:00:00', 3, '					'),
(12, 11, '1000.00', '2017-12-28 00:00:00', 3, 'dsafsdfadfasd'),
(14, 13, '0.00', '2017-12-28 00:00:00', 3, '					zsfsdfvsd');

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
(2, 2, 15),
(3, 3, 4),
(4, 6, 15),
(5, 8, 15),
(6, 9, 15),
(7, 10, 15),
(8, 11, 4),
(9, 13, 4),
(10, 15, 15);

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
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Company_Id` (`Company_Id`);

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
-- Indexes for table `m_services1`
--
ALTER TABLE `m_services1`
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
-- Indexes for table `public_email`
--
ALTER TABLE `public_email`
  ADD PRIMARY KEY (`Id`);

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `c_tags`
--
ALTER TABLE `c_tags`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `document_number`
--
ALTER TABLE `document_number`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `md_companyrating`
--
ALTER TABLE `md_companyrating`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `public_email`
--
ALTER TABLE `public_email`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `td_requiredservices`
--
ALTER TABLE `td_requiredservices`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `t_clarifications`
--
ALTER TABLE `t_clarifications`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_targetedsuppliers`
--
ALTER TABLE `t_targetedsuppliers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
