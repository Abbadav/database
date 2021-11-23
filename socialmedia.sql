-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 11:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `admincontrol`
--

CREATE TABLE `admincontrol` (
  `adminid` int(11) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `usernname` varchar(30) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `searchCntl` varchar(100) DEFAULT NULL,
  `adminchannel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admincontrol`
--

INSERT INTO `admincontrol` (`adminid`, `fname`, `sname`, `mname`, `usernname`, `pwd`, `searchCntl`, `adminchannel`) VALUES
(10, 'Benard', 'Adam', 'Tunde', 'tunny', 'words', 'totcrol', 'channel'),
(11, 'Martins', 'Adebayo', 'Akin', 'agamma', 'pword', 'intocrol', 'channel1'),
(12, 'Precious', 'Chinda', 'Tochi', 'better', 'swords', 'bestcrol', 'channel2'),
(13, 'Mercy', 'Eke', 'Uka', 'good', 'twords', 'testcrol', 'channel4'),
(14, 'Glory', 'Edem', 'Utta', 'good', 'dwords', 'ebscrol', 'channel'),
(15, 'Matthew', 'Monday', 'best', 'gword', 'pword', 'ocrol', 'channel1'),
(16, 'Tekena', 'Chinda', 'Tochi', 'better', 'sords', 'bestcrol', 'channel97'),
(17, 'Mercy', 'Eke', 'Uka', 'good', 'ywords', 'olucrol', 'channel8');

-- --------------------------------------------------------

--
-- Table structure for table `searchforothers`
--

CREATE TABLE `searchforothers` (
  `shid` int(11) NOT NULL,
  `searchName` varchar(30) DEFAULT NULL,
  `viewdetails` varchar(30) DEFAULT NULL,
  `makeRequest` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `searchforothers`
--

INSERT INTO `searchforothers` (`shid`, `searchName`, `viewdetails`, `makeRequest`) VALUES
(101, 'abcd', 'openchannel', 'check'),
(102, 'efgh', 'openchannel1', 'check1'),
(103, 'ijkl', 'openchannel2', 'check2'),
(104, 'mnop', 'openchannel3', 'check3'),
(105, 'uvws', 'openchannel5', 'check5'),
(106, 'yzyz', 'openchannel6', 'check6'),
(107, 'abcd', 'openchannel7', 'check7'),
(108, 'eftt', 'openchannel8', 'check8'),
(109, 'jkyy', 'openchannel9', 'check9'),
(110, 'abcdss', 'openchannels', 'checks'),
(1015, 'qrst', 'openchannel4', 'check4');

-- --------------------------------------------------------

--
-- Table structure for table `staffdetails`
--

CREATE TABLE `staffdetails` (
  `stid` int(11) NOT NULL,
  `firstn` varchar(30) DEFAULT NULL,
  `middleN` varchar(30) DEFAULT NULL,
  `surnameN` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `phoneN` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `dtid` int(11) NOT NULL,
  `ftname` varchar(30) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `mdname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `phoneNO` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userloginform`
--

CREATE TABLE `userloginform` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `userpwd` varchar(30) DEFAULT NULL,
  `verifypwd` varchar(30) DEFAULT NULL,
  `changepwd` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userprofileform`
--

CREATE TABLE `userprofileform` (
  `pid` int(11) NOT NULL,
  `profilename` varchar(30) DEFAULT NULL,
  `editname` varchar(30) DEFAULT NULL,
  `changeprofilep` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userprofileform`
--

INSERT INTO `userprofileform` (`pid`, `profilename`, `editname`, `changeprofilep`) VALUES
(1010, 'Profile9', 'protouch9', 'change9'),
(1011, 'Profile', 'protouch', 'change'),
(1012, 'Profile1', 'protouch1', 'change1'),
(1013, 'Profile2', 'protouch2', 'change2'),
(1014, 'Profile3', 'protouch3', 'change3'),
(1015, 'Profile4', 'protouch4', 'change4'),
(1016, 'Profile5', 'protouch5', 'change5'),
(1017, 'Profile6', 'protouch6', 'change6'),
(1018, 'Profile7', 'protouch7', 'change7'),
(1019, 'Profile8', 'protouch8', 'change8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admincontrol`
--
ALTER TABLE `admincontrol`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `searchforothers`
--
ALTER TABLE `searchforothers`
  ADD PRIMARY KEY (`shid`);

--
-- Indexes for table `staffdetails`
--
ALTER TABLE `staffdetails`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`dtid`);

--
-- Indexes for table `userloginform`
--
ALTER TABLE `userloginform`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `userprofileform`
--
ALTER TABLE `userprofileform`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admincontrol`
--
ALTER TABLE `admincontrol`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `searchforothers`
--
ALTER TABLE `searchforothers`
  MODIFY `shid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT for table `staffdetails`
--
ALTER TABLE `staffdetails`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `dtid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userloginform`
--
ALTER TABLE `userloginform`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userprofileform`
--
ALTER TABLE `userprofileform`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
