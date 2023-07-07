-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 01:23 PM
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
-- Database: `qrcodedb`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
