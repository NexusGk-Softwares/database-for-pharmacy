-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2018 at 08:41 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_of_patient`
--

CREATE TABLE `account_of_patient` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(100) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `Doctor_Cost` varchar(100) NOT NULL,
  `Nurse_Cost` varchar(177) NOT NULL,
  `Room_Cost` varchar(345) NOT NULL,
  `Medicine_Cost` varchar(111) NOT NULL,
  `Extra_Cost` varchar(111) NOT NULL,
  `Total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_of_patient`
--

INSERT INTO `account_of_patient` (`id`, `patient_id`, `patient_name`, `Doctor_Cost`, `Nurse_Cost`, `Room_Cost`, `Medicine_Cost`, `Extra_Cost`, `Total`) VALUES
(1, '123', 'rrrf', '3', '2', '3', '4', '2', '14'),
(2, '123456', 'hhjjj', '7', '7', '9', '5', '8', '36'),
(3, '4567', 'kvkgu', '900', '500', '6790', '765', '543', '9498'),
(4, '999', 'mmm', '90', '7', '56', '56', '87', '296'),
(5, '999', 'mmm', '90', '7', '56', '56', '87', '296');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(111) NOT NULL,
  `username` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `st_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `st_id`, `level`) VALUES
(1, 'min', 'min', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(100) NOT NULL,
  `full_Name` varchar(100) NOT NULL,
  `address` varchar(177) NOT NULL,
  `gender` varchar(345) NOT NULL,
  `t_bday` date NOT NULL,
  `usr_time` time NOT NULL,
  `emp_name` varchar(111) NOT NULL,
  `emp_phone` varchar(1111) NOT NULL,
  `emp_address` varchar(111) NOT NULL,
  `emp_gender` varchar(111) NOT NULL,
  `emp_age` varchar(111) NOT NULL,
  `set_Category` varchar(234) NOT NULL,
  `set_usr_time` time NOT NULL,
  `folor_no` varchar(234) NOT NULL,
  `room_no` varchar(234) NOT NULL,
  `set_no` varchar(233) NOT NULL,
  `Doctor_id` varchar(222) NOT NULL,
  `Doctor_name` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_info`
--

INSERT INTO `patient_info` (`id`, `patient_id`, `full_Name`, `address`, `gender`, `t_bday`, `usr_time`, `emp_name`, `emp_phone`, `emp_address`, `emp_gender`, `emp_age`, `set_Category`, `set_usr_time`, `folor_no`, `room_no`, `set_no`, `Doctor_id`, `Doctor_name`) VALUES
(1, '15103283', 'minhazul islam min', 'uttara', 'male', '2016-11-24', '01:59:00', 'haris ', '01744408362', 'u', 'male', '21', 'ac', '01:59:00', '1st_folor', 'Room#102', 'SEAT-2', '12345', 'dr.hafez'),
(2, '123', 'suman', 'uttara', 'male', '2016-11-17', '16:33:00', 'mm ', '09876543', 'dhaka', 'male', '43', 'VIP', '17:06:00', '1st_folor', 'Room#103', 'SEAT-1', '12345', 'dffg');

-- --------------------------------------------------------

--
-- Table structure for table `priscription_page`
--

CREATE TABLE `priscription_page` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(100) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `r_bday` date NOT NULL,
  `Gender` varchar(345) NOT NULL,
  `Age` varchar(1111) NOT NULL,
  `address` varchar(1111) NOT NULL,
  `medicine` mediumtext NOT NULL,
  `test` varchar(1111) NOT NULL,
  `doctor_id` varchar(1111) NOT NULL,
  `doctor_name` varchar(1111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `priscription_page`
--

INSERT INTO `priscription_page` (`id`, `patient_id`, `patient_name`, `r_bday`, `Gender`, `Age`, `address`, `medicine`, `test`, `doctor_id`, `doctor_name`) VALUES
(3, '1515', 'Rohan', '2018-02-02', 'female', '23', 'uttara,dhaka', 'h+', 'No test', '1510', 'Dr.Akash');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `Cetagory` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `pic` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `password`, `Cetagory`, `email`, `pic`) VALUES
(14203073, 'Asma Akter Munni', 'munni', 'Doctor', 'asmunni96@gmail.com', '1ADC5C13-7410-6962-1651-6079A328A90A.jpg'),
(15103000, 'Mehedi Hasan', 'min', 'Doctor', 'hasan@gmail.com', '3599480A-E0BD-1094-4F4D-EECAFF6A67C0.jpg'),
(15103283, 'minhazul-min', 'min', 'Doctor', 'minhazul234@gmail.com', '04E975C3-60F8-FECD-9710-480483527824.jpg'),
(15103363, 'sadia islam', 'sadia1996', 'Doctor', 'sadiaislam9423@gmail.com', 'B961DC4C-34EE-47D7-0592-ED01D01A21AA.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `release_peper`
--

CREATE TABLE `release_peper` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(100) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `r_bday` date NOT NULL,
  `release_time` time NOT NULL,
  `gender` varchar(100) NOT NULL,
  `Age` varchar(177) NOT NULL,
  `cost` varchar(345) NOT NULL,
  `doctor_id` varchar(111) NOT NULL,
  `doctor_name` varchar(111) NOT NULL,
  `Permition_result` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `release_peper`
--

INSERT INTO `release_peper` (`id`, `patient_id`, `patient_name`, `r_bday`, `release_time`, `gender`, `Age`, `cost`, `doctor_id`, `doctor_name`, `Permition_result`) VALUES
(1, '23456', 'min', '0000-00-00', '00:00:00', 'male', '22', 'due', '1234', 'har', 'YES'),
(2, '1234', 'gim', '2016-11-03', '02:59:00', 'female', '21', 'paid', '123', 'fmd', 'NO'),
(3, '45', 'mmm', '2018-02-07', '13:00:00', 'male', '7', 'paid', '888', 'uuu', 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_of_patient`
--
ALTER TABLE `account_of_patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `priscription_page`
--
ALTER TABLE `priscription_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `release_peper`
--
ALTER TABLE `release_peper`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_of_patient`
--
ALTER TABLE `account_of_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient_info`
--
ALTER TABLE `patient_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `priscription_page`
--
ALTER TABLE `priscription_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15103364;

--
-- AUTO_INCREMENT for table `release_peper`
--
ALTER TABLE `release_peper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
