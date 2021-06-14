-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2021 at 01:31 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Krunal Kumar', 'krunal@gmail.com', 'admin', '7488e331b8b64e5794da3fa4eb10ad5d', '2021-01-31 09:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(30, 'H C Verma', '2021-04-03 04:46:49', NULL),
(31, 'Dinesh', '2021-04-03 04:47:03', NULL),
(32, 'D C Pandey', '2021-04-03 04:47:16', NULL),
(33, 'Chetan Bhagat', '2021-04-03 04:47:27', NULL),
(34, 'Kshitish Padhy', '2021-04-03 04:47:53', NULL),
(35, 'Veena C', '2021-04-03 04:48:03', NULL),
(36, 'Anurag garg', '2021-04-03 04:48:15', NULL),
(37, 'Anil Padmnaban', '2021-04-03 04:48:37', NULL),
(38, 'Abdul Kalam', '2021-04-03 04:48:51', NULL),
(39, 'Arundhati Roy', '2021-04-03 04:49:04', NULL),
(40, 'Indira Gandhi', '2021-04-03 04:49:13', NULL),
(41, 'Phillip Ball', '2021-04-03 04:49:33', NULL),
(42, 'Pratibha Kasturiya', '2021-04-03 04:50:03', NULL),
(43, 'Jr Diamond', '2021-04-03 04:50:14', NULL),
(44, 'Pran', '2021-04-03 04:50:22', NULL),
(45, 'Anant Pai', '2021-04-03 04:50:32', NULL),
(46, 'E Balagurusamy', '2021-04-03 04:50:48', NULL),
(47, 'jim keogh', '2021-04-03 04:51:03', NULL),
(48, 'S S Shinde', '2021-04-03 04:51:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(32, 'Physics', 19, 30, 1001, 199, '2021-04-03 04:55:06', NULL),
(33, 'Physics', 19, 31, 1002, 159, '2021-04-03 04:55:37', NULL),
(34, '2 States', 22, 33, 1002, 299, '2021-04-03 04:59:49', NULL),
(35, 'Programming In Ansi c', 21, 46, 1004, 250, '2021-04-03 05:01:11', NULL),
(36, 'Half Girlfriend', 22, 33, 1005, 199, '2021-04-03 05:03:50', NULL),
(37, 'The Three Mistake Of My Life', 22, 33, 1006, 299, '2021-04-03 05:04:30', NULL),
(38, 'Moksha', 18, 34, 1007, 50, '2021-04-03 05:07:24', NULL),
(39, '14th Feb', 22, 35, 1008, 99, '2021-04-03 05:09:28', NULL),
(40, 'Advanced Financial Accounting', 25, 36, 1009, 100, '2021-04-03 05:10:56', NULL),
(41, 'Indian Financial System', 25, 36, 10010, 300, '2021-04-03 05:11:31', NULL),
(42, 'Kalpana Chawla : A Life', 23, 37, 10011, 320, '2021-04-03 05:12:42', NULL),
(43, 'Kalpana Chawla : Sitaron Se Aage', 19, 37, 10012, 200, '2021-04-03 05:13:35', NULL),
(44, 'Wings Of Fire', 19, 38, 10013, 199, '2021-04-03 05:15:02', NULL),
(45, 'India 2020', 18, 38, 10014, 230, '2021-04-03 05:15:52', NULL),
(46, 'The God of Small Things', 18, 39, 100140, 302, '2021-04-03 05:19:04', '2021-04-03 05:32:13'),
(47, 'The Cost of Living', 18, 39, 10015, 99, '2021-04-03 05:21:24', NULL),
(48, 'Indira Gandhi : My Truth', 23, 40, 10016, 300, '2021-04-03 05:23:09', NULL),
(49, 'The Discovery of India', 18, 40, 10017, 299, '2021-04-03 05:24:22', NULL),
(50, 'H2O: A Biography Of Water', 19, 41, 100170, 199, '2021-04-03 05:26:48', '2021-04-03 05:32:30'),
(51, 'Entangle: Physics and the Artistic Imagination', 19, 41, 10018, 399, '2021-04-03 05:28:03', NULL),
(52, 'Vikram Betal Ki Manoranjak Kahaniya', 17, 42, 10019, 50, '2021-04-03 05:29:06', NULL),
(53, 'Birbal Ka Haas Parihaas', 17, 42, 10020, 40, '2021-04-03 05:29:52', NULL),
(54, 'Panchtantra Ki Prerak Kahaniyan', 17, 43, 10021, 60, '2021-04-03 05:30:49', NULL),
(55, 'Chacha Chaudhary Aur Sabu Ke Jutye (???? ????? ?? ???? ?? ????)', 17, 44, 10022, 35, '2021-04-03 05:33:42', NULL),
(56, 'Amar Chitra Katha', 17, 45, 10023, 55, '2021-04-03 05:34:40', NULL),
(57, 'J2EE: The complete Reference', 21, 47, 10024, 299, '2021-04-03 05:35:57', NULL),
(58, 'Introduction to Programming with C++', 21, 47, 10025, 399, '2021-04-03 05:36:31', NULL),
(59, 'Linux Programming For Dummies', 21, 47, 10025, 200, '2021-04-03 05:37:17', NULL),
(60, 'Computer Network', 21, 48, 10026, 199, '2021-04-03 05:38:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(17, 'Kids', 1, '2021-04-03 04:44:01', '0000-00-00 00:00:00'),
(18, 'History', 1, '2021-04-03 04:44:08', '0000-00-00 00:00:00'),
(19, 'Sci&Tech', 1, '2021-04-03 04:44:27', '0000-00-00 00:00:00'),
(20, 'Sports', 1, '2021-04-03 04:44:41', '0000-00-00 00:00:00'),
(21, 'Computer & Technology', 1, '2021-04-03 04:44:57', '0000-00-00 00:00:00'),
(22, 'Romantic', 1, '2021-04-03 04:45:11', '0000-00-00 00:00:00'),
(23, 'BioGraphy', 1, '2021-04-03 04:45:25', '0000-00-00 00:00:00'),
(24, 'Comedy', 1, '2021-04-03 04:46:01', '0000-00-00 00:00:00'),
(25, 'Mathamatics', 1, '2021-04-03 05:10:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(16, 35, 'SID015', '2021-04-03 05:40:59', '2021-04-03 05:45:57', 1, 0),
(19, 33, 'SID016', '2021-04-03 05:50:19', NULL, NULL, NULL),
(20, 60, 'SID017', '2021-04-03 05:53:32', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(20, 'SID015', 'kunal kumar', 'kunal@1.com', '1234567891', 'd2c51c9cde1f15b718296c99ae362fb1', 1, '2021-04-03 05:39:53', '2021-04-04 13:48:39'),
(21, 'SID016', 'abc', 'abc@abc.com', '9876543210', 'e99a18c428cb38d5f260853678922e03', 1, '2021-04-03 05:47:07', NULL),
(22, 'SID017', 'pratik ', '1@1.com', '6789012345', '73a3f7e50b631d9bd29ae867458c05e3', 1, '2021-04-03 05:52:30', NULL),
(23, 'SID018', 'meet', '2@abc.com', '2345678901', '5d41402abc4b2a76b9719d911017c592', 1, '2021-04-04 13:43:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
