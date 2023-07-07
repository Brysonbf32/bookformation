-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 01:11 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

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
(1, 'fikiriabramsg@gmail.com', 'Abraham Muller', 'Male', 'Burundi', 'Bujumbura', '1111'),
(3, 'brysonbf32@gmail.com', 'Rachid', 'Male', 'RD Congo', 'Bukavu', '123'),
(4, 'odette@gmail.com', 'odette', 'Female', 'RD Congo', 'Bukavu', '123');

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
(10, 'fikiriabramsg@gmail.com', 'd7VW4mFKj2NY5IESntBPClzvouqHUXsQkb08axwhf1pD3ORcZ6gMyeAGTirJ9L', '1673942387_ONU BOURSES CEA.pdf', '3uAeRH7y24x8f0rg6YKUhnb1jJqFaGisdm5kLDCW9tclZXEPOp', '.pdf', '2023-01-17'),
(11, 'fikiriabramsg@gmail.com', 'HTPs6tUCMReFYBwd4rz1XjiLqIaEmnbAKN5oG3gJ9S2DfykVl8up0O7hWZcxQv', '1676541836_New Doc 28_46a.pdf', 'VFaK02bC4Afx6PXMQupnzvotk9LBDRlOqZs1wJhN3gWmj7cdeG', '.pdf', '2023-02-16');

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
(5, 'fikiriabramsg@gmail.com', '6qRBcFuQ5iZ0L1Cpdas2UIr7Tjn9VHlYOfEW8btxm4gGJDyMkXPoNwhSzAKve3', 'BAHATI Image'),
(6, 'fikiriabramsg@gmail.com', 'gKa3QM6iLGkxtRTlz0sdBofjwmuYUD7Cn98HFZ142eXArWyNbphPVOqJSvIE5c', 'marie'),
(7, 'brysonbf32@gmail.com', 'NXUySrJz9bkaneHZqQFA8mwOjM3KuC6ITxp0BDE415voYgl2tRVhdWcPL7fGis', 'waoh'),
(8, 'fikiriabramsg@gmail.com', 'HTPs6tUCMReFYBwd4rz1XjiLqIaEmnbAKN5oG3gJ9S2DfykVl8up0O7hWZcxQv', 'hopial'),
(9, 'brysonbf32@gmail.com', 'R0GnoliVEezNXFJ7QUMcZDY9qxh6bLwSvpkKOAP8j2rmfByCudat1HsI5Wg43T', 'sifak'),
(10, 'odette@gmail.com', 'MAjBgI3Vw1e4OUxTbGQCSFN5u2zdD98sW0YkEaJH6olZhicqLtRpnPmX7rvKyf', 'Mes documents');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_document`
--
ALTER TABLE `user_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folder_id` (`folder_id`(3072));

--
-- Indexes for table `user_folder`
--
ALTER TABLE `user_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folder_id` (`folder_id`(3072)),
  ADD KEY `folder_id_2` (`folder_id`(3072));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_document`
--
ALTER TABLE `user_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_folder`
--
ALTER TABLE `user_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
