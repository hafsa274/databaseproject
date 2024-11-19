-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(41, 61, 'Muhammad', 'Awais', 'Male', 'awais@gmail.com', '9876543210', 'Muhammad Awais', 1200, '2024-05-24', '10:00:00', 1, 0),
(42, 62, 'Jawad', 'Ur Rehman', 'Male', 'jawad@gmail.com', '9876543210', 'Jawad Ur Rehman', 1000, '2024-05-28', '10:00:00', 0, 1),
(43, 63, 'Roheen', 'Ahmad', 'Male', 'roheen@gmail.com', '9876543210', 'Roheen Ahmad', 1000, '2024-05-19', '03:00:00', 0, 1),
(44, 64, 'Mashhood', 'Rana', 'male', 'mashhood@gmail.com', '9876543210', 'Jawad Ur Rehman', 1000, '2024-05-29', '20:00:00', 1, 1),
(45, 65, 'Faiq', 'Atta', 'Male', 'faiq@gmail.com', '9876543210', 'Roheen Ahmad', 1000, '2024-05-28', '12:00:00', 1, 1),
(46, 66, 'Saad', 'Wasaay', 'Male', 'saad@gmail.com', '9876543210', 'Muhammad Awais', 1200, '2024-05-26', '15:00:00', 0, 1),
(47, 68, 'Huzaifa', 'Tariq', 'male', 'huzaifa@gmail.com', '9876543210', 'Muhammad Awais', 1200, '2024-05-21', '10:00:00', 1, 1),
(48, 69, 'Muhammad', 'Usman', 'Male', 'usman@gmail.com', '9876543210', 'Muhammad Awais', 1200, '2024-05-19', '20:00:00', 1, 0),
(49, 70, 'Hussnain', 'Khattak', 'Male', 'hussnain@gmail.com', '9876543210', 'Muhammad Awais', 1200, '0000-00-00', '14:00:00', 1, 0),
(50, 71, 'Ali', 'Aoun', 'Male', 'ali@gmail.com', '9876543210', 'Jawad Ur Rehman', 1000, '2024-05-27', '15:00:00', 1, 1),
(51, 72, 'Fasih', 'Ur Rehman', 'Male', 'fasih@gmail.com', '9876543210', 'Jawad ur Rehman', 1000, '2024-05-26', '12:00:00', 1, 1),
(52, 73, 'Arslan', 'Khan', 'Male', 'arslan@gmail.com', '9876543210', 'Roheen Ahmad', 1000, '2024-05-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Faiq Atta', 'faiq@gmail.com', '9876543210', 'Hey Admin'),
('Mashhood Rana', 'mashhood@gmail.com', '9876543210', 'Good Job, Pal'),
('Saad Wasaay', 'saad@gmail.com', '9876543210', 'How can I reach you?'),
('Huzaifa Tariq', 'huzaifa@gmail.com', '9876543210', 'Love your site'),
('Muhammad Usman', 'usman@gmail.com', '8977768978', 'Want some coffee?'),
('Ali Aoun', 'ali@gmail.com', '9898989898', 'Good service'),
('Hussnain Khattak', 'hussnain@gmail.com', '8979776868', 'Love your service'),
('Fasih Ur Rehman', 'fasih@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Arslan Khan', 'arslan@gmail.com', '7869869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Muhammad Awais', 'awais1', 'awais@gmail.com', 'General', 1200),
('Muhammad Awais', 'awais2', 'awais2@gmail.com', 'Neurologist', 1200),
('Jawad Ur Rehman', 'jawad1', 'jawad@gmail.com', 'General', 1000),
('Roheen Ahmad', 'roheen1', 'roheen@gmail.com', 'Cardiologist', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(41, 'Muhammad', 'Awais', 'Male', 'awais@gmail.com', '9876543210', 'awais1', 'awais1' ),
(42, 'Jawad', 'Ur Rehman', 'Male', 'jawad@gmail.com', '9876543210', 'jawad1', 'jawad1' ),
(43, 'Roheen', 'Ahmad', 'Male', 'roheen@gmail.com', '9876543210', 'roheen1', 'roheen1' ),
(44, 'Mashhood', 'Rana', 'male', 'mashhood@gmail.com', '9876543210','mashhood1','mashhood1' ),
(45, 'Faiq', 'Atta', 'Male', 'faiq@gmail.com', '9876543210','faiq1','faiq1' ),
(46, 'Saad', 'Wasaay', 'Male', 'saad@gmail.com', '9876543210', 'saad1', 'saad1'),
(47, 'Huzaifa', 'Tariq', 'male', 'huzaifa@gmail.com', '9876543210','huzaifa1','huzaifa1' ),
(48, 'Muhammad', 'Usman', 'Male', 'usman@gmail.com', '9876543210','usman1','usman1' ),
(49, 'Hussnain', 'Khattak', 'Male', 'hussnain@gmail.com', '9876543210','hussnain1','hussnain1' ),
(50, 'Ali', 'Aoun', 'Male', 'ali@gmail.com', '9876543210','ali1','ali1' ),
(51, 'Fasih', 'Ur Rehman', 'Male', 'fasih@gmail.com', '9876543210','fasih1','fasih1' ),
(52, 'Arslan', 'Khan', 'Male', 'arslan@gmail.com', '9876543210','arslan1','arslan1' );


-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Muhammad Awais', 44, 64, 'Mashhood', 'Rana', '2024-05-29', '20:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Muhammad Awais', 45, 65, 'Faiq', 'Atta', '2024-05-28', '12:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Jawad Ur Rehman', 46, 66, 'Saad', 'Wasaay', '2024-05-26', '15:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Roheen Ahmad', 47, 67, 'Huzaifa', 'Tariq', '2024-05-21', '10:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
