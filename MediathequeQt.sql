-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: May 03, 2018 at 03:11 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `MediathequeQt`
--

-- --------------------------------------------------------

--
-- Table structure for table `adresse`
--

CREATE TABLE `adresse` (
`id` int(11) NOT NULL,
  `num` varchar(255) NOT NULL,
  `rue` varchar(255) NOT NULL,
  `code_postal` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `pays` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
`id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `description` text,
  `durée` time DEFAULT NULL,
  `id_genre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
`id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `realisateur` varchar(255) DEFAULT NULL,
  `date_sortie` date DEFAULT NULL,
  `duree` time DEFAULT NULL,
  `synospis` text,
  `distribution` varchar(255) DEFAULT NULL,
  `id_acteur` int(11) DEFAULT NULL,
  `id_genre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
`id` int(11) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `livre`
--

CREATE TABLE `livre` (
`id` int(11) NOT NULL,
  `auteur` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `date_sortie` date DEFAULT NULL,
  `editeur` varchar(255) DEFAULT NULL,
  `nb_pages` int(11) DEFAULT NULL,
  `id_genre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membre`
--

CREATE TABLE `membre` (
`id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `date_inscription` date DEFAULT NULL,
  `date_derniere_modification` date DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `id_adresse` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE `personne` (
`id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `nationalite` varchar(255) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `piste`
--

CREATE TABLE `piste` (
`id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `duree` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
`id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adresse`
--
ALTER TABLE `adresse`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
 ADD PRIMARY KEY (`id`), ADD KEY `id_genre` (`id_genre`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
 ADD PRIMARY KEY (`id`), ADD KEY `id_genre` (`id_genre`), ADD KEY `id_acteur` (`id_acteur`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livre`
--
ALTER TABLE `livre`
 ADD PRIMARY KEY (`id`), ADD KEY `id_genre` (`id_genre`);

--
-- Indexes for table `membre`
--
ALTER TABLE `membre`
 ADD PRIMARY KEY (`id`), ADD KEY `id_adresse` (`id_adresse`);

--
-- Indexes for table `personne`
--
ALTER TABLE `personne`
 ADD PRIMARY KEY (`id`), ADD KEY `id_role` (`id_role`), ADD KEY `id_role_2` (`id_role`);

--
-- Indexes for table `piste`
--
ALTER TABLE `piste`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adresse`
--
ALTER TABLE `adresse`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `livre`
--
ALTER TABLE `livre`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `membre`
--
ALTER TABLE `membre`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `personne`
--
ALTER TABLE `personne`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `piste`
--
ALTER TABLE `piste`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
ADD CONSTRAINT `fk_genre_album` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`);

--
-- Constraints for table `film`
--
ALTER TABLE `film`
ADD CONSTRAINT `fk_acteur_film` FOREIGN KEY (`id_acteur`) REFERENCES `personne` (`id`),
ADD CONSTRAINT `fk_genre_film` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`);

--
-- Constraints for table `livre`
--
ALTER TABLE `livre`
ADD CONSTRAINT `fk_genre_livre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`);

--
-- Constraints for table `membre`
--
ALTER TABLE `membre`
ADD CONSTRAINT `fk_adresse_membre` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `personne`
--
ALTER TABLE `personne`
ADD CONSTRAINT `fk_role_personne` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
