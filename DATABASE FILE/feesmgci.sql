-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 08:24 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feesmgci`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_payments_tbl`
--

CREATE TABLE `all_payments_tbl` (
  `ID` int(11) NOT NULL,
  `STUDENT` int(11) NOT NULL,
  `AMOUNT_PAID` int(11) NOT NULL,
  `EXPIRE_DATE` date NOT NULL,
  `ALERT` tinyint(1) NOT NULL,
  `SESSION` varchar(100) NOT NULL,
  `CLASS` int(11) NOT NULL,
  `TERM` int(11) NOT NULL,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('6qajhtbj185e2801rr1buk093dqmhklq', '::1', 1625065497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036353438383b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b),
('m4sam4t2l90tkj1ahoeb1p0l4725ulsq', '::1', 1625066072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036353739333b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b636f6d706c657465647c733a32393a22416374696f6e20436f6d706c65746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a393a22636f6d706c65746564223b733a333a226f6c64223b7d),
('4qa3us7fh3mml4mm7uf2oqgblgfgepm2', '::1', 1625066097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036363039373b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b),
('qfspj2gcl0bgjibcjsa686th37tn7jmd', '::1', 1625066440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036363434303b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b),
('d6ascspbemikv2n72feq8gfvqbmc26cq', '::1', 1625066776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036363737363b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b),
('rek8vrn77ceerh0au0qielf1sgi3b3k1', '::1', 1625067215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036373038373b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b),
('l4a9j1ipq93n08anr6t8jiucgjbfrj6n', '::1', 1625067801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036373530313b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b636f6d706c657465647c733a32393a22416374696f6e20436f6d706c65746564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a393a22636f6d706c65746564223b733a333a226f6c64223b7d),
('0bkkut3ri2497v8onb5rrj7574huj0lb', '::1', 1625067868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036373830363b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b),
('lguimjs91tlqnmgam90o9h6nq7v8ufdp', '::1', 1625068368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036383336383b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b),
('ta8tgs9g9niq7ucbmalf5m5i1o725mg5', '::1', 1625068936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036383637343b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b),
('hb1vtjm6v6o76nvn0rnk4gacnqtpkbci', '::1', 1625068993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036383938313b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b),
('hg5mf2dbfq32gd5cqnlesgrbmchjnq65', '::1', 1625069388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036393338383b),
('9b9v6hml4npt7hf050i22pik0njprik4', '::1', 1625069632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036393430353b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b),
('418saiafslr8gpjl2uh10h1bk0ncabf1', '::1', 1625070020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353036393732303b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b),
('ljoghftnqlgco9l3dpbbuf0q539h7pkp', '::1', 1625070235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353037303139323b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b656e726f6c6c5f69645f6475657c733a323a223231223b5f5f63695f766172737c613a323a7b733a31333a22656e726f6c6c5f69645f647565223b733a333a226e6577223b733a31313a226475655f7061796d656e74223b733a333a226e6577223b7d6475655f7061796d656e747c733a31313a225061796d656e7420447565223b),
('jdqa3eksrhbbvar6tmk40bgannknje9p', '::1', 1625070596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353037303539363b),
('6fdhth5fe73h3toagjagt4jua26h2iki', '::1', 1625070716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353037303731363b),
('i7l95rkjdhef7jfqei1q8p9kca3ld2i0', '::1', 1625204712, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353230343539373b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b656e726f6c6c5f69645f6475657c733a323a223231223b5f5f63695f766172737c613a323a7b733a31333a22656e726f6c6c5f69645f647565223b733a333a226e6577223b733a31313a226475655f7061796d656e74223b733a333a226e6577223b7d6475655f7061796d656e747c733a31313a225061796d656e7420447565223b),
('f21tme4i01g77atq2d3imp5hruc89qtd', '::1', 1625205351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353230353335313b),
('9m1a3et00q1a8e7odrkdvs587lm2vpue', '::1', 1625207040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632353230373033313b6c6f67696e5f69647c733a313a2233223b6c6f67696e5f656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b6c6f67696e5f6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f707269767c733a353a2261646d696e223b6c6f67696e5f636865636b7c733a363a22676f40796573223b);

-- --------------------------------------------------------

--
-- Table structure for table `class_tbl`
--

CREATE TABLE `class_tbl` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `FEES` int(11) NOT NULL,
  `SESSION` varchar(100) NOT NULL,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_tbl`
--

INSERT INTO `class_tbl` (`ID`, `NAME`, `FEES`, `SESSION`, `CREATION_DATE`) VALUES
(5, 'Eight', 2760, '2020-2021', '2021-06-29 16:08:02'),
(6, 'Nine', 5250, '2020-2021', '2021-06-29 17:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `parent_tbl`
--

CREATE TABLE `parent_tbl` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `PHONE` varchar(100) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `PASSWORD` varchar(150) NOT NULL,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_tbl`
--

INSERT INTO `parent_tbl` (`ID`, `NAME`, `PHONE`, `ADDRESS`, `EMAIL`, `PASSWORD`, `CREATION_DATE`) VALUES
(1, 'William Davis', '7125458700', '3797  Walton Street', 'davis@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-09-04 14:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `payment_tbl`
--

CREATE TABLE `payment_tbl` (
  `ID` int(11) NOT NULL,
  `STUDENT` int(11) NOT NULL,
  `TOTAL_AMOUNT` int(11) NOT NULL,
  `AMOUNT_PAID` int(11) NOT NULL,
  `AMOUNT_PENDING` int(11) NOT NULL,
  `SESSION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_tbl`
--

INSERT INTO `payment_tbl` (`ID`, `STUDENT`, `TOTAL_AMOUNT`, `AMOUNT_PAID`, `AMOUNT_PENDING`, `SESSION`) VALUES
(27, 27, 2760, 0, 2760, '2020-2021');

-- --------------------------------------------------------

--
-- Table structure for table `settings_tbl`
--

CREATE TABLE `settings_tbl` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL,
  `PHONE` varchar(100) NOT NULL,
  `SESSION` varchar(100) NOT NULL,
  `BANK` varchar(200) NOT NULL,
  `ACC_NAME` varchar(150) NOT NULL,
  `ACC_NUMBER` varchar(100) NOT NULL,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings_tbl`
--

INSERT INTO `settings_tbl` (`ID`, `NAME`, `ADDRESS`, `PHONE`, `SESSION`, `BANK`, `ACC_NAME`, `ACC_NUMBER`, `CREATION_DATE`) VALUES
(1, 'WestView School', '3709  Gladwell Street', '06993027530', '2020-2021', 'Astro Bank', 'WestView School', '739239390001', '2019-08-25 17:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `PARENT` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `CLASS` int(11) NOT NULL,
  `SESSION` varchar(100) NOT NULL,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `PARENT`, `NAME`, `CLASS`, `SESSION`, `CREATION_DATE`) VALUES
(27, 1, 'Aaron Davis', 5, '2020-2021', '2021-07-02 05:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `term_tbl`
--

CREATE TABLE `term_tbl` (
  `ID` int(11) NOT NULL,
  `CLASS_ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `FEES` int(11) NOT NULL,
  `SESSION` varchar(100) NOT NULL,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term_tbl`
--

INSERT INTO `term_tbl` (`ID`, `CLASS_ID`, `NAME`, `FEES`, `SESSION`, `CREATION_DATE`) VALUES
(6, 5, 'Autumn Term', 920, '2020-2021', '2021-06-29 16:13:22'),
(7, 5, 'Spring Term', 920, '2020-2021', '2021-06-29 17:38:01'),
(8, 5, 'Summer Term', 920, '2020-2021', '2021-06-29 17:42:36'),
(9, 6, 'Autumn Term', 1580, '2020-2021', '2021-06-30 15:14:02'),
(10, 6, 'Spring Term', 1580, '2020-2021', '2021-06-30 15:14:18'),
(11, 6, 'Summer Term', 1580, '2020-2021', '2021-06-30 15:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(200) NOT NULL,
  `PRIV` varchar(100) NOT NULL,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`ID`, `NAME`, `EMAIL`, `PASSWORD`, `PRIV`, `CREATION_DATE`) VALUES
(3, 'Administrator', 'admin@gmail.com', 'D00F5D5217896FB7FD601412CB890830', 'admin', '2019-09-02 13:36:20'),
(4, 'Standard', 'standard@admin.com', '5F4DCC3B5AA765D61D8327DEB882CF99', 'standard', '2019-09-02 13:36:51'),
(5, 'Christine Moore', 'moore@gmail.com', '5F4DCC3B5AA765D61D8327DEB882CF99', 'standard', '2021-06-29 16:50:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_payments_tbl`
--
ALTER TABLE `all_payments_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `class_tbl`
--
ALTER TABLE `class_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `parent_tbl`
--
ALTER TABLE `parent_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment_tbl`
--
ALTER TABLE `payment_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `settings_tbl`
--
ALTER TABLE `settings_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `term_tbl`
--
ALTER TABLE `term_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_payments_tbl`
--
ALTER TABLE `all_payments_tbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `class_tbl`
--
ALTER TABLE `class_tbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `parent_tbl`
--
ALTER TABLE `parent_tbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `payment_tbl`
--
ALTER TABLE `payment_tbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `settings_tbl`
--
ALTER TABLE `settings_tbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `term_tbl`
--
ALTER TABLE `term_tbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
