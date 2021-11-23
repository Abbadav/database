-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 11:04 PM
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
-- Database: `primary_healthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `auxilliarystaff`
--

CREATE TABLE `auxilliarystaff` (
  `alid` int(11) NOT NULL,
  `names` varchar(30) DEFAULT NULL,
  `dept` varchar(30) DEFAULT NULL,
  `staffid` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `PhoneNO` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auxilliarystaff`
--

INSERT INTO `auxilliarystaff` (`alid`, `names`, `dept`, `staffid`, `gender`, `Salary`, `address`, `PhoneNO`) VALUES
(1, 'Ann Josiah', 'Octometric', 'A10', 'female', '10000', '20 Niger Street ph', '09023442321'),
(2, 'Blessing Odeh', 'Surgery', 'A11', 'female', '15000', '18 0joto Street ph', '080234423221'),
(3, 'Okamaka Benson', 'Optics', 'A12', 'female', '35000', '11 Donald Street ph', '09086442366'),
(4, 'Jude Akam', 'Medicine', 'A13', 'male', '60000', '90 odo Street ph', '08087442389'),
(5, 'Uju Topesi', 'Medicine', 'A14', 'female', '10000', '65 Yaba Street ph', '07023442390');

-- --------------------------------------------------------

--
-- Table structure for table `childrendept`
--

CREATE TABLE `childrendept` (
  `chid` int(11) NOT NULL,
  `childName` varchar(30) DEFAULT NULL,
  `childPatName` varchar(30) DEFAULT NULL,
  `childidCardNo` varchar(10) DEFAULT NULL,
  `childGender` varchar(10) DEFAULT NULL,
  `childAge` int(11) DEFAULT NULL,
  `childRecord` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `childrendept`
--

INSERT INTO `childrendept` (`chid`, `childName`, `childPatName`, `childidCardNo`, `childGender`, `childAge`, `childRecord`) VALUES
(100, 'John Odo', 'Odo Adah', 'C001', 'male', 4, 'Yellow Fever'),
(101, 'Jude Ojim', 'Ojim Kalu', 'C002', 'male', 3, 'Luecamia'),
(103, 'Wilcos Sam', 'Hycent Wilcos', 'C003', 'male', 5, 'Ashma'),
(104, 'Felicia Amos', 'Amos Uche', 'C004', 'female', 2, 'Fever'),
(105, 'Mary Remi', 'Remi Martins', 'C005', 'female', 6, 'Cough'),
(106, 'Sampson Ole', 'Ole Johnson', 'C006', 'male', 7, 'Hypertension'),
(107, 'Ali Alison', 'Oscar Alison', 'C007', 'male', 4, 'Yellow Fever');

-- --------------------------------------------------------

--
-- Table structure for table `doctorsystem`
--

CREATE TABLE `doctorsystem` (
  `Drid` int(11) NOT NULL,
  `doctorsName` varchar(30) DEFAULT NULL,
  `doctorsddress` varchar(30) DEFAULT NULL,
  `doctorRecord` varchar(30) DEFAULT NULL,
  `doctorSalary` varchar(40) DEFAULT NULL,
  `doctorDept` varchar(40) DEFAULT NULL,
  `doctorSpecialist` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorsystem`
--

INSERT INTO `doctorsystem` (`Drid`, `doctorsName`, `doctorsddress`, `doctorRecord`, `doctorSalary`, `doctorDept`, `doctorSpecialist`) VALUES
(10, 'Benson Ole', 'No 3 Ije Road Ph', 'Good', '102000', 'Surgery', 'Surgeon'),
(11, 'Daniel Adakole', 'No 63 Ibadan Road Ph', 'better', '18000', 'Surgery', 'Gynachologist'),
(12, 'Nna Uchendu', 'No 80 Amadi Street Ph', 'Better', '200000', 'Medicine', 'Medicalist'),
(13, 'Ibem Odachi', 'No 90 Ada George Road Ph', 'Good', '502000', 'Dentric', 'Dentist'),
(14, 'Joshua Adebayo', 'No Ade Olu Street Ph', 'Good', '160000', 'Anatonmy', 'Anatomist');

-- --------------------------------------------------------

--
-- Table structure for table `midwifedept`
--

CREATE TABLE `midwifedept` (
  `mwid` int(11) NOT NULL,
  `midwifeName` varchar(30) DEFAULT NULL,
  `midwifeAddress` varchar(50) DEFAULT NULL,
  `midwifeidNo` varchar(12) DEFAULT NULL,
  `midwifeSex` varchar(30) DEFAULT NULL,
  `midwifeSalary` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `midwifedept`
--

INSERT INTO `midwifedept` (`mwid`, `midwifeName`, `midwifeAddress`, `midwifeidNo`, `midwifeSex`, `midwifeSalary`) VALUES
(100, 'Adanne Tammy', 'No 40 Abagbanike Street Enugu', 'M001', 'female', '120000'),
(108, 'Tunde Bakare', 'No 1 Oji Street Enugu', 'M002', 'male', '150000'),
(109, 'Uche Abraham', 'No 2 Abani Street Enugu', 'M004', 'male', '220000'),
(110, 'Juliet Kalu', 'No 10 Adim Street Nsukka', 'M003', 'female', '180000'),
(115, 'Fidelia', 'No 6 Oji Road Enugu', 'M005', 'female', '200000'),
(116, 'Chukwu Adams', 'No 54 OJite Street Enugu', 'M006', 'male', '180000');

-- --------------------------------------------------------

--
-- Table structure for table `nursessystem`
--

CREATE TABLE `nursessystem` (
  `nid` int(11) NOT NULL,
  `nursesName` varchar(30) DEFAULT NULL,
  `nursesAddress` varchar(50) DEFAULT NULL,
  `nursesStaffId` varchar(20) DEFAULT NULL,
  `mursesGender` varchar(10) DEFAULT NULL,
  `nursesPhoneNo` varchar(20) DEFAULT NULL,
  `nursesSalary` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nursessystem`
--

INSERT INTO `nursessystem` (`nid`, `nursesName`, `nursesAddress`, `nursesStaffId`, `mursesGender`, `nursesPhoneNo`, `nursesSalary`) VALUES
(112, 'Felicia Adamu', 'No 1 Kaduna Street ph', 'N02', 'female', '070568765423', '1200000'),
(113, 'Benard Odadike', 'No 30 Ede Street ph', 'N03', 'male', '080789765400', '1500000'),
(114, 'Funke Akim', 'No 4 Tolu Road ph', 'N04', 'female', '0703408765497', '1000000'),
(116, 'Chukwuma Adinke', 'No 50 Johnson Ben Avenue ph', 'N05', 'male', '090808765497', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `patientsystem`
--

CREATE TABLE `patientsystem` (
  `psid` int(11) NOT NULL,
  `patientName` varchar(30) DEFAULT NULL,
  `CardNo` varchar(20) DEFAULT NULL,
  `fileNo` varchar(15) DEFAULT NULL,
  `patientAddress` varchar(30) DEFAULT NULL,
  `patientNo` varchar(30) DEFAULT NULL,
  `patientRecord` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientsystem`
--

INSERT INTO `patientsystem` (`psid`, `patientName`, `CardNo`, `fileNo`, `patientAddress`, `patientNo`, `patientRecord`) VALUES
(1010, 'Adokiye Benson', 'CCD1', 'file 0010', 'No 1 Ajibola Road ph', '08065432897', 'fever'),
(1011, 'Funke Ehkinde', 'CCD2', 'file 0011', 'No 6 Agudama Road ph', '08034432800', 'Ashma'),
(1012, 'Idowu Akin', 'CCD3', 'file 0012', 'No 3 Brooklyn Road ph', '07089432899', 'malaria'),
(1014, 'Ada Okoli', 'CCD4', 'file 0014', 'No 9 Jaconde Road ph', '08023432809', 'Leukamia'),
(1015, 'Ayomide Allison', 'CCD5', 'file 0019', 'No 5 Amadi ph', '0800954328117', 'fever'),
(1016, 'Ojika Ikenna', 'CCD6', 'file 0017', 'No 6  Road ph', '08034432800', 'Ashma'),
(1018, 'Ngozi Idoko', 'CCD12', 'file 0014', 'No 9 Jaconde Road ph', '08023432800', 'Leukamia'),
(1020, 'Iyabo Adedi', 'CCD3', 'file 0012', 'No 3 Brooklyn Road ph', '07089432899', 'malaria');

-- --------------------------------------------------------

--
-- Table structure for table `primarycare`
--

CREATE TABLE `primarycare` (
  `id` int(11) NOT NULL,
  `Patience_dept` varchar(50) DEFAULT NULL,
  `Doctors_dept` varchar(30) DEFAULT NULL,
  `Nurses_dept` varchar(40) DEFAULT NULL,
  `Health_id` int(11) DEFAULT NULL,
  `Addresses` varchar(50) DEFAULT NULL,
  `Phone_N0` int(11) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Total_record` varchar(100) DEFAULT NULL,
  `overall_record` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `primarycare`
--

INSERT INTO `primarycare` (`id`, `Patience_dept`, `Doctors_dept`, `Nurses_dept`, `Health_id`, `Addresses`, `Phone_N0`, `Gender`, `Total_record`, `overall_record`) VALUES
(1, 'Surgery', 'Anatomy', 'care talk', 0, 'N0 1 Kaduna street ph', 2147483647, 'Male', '120', '180'),
(2, 'Medicine', 'Medical', 'Upcare', 0, 'N0 1 Ikoku street ph', 2147483647, 'female', '110', '120'),
(3, 'Dentist', 'Dental', 'Teethcare', 0, 'N0 8 Igbokwe street ph', 2147483647, 'Male', '160', '280'),
(4, 'Pharmacy', 'Pharmacist', 'healthcare', 0, 'N0 20 Ede street ph', 2147483647, 'female', '120', '180'),
(5, 'Medicine', 'Medical', 'Upcare', 0, 'N0 2 Bende street ph', 2147483647, 'female', '110', '120'),
(6, 'Surgery', 'Anatomy', 'care talk', 0, 'N0 1 Kaduna street ph', 2147483647, 'Male', '120', '180'),
(7, 'Dentist', 'Dental', 'Teethcare', 0, 'N0 90 Ako street ph', 2147483647, 'Male', '160', '280'),
(8, 'Pharmacy', 'Pharmacist', 'healthcare', 0, 'N0 67 Mbadu street ph', 2147483647, 'female', '120', '200');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auxilliarystaff`
--
ALTER TABLE `auxilliarystaff`
  ADD PRIMARY KEY (`alid`);

--
-- Indexes for table `childrendept`
--
ALTER TABLE `childrendept`
  ADD PRIMARY KEY (`chid`);

--
-- Indexes for table `doctorsystem`
--
ALTER TABLE `doctorsystem`
  ADD PRIMARY KEY (`Drid`);

--
-- Indexes for table `midwifedept`
--
ALTER TABLE `midwifedept`
  ADD PRIMARY KEY (`mwid`);

--
-- Indexes for table `nursessystem`
--
ALTER TABLE `nursessystem`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `patientsystem`
--
ALTER TABLE `patientsystem`
  ADD PRIMARY KEY (`psid`);

--
-- Indexes for table `primarycare`
--
ALTER TABLE `primarycare`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auxilliarystaff`
--
ALTER TABLE `auxilliarystaff`
  MODIFY `alid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `childrendept`
--
ALTER TABLE `childrendept`
  MODIFY `chid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `doctorsystem`
--
ALTER TABLE `doctorsystem`
  MODIFY `Drid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `midwifedept`
--
ALTER TABLE `midwifedept`
  MODIFY `mwid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `nursessystem`
--
ALTER TABLE `nursessystem`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `patientsystem`
--
ALTER TABLE `patientsystem`
  MODIFY `psid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;

--
-- AUTO_INCREMENT for table `primarycare`
--
ALTER TABLE `primarycare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
