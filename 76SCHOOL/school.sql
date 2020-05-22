-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2019 at 09:04 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudentsByClass` ()  SELECT s.SCLASS,s.SSEC,s.ID,s.NAME FROM student s , class c WHERE s.SCLASS=c.CNAME and s.SSEC=c.CSEC ORDER BY c.cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(11) NOT NULL,
  `ANAME` varchar(150) NOT NULL,
  `APASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `ANAME`, `APASS`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CID` int(11) NOT NULL,
  `CNAME` varchar(150) NOT NULL,
  `CSEC` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CID`, `CNAME`, `CSEC`) VALUES
(1, 'I', 'A'),
(2, 'I', 'B'),
(3, 'II', 'A'),
(4, 'II', 'B'),
(5, 'III', 'A'),
(6, 'III', 'B'),
(7, 'IV', 'A'),
(8, 'IV', 'B'),
(9, 'V', 'A'),
(10, 'V', 'B'),
(11, 'VI', 'A'),
(12, 'VI', 'B'),
(13, 'VII', 'A'),
(14, 'VII', 'B'),
(15, 'VIII', 'A'),
(16, 'VIII', 'B'),
(17, 'IX', 'A'),
(18, 'IX', 'B'),
(19, 'X', 'A'),
(20, 'X', 'B'),
(21, 'VI', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `EID` int(11) NOT NULL,
  `ENAME` varchar(150) NOT NULL,
  `ETYPE` varchar(150) NOT NULL,
  `EDATE` varchar(150) NOT NULL,
  `SESSION` varchar(150) NOT NULL,
  `CID` int(11) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EID`, `ENAME`, `ETYPE`, `EDATE`, `SESSION`, `CID`, `CLASS`, `SUB`) VALUES
(1, 'TERM', 'II-Term', '18-11-2019', 'AN', 0, 'V', 'MATHS'),
(2, 'TERM', 'II-TERM', '19-11-2019', 'MO', 0, 'IX', 'SCIENCE'),
(3, 'TERM', 'II-TERM', '19-11-2019', 'AN', 0, 'III', 'SCIENCE'),
(4, 'TERM', 'II-TERM', '20-11-2019', 'MO', 0, 'V', 'KANNADA'),
(5, 'TERM', 'II-TERM', '19-11-2019', 'MO', 0, 'II', 'HINDI'),
(6, 'TERM', 'II-TERM', '20-11-2019', 'AN', 0, 'VIII', 'ENGLISH'),
(9, 'TERM', 'II-Term', '20-10-2019', 'MO', 0, 'X', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `hclass`
--

CREATE TABLE `hclass` (
  `HID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `CLA` varchar(150) NOT NULL,
  `SEC` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hclass`
--

INSERT INTO `hclass` (`HID`, `TID`, `CID`, `CLA`, `SEC`, `SUB`) VALUES
(8, 1, 0, 'VII', 'A', 'Mathematics'),
(10, 2, 0, 'V', 'B', 'Social'),
(11, 1, 0, 'I', 'B', 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `MID` int(11) NOT NULL,
  `REGNO` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  `MARK` varchar(150) NOT NULL,
  `TERM` varchar(150) NOT NULL,
  `CID` int(11) NOT NULL,
  `CLASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`MID`, `REGNO`, `SUB`, `MARK`, `TERM`, `CID`, `CLASS`) VALUES
(1, 'S101', 'English', '65', 'II-Term', 0, 'III'),
(2, 'S102', 'Kannada', '100', 'II-TERM', 0, 'V'),
(3, 'S101', 'Kannada', '76', 'I-Term', 0, 'III'),
(4, 'S001', 'Computer Science', '76', 'I-Term', 0, 'X'),
(5, 'S03', 'Social', '76', 'I-Term', 0, 'I'),
(6, 'S03', 'Social', '98', 'III-Term', 0, 'I'),
(7, 'S03', 'Mathematics', '100', 'II-Term', 0, 'I'),
(8, 'S03', 'Computer Science', '95', 'I-Term', 0, 'I');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `TID` int(11) NOT NULL,
  `TNAME` varchar(150) NOT NULL,
  `TPASS` varchar(150) NOT NULL,
  `QUAL` varchar(150) NOT NULL,
  `SAL` varchar(150) NOT NULL,
  `PNO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `PADDR` text NOT NULL,
  `IMG` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`TID`, `TNAME`, `TPASS`, `QUAL`, `SAL`, `PNO`, `MAIL`, `PADDR`, `IMG`) VALUES
(1, 'ram', '1234', 'MCA', '15000', '9945181260', 'varunipherle@gmail.com', 'banglore', 'staff/notebook-notepad-pencil-574283.jpg'),
(2, 'Sam', '123', 'MBA', '15000', '9686527365', 'hanushgowrav66@gmail.com', 'Silk Farm', 'staff/new.png'),
(3, 'Kumar', '1234', 'Msc', '35000', '1234567899', 'hanushgowrav66@gmail.com', 'Silk Farm', 'staff/194931.png');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `RNO` varchar(150) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FNAME` varchar(150) NOT NULL,
  `DOB` varchar(150) NOT NULL,
  `GEN` varchar(150) NOT NULL,
  `PHO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `ADDR` text NOT NULL,
  `SCLASS` varchar(150) NOT NULL,
  `SSEC` varchar(150) NOT NULL,
  `SIMG` varchar(150) NOT NULL,
  `TID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `RNO`, `NAME`, `FNAME`, `DOB`, `GEN`, `PHO`, `MAIL`, `ADDR`, `SCLASS`, `SSEC`, `SIMG`, `TID`) VALUES
(1, 'SO1', 'Gowrav', 'Hanush', '06-06-2000', 'M', '9686527365', 'hanushgowrav66@gmail.com', 'Slik Farm', 'X', 'A', 'student/1.png', 1),
(2, 'SO2', 'Abhishek', 'Krishnamurthy', '18-09-1999', 'M', '7894561236', 'aa@gmail.com', 'kamakshipalya', 'I', 'A', 'student/1.png', 1),
(3, 'S03', 'Bharath', 'H S ', '05-05-1999', 'M', '7894556666', 'bhp@gmail.com', 'Banavara', 'I', 'B', 'student/1.png', 1),
(4, 'S04', 'Dhanush', 'Ullas', '26-11-1999', 'M', '7676767676', 'guddi@gmail.com', 'Hospete', 'II', 'A', 'student/1.png', 1),
(5, 'SO5', 'Deeksha', 'A', '19-02-1999', 'F', '8985756452', 'deekshitha@gmail.com', 'Banglore', 'II', 'B', 'student/1.png', 1),
(6, 'SO6', 'Brunda', 'M', '03-06-1999', 'F', '9565656589', 'brunda@gmail.com', 'Kadur', 'III', 'A', 'student/1.png', 1),
(7, 'SO7', 'Anusha', 'S', '06-06-1999', 'F', '9856854785', 'anushas@gmail.com', 'Banglore', 'III', 'B', 'student/1.png', 1),
(8, 'SO8', 'Arun', 'Nel', '23-03-1999', 'M', '95789456214', 'arunnel@gmail.com', 'Nelmangala', 'IV', 'A', 'student/1.png', 1),
(9, 'SO9', 'Amit', 'Biradar', '23-06-2000', 'M', '665856265', 'amit@gmail.com', 'Bidar', 'V', 'A', 'student/1.png', 2),
(10, 'S10', 'Diganth', 'N', '02-05-1999', 'M', '9856588575', 'dstar@gmail.com', 'Srinagar', 'IV', 'B', 'student/1.png', 1),
(11, 'S11', 'Ekansh', 'Gowda', '18-12-1999', 'M', '895685654', 'ekansh@gmail.com', 'Gujrat', 'V', 'B', 'student/1.png\r\n', 2),
(12, 'S12', 'Jawad', 'Khan', '15-02-1999', 'M', '985655487', 'jakp@gmail.com', 'Banglore', 'VI', 'A', 'student/1.png\r\n', 2),
(13, 'S13', 'Gaurav', 'Yelmuri', '06-11-1999', 'M', '7894563215', 'yelmuri@gmail.com', 'Banglore', 'VII', 'A', 'student/1.png\r\n', 2),
(14, 'S14', 'Harshit', 'Diwakar', '08-05-1999', 'M', '85858589585', 'hdiwakar@gmail.com', 'Banglore', 'VI', 'B', 'student/1.png\r\n', 2),
(15, 'S15', 'Harshit', 'Kashi', '03-12-1999', 'M', '5625854524', 'kashi@gmail.com', 'Sagara', 'VII', 'B', 'student/1.png\r\n', 2),
(16, 'S16', 'Dhruvitha', 'Banugaria', '15-12-1999', 'F', '9876545625', 'db@gmail.com', 'Gujrat', 'VIII', 'A', 'student/1.png\r\n', 2),
(17, 'S17', 'Varuni', 'H', '05-09-1999', 'F', '7854269854', 'vherle@gmail.com', 'Udupi', 'VIII', 'B', 'student/1.png\r\n', 2),
(18, 'S18', 'Anish', 'GK', '14-12-1999', 'M', '9658965896', 'anishgk@gmail.com', 'Gangur', 'IX', 'A', 'student/1.png\r\n', 2),
(19, 'S19', 'Abbas', 'K T ', '22-05-1998', 'M', '8547556865', 'abbas@gmail.com', 'Banglore', 'IX', 'B', 'student/1.png\r\n', 2),
(20, 'S20', 'Atul', 'MB', '15-05-1999', 'M', '9858585757', 'atulmb@gmail.com', 'Banglore', 'X', 'B', 'student/1.png\r\n', 2),
(21, 'S21', 'Allen', 'A', '26-05-1999', 'M', '98745698569', 'allen@gmail.com', 'Kochi', 'X', 'B', 'student/1.png\r\n', 2),
(22, 'S22', 'hh', 'gg', '21-10-2000', 'Male', '1234567654', 'hanushgowrav66@gmail.com', 'Silk Farm', 'II', 'C', 'student/photo-1513542789411-b6a5d4f31634.jpeg', 2);

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `76trig` BEFORE INSERT ON `student` FOR EACH ROW INSERT INTO triggertime VALUES (NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `SID` int(11) NOT NULL,
  `SNAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`SID`, `SNAME`) VALUES
(1, 'Kannada'),
(2, 'English'),
(3, 'Hindi'),
(4, 'Mathematics'),
(5, 'Science'),
(6, 'Social'),
(14, 'Computer Science'),
(15, 'Hindi');

-- --------------------------------------------------------

--
-- Table structure for table `triggertime`
--

CREATE TABLE `triggertime` (
  `exectime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `triggertime`
--

INSERT INTO `triggertime` (`exectime`) VALUES
('2019-11-08 21:39:54'),
('2019-11-08 21:45:26'),
('2019-11-08 21:45:28'),
('2019-11-08 21:47:44'),
('2019-11-08 21:47:45'),
('2019-11-08 23:34:11'),
('2019-11-08 23:34:24'),
('2019-11-10 21:37:39'),
('2019-11-10 21:38:31'),
('2019-11-10 23:14:12'),
('2019-11-10 23:21:58'),
('2019-11-10 23:23:48'),
('2019-11-10 23:25:11'),
('2019-11-10 23:27:00'),
('2019-11-10 23:27:00'),
('2019-11-10 23:29:04'),
('2019-11-10 23:29:04'),
('2019-11-10 23:33:28'),
('2019-11-10 23:33:28'),
('2019-11-10 23:35:26'),
('2019-11-10 23:35:26'),
('2019-11-10 23:36:27'),
('2019-11-10 23:37:55'),
('2019-11-10 23:39:52'),
('2019-11-10 23:39:52'),
('2019-11-10 23:40:40'),
('2019-11-10 23:43:52'),
('2019-11-10 23:43:52'),
('2019-11-10 23:45:29'),
('2019-11-10 23:45:29'),
('2019-11-12 15:19:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`EID`),
  ADD KEY `SUB` (`SUB`),
  ADD KEY `CLASS` (`CLASS`),
  ADD KEY `SUB_2` (`SUB`),
  ADD KEY `c` (`CID`);

--
-- Indexes for table `hclass`
--
ALTER TABLE `hclass`
  ADD PRIMARY KEY (`HID`),
  ADD KEY `TID` (`TID`),
  ADD KEY `CID` (`CID`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`MID`),
  ADD KEY `SUB` (`SUB`),
  ADD KEY `CID` (`CID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TID` (`TID`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`SID`,`SNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hclass`
--
ALTER TABLE `hclass`
  MODIFY `HID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hclass`
--
ALTER TABLE `hclass`
  ADD CONSTRAINT `hclass_ibfk_1` FOREIGN KEY (`TID`) REFERENCES `staff` (`TID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`TID`) REFERENCES `staff` (`TID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
