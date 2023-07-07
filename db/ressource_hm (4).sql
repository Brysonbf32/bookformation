-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 01:14 PM
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
-- Database: `ressource_hm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_affecta_enca_depart`
--

CREATE TABLE `tbl_affecta_enca_depart` (
  `id_endep` int(250) NOT NULL,
  `refere_endep` varchar(250) NOT NULL,
  `user_id` int(250) NOT NULL,
  `id_depart` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_affecta_enca_depart`
--

INSERT INTO `tbl_affecta_enca_depart` (`id_endep`, `refere_endep`, `user_id`, `id_depart`) VALUES
(32, '12', 16, 8),
(33, '67', 15, 7),
(34, '13', 17, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_conge`
--

CREATE TABLE `tbl_conge` (
  `id_cong` int(250) NOT NULL,
  `user_id` int(250) NOT NULL,
  `datedb_cong` varchar(250) NOT NULL,
  `datefn_cong` varchar(250) NOT NULL,
  `motif_cong` varchar(250) NOT NULL,
  `status_cong` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_conge`
--

INSERT INTO `tbl_conge` (`id_cong`, `user_id`, `datedb_cong`, `datefn_cong`, `motif_cong`, `status_cong`) VALUES
(33, 16, '2023-05-02', '2023-05-26', 'maladie', 1),
(34, 16, '2023-05-04', '2023-05-05', 'ffdvdfdfffss', 2),
(35, 17, '2023-05-03', '2023-05-27', 'ed', 0),
(40, 15, '2023-06-07', '2023-06-09', 'ddssd', 0),
(41, 15, '2023-06-17', '2023-06-30', 'dfddd', 0),
(43, 16, '2023-06-22', '2023-06-25', 'hhhhh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cours`
--

CREATE TABLE `tbl_cours` (
  `id_cou` int(250) NOT NULL,
  `id_depart` int(250) NOT NULL,
  `titre_cou` varchar(222) NOT NULL,
  `duree_cour` int(250) NOT NULL,
  `desc_cou` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cours`
--

INSERT INTO `tbl_cours` (`id_cou`, `id_depart`, `titre_cou`, `duree_cour`, `desc_cou`) VALUES
(18, 8, 'Comptabilite', 25, 'hddjdjd'),
(19, 7, 'Webdesign', 2, 'kfkffkfkf'),
(20, 12, 'kinezi', 2, 'lssls');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cou_encadreur`
--

CREATE TABLE `tbl_cou_encadreur` (
  `id` int(250) NOT NULL,
  `id_cou` int(250) NOT NULL,
  `user_id` int(250) NOT NULL,
  `ref_affect` varchar(250) NOT NULL,
  `datedb_affect` date NOT NULL,
  `datefin_affect` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cou_encadreur`
--

INSERT INTO `tbl_cou_encadreur` (`id`, `id_cou`, `user_id`, `ref_affect`, `datedb_affect`, `datefin_affect`) VALUES
(30, 18, 15, '25', '2023-05-01', '2023-05-28'),
(31, 18, 16, '12', '2023-05-06', '2023-05-10'),
(32, 20, 17, '25', '2023-05-10', '2023-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departement`
--

CREATE TABLE `tbl_departement` (
  `id_depart` int(250) NOT NULL,
  `nom_depart` varchar(250) NOT NULL,
  `descri_depart` varchar(250) NOT NULL,
  `dureforma_depart` varchar(230) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_departement`
--

INSERT INTO `tbl_departement` (`id_depart`, `nom_depart`, `descri_depart`, `dureforma_depart`) VALUES
(7, 'Technologie', 'Peogramation et telecom', '2'),
(8, 'Business', 'like', '5'),
(12, 'Soin infirmier', 'llddldl', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_encadreur`
--

CREATE TABLE `tbl_encadreur` (
  `id_enca` int(250) NOT NULL,
  `user_id` int(250) NOT NULL,
  `nom_enca` varchar(250) NOT NULL,
  `phone_enca` varchar(250) NOT NULL,
  `address_enca` varchar(250) NOT NULL,
  `sexe_enca` varchar(250) NOT NULL,
  `nivoetud_enca` varchar(250) NOT NULL,
  `descri_enca` text NOT NULL,
  `exper` varchar(250) NOT NULL,
  `date_nai` varchar(250) NOT NULL,
  `status_enca` varchar(250) NOT NULL,
  `nationality_enca` varchar(250) NOT NULL,
  `matricarte` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satagiare`
--

CREATE TABLE `tbl_satagiare` (
  `id_stagiare` int(250) NOT NULL,
  `id_depart` int(250) NOT NULL,
  `nom_stag` varchar(250) NOT NULL,
  `prenom_stag` varchar(250) NOT NULL,
  `address_stag` varchar(250) NOT NULL,
  `datedn_stag` varchar(250) NOT NULL,
  `email_stag` varchar(250) NOT NULL,
  `proffessio_stag` varchar(250) NOT NULL,
  `etablissemnt_stag` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_satagiare`
--

INSERT INTO `tbl_satagiare` (`id_stagiare`, `id_depart`, `nom_stag`, `prenom_stag`, `address_stag`, `datedn_stag`, `email_stag`, `proffessio_stag`, `etablissemnt_stag`) VALUES
(13, 8, 'Floriant', 'Murabazi', 'Bukavu', '2023-04-06', 'florian@gmail.com', 'Etudiant', 'Biu'),
(15, 7, 'Moise', 'Wabula', 'Bukavu', '2023-04-04', 'moise@gmail.com', 'Etudiant', 'Uea'),
(17, 12, 'Chrisian', 'Nama', 'carama', '2023-05-18', 'do@gmail.com', 'Etudiant', 'biu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stagiaire_cours`
--

CREATE TABLE `tbl_stagiaire_cours` (
  `id_sta_cou` int(250) NOT NULL,
  `matri_stag` varchar(250) NOT NULL,
  `id_stagiare` int(250) NOT NULL,
  `id_depart` int(250) NOT NULL,
  `id_cou` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stagiaire_cours`
--

INSERT INTO `tbl_stagiaire_cours` (`id_sta_cou`, `matri_stag`, `id_stagiare`, `id_depart`, `id_cou`) VALUES
(9, '234', 17, 12, 20),
(10, '234', 17, 7, 19),
(11, '123', 15, 8, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(250) NOT NULL,
  `user_uname` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_role` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_uname`, `user_password`, `user_email`, `user_role`) VALUES
(7, 'kabila', '123', 'brysonbfad@gmail.com', 'administrateur'),
(15, 'Innocent', '123', 'innocent@gmail.com', 'formateur'),
(16, 'Bahati', '123', 'brysonbf32@gmail.com', 'formateur'),
(17, 'Muller', '123', 'muller@gmail.com', 'formateur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_affecta_enca_depart`
--
ALTER TABLE `tbl_affecta_enca_depart`
  ADD PRIMARY KEY (`id_endep`),
  ADD KEY `id_depart` (`id_depart`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_conge`
--
ALTER TABLE `tbl_conge`
  ADD PRIMARY KEY (`id_cong`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_cours`
--
ALTER TABLE `tbl_cours`
  ADD PRIMARY KEY (`id_cou`),
  ADD KEY `id_depart` (`id_depart`);

--
-- Indexes for table `tbl_cou_encadreur`
--
ALTER TABLE `tbl_cou_encadreur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cou` (`id_cou`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_departement`
--
ALTER TABLE `tbl_departement`
  ADD PRIMARY KEY (`id_depart`);

--
-- Indexes for table `tbl_encadreur`
--
ALTER TABLE `tbl_encadreur`
  ADD PRIMARY KEY (`id_enca`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_satagiare`
--
ALTER TABLE `tbl_satagiare`
  ADD PRIMARY KEY (`id_stagiare`);

--
-- Indexes for table `tbl_stagiaire_cours`
--
ALTER TABLE `tbl_stagiaire_cours`
  ADD PRIMARY KEY (`id_sta_cou`),
  ADD KEY `id_stagiare` (`id_stagiare`,`id_cou`),
  ADD KEY `id_cou` (`id_cou`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_affecta_enca_depart`
--
ALTER TABLE `tbl_affecta_enca_depart`
  MODIFY `id_endep` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_conge`
--
ALTER TABLE `tbl_conge`
  MODIFY `id_cong` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_cours`
--
ALTER TABLE `tbl_cours`
  MODIFY `id_cou` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_cou_encadreur`
--
ALTER TABLE `tbl_cou_encadreur`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_departement`
--
ALTER TABLE `tbl_departement`
  MODIFY `id_depart` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_encadreur`
--
ALTER TABLE `tbl_encadreur`
  MODIFY `id_enca` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_satagiare`
--
ALTER TABLE `tbl_satagiare`
  MODIFY `id_stagiare` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_stagiaire_cours`
--
ALTER TABLE `tbl_stagiaire_cours`
  MODIFY `id_sta_cou` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_affecta_enca_depart`
--
ALTER TABLE `tbl_affecta_enca_depart`
  ADD CONSTRAINT `tbl_affecta_enca_depart_ibfk_1` FOREIGN KEY (`id_depart`) REFERENCES `tbl_departement` (`id_depart`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_affecta_enca_depart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_conge`
--
ALTER TABLE `tbl_conge`
  ADD CONSTRAINT `tbl_conge_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_cours`
--
ALTER TABLE `tbl_cours`
  ADD CONSTRAINT `tbl_cours_ibfk_1` FOREIGN KEY (`id_depart`) REFERENCES `tbl_departement` (`id_depart`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_cou_encadreur`
--
ALTER TABLE `tbl_cou_encadreur`
  ADD CONSTRAINT `tbl_cou_encadreur_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_cou_encadreur_ibfk_2` FOREIGN KEY (`id_cou`) REFERENCES `tbl_cours` (`id_cou`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_encadreur`
--
ALTER TABLE `tbl_encadreur`
  ADD CONSTRAINT `tbl_encadreur_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_stagiaire_cours`
--
ALTER TABLE `tbl_stagiaire_cours`
  ADD CONSTRAINT `tbl_stagiaire_cours_ibfk_1` FOREIGN KEY (`id_stagiare`) REFERENCES `tbl_satagiare` (`id_stagiare`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_stagiaire_cours_ibfk_2` FOREIGN KEY (`id_cou`) REFERENCES `tbl_cours` (`id_cou`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
