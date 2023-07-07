-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 01:10 PM
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
-- Database: `bibliographie`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `id_cli` int(250) NOT NULL,
  `nom_cli` varchar(250) NOT NULL,
  `prenom_cli` varchar(250) NOT NULL,
  `phone_cli` varchar(250) NOT NULL,
  `email_cli` varchar(250) NOT NULL,
  `age_cli` varchar(250) NOT NULL,
  `university_cli` varchar(250) NOT NULL,
  `niveau_cli` varchar(250) NOT NULL,
  `domaine_cli` varchar(250) NOT NULL,
  `etat_inscri` int(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`id_cli`, `nom_cli`, `prenom_cli`, `phone_cli`, `email_cli`, `age_cli`, `university_cli`, `niveau_cli`, `domaine_cli`, `etat_inscri`) VALUES
(9, 'Bahati', 'Bryson', '67292715', 'brysonbf32@gmail.com', '24', 'Summit', 'Licencie', 'Business', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_domaine`
--

CREATE TABLE `tbl_domaine` (
  `id_domaine` int(250) NOT NULL,
  `nom_domaine` varchar(250) NOT NULL,
  `desc_domaine` varchar(250) NOT NULL,
  `image_dom` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_domaine`
--

INSERT INTO `tbl_domaine` (`id_domaine`, `nom_domaine`, `desc_domaine`, `image_dom`) VALUES
(8, 'Informatique', ' Science du traitement automatique et rationnel de l\'information considérée comme le support des connaissances et des communications', 'info2.jpg'),
(9, 'Business', ' Activité consacrée aux affaires financières et commerciales.', 'business.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_etudiant`
--

CREATE TABLE `tbl_etudiant` (
  `id_etu` int(250) NOT NULL,
  `id_domaine` int(250) NOT NULL,
  `Nom_Etu` varchar(250) NOT NULL,
  `date_nai` varchar(250) NOT NULL,
  `Email_Etu` varchar(250) NOT NULL,
  `Matricule_Etu` varchar(250) NOT NULL,
  `univ_etu` varchar(250) NOT NULL,
  `Image_Etu` varchar(250) NOT NULL,
  `sexe_etu` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_etudiant`
--

INSERT INTO `tbl_etudiant` (`id_etu`, `id_domaine`, `Nom_Etu`, `date_nai`, `Email_Etu`, `Matricule_Etu`, `univ_etu`, `Image_Etu`, `sexe_etu`) VALUES
(20, 9, 'Esther', '1999-06-08', 'esther@gmail.com', 'A0-3', 'Biu', 'im1.jpeg', 'Feminin'),
(19, 8, 'Josephine', '2003-06-09', 'jos@gmail.com', 'A-02', 'Universite Grand Lac', 'diva.jpg', 'Feminin'),
(18, 8, 'Hussein', '1998-06-01', 'hussein@gmail.com', 'A-01', 'Universite Grand Lac', 'del3.jpg', 'Masculin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projets`
--

CREATE TABLE `tbl_projets` (
  `id_projet` int(250) NOT NULL,
  `id_domaine` int(250) NOT NULL,
  `nom_projet` varchar(250) NOT NULL,
  `datedb_pro` date NOT NULL,
  `datefn_pro` date NOT NULL,
  `image_pro` varchar(250) NOT NULL,
  `projet_realise` text NOT NULL,
  `Description_pro` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_projets`
--

INSERT INTO `tbl_projets` (`id_projet`, `id_domaine`, `nom_projet`, `datedb_pro`, `datefn_pro`, `image_pro`, `projet_realise`, `Description_pro`) VALUES
(17, 9, 'Make up', '2023-06-07', '2023-07-01', 'marketing.jpg', 'doc1.pdf', 'oidiiddud'),
(15, 9, 'E-Commerce', '2023-06-05', '2023-06-30', 'ecommerce.jpg', 'taolabo (3).zip', 'La définition d\'une activité de commerce électronique peut également inclure des tactiques telles que le marketing d\'affiliation\r\n'),
(18, 8, 'Gestion alimentation', '2023-06-08', '2023-06-17', 'reseau.png', 'taolabo (2) (1).zip', 'nhyuiopop dfr'),
(16, 9, 'polio', '2023-06-08', '2023-06-24', 'reseau.png', 'lumiere cs.pdf', 'loipopii');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sous_domaine`
--

CREATE TABLE `tbl_sous_domaine` (
  `id_sdo` int(250) NOT NULL,
  `nom_sdo` varchar(250) NOT NULL,
  `id_domaine` int(250) NOT NULL,
  `langage` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sous_domaine`
--

INSERT INTO `tbl_sous_domaine` (`id_sdo`, `nom_sdo`, `id_domaine`, `langage`) VALUES
(14, 'Marketing', 9, 'Tout'),
(13, 'Genie Logiciel', 8, 'Php');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stagiaire_projet`
--

CREATE TABLE `tbl_stagiaire_projet` (
  `id_sta_pro` int(250) NOT NULL,
  `id_etu` int(250) DEFAULT NULL,
  `id_projet` int(250) DEFAULT NULL,
  `date_pub` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stagiaire_projet`
--

INSERT INTO `tbl_stagiaire_projet` (`id_sta_pro`, `id_etu`, `id_projet`, `date_pub`) VALUES
(23, 20, 15, '2023-06-14'),
(24, 19, 14, '2023-06-23'),
(25, 18, 14, '2023-06-14'),
(26, 20, 16, '2023-06-09'),
(27, 19, 17, '2023-06-15'),
(28, 18, 18, '2023-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilis` int(250) NOT NULL,
  `Nom_utilis` varchar(250) NOT NULL,
  `Email_utilis` varchar(250) NOT NULL,
  `Password_utilis` varchar(250) NOT NULL,
  `img_util` varchar(250) NOT NULL,
  `role_utilis` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilis`, `Nom_utilis`, `Email_utilis`, `Password_utilis`, `img_util`, `role_utilis`) VALUES
(13, 'Hussein', 'delsegiroelnevada243@gmail.com', '123', 'una.png', 'administrateur'),
(12, 'kabila', 'brysonbfad@gmail.com', '123', 'una.png', 'encadreur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`id_cli`);

--
-- Indexes for table `tbl_domaine`
--
ALTER TABLE `tbl_domaine`
  ADD PRIMARY KEY (`id_domaine`);

--
-- Indexes for table `tbl_etudiant`
--
ALTER TABLE `tbl_etudiant`
  ADD PRIMARY KEY (`id_etu`),
  ADD KEY `id_domaine` (`id_domaine`);

--
-- Indexes for table `tbl_projets`
--
ALTER TABLE `tbl_projets`
  ADD PRIMARY KEY (`id_projet`),
  ADD KEY `id_domaine` (`id_domaine`);

--
-- Indexes for table `tbl_sous_domaine`
--
ALTER TABLE `tbl_sous_domaine`
  ADD PRIMARY KEY (`id_sdo`),
  ADD KEY `Ddomaine` (`id_domaine`);

--
-- Indexes for table `tbl_stagiaire_projet`
--
ALTER TABLE `tbl_stagiaire_projet`
  ADD PRIMARY KEY (`id_sta_pro`),
  ADD KEY `id_etu` (`id_etu`,`id_projet`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `id_cli` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_domaine`
--
ALTER TABLE `tbl_domaine`
  MODIFY `id_domaine` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_etudiant`
--
ALTER TABLE `tbl_etudiant`
  MODIFY `id_etu` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_projets`
--
ALTER TABLE `tbl_projets`
  MODIFY `id_projet` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_sous_domaine`
--
ALTER TABLE `tbl_sous_domaine`
  MODIFY `id_sdo` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_stagiaire_projet`
--
ALTER TABLE `tbl_stagiaire_projet`
  MODIFY `id_sta_pro` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilis` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
