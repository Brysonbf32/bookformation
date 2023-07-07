-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 18, 2023 at 04:42 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `defense_biu`
--

-- --------------------------------------------------------

--
-- Table structure for table `qr_code`
--

DROP TABLE IF EXISTS `qr_code`;
CREATE TABLE IF NOT EXISTS `qr_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_enter` text DEFAULT NULL,
  `qrcode` text DEFAULT NULL,
  `dayx` varchar(250) NOT NULL,
  `monthx` varchar(250) NOT NULL,
  `yearx` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emails` varchar(250) NOT NULL,
  `fllname` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `countri` varchar(250) NOT NULL,
  `citi` varchar(250) NOT NULL,
  `passwords` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `emails`, `fllname`, `gender`, `countri`, `citi`, `passwords`) VALUES
(1, 'fikiriabramsg@gmail.com', 'Abraham Muller', 'Male', 'Burundi', 'Bujumbura', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `user_document`
--

DROP TABLE IF EXISTS `user_document`;
CREATE TABLE IF NOT EXISTS `user_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `folder_id` text NOT NULL,
  `doc_name` varchar(250) NOT NULL,
  `doc_link` varchar(250) NOT NULL,
  `doc_ext` varchar(250) NOT NULL,
  `doc_date` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_document`
--

INSERT INTO `user_document` (`id`, `email`, `folder_id`, `doc_name`, `doc_link`, `doc_ext`, `doc_date`) VALUES
(9, 'fikiriabramsg@gmail.com', '6qRBcFuQ5iZ0L1Cpdas2UIr7Tjn9VHlYOfEW8btxm4gGJDyMkXPoNwhSzAKve3', '1673629666_PSI projet de  sensibilisation contre le paludisme.pdf', 'Q10ZIyOWJXcMSVns9D5N4pExbBTYt7ue2fA6GkdzKHqlgrRP3L', '.pdf', '2023-01-13'),
(10, 'fikiriabramsg@gmail.com', 'd7VW4mFKj2NY5IESntBPClzvouqHUXsQkb08axwhf1pD3ORcZ6gMyeAGTirJ9L', '1673942387_ONU BOURSES CEA.pdf', '3uAeRH7y24x8f0rg6YKUhnb1jJqFaGisdm5kLDCW9tclZXEPOp', '.pdf', '2023-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `user_folder`
--

DROP TABLE IF EXISTS `user_folder`;
CREATE TABLE IF NOT EXISTS `user_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `folder_id` text NOT NULL,
  `folder_name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_folder`
--

INSERT INTO `user_folder` (`id`, `email`, `folder_id`, `folder_name`) VALUES
(1, 'fikiriabramsg@gmail.com', 'sqLlCdFSyKDvtHGx4JPhw6rAbgaY5uf128XcoURjW3IiV9nze0BMk7QENpTmOZ', 'Univeristy'),
(2, 'fikiriabramsg@gmail.com', '9SDzfKaOsQWXxCjA5ZnVRteMpI3BcgPG1F0k6v7yUYuTlmrJNLq4oH2Eid8hbw', 'Education'),
(3, 'fikiriabramsg@gmail.com', 'C9qyusL4KPpmiGJNrSQ2dMHjw35hRU7ToOcIBn1fxzeEDXk0va8ZVAYtgl6bWF', 'SOKONI'),
(4, 'fikiriabramsg@gmail.com', 'd7VW4mFKj2NY5IESntBPClzvouqHUXsQkb08axwhf1pD3ORcZ6gMyeAGTirJ9L', 'UN Volunteers'),
(5, 'fikiriabramsg@gmail.com', '6qRBcFuQ5iZ0L1Cpdas2UIr7Tjn9VHlYOfEW8btxm4gGJDyMkXPoNwhSzAKve3', 'BAHATI Image');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
