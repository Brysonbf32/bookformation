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
-- Database: `hpwoman_projet`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
