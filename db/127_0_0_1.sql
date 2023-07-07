-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 01:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookpatanews`
--
CREATE DATABASE IF NOT EXISTS `bookpatanews` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookpatanews`;

-- --------------------------------------------------------

--
-- Table structure for table `qr_code`
--

CREATE TABLE `qr_code` (
  `id` int(11) NOT NULL,
  `link_enter` text DEFAULT NULL,
  `qrcode` text DEFAULT NULL,
  `dayx` varchar(250) NOT NULL,
  `monthx` varchar(250) NOT NULL,
  `yearx` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qr_code`
--

INSERT INTO `qr_code` (`id`, `link_enter`, `qrcode`, `dayx`, `monthx`, `yearx`) VALUES
(14, 'OkpZ6lEyHLo8tdKsCYrjh9waQRNcT5nDgz7eSBM3UGqJVxPXuWFvfb21mIAi40', 'https://getbootstrap.com/docs/5.3/components/accordion/', '2023-01-18', '2023-01-', '2023-'),
(15, 'r2Ht3SD0Q5w1KCOjceNV8oFfATsXkubIqP6ynELp4mlYMRgvzGaBUhxidW7J9Z', 'https://calendly.com/app/signup?lang=en', '2023-01-18', '2023-01', '2023'),
(16, 'hJOlog7YNtQTd0yVpfUrBniX1qbWmHPKeZzFuCjIE52DRAGwvsS3x6LaM9k8c4', 'https://asana.com/?noredirect', '2023-01-18', '2023-01', '2023'),
(17, 'smaOwkxICB5Z169qJAHXMEbQPyet7WcjVFDhKzS4oNrfRlUvLnTYp302g8duGi', 'https://laravel.com/docs/9.x/installation', '2023-01-18', '2023-01', '2023'),
(18, '3DUkHBmXMW0aze14pdv6w7FTAiqcYxJCn9NZfy2sGbRhIugSltE5LoP8KOQVjr', 'https://fontawesome.com/v4/icon/qrcode', '2023-01-18', '2023-01', '2023'),
(19, 'ZMNhnm0a9y2ARCv4IG5ObLkwK7FVtSTPHprUdDzJXsqgxeoEjulY18fQB6icW3', 'https://getbootstrap.com/docs/5.3/components/accordion/', '2023-01-18', '2023-01', '2023'),
(20, '1eA2OVEZsmMJQWS37D9UojBpuzdwkFHtXxraL6cyvgNKTY4qi5PlnGR8h0fbIC', 'https://laravel.com/docs/9.x/installation', '2023-01-18', '2023-01', '2023'),
(21, 'uFOr81xB2R79t5zHIUKklDWJq4sTm6jXMbEca0dSphPVoAZNnwgfviLQCY3yGe', 'https://fontawesome.com/v4/icon/qrcode', '2023-01-18', '2023-01', '2023'),
(22, 'XUmA5QeCGI2qLMTSkb3txNoys7JRY4Wz0KrnPd6lvDVgwjFaBiZuOchp1Hf98E', 'https://calendly.com/app/signup?lang=en', '2023-01-18', '2023-01', '2023'),
(23, 'WvDfyxsK5LVlo2YOgnqhc1EmQC9dU87bjAiGZ6peTawrFSNRuJt4XHMkBzP0I3', 'https://calendly.com/app/signup', '2023-01-18', '2023-01', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `emails` varchar(250) NOT NULL,
  `fllname` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `countri` varchar(250) NOT NULL,
  `citi` varchar(250) NOT NULL,
  `passwords` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `emails`, `fllname`, `gender`, `countri`, `citi`, `passwords`) VALUES
(1, 'fikiriabramsg@gmail.com', 'Abraham Muller', 'Male', 'Burundi', 'Bujumbura', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `user_document`
--

CREATE TABLE `user_document` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `folder_id` text NOT NULL,
  `doc_name` varchar(250) NOT NULL,
  `doc_link` varchar(250) NOT NULL,
  `doc_ext` varchar(250) NOT NULL,
  `doc_date` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_document`
--

INSERT INTO `user_document` (`id`, `email`, `folder_id`, `doc_name`, `doc_link`, `doc_ext`, `doc_date`) VALUES
(9, 'fikiriabramsg@gmail.com', '6qRBcFuQ5iZ0L1Cpdas2UIr7Tjn9VHlYOfEW8btxm4gGJDyMkXPoNwhSzAKve3', '1673629666_PSI projet de  sensibilisation contre le paludisme.pdf', 'Q10ZIyOWJXcMSVns9D5N4pExbBTYt7ue2fA6GkdzKHqlgrRP3L', '.pdf', '2023-01-13'),
(10, 'fikiriabramsg@gmail.com', 'd7VW4mFKj2NY5IESntBPClzvouqHUXsQkb08axwhf1pD3ORcZ6gMyeAGTirJ9L', '1673942387_ONU BOURSES CEA.pdf', '3uAeRH7y24x8f0rg6YKUhnb1jJqFaGisdm5kLDCW9tclZXEPOp', '.pdf', '2023-01-17'),
(11, 'fikiriabramsg@gmail.com', '6qRBcFuQ5iZ0L1Cpdas2UIr7Tjn9VHlYOfEW8btxm4gGJDyMkXPoNwhSzAKve3', '1674195460_Screenshot (1).png', 'n2rCAyYPmU8MwKh9TtWc4VpI0ldqLsH7ufBvb3kgDJzSFRjGXQ', '.png', '2023-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `user_folder`
--

CREATE TABLE `user_folder` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `folder_id` text NOT NULL,
  `folder_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_folder`
--

INSERT INTO `user_folder` (`id`, `email`, `folder_id`, `folder_name`) VALUES
(1, 'fikiriabramsg@gmail.com', 'sqLlCdFSyKDvtHGx4JPhw6rAbgaY5uf128XcoURjW3IiV9nze0BMk7QENpTmOZ', 'Univeristy'),
(2, 'fikiriabramsg@gmail.com', '9SDzfKaOsQWXxCjA5ZnVRteMpI3BcgPG1F0k6v7yUYuTlmrJNLq4oH2Eid8hbw', 'Education'),
(3, 'fikiriabramsg@gmail.com', 'C9qyusL4KPpmiGJNrSQ2dMHjw35hRU7ToOcIBn1fxzeEDXk0va8ZVAYtgl6bWF', 'SOKONI'),
(4, 'fikiriabramsg@gmail.com', 'd7VW4mFKj2NY5IESntBPClzvouqHUXsQkb08axwhf1pD3ORcZ6gMyeAGTirJ9L', 'UN Volunteers'),
(5, 'fikiriabramsg@gmail.com', '6qRBcFuQ5iZ0L1Cpdas2UIr7Tjn9VHlYOfEW8btxm4gGJDyMkXPoNwhSzAKve3', 'BAHATI Image');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qr_code`
--
ALTER TABLE `qr_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_document`
--
ALTER TABLE `user_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_folder`
--
ALTER TABLE `user_folder`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qr_code`
--
ALTER TABLE `qr_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_document`
--
ALTER TABLE `user_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_folder`
--
ALTER TABLE `user_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `dragonhousedb`
--
CREATE DATABASE IF NOT EXISTS `dragonhousedb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dragonhousedb`;

-- --------------------------------------------------------

--
-- Table structure for table `tblaccomodation`
--

CREATE TABLE `tblaccomodation` (
  `ACCOMID` int(11) NOT NULL,
  `ACCOMODATION` varchar(30) NOT NULL,
  `ACCOMDESC` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccomodation`
--

INSERT INTO `tblaccomodation` (`ACCOMID`, `ACCOMODATION`, `ACCOMDESC`) VALUES
(12, 'Standard Room', 'max 22hrs.'),
(13, 'Travelers Time', 'max of 12hrs.'),
(15, 'Bayanihan Room', 'max 22hrs.');

-- --------------------------------------------------------

--
-- Table structure for table `tblauto`
--

CREATE TABLE `tblauto` (
  `autoid` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauto`
--

INSERT INTO `tblauto` (`autoid`, `start`, `end`) VALUES
(1, 11122, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfirstpartition`
--

CREATE TABLE `tblfirstpartition` (
  `FirstPID` int(11) NOT NULL,
  `FirstPTitle` text NOT NULL,
  `FirstPImage` varchar(99) NOT NULL,
  `FirstPSubTitle` text NOT NULL,
  `FirstPDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfirstpartition`
--

INSERT INTO `tblfirstpartition` (`FirstPID`, `FirstPTitle`, `FirstPImage`, `FirstPSubTitle`, `FirstPDescription`) VALUES
(1, 'Welcome to Dragon House', '5page-img1.png', 'In our Hotel', 'Located on the hills of Nice, a short distance from the famous Promenade des Anglais, Hotel Anis is one of the hotels in the Costa Azzurra (or Blue Coast) able to satisfy the different needs of its guests with comfort and first rate services. It is only 2 km from the airport and from highway exits. The hotel has a large parking area , a real luxury in a city like Nice.');

-- --------------------------------------------------------

--
-- Table structure for table `tblguest`
--

CREATE TABLE `tblguest` (
  `GUESTID` int(11) NOT NULL,
  `REFNO` int(11) NOT NULL,
  `G_FNAME` varchar(30) NOT NULL,
  `G_LNAME` varchar(30) NOT NULL,
  `G_CITY` varchar(90) NOT NULL,
  `G_ADDRESS` varchar(90) NOT NULL,
  `DBIRTH` date NOT NULL,
  `G_PHONE` varchar(20) NOT NULL,
  `G_NATIONALITY` varchar(30) NOT NULL,
  `G_COMPANY` varchar(90) NOT NULL,
  `G_CADDRESS` varchar(90) NOT NULL,
  `G_TERMS` tinyint(4) NOT NULL,
  `G_EMAIL` varchar(99) NOT NULL,
  `G_UNAME` varchar(255) NOT NULL,
  `G_PASS` varchar(255) NOT NULL,
  `ZIP` int(11) NOT NULL,
  `LOCATION` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblmeal`
--

CREATE TABLE `tblmeal` (
  `MealID` int(11) NOT NULL,
  `MealType` varchar(90) NOT NULL,
  `MealPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmeal`
--

INSERT INTO `tblmeal` (`MealID`, `MealType`, `MealPrice`) VALUES
(4, 'Lunch', 10),
(7, 'HB', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `SUMMARYID` int(11) NOT NULL,
  `TRANSDATE` datetime NOT NULL,
  `CONFIRMATIONCODE` varchar(30) NOT NULL,
  `PQTY` int(11) NOT NULL,
  `GUESTID` int(11) NOT NULL,
  `SPRICE` double NOT NULL,
  `MSGVIEW` tinyint(1) NOT NULL,
  `STATUS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblreservation`
--

CREATE TABLE `tblreservation` (
  `RESERVEID` int(11) NOT NULL,
  `CONFIRMATIONCODE` varchar(50) NOT NULL,
  `TRANSDATE` date NOT NULL,
  `ROOMID` int(11) NOT NULL,
  `ARRIVAL` datetime NOT NULL,
  `DEPARTURE` datetime NOT NULL,
  `RPRICE` double NOT NULL,
  `GUESTID` int(11) NOT NULL,
  `PRORPOSE` varchar(30) NOT NULL,
  `STATUS` varchar(11) NOT NULL,
  `BOOKDATE` datetime NOT NULL,
  `REMARKS` text NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `ROOMID` int(11) NOT NULL,
  `ROOMNUM` int(11) NOT NULL,
  `ACCOMID` int(11) NOT NULL,
  `ROOM` varchar(30) NOT NULL,
  `ROOMDESC` varchar(255) NOT NULL,
  `NUMPERSON` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `ROOMIMAGE` varchar(255) NOT NULL,
  `OROOMNUM` int(11) NOT NULL,
  `RoomTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblroom`
--

INSERT INTO `tblroom` (`ROOMID`, `ROOMNUM`, `ACCOMID`, `ROOM`, `ROOMDESC`, `NUMPERSON`, `PRICE`, `ROOMIMAGE`, `OROOMNUM`, `RoomTypeID`) VALUES
(11, 0, 12, 'Wing A', 'without TV', 1, 10, 'rooms/1.jpg', 1, 0),
(12, 0, 12, 'Wing A', 'Without TV', 2, 15, 'rooms/1.jpg', 1, 0),
(13, 1, 13, 'Wing A', 'Without TV', 1, 445, 'rooms/2.jpg', 3, 0),
(14, 2, 13, 'Wing A', 'Without TV', 2, 495, 'rooms/3.jpg', 4, 0),
(15, 1, 15, 'Wing A', 'Without TV | for groups - minimum of 5 pax | 250php per person', 5, 1250, 'rooms/4.jpg', 1, 0),
(16, -2, 12, 'Wing B and Ground Floor', 'With TV', 1, 725, 'rooms/3page-img13.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblroomtype`
--

CREATE TABLE `tblroomtype` (
  `RoomTypeID` int(11) NOT NULL,
  `RoomType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblslideshow`
--

CREATE TABLE `tblslideshow` (
  `SlideID` int(11) NOT NULL,
  `SlideImage` text NOT NULL,
  `SlideCaption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblslideshow`
--

INSERT INTO `tblslideshow` (`SlideID`, `SlideImage`, `SlideCaption`) VALUES
(15, 'images.jpg', ''),
(16, 'slide-image-3.jpg', ''),
(17, 'header-bg1.jpg', ''),
(18, 'slide-image-3.jpg', ''),
(19, 'Desert.jpg', ''),
(20, 'Koala.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbltitle`
--

CREATE TABLE `tbltitle` (
  `TItleID` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Subtitle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltitle`
--

INSERT INTO `tbltitle` (`TItleID`, `Title`, `Subtitle`) VALUES
(1, 'Dragon House', '24hrs.');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `UNAME` varchar(30) NOT NULL,
  `USER_NAME` varchar(30) NOT NULL,
  `UPASS` varchar(90) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PHONE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `UNAME`, `USER_NAME`, `UPASS`, `ROLE`, `PHONE`) VALUES
(1, 'Anonymous', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 912856478);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_contact`
--

CREATE TABLE `tbl_setting_contact` (
  `SetCon_ID` int(11) NOT NULL,
  `SetConLocation` varchar(99) NOT NULL,
  `SetConEmail` varchar(99) NOT NULL,
  `SetConContactNo` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting_contact`
--

INSERT INTO `tbl_setting_contact` (`SetCon_ID`, `SetConLocation`, `SetConEmail`, `SetConContactNo`) VALUES
(1, 'Guanzon Street, Kabankalan Catholic College Kabankalan City, 6111 philippines', 'kcc_1927@yahoo.com', '(034)471-24-79');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblaccomodation`
--
ALTER TABLE `tblaccomodation`
  ADD PRIMARY KEY (`ACCOMID`);

--
-- Indexes for table `tblauto`
--
ALTER TABLE `tblauto`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `tblfirstpartition`
--
ALTER TABLE `tblfirstpartition`
  ADD PRIMARY KEY (`FirstPID`);

--
-- Indexes for table `tblguest`
--
ALTER TABLE `tblguest`
  ADD PRIMARY KEY (`GUESTID`);

--
-- Indexes for table `tblmeal`
--
ALTER TABLE `tblmeal`
  ADD PRIMARY KEY (`MealID`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `CONFIRMATIONCODE` (`CONFIRMATIONCODE`),
  ADD KEY `GUESTID` (`GUESTID`);

--
-- Indexes for table `tblreservation`
--
ALTER TABLE `tblreservation`
  ADD PRIMARY KEY (`RESERVEID`),
  ADD KEY `ROOMID` (`ROOMID`),
  ADD KEY `GUESTID` (`GUESTID`),
  ADD KEY `CONFIRMATIONCODE` (`CONFIRMATIONCODE`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`ROOMID`),
  ADD KEY `ACCOMID` (`ACCOMID`);

--
-- Indexes for table `tblroomtype`
--
ALTER TABLE `tblroomtype`
  ADD PRIMARY KEY (`RoomTypeID`);

--
-- Indexes for table `tblslideshow`
--
ALTER TABLE `tblslideshow`
  ADD PRIMARY KEY (`SlideID`);

--
-- Indexes for table `tbltitle`
--
ALTER TABLE `tbltitle`
  ADD PRIMARY KEY (`TItleID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tbl_setting_contact`
--
ALTER TABLE `tbl_setting_contact`
  ADD PRIMARY KEY (`SetCon_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccomodation`
--
ALTER TABLE `tblaccomodation`
  MODIFY `ACCOMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblauto`
--
ALTER TABLE `tblauto`
  MODIFY `autoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblfirstpartition`
--
ALTER TABLE `tblfirstpartition`
  MODIFY `FirstPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblguest`
--
ALTER TABLE `tblguest`
  MODIFY `GUESTID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmeal`
--
ALTER TABLE `tblmeal`
  MODIFY `MealID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreservation`
--
ALTER TABLE `tblreservation`
  MODIFY `RESERVEID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `ROOMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblroomtype`
--
ALTER TABLE `tblroomtype`
  MODIFY `RoomTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblslideshow`
--
ALTER TABLE `tblslideshow`
  MODIFY `SlideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbltitle`
--
ALTER TABLE `tbltitle`
  MODIFY `TItleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_contact`
--
ALTER TABLE `tbl_setting_contact`
  MODIFY `SetCon_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `gestion_mattao`
--
CREATE DATABASE IF NOT EXISTS `gestion_mattao` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestion_mattao`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departement`
--

CREATE TABLE `tbl_departement` (
  `id_depart` int(250) NOT NULL,
  `nom_depart` varchar(250) NOT NULL,
  `descri_depart` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_departement`
--

INSERT INTO `tbl_departement` (`id_depart`, `nom_depart`, `descri_depart`) VALUES
(4, 'Informatique', 'The term information and communication technologies refers to a sector of activity and a set of goods that are practical applications of scientific knowledge in'),
(5, 'Busines', 'Accounting is the measurement, processing, and communication of financial information about'),
(6, 'papa', 'aaadd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_mod`
--

CREATE TABLE `tbl_detail_mod` (
  `id_detai` int(250) NOT NULL,
  `id_mod` int(250) NOT NULL,
  `ref_detail` varchar(250) NOT NULL,
  `prix_deta` varchar(250) NOT NULL,
  `datedebu_fo` varchar(250) NOT NULL,
  `datefin_fo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_detail_mod`
--

INSERT INTO `tbl_detail_mod` (`id_detai`, `id_mod`, `ref_detail`, `prix_deta`, `datedebu_fo`, `datefin_fo`) VALUES
(12, 6, 'IF-A1', '25000', '2023-03-02', '2023-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module`
--

CREATE TABLE `tbl_module` (
  `id_mod` int(250) NOT NULL,
  `id_depart` int(250) NOT NULL,
  `titre_mod` varchar(250) NOT NULL,
  `descri_mod` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_module`
--

INSERT INTO `tbl_module` (`id_mod`, `id_depart`, `titre_mod`, `descri_mod`) VALUES
(5, 4, 'Info de gestion', 'Accounting is the measurement, processing, and communication of financial information about'),
(6, 4, 'Reseau', 'sddd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_secretaire`
--

CREATE TABLE `tbl_secretaire` (
  `id_secret` int(250) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nom_secret` varchar(250) NOT NULL,
  `address_secret` varchar(250) NOT NULL,
  `tele_secr` varchar(250) NOT NULL,
  `nation_sec` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_secretaire`
--

INSERT INTO `tbl_secretaire` (`id_secret`, `id_user`, `nom_secret`, `address_secret`, `tele_secr`, `nation_sec`) VALUES
(5, 7, 'Idriss Aberakane', 'carama', '67292715', 'Congolaise');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stagiare`
--

CREATE TABLE `tbl_stagiare` (
  `id_stag` int(250) NOT NULL,
  `id_secret` int(250) NOT NULL,
  `nom_stag` varchar(250) NOT NULL,
  `daten_stag` varchar(250) NOT NULL,
  `email_stag` varchar(250) NOT NULL,
  `sexe_stag` varchar(250) NOT NULL,
  `address_stag` varchar(250) NOT NULL,
  `universi_stag` varchar(250) NOT NULL,
  `faculte_stag` varchar(250) NOT NULL,
  `niveauetud_sta` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stagiares`
--

CREATE TABLE `tbl_stagiares` (
  `id_sta` int(250) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nom_sta` varchar(250) NOT NULL,
  `date_naissa` varchar(250) NOT NULL,
  `mail_sta` varchar(250) NOT NULL,
  `sta_sexe` varchar(250) NOT NULL,
  `address_stag` varchar(250) NOT NULL,
  `sta_univ` varchar(250) NOT NULL,
  `sta_fac` varchar(250) NOT NULL,
  `sta_nivee` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stagiares`
--

INSERT INTO `tbl_stagiares` (`id_sta`, `id_user`, `nom_sta`, `date_naissa`, `mail_sta`, `sta_sexe`, `address_stag`, `sta_univ`, `sta_fac`, `sta_nivee`) VALUES
(8, 7, 'Rachidgb', '2023-03-09', 'rachid@gmail.com', 'F', 'caramaH', 'Lac', 'Bim', 'bac2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(11) NOT NULL,
  `image_util` varchar(250) NOT NULL,
  `nom_utili` varchar(250) NOT NULL,
  `email_util` varchar(123) NOT NULL,
  `password_util` varchar(250) NOT NULL,
  `role_util` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `image_util`, `nom_utili`, `email_util`, `password_util`, `role_util`) VALUES
(4, '', 'Zaina', 'zaina@gmail.com', '123', 'Administrateur'),
(7, '', 'Zlatan', 'zlatan@gmail.com', '123', 'secretaire');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_departement`
--
ALTER TABLE `tbl_departement`
  ADD PRIMARY KEY (`id_depart`);

--
-- Indexes for table `tbl_detail_mod`
--
ALTER TABLE `tbl_detail_mod`
  ADD PRIMARY KEY (`id_detai`),
  ADD KEY `id_mod` (`id_mod`);

--
-- Indexes for table `tbl_module`
--
ALTER TABLE `tbl_module`
  ADD PRIMARY KEY (`id_mod`);

--
-- Indexes for table `tbl_secretaire`
--
ALTER TABLE `tbl_secretaire`
  ADD PRIMARY KEY (`id_secret`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_stagiare`
--
ALTER TABLE `tbl_stagiare`
  ADD PRIMARY KEY (`id_stag`),
  ADD KEY `id_secret` (`id_secret`);

--
-- Indexes for table `tbl_stagiares`
--
ALTER TABLE `tbl_stagiares`
  ADD PRIMARY KEY (`id_sta`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_departement`
--
ALTER TABLE `tbl_departement`
  MODIFY `id_depart` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_detail_mod`
--
ALTER TABLE `tbl_detail_mod`
  MODIFY `id_detai` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_module`
--
ALTER TABLE `tbl_module`
  MODIFY `id_mod` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_secretaire`
--
ALTER TABLE `tbl_secretaire`
  MODIFY `id_secret` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_stagiare`
--
ALTER TABLE `tbl_stagiare`
  MODIFY `id_stag` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_stagiares`
--
ALTER TABLE `tbl_stagiares`
  MODIFY `id_sta` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_detail_mod`
--
ALTER TABLE `tbl_detail_mod`
  ADD CONSTRAINT `tbl_detail_mod_ibfk_1` FOREIGN KEY (`id_mod`) REFERENCES `tbl_module` (`id_mod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_secretaire`
--
ALTER TABLE `tbl_secretaire`
  ADD CONSTRAINT `tbl_secretaire_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_stagiare`
--
ALTER TABLE `tbl_stagiare`
  ADD CONSTRAINT `tbl_stagiare_ibfk_1` FOREIGN KEY (`id_secret`) REFERENCES `tbl_secretaire` (`id_secret`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_stagiares`
--
ALTER TABLE `tbl_stagiares`
  ADD CONSTRAINT `tbl_stagiares_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `help_preg_woman`
--
CREATE DATABASE IF NOT EXISTS `help_preg_woman` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `help_preg_woman`;

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE `availability` (
  `id_av` int(11) NOT NULL,
  `day_av` varchar(20) DEFAULT NULL,
  `hour_av` time DEFAULT NULL,
  `id_spe` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_b` int(11) NOT NULL,
  `id_av` int(11) DEFAULT NULL,
  `id_dr` int(11) DEFAULT NULL,
  `id_hr` int(11) NOT NULL,
  `image_w` varchar(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `birthday` date NOT NULL,
  `age` varchar(12) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `address` varchar(11) NOT NULL,
  `nationality` varchar(11) NOT NULL,
  `nationalid` varchar(11) NOT NULL,
  `profession` varchar(12) NOT NULL,
  `suggestin` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id_dr` int(11) NOT NULL,
  `name_dr` varchar(20) DEFAULT NULL,
  `maildo` varchar(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctorinf`
--

CREATE TABLE `doctorinf` (
  `id_doi` int(112) NOT NULL,
  `d_address` varchar(112) NOT NULL,
  `d_phone` int(11) NOT NULL,
  `do_birtday` varchar(122) NOT NULL,
  `d_language` varchar(111) NOT NULL,
  `d_pictur` varchar(123) NOT NULL,
  `d_specialisation` varchar(111) NOT NULL,
  `d_nationality` varchar(111) NOT NULL,
  `nationali_id` varchar(111) NOT NULL,
  `d_status` varchar(111) NOT NULL,
  `d_gender` varchar(23) NOT NULL,
  `d_profession` varchar(22) NOT NULL,
  `do_experiences` int(11) NOT NULL,
  `d_religion` varchar(11) NOT NULL,
  `id_dr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorinf`
--

INSERT INTO `doctorinf` (`id_doi`, `d_address`, `d_phone`, `do_birtday`, `d_language`, `d_pictur`, `d_specialisation`, `d_nationality`, `nationali_id`, `d_status`, `d_gender`, `d_profession`, `do_experiences`, `d_religion`, `id_dr`) VALUES
(31, 'carama', 67292715, '2022-11-04', 'anglais', 'jjjjlo.png', 'pediatric', 'congolaiss', '123-4562', 'Doctor', 'male', 'Doctor', 14, 'Musl', 18),
(32, 'Sifa', 67292715, '2022-11-01', 'anglais', 'jjjjlo.png', 'pediatric', 'Burundian', '7896532', 'Doctor', 'male', 'Doctor', 12, 'Others', 21);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id_h` int(11) NOT NULL,
  `nom_h` varchar(20) DEFAULT NULL,
  `address_h` varchar(20) DEFAULT NULL,
  `contact_h` varchar(20) DEFAULT NULL,
  `mail_h` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id_serv` int(11) NOT NULL,
  `id_h` int(11) DEFAULT NULL,
  `price_serv` varchar(20) DEFAULT NULL,
  `ser_name` varchar(20) DEFAULT NULL,
  `imageser` varchar(11) DEFAULT NULL,
  `descriptionse` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `specialisation_et_det`
--

CREATE TABLE `specialisation_et_det` (
  `id_spe` int(11) NOT NULL,
  `Nom` varchar(20) DEFAULT NULL,
  `id_dr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id_sug` int(11) NOT NULL,
  `id_b` int(11) DEFAULT NULL,
  `id_dr` int(11) DEFAULT NULL,
  `date_sug` varchar(11) DEFAULT NULL,
  `time` varchar(11) DEFAULT NULL,
  `description_sug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tak_do`
--

CREATE TABLE `tak_do` (
  `id_ta` int(11) NOT NULL,
  `ta_days` varchar(111) NOT NULL,
  `dr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tak_do`
--

INSERT INTO `tak_do` (`id_ta`, `ta_days`, `dr_id`) VALUES
(63, 'Monday', 21),
(64, 'Tuesday', 21),
(65, 'Wednesday', 21),
(66, 'Sunday', 21),
(73, 'Tuesday', 21),
(74, 'Wednesday', 21),
(75, 'Thursday', 21),
(76, 'Friday', 21),
(77, 'Saturday', 21),
(78, 'Sunday', 21);

-- --------------------------------------------------------

--
-- Table structure for table `task_doctor`
--

CREATE TABLE `task_doctor` (
  `id_ta` int(11) NOT NULL,
  `id_serv` int(11) DEFAULT NULL,
  `days_ta` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `task_parameter`
--

CREATE TABLE `task_parameter` (
  `id_param` int(11) NOT NULL,
  `id_serv` int(11) NOT NULL,
  `id_doi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_parameter`
--

INSERT INTO `task_parameter` (`id_param`, `id_serv`, `id_doi`) VALUES
(1, 1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tb_schudle`
--

CREATE TABLE `tb_schudle` (
  `id_sch` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `hour_sch` varchar(333) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_schudle`
--

INSERT INTO `tb_schudle` (`id_sch`, `id_ta`, `hour_sch`) VALUES
(1, 63, '454'),
(2, 69, '789');

-- --------------------------------------------------------

--
-- Table structure for table `tb_service`
--

CREATE TABLE `tb_service` (
  `id_serv` int(11) NOT NULL,
  `serv_name` varchar(222) NOT NULL,
  `serv_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_service`
--

INSERT INTO `tb_service` (`id_serv`, `serv_name`, `serv_desc`) VALUES
(8, 'obstetricians', 'faradaja'),
(9, 'liko', ' gg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_u` int(11) NOT NULL,
  `name_u` varchar(20) DEFAULT NULL,
  `mail_u` varchar(20) DEFAULT NULL,
  `password_u` varchar(20) DEFAULT NULL,
  `role_u` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_u`, `name_u`, `mail_u`, `password_u`, `role_u`) VALUES
(18, 'Brysonbf32', 'brysonbf32@gmail.com', '1234', 'administrator'),
(21, 'Sifa', 'sifa@gmail.com', '123', 'Doctor'),
(22, 'Vianney', 'Alin@gmail.com', '142', 'Doctor');

-- --------------------------------------------------------

--
-- Table structure for table `woman_booking_info`
--

CREATE TABLE `woman_booking_info` (
  `id_bk` int(11) NOT NULL,
  `w_fullname` varchar(122) NOT NULL,
  `w_image` varchar(121) NOT NULL,
  `wo_status` varchar(123) NOT NULL,
  `w_birthdate` date NOT NULL,
  `w_phone` int(112) NOT NULL,
  `w_mail` varchar(123) NOT NULL,
  `w_age` varchar(121) NOT NULL,
  `w_address` varchar(111) NOT NULL,
  `w_nationality` varchar(11) NOT NULL,
  `w_nationalid` varchar(122) NOT NULL,
  `w_profession` varchar(111) NOT NULL,
  `w_expression` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `woman_booking_info`
--

INSERT INTO `woman_booking_info` (`id_bk`, `w_fullname`, `w_image`, `wo_status`, `w_birthdate`, `w_phone`, `w_mail`, `w_age`, `w_address`, `w_nationality`, `w_nationalid`, `w_profession`, `w_expression`) VALUES
(4, 'sifa buiil', 'Screenshot (6).png', '', '2022-11-12', 67292715, 'brysonbf32@gmail.com', '12', 'Mutakura', 'congo', '23234532', 'booli', 'dddddddddffeeeeeeeeeeeeeeeeeeeeeeeee'),
(7, 'Bryson Bahati', 'Screenshot (1).png', '', '2022-11-19', 67292715, 'brysonbf32@gmail.com', '12', 'carama', 'congo', '23234532', 'booli', 'looooooooooooooooollllllllllllllllllll'),
(8, 'Bryson Bahati', 'Screenshot (1).png', 'Mary', '2022-11-03', 67292715, 'brysonbf32@gmail.com', '12', 'carama', 'congo', '23234532', 'booli', 'eeeeeeeeeeeefffffffffffffff'),
(9, 'kanila Bahati', 'Screenshot (1).png', 'Maried', '2022-11-11', 67292715, 'brysonbf32@gmail.com', '12', 'carama', 'congo', '23234532', 'booli', 'pouuuuuuuuuuuuuuuuuussssssssssssssss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `availability`
--
ALTER TABLE `availability`
  ADD PRIMARY KEY (`id_av`),
  ADD KEY `fk_specialisation` (`id_spe`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_b`),
  ADD KEY `fk_availability` (`id_av`),
  ADD KEY `fk_doctor` (`id_dr`),
  ADD KEY `fk_hospital` (`id_hr`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id_dr`);

--
-- Indexes for table `doctorinf`
--
ALTER TABLE `doctorinf`
  ADD PRIMARY KEY (`id_doi`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id_h`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_serv`);

--
-- Indexes for table `specialisation_et_det`
--
ALTER TABLE `specialisation_et_det`
  ADD PRIMARY KEY (`id_spe`),
  ADD UNIQUE KEY `id_dr` (`id_dr`),
  ADD KEY `id_dr_2` (`id_dr`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id_sug`),
  ADD KEY `fk_sugest` (`id_dr`);

--
-- Indexes for table `tak_do`
--
ALTER TABLE `tak_do`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indexes for table `task_doctor`
--
ALTER TABLE `task_doctor`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indexes for table `task_parameter`
--
ALTER TABLE `task_parameter`
  ADD PRIMARY KEY (`id_param`);

--
-- Indexes for table `tb_schudle`
--
ALTER TABLE `tb_schudle`
  ADD PRIMARY KEY (`id_sch`);

--
-- Indexes for table `tb_service`
--
ALTER TABLE `tb_service`
  ADD PRIMARY KEY (`id_serv`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_u`);

--
-- Indexes for table `woman_booking_info`
--
ALTER TABLE `woman_booking_info`
  ADD PRIMARY KEY (`id_bk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `availability`
--
ALTER TABLE `availability`
  MODIFY `id_av` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_b` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id_dr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctorinf`
--
ALTER TABLE `doctorinf`
  MODIFY `id_doi` int(112) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id_h` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id_serv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `specialisation_et_det`
--
ALTER TABLE `specialisation_et_det`
  MODIFY `id_spe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id_sug` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tak_do`
--
ALTER TABLE `tak_do`
  MODIFY `id_ta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `task_doctor`
--
ALTER TABLE `task_doctor`
  MODIFY `id_ta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_parameter`
--
ALTER TABLE `task_parameter`
  MODIFY `id_param` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_schudle`
--
ALTER TABLE `tb_schudle`
  MODIFY `id_sch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_service`
--
ALTER TABLE `tb_service`
  MODIFY `id_serv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `woman_booking_info`
--
ALTER TABLE `woman_booking_info`
  MODIFY `id_bk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `availability`
--
ALTER TABLE `availability`
  ADD CONSTRAINT `fk_specialisation` FOREIGN KEY (`id_spe`) REFERENCES `specialisation_et_det` (`id_spe`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `fk_availability` FOREIGN KEY (`id_av`) REFERENCES `availability` (`id_av`),
  ADD CONSTRAINT `fk_doctor` FOREIGN KEY (`id_dr`) REFERENCES `doctor` (`id_dr`),
  ADD CONSTRAINT `fk_hospital` FOREIGN KEY (`id_hr`) REFERENCES `hospital` (`id_h`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `fk_servicehopital` FOREIGN KEY (`id_h`) REFERENCES `hospital` (`id_h`);

--
-- Constraints for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD CONSTRAINT `fk_sugest` FOREIGN KEY (`id_dr`) REFERENCES `doctor` (`id_dr`);

--
-- Constraints for table `task_doctor`
--
ALTER TABLE `task_doctor`
  ADD CONSTRAINT `fk_servta` FOREIGN KEY (`id_serv`) REFERENCES `services` (`id_serv`);
--
-- Database: `hpwoman_projet`
--
CREATE DATABASE IF NOT EXISTS `hpwoman_projet` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hpwoman_projet`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_boxsuggestions`
--

CREATE TABLE `tbl_boxsuggestions` (
  `sug_id` int(11) NOT NULL,
  `w_id` int(222) DEFAULT NULL,
  `sug_description` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor`
--

CREATE TABLE `tbl_doctor` (
  `d_id` int(11) NOT NULL,
  `d_address` varchar(222) NOT NULL,
  `d_phone` int(111) NOT NULL,
  `d_birtday` varchar(222) NOT NULL,
  `d_language` varchar(222) NOT NULL,
  `d_pictur` varchar(222) NOT NULL,
  `d_specialisation` varchar(222) NOT NULL,
  `d_nationality` varchar(222) NOT NULL,
  `d_nationali_id` varchar(222) NOT NULL,
  `d_status` varchar(222) NOT NULL,
  `d_gender` varchar(222) NOT NULL,
  `d_profession` varchar(222) NOT NULL,
  `d_experiences` int(222) NOT NULL,
  `d_religion` varchar(222) NOT NULL,
  `d_desc` varchar(123) NOT NULL,
  `id_dr` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_doctor`
--

INSERT INTO `tbl_doctor` (`d_id`, `d_address`, `d_phone`, `d_birtday`, `d_language`, `d_pictur`, `d_specialisation`, `d_nationality`, `d_nationali_id`, `d_status`, `d_gender`, `d_profession`, `d_experiences`, `d_religion`, `d_desc`, `id_dr`) VALUES
(10, 'carama', 67292715, '2022-12-01', 'Kishwahili', 'dfg', 'Genyco', 'congolaiss', '123-456', 'Maried', 'male', 'Doctor', 20, 'Choose Religion', 'Denis Mukwege is a Congolese gynecologist and Pentecostal pastor. He founded and works in Panzi Hospital in Bukavu, where h', 6),
(12, 'carama', 67292715, '2022-12-16', 'anglais', 'jjjjlo.png', 'pediatric', 'congolaiss', '123-456', 'Maried', 'female', 'Doctor', 3, 'Catholic', 'sifais rwandaan woman', 3),
(13, 'carama', 67292715, '1989-01-14', 'Swahili', 'jjjjlo.png', 'pediatric', 'congolaiss', '123-456', 'Maried', 'male', 'Doctor', 34, 'Musl', 'I&#039;m doctor Salomon', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

CREATE TABLE `tbl_schedule` (
  `sc_id` int(11) NOT NULL,
  `t_id` varchar(111) NOT NULL,
  `dr_id` varchar(111) NOT NULL,
  `sch_hour` varchar(111) DEFAULT NULL,
  `avail` varchar(121) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_schedule`
--

INSERT INTO `tbl_schedule` (`sc_id`, `t_id`, `dr_id`, `sch_hour`, `avail`) VALUES
(149, '143', '6', '8AM - 9AM', '1'),
(150, '143', '6', '9AM - 10AM', '1'),
(151, '143', '6', '10AM - 11AM', '1'),
(152, '143', '6', '11AM - 12AM', '1'),
(153, '143', '6', '12AM - 1PM', '1'),
(154, '143', '6', '2PM - 3PM', '1'),
(155, '143', '6', '3PM - 4PM', '1'),
(156, '143', '6', '5PM - 6PM', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(111) NOT NULL,
  `s_description` varchar(222) NOT NULL,
  `image_serv` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`s_id`, `s_name`, `s_description`, `image_serv`) VALUES
(12, 'Surgery', ' is a medical specialty that uses operative manual and instrumental techniques on a person to investigate or treat a pathological condition such as a ', '1000_F_275450471_hPfC1FdEIuumjeXaNMIHI9RLfkuDutXS.jpg'),
(15, 'Pediatry', 'This service takes care of children&#039;s illnesses as well as pathologies of full-term newborns and premature babies', 'photos/-pediatry.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task_admin`
--

CREATE TABLE `tbl_task_admin` (
  `t_id` int(11) NOT NULL,
  `s_id` int(111) NOT NULL,
  `d_id` int(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_task_admin`
--

INSERT INTO `tbl_task_admin` (`t_id`, `s_id`, `d_id`) VALUES
(33, 10, 3),
(34, 8, 6),
(35, 9, 3),
(36, 7, 3),
(37, 12, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task_doctor`
--

CREATE TABLE `tbl_task_doctor` (
  `t_id` int(11) NOT NULL,
  `dr_id` varchar(111) NOT NULL,
  `s_id` varchar(111) NOT NULL,
  `day_task` varchar(111) NOT NULL,
  `avail` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_task_doctor`
--

INSERT INTO `tbl_task_doctor` (`t_id`, `dr_id`, `s_id`, `day_task`, `avail`) VALUES
(122, '3', '10', 'Monday', '0'),
(123, '3', '10', 'tuesday', '1'),
(124, '3', '10', 'Wednesday', '0'),
(125, '3', '10', 'Thursday', '1'),
(126, '3', '10', 'Friday', '0'),
(127, '3', '10', 'Saturday', '0'),
(128, '3', '10', 'Sunday', '0'),
(129, '3', '9', 'Monday', '0'),
(130, '3', '9', 'tuesday', '1'),
(131, '3', '9', 'Wednesday', '1'),
(132, '3', '9', 'Thursday', '0'),
(133, '3', '9', 'Friday', '1'),
(134, '3', '9', 'Saturday', '1'),
(135, '3', '9', 'Sunday', '1'),
(136, '9', '12', 'Monday', '1'),
(137, '9', '12', 'tuesday', '1'),
(138, '9', '12', 'Wednesday', '1'),
(139, '9', '12', 'Thursday', '1'),
(140, '9', '12', 'Friday', '1'),
(141, '9', '12', 'Saturday', '1'),
(142, '9', '12', 'Sunday', '1'),
(143, '6', '8', 'Monday', '1'),
(144, '6', '8', 'tuesday', '1'),
(145, '6', '8', 'Wednesday', '1'),
(146, '6', '8', 'Thursday', '1'),
(147, '6', '8', 'Friday', '1'),
(148, '6', '8', 'Saturday', '1'),
(149, '6', '8', 'Sunday', '1'),
(150, '3', '7', 'Monday', '1'),
(151, '3', '7', 'tuesday', '1'),
(152, '3', '7', 'Wednesday', '1'),
(153, '3', '7', 'Thursday', '1'),
(154, '3', '7', 'Friday', '1'),
(155, '3', '7', 'Saturday', '1'),
(156, '3', '7', 'Sunday', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(220) NOT NULL,
  `u_mail` varchar(222) NOT NULL,
  `u_password` varchar(111) NOT NULL,
  `u_role` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`u_id`, `u_name`, `u_mail`, `u_password`, `u_role`) VALUES
(1, 'Brysonbf32', 'brysonbf32@gmail.com', '1234', 'administrator'),
(3, 'sifa', 'sifabf32@gmail.com', '123', 'Doctor'),
(6, 'Dennis Mukwege', 'denismukwe@gmail.com', '123', 'Doctor'),
(7, 'solo', 'slo@gmail.com', '123', 'Doctor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_woman_bookings`
--

CREATE TABLE `tbl_woman_bookings` (
  `w_id` int(11) NOT NULL,
  `w_fullname` varchar(222) NOT NULL,
  `w_image` varchar(222) NOT NULL,
  `w_status` varchar(222) NOT NULL,
  `w_birthdate` varchar(222) NOT NULL,
  `w_phone` varchar(222) NOT NULL,
  `w_mail` varchar(222) NOT NULL,
  `w_age` varchar(222) NOT NULL,
  `w_address` text NOT NULL,
  `w_nationality` varchar(222) NOT NULL,
  `w_nationalid` varchar(222) NOT NULL,
  `w_profession` varchar(222) NOT NULL,
  `w_expression` text NOT NULL,
  `dr_id` int(111) NOT NULL,
  `date_book` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_woman_bookings`
--

INSERT INTO `tbl_woman_bookings` (`w_id`, `w_fullname`, `w_image`, `w_status`, `w_birthdate`, `w_phone`, `w_mail`, `w_age`, `w_address`, `w_nationality`, `w_nationalid`, `w_profession`, `w_expression`, `dr_id`, `date_book`) VALUES
(2, 'sifa buiil', 'Screenshot (3).png', 'Maried', '2022-12-09', '67292715', 'brysonbf32@gmail.com', '12', 'Mutakura', 'congo', '23234532', 'booli', 'poiu', 0, ''),
(4, 'Bryson Bahati', 'image0.jpeg', 'Maried', '2023-01-07', '67292715', 'brysonbf32@gmail.com', '25', 'carama', 'congoleese', '23234532', 'Commercante', 'loipoi', 0, ''),
(5, 'Kaluya Esther', '1000_F_275450471_hPfC1FdEIuumjeXaNMIHI9RLfkuDutXS.jpg', 'Single', '1999-01-06', '67292715', 'estherkal@gmail.com', '23', 'Kibenga', 'congoleese', '23234532', 'Commercante', 'Open surgery - an &quot;open&quot; surgery means the cutting of skin and tissues so that the surgeon has a full view of the structures or organs involved. ...\r\nMinimally invasive surgery - minimally invasive surgery is any technique involved in surgery that does not require a large incision', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_boxsuggestions`
--
ALTER TABLE `tbl_boxsuggestions`
  ADD PRIMARY KEY (`sug_id`);

--
-- Indexes for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_task_admin`
--
ALTER TABLE `tbl_task_admin`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `tbl_task_doctor`
--
ALTER TABLE `tbl_task_doctor`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `tbl_woman_bookings`
--
ALTER TABLE `tbl_woman_bookings`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_boxsuggestions`
--
ALTER TABLE `tbl_boxsuggestions`
  MODIFY `sug_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_task_admin`
--
ALTER TABLE `tbl_task_admin`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_task_doctor`
--
ALTER TABLE `tbl_task_doctor`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_woman_bookings`
--
ALTER TABLE `tbl_woman_bookings`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `invoice`
--
CREATE DATABASE IF NOT EXISTS `invoice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `invoice`;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `sub_total` varchar(100) NOT NULL,
  `o_tax` varchar(100) NOT NULL,
  `grand_total` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `customer_name`, `date`, `name`, `rate`, `quantity`, `tax`, `amount`, `sub_total`, `o_tax`, `grand_total`, `status`) VALUES
(1, 'Boomi', '14-06-2015', 'item,Item', '100,100', '1,10', '1,1', '101.00,1010.00', '1111.00', '111.10', '1222.10', '0'),
(2, 'Boomi', '14-06-2015', 'Item', '100', '1', '1', '101.00', '101.00', '10.10', '111.10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE `item_details` (
  `id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_details`
--

INSERT INTO `item_details` (`id`, `item_name`, `rate`, `tax`, `date`, `status`) VALUES
(1, 'Item', '100', '1', '14-06-2015', 1),
(2, 'Apple', '10', '0', '14-06-2015', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_details`
--
ALTER TABLE `item_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_details`
--
ALTER TABLE `item_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `otl_ressource`
--
CREATE DATABASE IF NOT EXISTS `otl_ressource` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `otl_ressource`;

-- --------------------------------------------------------

--
-- Table structure for table `departements`
--

CREATE TABLE `departements` (
  `ID_DEPARTEMENT` int(11) NOT NULL,
  `NOM_DEPARTEMENT` varchar(255) NOT NULL,
  `CODE_DEPARTEMENT` text NOT NULL,
  `BUREAUX_LOCAL` varchar(200) NOT NULL,
  `HEURE_DEBUTE` time NOT NULL,
  `HEURE_FIN` time NOT NULL,
  `CHEF_DEPARTEMENT` varchar(200) NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1,
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departements`
--

INSERT INTO `departements` (`ID_DEPARTEMENT`, `NOM_DEPARTEMENT`, `CODE_DEPARTEMENT`, `BUREAUX_LOCAL`, `HEURE_DEBUTE`, `HEURE_FIN`, `CHEF_DEPARTEMENT`, `IS_ACTIF`, `DATE_CREATION`) VALUES
(1, 'finance', 'DEP_9ea55d23be4840aba50de53f45a67923', '1202', '08:02:00', '17:02:00', 'bahaati', 1, '2023-02-08 08:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `devise_paiement`
--

CREATE TABLE `devise_paiement` (
  `ID_DEVISE` int(11) NOT NULL,
  `NOM_DEVISE` varchar(255) NOT NULL,
  `CODE_DEVISE` text NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1,
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `devise_paiement`
--

INSERT INTO `devise_paiement` (`ID_DEVISE`, `NOM_DEVISE`, `CODE_DEVISE`, `IS_ACTIF`, `DATE_CREATION`) VALUES
(1, 'Dollard', 'DEV_20d5cf40fe5d1516fc1b69ceb8701f5b', 1, '2022-09-27 10:06:27'),
(2, 'francs congolais', 'DEV_7f785d78096bca00a5d905794d7dbfb2', 1, '2022-09-27 10:41:47'),
(3, 'francs burundais', 'DEV_86f112ce1169e406d36a9ffe46c1f26f', 1, '2022-09-29 07:43:54'),
(4, 'franc fca', 'DEV_3f9b1a233e9e96a9ed5f28071fb2163b', 1, '2023-02-08 08:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `droit_access`
--

CREATE TABLE `droit_access` (
  `ID_DROIT` int(11) NOT NULL,
  `CODE_DROIT` text NOT NULL,
  `CODE_EMPLOY` text NOT NULL,
  `CODE_MENU` text NOT NULL,
  `CREATE_VIEW` int(1) NOT NULL,
  `DELETE_VIEW` int(1) NOT NULL,
  `UPDATE_VIEW` int(1) NOT NULL,
  `LIRE_VIEW` int(1) NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `droit_access`
--

INSERT INTO `droit_access` (`ID_DROIT`, `CODE_DROIT`, `CODE_EMPLOY`, `CODE_MENU`, `CREATE_VIEW`, `DELETE_VIEW`, `UPDATE_VIEW`, `LIRE_VIEW`, `IS_ACTIF`) VALUES
(2, 'DROIT_557aeb5d1f56bf4a4726b69ea6f7d206', 'ccccccccccccccccccc', 'Menu_c172974853890558b0fc582c93e1df3e', 1, 1, 1, 1, 1),
(3, 'DROIT_ee58fb6c71c8aa0f6a437a3bddf4060c', 'ccccccccccccccccccc', 'Menu_4fa9babe07761a1b2d49567f1ab59e63', 1, 1, 1, 1, 1),
(4, 'DROIT_3dafc9c1c38cf05f87f56ddeb2508f98', 'ccccccccccccccccccc', 'Menu_86089d4e38c8fd6c5a97d0ea09f6d5ec', 1, 1, 1, 1, 1),
(5, 'DROIT_8994c1d4847755ed85a9b8d8c553b9c1', 'ccccccccccccccccccc', 'Menu_4ed5a8aa0b73cf3d84478aaca5d077a6', 1, 1, 1, 1, 1),
(6, 'DROIT_a3309c8cdb0959ec2477b404ecbb72e1', 'ccccccccccccccccccc', 'Menu_0f584a29f570aee09a6dcfec46e2dc1a', 1, 1, 1, 1, 1),
(7, 'DROIT_c805138876b39d0cb97b2bfa988171d5', 'ccccccccccccccccccc', 'Menu_9b8f6e064804318f17221b69b310de35', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `ID_EMPLOY` int(11) NOT NULL,
  `CODE_EMPLOY` text NOT NULL,
  `PHOTO_EMPLOYER` varchar(255) NOT NULL,
  `NOM_EMPLOYER` varchar(255) NOT NULL,
  `POSTNOM_EMPLOYER` varchar(255) NOT NULL,
  `SEXE` varchar(200) NOT NULL,
  `ETAT_CIVILE` varchar(200) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `ADRESS` varchar(255) NOT NULL,
  `CODE_DEPARTEMENT` text NOT NULL,
  `CODE_POST` text NOT NULL,
  `CONTRAT` varchar(200) NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1,
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`ID_EMPLOY`, `CODE_EMPLOY`, `PHOTO_EMPLOYER`, `NOM_EMPLOYER`, `POSTNOM_EMPLOYER`, `SEXE`, `ETAT_CIVILE`, `PASSWORD`, `ADRESS`, `CODE_DEPARTEMENT`, `CODE_POST`, `CONTRAT`, `IS_ACTIF`, `DATE_CREATION`) VALUES
(1, 'ccccccccccccccccccc', '', 'admin', '', '', '', 'admin', '', '', 'vvvvvvvvvv', '', 1, '2022-09-27 09:47:40'),
(2, 'EMP_6332d3308cc05', '', 'amisi', 'zihalirwa', 'M', 'celibataire', '1010', 'muhungu la voix', '', '', '2 ans', 1, '2022-09-27 10:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `equipement`
--

CREATE TABLE `equipement` (
  `ID_EQUIPEMENT` int(11) NOT NULL,
  `NOM_EQUIPEMENT` varchar(255) NOT NULL,
  `CODE_EQUIMENT` text NOT NULL,
  `SUPERVIEUR` varchar(255) NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1,
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `location_equipement`
--

CREATE TABLE `location_equipement` (
  `ID_LOCATION` int(11) NOT NULL,
  `CODE_EQUIPEMENT` text NOT NULL,
  `CODE_DEPARTEMENT` text NOT NULL,
  `CODE_EMPLOY` text NOT NULL,
  `DATE_ENPREIN` datetime NOT NULL,
  `DATE_DEPOT` datetime NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1,
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `matricule`
--

CREATE TABLE `matricule` (
  `ID_MATRICUL` int(11) NOT NULL,
  `CODE_MATRICULE` text NOT NULL,
  `NUMERO_MATRICUL` varchar(255) NOT NULL,
  `CODE_EMPLOY` text NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matricule`
--

INSERT INTO `matricule` (`ID_MATRICUL`, `CODE_MATRICULE`, `NUMERO_MATRICUL`, `CODE_EMPLOY`, `IS_ACTIF`) VALUES
(1, 'MAT_1bf70a1cea0452ab024f4c61b6bf074b', '1020', 'EMP_6332d3308cc05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID_MENU` int(11) NOT NULL,
  `CODE_MENU` text NOT NULL,
  `NOM_MENU` varchar(255) NOT NULL,
  `LIEN_MENU` varchar(255) NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID_MENU`, `CODE_MENU`, `NOM_MENU`, `LIEN_MENU`, `IS_ACTIF`) VALUES
(1, 'Menu_c172974853890558b0fc582c93e1df3e', 'Departements', 'Departements/List', 1),
(2, 'Menu_4fa9babe07761a1b2d49567f1ab59e63', 'Employers', 'Employers/List', 1),
(3, 'Menu_86089d4e38c8fd6c5a97d0ea09f6d5ec', 'Devise paiement', 'Devise_paiement/List', 1),
(4, 'Menu_4ed5a8aa0b73cf3d84478aaca5d077a6', 'Equipement', 'Equipement/List', 1),
(5, 'Menu_0f584a29f570aee09a6dcfec46e2dc1a', 'Matricule', 'Matricule/List', 1),
(6, 'Menu_7b0a5e7841ff0790ca66f12dc9529d8b', 'Menu', 'Menu/List', 1),
(7, 'Menu_19ed1df2063455fc1cb98c3d145766dc', 'Paiement', 'Paiement/List', 1),
(8, 'Menu_9b8f6e064804318f17221b69b310de35', 'Salaire', 'Salaire/List', 1),
(9, 'Menu_4f14f0ad598d8943e9a46c29dd7176c5', 'Taches', 'Taches/List', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paiement`
--

CREATE TABLE `paiement` (
  `ID_PAIMENT` int(11) NOT NULL,
  `CODE_PAIEMENT` text NOT NULL,
  `CODE_EMPLOY` text NOT NULL,
  `MOIS` varchar(200) NOT NULL,
  `MONTANT` varchar(100) NOT NULL,
  `CODE_DEVISE` text NOT NULL,
  `DETTE` varchar(100) NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1,
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post_fonction`
--

CREATE TABLE `post_fonction` (
  `ID_POST` int(11) NOT NULL,
  `NOM_POST` varchar(255) NOT NULL,
  `CODE_POST` text NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_fonction`
--

INSERT INTO `post_fonction` (`ID_POST`, `NOM_POST`, `CODE_POST`, `IS_ACTIF`) VALUES
(1, 'admin', 'vvvvvvvvvv', 1);

-- --------------------------------------------------------

--
-- Table structure for table `salaire`
--

CREATE TABLE `salaire` (
  `ID_SALAIRE` int(11) NOT NULL,
  `CODE_SALAIRE` text NOT NULL,
  `CODE_EMPLOY` text NOT NULL,
  `MONTANT` int(11) NOT NULL,
  `CODE_DEVISE` text NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1,
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salaire`
--

INSERT INTO `salaire` (`ID_SALAIRE`, `CODE_SALAIRE`, `CODE_EMPLOY`, `MONTANT`, `CODE_DEVISE`, `IS_ACTIF`, `DATE_CREATION`) VALUES
(1, 'DEV_4c9da6e07f9450ff5ac0dd602cfffbbf', '', 200, '', 1, '2022-09-27 10:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `taches`
--

CREATE TABLE `taches` (
  `ID_TACH` int(11) NOT NULL,
  `CODE_TACH` text NOT NULL,
  `CODE_EMPLOY` text NOT NULL,
  `TACHE` varchar(255) NOT NULL,
  `DATE_ATTRIBUE` datetime NOT NULL,
  `DATE_DEPOT` datetime NOT NULL,
  `IS_ACTIF` int(1) NOT NULL DEFAULT 1,
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`ID_DEPARTEMENT`);

--
-- Indexes for table `devise_paiement`
--
ALTER TABLE `devise_paiement`
  ADD PRIMARY KEY (`ID_DEVISE`);

--
-- Indexes for table `droit_access`
--
ALTER TABLE `droit_access`
  ADD PRIMARY KEY (`ID_DROIT`);

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`ID_EMPLOY`);

--
-- Indexes for table `equipement`
--
ALTER TABLE `equipement`
  ADD PRIMARY KEY (`ID_EQUIPEMENT`);

--
-- Indexes for table `location_equipement`
--
ALTER TABLE `location_equipement`
  ADD PRIMARY KEY (`ID_LOCATION`);

--
-- Indexes for table `matricule`
--
ALTER TABLE `matricule`
  ADD PRIMARY KEY (`ID_MATRICUL`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID_MENU`);

--
-- Indexes for table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`ID_PAIMENT`);

--
-- Indexes for table `post_fonction`
--
ALTER TABLE `post_fonction`
  ADD PRIMARY KEY (`ID_POST`);

--
-- Indexes for table `salaire`
--
ALTER TABLE `salaire`
  ADD PRIMARY KEY (`ID_SALAIRE`);

--
-- Indexes for table `taches`
--
ALTER TABLE `taches`
  ADD PRIMARY KEY (`ID_TACH`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departements`
--
ALTER TABLE `departements`
  MODIFY `ID_DEPARTEMENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `devise_paiement`
--
ALTER TABLE `devise_paiement`
  MODIFY `ID_DEVISE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `droit_access`
--
ALTER TABLE `droit_access`
  MODIFY `ID_DROIT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employes`
--
ALTER TABLE `employes`
  MODIFY `ID_EMPLOY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `equipement`
--
ALTER TABLE `equipement`
  MODIFY `ID_EQUIPEMENT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_equipement`
--
ALTER TABLE `location_equipement`
  MODIFY `ID_LOCATION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matricule`
--
ALTER TABLE `matricule`
  MODIFY `ID_MATRICUL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ID_MENU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `ID_PAIMENT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_fonction`
--
ALTER TABLE `post_fonction`
  MODIFY `ID_POST` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salaire`
--
ALTER TABLE `salaire`
  MODIFY `ID_SALAIRE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taches`
--
ALTER TABLE `taches`
  MODIFY `ID_TACH` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `pdoapp`
--
CREATE DATABASE IF NOT EXISTS `pdoapp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pdoapp`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id_po` int(22) NOT NULL,
  `title` varchar(20) NOT NULL,
  `body` varchar(300) NOT NULL,
  `createdat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id_po`, `title`, `body`, `createdat`) VALUES
(1, 'Footbal', 'Lionel Andrés Messi, is an Argentine professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and captains the Argentina', '2022-10-03'),
(2, 'basketball', 'Victor Wembanyama (born 4 January 2004) is a French professional basketball player', '2022-10-08'),
(3, 'title three', 'body three', '0000-00-00'),
(4, 'title four', 'body four', '0000-00-00'),
(5, 'title four', 'body four', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_po`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id_po` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"hpwoman_projet\",\"table\":\"tbl_task_doctor\"},{\"db\":\"hpwoman_projet\",\"table\":\"tbl_schedule\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-01-06 19:10:39', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `qrcodedb`
--
CREATE DATABASE IF NOT EXISTS `qrcodedb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `qrcodedb`;

-- --------------------------------------------------------

--
-- Table structure for table `qr_code`
--

CREATE TABLE `qr_code` (
  `id` int(11) NOT NULL,
  `link_enter` text DEFAULT NULL,
  `qrcode` text DEFAULT NULL,
  `dayx` varchar(250) NOT NULL,
  `monthx` varchar(250) NOT NULL,
  `yearx` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qr_code`
--

INSERT INTO `qr_code` (`id`, `link_enter`, `qrcode`, `dayx`, `monthx`, `yearx`) VALUES
(14, 'OkpZ6lEyHLo8tdKsCYrjh9waQRNcT5nDgz7eSBM3UGqJVxPXuWFvfb21mIAi40', 'https://getbootstrap.com/docs/5.3/components/accordion/', '2023-01-18', '2023-01-', '2023-'),
(15, 'r2Ht3SD0Q5w1KCOjceNV8oFfATsXkubIqP6ynELp4mlYMRgvzGaBUhxidW7J9Z', 'https://calendly.com/app/signup?lang=en', '2023-01-18', '2023-01', '2023'),
(16, 'hJOlog7YNtQTd0yVpfUrBniX1qbWmHPKeZzFuCjIE52DRAGwvsS3x6LaM9k8c4', 'https://asana.com/?noredirect', '2023-01-18', '2023-01', '2023'),
(17, 'smaOwkxICB5Z169qJAHXMEbQPyet7WcjVFDhKzS4oNrfRlUvLnTYp302g8duGi', 'https://laravel.com/docs/9.x/installation', '2023-01-18', '2023-01', '2023'),
(18, '3DUkHBmXMW0aze14pdv6w7FTAiqcYxJCn9NZfy2sGbRhIugSltE5LoP8KOQVjr', 'https://fontawesome.com/v4/icon/qrcode', '2023-01-18', '2023-01', '2023'),
(19, 'ZMNhnm0a9y2ARCv4IG5ObLkwK7FVtSTPHprUdDzJXsqgxeoEjulY18fQB6icW3', 'https://getbootstrap.com/docs/5.3/components/accordion/', '2023-01-18', '2023-01', '2023'),
(20, '1eA2OVEZsmMJQWS37D9UojBpuzdwkFHtXxraL6cyvgNKTY4qi5PlnGR8h0fbIC', 'https://laravel.com/docs/9.x/installation', '2023-01-18', '2023-01', '2023'),
(21, 'uFOr81xB2R79t5zHIUKklDWJq4sTm6jXMbEca0dSphPVoAZNnwgfviLQCY3yGe', 'https://fontawesome.com/v4/icon/qrcode', '2023-01-18', '2023-01', '2023'),
(22, 'XUmA5QeCGI2qLMTSkb3txNoys7JRY4Wz0KrnPd6lvDVgwjFaBiZuOchp1Hf98E', 'https://calendly.com/app/signup?lang=en', '2023-01-18', '2023-01', '2023'),
(23, 'WvDfyxsK5LVlo2YOgnqhc1EmQC9dU87bjAiGZ6peTawrFSNRuJt4XHMkBzP0I3', 'https://calendly.com/app/signup', '2023-01-18', '2023-01', '2023'),
(24, 'BTa8v2x4De7ldqY5jU3G1EOykVfIbNgrACMtpuHJPRFzSoh9cmsZn6iKQwXLW0', 'https://call.whatsapp.com/video/lkWoLOhJmTYh8HPv6gb0pD', '2023-01-18', '2023-01', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `emails` varchar(250) NOT NULL,
  `fllname` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `countri` varchar(250) NOT NULL,
  `citi` varchar(250) NOT NULL,
  `passwords` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `emails`, `fllname`, `gender`, `countri`, `citi`, `passwords`) VALUES
(1, 'fikiriabramsg@gmail.com', 'Abraham Muller', 'Male', 'Burundi', 'Bujumbura', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qr_code`
--
ALTER TABLE `qr_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qr_code`
--
ALTER TABLE `qr_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `registration`
--
CREATE DATABASE IF NOT EXISTS `registration` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `registration`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_u` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `addresse` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_u`, `firstname`, `lastname`, `addresse`) VALUES
(1, 'Bryson', 'Bahati', 'carama'),
(2, 'Bryson', 'Bahati', 'carama'),
(3, '', '', ''),
(4, 'Bryson', 'Bahati', 'carama');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `ressource_hm`
--
CREATE DATABASE IF NOT EXISTS `ressource_hm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ressource_hm`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
