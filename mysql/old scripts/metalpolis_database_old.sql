-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2017 at 06:51 AM
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
(26, 14, 4, 15, 'BBBBB has registered interest.', 22, '2017-12-28 16:05:15', '4', NULL, NULL, 1, 'Create_Quotation');

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
(11, 'RFQ', 'Submitted', 'RFQ', 'RFQ', 9);

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
  `BuyerAvgRating` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_company`
--

INSERT INTO `m_company` (`Id`, `Name`, `Address`, `Domain`, `Reg_No`, `Code`, `About`, `SupplierAvgRating`, `BuyerAvgRating`) VALUES
(1, 'ABC', 'Singapore', 'abc.com.sg', 'SG123456', 'ABC', NULL, '0.00', NULL),
(2, 'DEF', 'Singapore', 'def.com.sg', 'Sup12345', 'DEF', NULL, '0.00', NULL),
(3, 'AAAAA', '', '', '11111', '', NULL, '0.00', NULL),
(4, 'BBBBB', '', '', '22222', '', NULL, '3.39', NULL),
(5, 'CCCCC', '', '', '33333', '', NULL, '0.00', NULL),
(6, 'ddddd', '', '', '44444', '', NULL, '0.00', NULL),
(7, 'EEEEE', '', '', '999999', '', NULL, '0.00', NULL),
(8, 'RRRR', '', '', '7777', '', NULL, '0.00', NULL),
(9, 'tttt', '', '', '8888', '', NULL, '0.00', NULL),
(10, '1', '', '', '1', '', NULL, '0.00', NULL),
(11, 'mrit', '', '', '123456789a', '', NULL, '0.00', NULL),
(12, 'dsfasdf', 'sfgdfsgsdfg', '', '123456789c', '', NULL, '0.00', NULL),
(13, 'dsafsd', '', '', '123456789x', '', NULL, '0.00', NULL),
(14, 'dfsd', '', '', '245345345a', '', 'fadsfasdfa', '0.00', NULL),
(15, 'mr it', '', '', '891263456a', '', 'bbb', '0.00', NULL),
(16, 'MM', '', '', '963258741q', '', 'dfasdfasdfasdfa', '0.00', NULL);

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
(12, 'info@mritmyanmar.com', 'nnhhyy66', 'John', 3, '2017-12-23 02:13:34', 'system', 'system', '2017-12-23 02:13:34', 1, 0, '0', NULL, 'staff', '123456', 16, 1, 1),
(13, 'peterwang@mritmyanmar.com', 'nnhhyy66', 'Peter Wang', 3, '2017-12-23 02:14:28', 'system', 'system', '2017-12-23 02:14:28', 1, 0, '0', NULL, 'staff', '123456', 16, 1, 1);

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
(20, '', '2017-12-28 16:04:11', '11', NULL, NULL, 1, NULL, 13, 4, NULL, NULL);

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
(14, '', 7, '', '', NULL, 16, 8, '2017-12-28 16:04:34', '4', '2017-12-28 16:05:15', '4', 1, NULL, 4, 'RFQ_Submitted_9', '', '');

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
(13, 'dsfsad', '2017-12-29 00:00:00', '2018-01-04 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 'dsfsdf');

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
(9, 13, 4);

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `c_tags`
--
ALTER TABLE `c_tags`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `document_number`
--
ALTER TABLE `document_number`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `public_email`
--
ALTER TABLE `public_email`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `td_requiredservices`
--
ALTER TABLE `td_requiredservices`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `t_clarifications`
--
ALTER TABLE `t_clarifications`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_targetedsuppliers`
--
ALTER TABLE `t_targetedsuppliers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
