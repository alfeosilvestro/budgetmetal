-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2017 at 12:15 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(36, 59, 9);

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
(6, 10, 1);

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
(1, 'ABC', 'Singapore', 'abc.com.sg', 'SG123456', 'ABC'),
(2, 'DEF', 'Singapore', 'def.com.sg', 'Sup12345', 'DEF'),
(3, 'AAAAA', '', '', '11111', ''),
(4, 'BBBBB', '', '', '22222', ''),
(5, 'CCCCC', '', '', '33333', ''),
(6, 'ddddd', '', '', '44444', ''),
(7, 'EEEEE', '', '', '999999', ''),
(8, 'RRRR', '', '', '7777', ''),
(9, 'tttt', '', '', '8888', '');

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
(11, NULL, 'Custom Fabrication', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(12, 11, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(13, 12, 'General Fabrication', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(14, 12, 'Sheet Metal Fabrication (Thickness < 3mm)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(15, 12, 'Skid', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(16, 12, 'Ducting', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(17, 12, 'Grating', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(18, 13, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(19, 13, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(20, 13, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(21, 13, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(22, 14, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(23, 14, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(24, 14, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(25, 14, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(26, 15, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(27, 15, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(28, 15, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(29, 15, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(30, 11, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(31, 12, 'General Fabrication', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(32, 12, 'Sheet Metal Fabrication (Thickness < 3mm)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(33, 12, 'F & B Applications', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(34, 12, 'Ducting', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(35, 12, 'Grating', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(36, 31, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(37, 31, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(38, 31, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(39, 31, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(40, 32, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(41, 32, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(42, 32, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(43, 32, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(44, 33, 'Small Item ( < 1m[L] x 1m[W] x 1m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(45, 33, 'Medium Item ( < 5m[L] x 5m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(46, 33, 'Big Item ( < 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(47, 33, 'Large Item ( > 10m[L] x 10m[W] x 5m[H])', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(48, 11, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(49, 48, 'General Fabrication', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(50, 48, 'Sheet Metal Fabrication (Thickness < 3mm)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(51, 48, 'Ducting', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(52, 48, 'Grating', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(53, 11, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(54, 53, 'General Fabrication', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(55, 53, 'Sheet Metal Fabrication (Thickness < 3mm)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(56, NULL, 'Metal Materials', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(57, 56, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(58, 57, 'Sheet (Thickness < 3mm)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(59, 57, 'Plate', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(60, 57, 'Chequered Plate', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(61, 57, 'Mesh', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(62, 57, 'Flat Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(63, 57, 'Angle Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(64, 57, 'C-Channel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(65, 57, 'I-Beam', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(66, 57, 'Pipe', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(67, 57, 'Circular Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(68, 57, 'Rectangular Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(69, 57, 'Square Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(70, 57, 'Round Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(71, 57, 'Square Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(72, 57, 'Wire', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(73, 57, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(74, 56, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(75, 74, 'Sheet (Thickness < 3mm)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(76, 74, 'Plate', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(77, 74, 'Chequered Plate', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(78, 74, 'Mesh', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(79, 74, 'Flat Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(80, 74, 'Angle Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(81, 74, 'C-Channel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(82, 74, 'I-Beam', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(83, 74, 'Pipe', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(84, 74, 'Circular Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(85, 74, 'Rectangular Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(86, 74, 'Square Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(87, 74, 'Round Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(88, 74, 'Square Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(89, 74, 'Wire', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(90, 74, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(91, 56, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(92, 91, 'Sheet (Thickness < 3mm)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(93, 91, 'Plate', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(94, 91, 'Chequered Plate', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(95, 91, 'Mesh', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(96, 91, 'Flat Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(97, 91, 'Angle Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(98, 91, 'C-Channel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(99, 91, 'I-Beam', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(100, 91, 'Pipe', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(101, 91, 'Circular Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(102, 91, 'Rectangular Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(103, 91, 'Square Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(104, 91, 'Round Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(105, 91, 'Square Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(106, 91, 'Wire', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(107, 91, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(108, 56, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(109, 108, 'Sheet (Thickness < 3mm)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(110, 108, 'Plate', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(111, 108, 'Chequered Plate', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(112, 108, 'Mesh', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(113, 108, 'Flat Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(114, 108, 'Angle Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(115, 108, 'C-Channel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(116, 108, 'I-Beam', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(117, 108, 'Pipe', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(118, 108, 'Circular Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(119, 108, 'Rectangular Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(120, 108, 'Square Hollow Section', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(121, 108, 'Round Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(122, 108, 'Square Bar', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(123, 108, 'Wire', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(124, 108, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(125, NULL, 'Fabrication Services', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(128, 125, 'CNC Cutting (Plate/Sheet only)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(129, 128, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(130, 128, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(131, 128, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(132, 128, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(133, 125, 'Cutting (Non-CNC)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(134, 133, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(135, 133, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(136, 133, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(137, 133, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(138, 125, 'Bending (Plate/Sheet)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(139, 138, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(140, 138, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(141, 138, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(142, 138, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(143, 125, 'Pipe Bending', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(144, 143, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(145, 143, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(146, 143, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(147, 143, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(148, 125, 'Rolling (Plate)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(149, 148, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(150, 148, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(151, 148, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(152, 148, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(153, 125, 'Rolling (Structure/Profile)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(154, 153, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(155, 153, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(156, 153, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(157, 153, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(158, 125, 'CNC Machining (Milling/Turning)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(159, 158, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(160, 158, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(161, 158, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(162, 158, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(163, 125, 'Non-CNC Machining', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(164, 163, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(165, 163, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(166, 163, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(167, 163, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(168, 125, 'Welding', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(169, 168, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(170, 168, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(171, 168, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(172, 168, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(173, 125, 'Drill/Punch', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(174, 173, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(175, 173, 'Stainless Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(176, 173, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(177, 173, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(178, NULL, 'Testing/Inspection (NDT)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(179, 178, 'Mild Steel', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(180, 178, 'Stainless Steel ', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(181, 178, 'Aluminium', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(182, 178, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(183, 179, 'Magnetic particle Inspection (MPI)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(184, 179, 'Ultrasonic Testing (UT)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(185, 179, 'X-Ray Test', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(186, 179, 'Liquid Penetration Test', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(187, 179, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(188, 180, 'Magnetic particle Inspection (MPI)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(189, 180, 'Ultrasonic Testing (UT)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(190, 180, 'X-Ray Test', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(191, 180, 'Liquid Penetration Test', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(192, 180, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(193, 181, 'Magnetic particle Inspection (MPI)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(194, 181, 'Ultrasonic Testing (UT)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(195, 181, 'X-Ray Test', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(196, 181, 'Liquid Penetration Test', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(197, 181, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(198, 182, 'Magnetic particle Inspection (MPI)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(199, 182, 'Ultrasonic Testing (UT)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(200, 182, 'X-Ray Test', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(201, 182, 'Liquid Penetration Test', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(202, 182, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(203, NULL, 'Finishing ', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(204, 203, 'Painting (Brush/Roller)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(205, 203, 'Painting (Spray Paint)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(206, 203, 'Sand Blasting', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(207, 203, 'Sand Blasting + Paint', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(208, 203, 'Galvanising (Hot Dip)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(209, 203, 'Galvanising (Cold Dip)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(210, 203, 'Anodize', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(211, 203, 'Powder Coat', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(212, 203, 'Polishing/Buffing', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(213, 203, 'Others', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(214, NULL, 'Logistics', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(215, 214, 'Transportation (People)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(216, 214, 'Transportation (Item/Structure)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(217, 214, 'Transportation (Document)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(218, 214, 'Lifting (People)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(219, 214, 'Lifting (Item/Structure)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(220, 215, 'Lorry/Truck', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(221, 215, 'Van', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(222, 215, 'Bus', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(223, 216, 'Van', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(224, 216, 'Lorry/Truck (Covered)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(225, 216, 'Lorry/Truck (Open)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(226, 216, 'Trailer', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(227, 216, 'Lorry Crane', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(228, 217, 'Courier', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(229, 218, 'Gondola', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(230, 218, 'Scissor Lift', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(231, 218, 'Boom Lift (Telescopic)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(232, 218, 'Boom Lift (Articulating)', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(233, 218, 'Bucket Truck', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(234, 219, 'Crane', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(235, 219, 'Mobile Crane', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(236, 219, 'Forklift', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL),
(237, 219, 'Telescopic Forklift', 4, '2017-10-11 20:25:40', 'System', '2017-10-11 20:25:42', 'System', 1, '2017-10-11 10:25:45', NULL);

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
  `M_Company_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`Id`, `EmailAddress`, `Password`, `UserName`, `C_UserType`, `CreatedDate`, `CreatedBy`, `ModifiedBy`, `ModifiedDate`, `Status`, `RfqCount`, `QuoteCount`, `Version`, `Title`, `ContactNumbers`, `M_Company_Id`) VALUES
(1, 'galles.cs@gmail.com', '12345678', 'galles', 3, '2017-10-13 00:00:00', 'system', 'system', '2017-10-13 00:00:00', 1, 0, '0', NULL, NULL, '123459876', 1),
(2, 'thantsinaung@gmail.com', '12345678', 'peter', 2, '2017-10-14 00:00:00', 'system', 'system', '2017-10-14 00:00:00', 1, 0, '0', '2017-10-13 16:00:00', NULL, '12345678', 2),
(3, 'manager@aaaaa.com', 'nnhhyy66', 'AAAAA_manager', 3, '2017-11-18 07:26:38', 'system', 'system', '2017-11-18 07:26:38', 1, 0, '0', NULL, 'manag', '123456', 3),
(4, 'manger@bbb.com', 'nnhhyy66', 'bbb_manager', 2, '2017-11-18 07:33:57', 'system', 'system', '2017-11-18 07:33:57', 1, 0, '0', NULL, 'Manager', '123435', 4),
(5, 'staff@aaaa.com', 'nnhhyy66', 'aaaaa_staff', 3, '2017-11-18 07:39:51', 'system', 'system', '2017-11-18 07:39:51', 1, 0, '0', NULL, 'staff', '123456', 3),
(6, 'manager@ccc.com', 'nnhhyy66', 'ccc_manager', 3, '2017-11-18 09:26:55', 'system', 'system', '2017-11-18 09:26:55', 1, 0, '0', NULL, 'Manager', '75857', 5),
(7, 'staff@ddd.com', 'nnhhyy66', 'ddd_staff', 2, '2017-11-18 09:28:03', 'system', 'system', '2017-11-18 09:28:03', 1, 0, '0', NULL, 'staff', '94847', 6),
(8, 'staff@eee.com', 'nnhhyy66', 'eee_staff', 2, '2017-11-18 10:17:54', 'system', 'system', '2017-11-18 10:17:54', 1, 0, '0', NULL, 'staff', '98765', 7),
(9, 'staff@rrr.com', 'nnhhyy66', 'rrr_staff', 3, '2017-11-18 11:26:40', 'system', 'system', '2017-11-18 11:26:40', 1, 0, '0', NULL, 'staff', '484940', 8),
(10, 'manager@ttt.com', 'nnhhyy66', 'ttt_manager', 2, '2017-11-18 11:27:49', 'system', 'system', '2017-11-18 11:27:49', 1, 0, '0', NULL, 'manager', '0987', 9);

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
  `Status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_M_Services_M_Services1_idx` (`M_Parent_Services_Id`),
  ADD KEY `fk_M_Services_C_CodeTable1_idx` (`C_Metal_Type`),
  ADD KEY `M_Parent_Services_Id` (`M_Parent_Services_Id`);

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_tags`
--
ALTER TABLE `c_tags`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `document_number`
--
ALTER TABLE `document_number`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `td_requiredservices`
--
ALTER TABLE `td_requiredservices`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_clarifications`
--
ALTER TABLE `t_clarifications`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_targetedsuppliers`
--
ALTER TABLE `t_targetedsuppliers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
