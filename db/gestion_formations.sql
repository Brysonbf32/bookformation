-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 01:13 PM
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
-- Database: `gestion_formations`
--

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
(7, 'Science et Technology', 'Les fonctions n\'ont pas besoin d\'être définies avant d\'être utilisées, SAUF lorsqu\'une fonction est définie conditionnellement, comme montré dans les deux exemples suivants.'),
(8, 'Business et Management', 'Les fonctions n\'ont pas besoin d\'être définies avant d\'être utilisées, SAUF lorsqu\'une fonction est définie conditionnellement, comme montré dans les deux exemples suivants.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departement_module`
--

CREATE TABLE `tbl_departement_module` (
  `ref_depa_modu` varchar(250) NOT NULL,
  `id_depart` int(250) NOT NULL,
  `id_mod` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module`
--

CREATE TABLE `tbl_module` (
  `id_mod` int(250) NOT NULL,
  `id_depart` int(250) NOT NULL,
  `titre_mod` varchar(250) NOT NULL,
  `prix_mod` int(250) NOT NULL,
  `duree_mod` int(250) NOT NULL,
  `descri_mod` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_module`
--

INSERT INTO `tbl_module` (`id_mod`, `id_depart`, `titre_mod`, `prix_mod`, `duree_mod`, `descri_mod`) VALUES
(13, 8, 'reseautage', 100000, 1, 'kiiii');

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
  `nation_sec` varchar(250) NOT NULL,
  `status_btn` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stagiaire_module`
--

CREATE TABLE `tbl_stagiaire_module` (
  `id_stamod` int(11) NOT NULL,
  `id_sta` int(250) NOT NULL,
  `id_mod` int(250) NOT NULL,
  `motant_paye` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stagiares`
--

CREATE TABLE `tbl_stagiares` (
  `id_sta` int(250) NOT NULL,
  `id_depart` int(250) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nom_sta` varchar(250) NOT NULL,
  `date_naissa` varchar(250) NOT NULL,
  `mail_sta` varchar(250) NOT NULL,
  `phone_sta` varchar(250) NOT NULL,
  `sta_sexe` varchar(250) NOT NULL,
  `address_stag` varchar(250) NOT NULL,
  `sta_univ` varchar(250) NOT NULL,
  `sta_fac` varchar(250) NOT NULL,
  `sta_nivee` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stagiares`
--

INSERT INTO `tbl_stagiares` (`id_sta`, `id_depart`, `id_user`, `nom_sta`, `date_naissa`, `mail_sta`, `phone_sta`, `sta_sexe`, `address_stag`, `sta_univ`, `sta_fac`, `sta_nivee`) VALUES
(12, 8, 15, 'Wao Rachid', '2023-04-02', 'rachid@gmail.com', '67292878', 'M', 'caramaH', 'Lac', 'Bim', 'bac2'),
(13, 7, 15, 'Kabila', '2023-04-06', 'like@gmail.com', '67292715', 'M', 'carama', 'Uhl', 'lio', 'bac+3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(11) NOT NULL,
  `image_util` varchar(250) DEFAULT NULL,
  `nom_utili` varchar(250) NOT NULL,
  `email_util` varchar(123) NOT NULL,
  `password_util` varchar(250) NOT NULL,
  `role_util` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `image_util`, `nom_utili`, `email_util`, `password_util`, `role_util`) VALUES
(10, 'photos/-favicon.png', 'Zaina', 'zaina@gmail.com', '123', 'Administrateur'),
(15, 'photos/-im1.jpeg', 'Zaina', 'zainas@gmail.com', '123', 'secretaire'),
(16, 'phone.jpg', 'fr', 'zainar@gmail.com', '123', 'secretaire');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_departement`
--
ALTER TABLE `tbl_departement`
  ADD PRIMARY KEY (`id_depart`);

--
-- Indexes for table `tbl_departement_module`
--
ALTER TABLE `tbl_departement_module`
  ADD KEY `id_depart` (`id_depart`,`id_mod`),
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
-- Indexes for table `tbl_stagiaire_module`
--
ALTER TABLE `tbl_stagiaire_module`
  ADD PRIMARY KEY (`id_stamod`),
  ADD KEY `id_sta` (`id_sta`,`id_mod`),
  ADD KEY `id_mod` (`id_mod`);

--
-- Indexes for table `tbl_stagiares`
--
ALTER TABLE `tbl_stagiares`
  ADD PRIMARY KEY (`id_sta`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_depart` (`id_depart`);

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
  MODIFY `id_depart` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_module`
--
ALTER TABLE `tbl_module`
  MODIFY `id_mod` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_secretaire`
--
ALTER TABLE `tbl_secretaire`
  MODIFY `id_secret` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_stagiaire_module`
--
ALTER TABLE `tbl_stagiaire_module`
  MODIFY `id_stamod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_stagiares`
--
ALTER TABLE `tbl_stagiares`
  MODIFY `id_sta` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_departement_module`
--
ALTER TABLE `tbl_departement_module`
  ADD CONSTRAINT `tbl_departement_module_ibfk_1` FOREIGN KEY (`id_mod`) REFERENCES `tbl_module` (`id_mod`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_departement_module_ibfk_2` FOREIGN KEY (`id_depart`) REFERENCES `tbl_departement` (`id_depart`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_secretaire`
--
ALTER TABLE `tbl_secretaire`
  ADD CONSTRAINT `tbl_secretaire_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_stagiaire_module`
--
ALTER TABLE `tbl_stagiaire_module`
  ADD CONSTRAINT `tbl_stagiaire_module_ibfk_1` FOREIGN KEY (`id_sta`) REFERENCES `tbl_stagiares` (`id_sta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_stagiaire_module_ibfk_2` FOREIGN KEY (`id_mod`) REFERENCES `tbl_module` (`id_mod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_stagiares`
--
ALTER TABLE `tbl_stagiares`
  ADD CONSTRAINT `tbl_stagiares_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_stagiares_ibfk_2` FOREIGN KEY (`id_depart`) REFERENCES `tbl_departement` (`id_depart`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
