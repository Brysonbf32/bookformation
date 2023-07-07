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
-- Database: `gestion_materiel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categorie`
--

CREATE TABLE `tbl_categorie` (
  `id_categ` int(250) NOT NULL,
  `id_etage` int(250) NOT NULL,
  `ref_categ` varchar(250) NOT NULL,
  `nom_categ` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_categorie`
--

INSERT INTO `tbl_categorie` (`id_categ`, `id_etage`, `ref_categ`, `nom_categ`) VALUES
(8, 2, 'cat-1', 'telephone');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_entre_produits`
--

CREATE TABLE `tbl_entre_produits` (
  `id_entrepro` int(11) NOT NULL,
  `ref_entre` varchar(250) NOT NULL,
  `id_pro` int(250) NOT NULL,
  `id_fourni` int(250) NOT NULL,
  `date_entre` date NOT NULL,
  `entre_quanti_pro` int(250) DEFAULT NULL,
  `entre_prix_pro` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_entre_produits`
--

INSERT INTO `tbl_entre_produits` (`id_entrepro`, `ref_entre`, `id_pro`, `id_fourni`, `date_entre`, `entre_quanti_pro`, `entre_prix_pro`) VALUES
(70, 'entre-280', 12, 3, '2023-06-15', 15, 1400000),
(76, 'entre-120', 12, 3, '2023-06-20', 15, 1400000),
(79, 'entre-203', 17, 3, '2023-06-20', 27, 1400000),
(81, 'entre-263', 17, 2, '0000-00-00', NULL, NULL),
(82, 'entre-252', 17, 3, '2023-06-19', 50, 1400000),
(83, 'entre-181', 17, 3, '2023-06-20', 3, 1400000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_etagiaire`
--

CREATE TABLE `tbl_etagiaire` (
  `id_etage` int(250) NOT NULL,
  `code_etage` varchar(250) NOT NULL,
  `nom_etage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_etagiaire`
--

INSERT INTO `tbl_etagiaire` (`id_etage`, `code_etage`, `nom_etage`) VALUES
(2, 'Etage-001', 'Materiel Electronique'),
(4, 'Etage-002', 'Machines'),
(5, 'A-13', 'Cables');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fournisseurs`
--

CREATE TABLE `tbl_fournisseurs` (
  `id_fourni` int(250) NOT NULL,
  `nom_fourni` varchar(250) NOT NULL,
  `address_fourni` varchar(250) NOT NULL,
  `phone_fourni` text NOT NULL,
  `age_fourni` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_fournisseurs`
--

INSERT INTO `tbl_fournisseurs` (`id_fourni`, `nom_fourni`, `address_fourni`, `phone_fourni`, `age_fourni`) VALUES
(2, 'Faradja', 'caramaH', '67292878', '25'),
(3, 'Euphrem', 'carama', '67292715', '25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_historic_pro`
--

CREATE TABLE `tbl_historic_pro` (
  `id_hi` int(250) NOT NULL,
  `id_pro` int(250) NOT NULL,
  `id_fourni` int(250) NOT NULL,
  `date_entre` int(250) NOT NULL,
  `quanti_entre` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_historic_pro`
--

INSERT INTO `tbl_historic_pro` (`id_hi`, `id_pro`, `id_fourni`, `date_entre`, `quanti_entre`) VALUES
(1, 12, 3, 2023, 25),
(2, 17, 2, 2023, 6),
(5, 12, 3, 2023, 17),
(6, 17, 2, 2023, 14),
(7, 17, 3, 2023, 30),
(9, 17, 3, 2023, 50),
(10, 17, 3, 2023, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_historic_sorti`
--

CREATE TABLE `tbl_historic_sorti` (
  `id_sorti` int(250) NOT NULL,
  `id_pro` int(250) NOT NULL,
  `id_util` int(250) NOT NULL,
  `date_sorti` date DEFAULT NULL,
  `quantite_sorti` int(250) DEFAULT NULL,
  `prix_sorti` int(250) DEFAULT NULL,
  `prix_total` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_historic_sorti`
--

INSERT INTO `tbl_historic_sorti` (`id_sorti`, `id_pro`, `id_util`, `date_sorti`, `quantite_sorti`, `prix_sorti`, `prix_total`) VALUES
(9, 12, 11, '2023-06-03', 2, 1400000, 2800000),
(10, 17, 11, '2023-06-09', 5, 1400000, 7000000),
(11, 12, 11, '2023-06-14', 4, 1400000, 5600000),
(12, 12, 11, '2023-06-20', 2, 1400000, 2800000),
(13, 12, 11, '2023-06-10', 2, 1400000, 2800000),
(14, 17, 11, '2023-06-20', 1, 1400000, 1400000),
(15, 17, 11, '2023-06-20', 3, 1400000, 4200000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produits`
--

CREATE TABLE `tbl_produits` (
  `id_pro` int(250) NOT NULL,
  `ref_prod` varchar(220) NOT NULL,
  `nom_prod` varchar(250) NOT NULL,
  `photo_pro` varchar(250) NOT NULL,
  `id_categ` int(250) NOT NULL,
  `prix_pro` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_produits`
--

INSERT INTO `tbl_produits` (`id_pro`, `ref_prod`, `nom_prod`, `photo_pro`, `id_categ`, `prix_pro`) VALUES
(12, 'Prod_145', 'iphone14', 'phone.jpg', 8, 1400000),
(17, 'Prod-68', 'Nokia', 'bibliographie1.jpg', 8, 1400000),
(19, 'Prod-13', 'itel', 'business.png', 8, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utilisateurs`
--

CREATE TABLE `tbl_utilisateurs` (
  `id_util` int(250) NOT NULL,
  `img_util` varchar(250) DEFAULT NULL,
  `nom_util` varchar(250) NOT NULL,
  `emai_util` varchar(250) NOT NULL,
  `passwo_util` varchar(250) NOT NULL,
  `role_util` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_utilisateurs`
--

INSERT INTO `tbl_utilisateurs` (`id_util`, `img_util`, `nom_util`, `emai_util`, `passwo_util`, `role_util`) VALUES
(1, 'ephrem.jpg', 'Ephrem', 'ephrem@gmail.com', '123', 'administrateur'),
(11, 'profil1b.jpg', 'Inonocent', 'innocent@gmail.com', '123', 'agent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categorie`
--
ALTER TABLE `tbl_categorie`
  ADD PRIMARY KEY (`id_categ`),
  ADD KEY `id_etage` (`id_etage`);

--
-- Indexes for table `tbl_entre_produits`
--
ALTER TABLE `tbl_entre_produits`
  ADD PRIMARY KEY (`id_entrepro`),
  ADD KEY `id_fourni` (`id_fourni`),
  ADD KEY `id_pro` (`id_pro`);

--
-- Indexes for table `tbl_etagiaire`
--
ALTER TABLE `tbl_etagiaire`
  ADD PRIMARY KEY (`id_etage`);

--
-- Indexes for table `tbl_fournisseurs`
--
ALTER TABLE `tbl_fournisseurs`
  ADD PRIMARY KEY (`id_fourni`);

--
-- Indexes for table `tbl_historic_pro`
--
ALTER TABLE `tbl_historic_pro`
  ADD PRIMARY KEY (`id_hi`),
  ADD KEY `id_pro` (`id_pro`,`id_fourni`);

--
-- Indexes for table `tbl_historic_sorti`
--
ALTER TABLE `tbl_historic_sorti`
  ADD PRIMARY KEY (`id_sorti`),
  ADD KEY `id_pro` (`id_pro`),
  ADD KEY `id_util` (`id_util`);

--
-- Indexes for table `tbl_produits`
--
ALTER TABLE `tbl_produits`
  ADD PRIMARY KEY (`id_pro`),
  ADD KEY `id_categ` (`id_categ`);

--
-- Indexes for table `tbl_utilisateurs`
--
ALTER TABLE `tbl_utilisateurs`
  ADD PRIMARY KEY (`id_util`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categorie`
--
ALTER TABLE `tbl_categorie`
  MODIFY `id_categ` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_entre_produits`
--
ALTER TABLE `tbl_entre_produits`
  MODIFY `id_entrepro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tbl_etagiaire`
--
ALTER TABLE `tbl_etagiaire`
  MODIFY `id_etage` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_fournisseurs`
--
ALTER TABLE `tbl_fournisseurs`
  MODIFY `id_fourni` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_historic_pro`
--
ALTER TABLE `tbl_historic_pro`
  MODIFY `id_hi` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_historic_sorti`
--
ALTER TABLE `tbl_historic_sorti`
  MODIFY `id_sorti` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_produits`
--
ALTER TABLE `tbl_produits`
  MODIFY `id_pro` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_utilisateurs`
--
ALTER TABLE `tbl_utilisateurs`
  MODIFY `id_util` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_categorie`
--
ALTER TABLE `tbl_categorie`
  ADD CONSTRAINT `tbl_categorie_ibfk_1` FOREIGN KEY (`id_etage`) REFERENCES `tbl_etagiaire` (`id_etage`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_entre_produits`
--
ALTER TABLE `tbl_entre_produits`
  ADD CONSTRAINT `tbl_entre_produits_ibfk_2` FOREIGN KEY (`id_fourni`) REFERENCES `tbl_fournisseurs` (`id_fourni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_entre_produits_ibfk_3` FOREIGN KEY (`id_pro`) REFERENCES `tbl_produits` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_historic_pro`
--
ALTER TABLE `tbl_historic_pro`
  ADD CONSTRAINT `tbl_historic_pro_ibfk_1` FOREIGN KEY (`id_pro`) REFERENCES `tbl_produits` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_historic_sorti`
--
ALTER TABLE `tbl_historic_sorti`
  ADD CONSTRAINT `tbl_historic_sorti_ibfk_1` FOREIGN KEY (`id_pro`) REFERENCES `tbl_produits` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_historic_sorti_ibfk_2` FOREIGN KEY (`id_util`) REFERENCES `tbl_utilisateurs` (`id_util`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_produits`
--
ALTER TABLE `tbl_produits`
  ADD CONSTRAINT `tbl_produits_ibfk_1` FOREIGN KEY (`id_categ`) REFERENCES `tbl_categorie` (`id_categ`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
