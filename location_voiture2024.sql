-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 20 Novembre 2023 à 16:25
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `location_voiture2024`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_client` varchar(50) NOT NULL,
  `nom_prenom` varchar(50) NOT NULL,
  `adresse` text NOT NULL,
  `date_naissance` date NOT NULL,
  `num_tel` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_client`, `nom_prenom`, `adresse`, `date_naissance`, `num_tel`, `ville`, `email`) VALUES
('12A', 'Jean', '3 rue Claude Monet', '2003-05-23', '0654872654', 'Paris', 'jean@gmail.com'),
('42A', 'Pierre', '78 avenue montaigne', '2002-07-28', '0687546925', 'Marseille', 'pierre@gmail.com'),
('78S', 'Benoit', '65 rue de pologne', '2001-04-08', '0784659847', 'Lyon', 'benoit@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `code_location` varchar(50) NOT NULL,
  `date_location` date NOT NULL,
  `prix_jour` int(11) NOT NULL,
  `duree` int(11) NOT NULL,
  `caution` int(11) NOT NULL,
  `code_client` varchar(50) NOT NULL,
  `immatriculation` varchar(50) NOT NULL,
  PRIMARY KEY (`code_location`),
  KEY `code_client` (`code_client`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `locations`
--


-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculation` varchar(50) NOT NULL,
  `carburant` varchar(50) NOT NULL,
  `couleur` varchar(50) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `modele` varchar(50) NOT NULL,
  `nbre_porte` int(11) NOT NULL,
  `etat` varchar(50) NOT NULL,
  `nbre_place` int(11) NOT NULL,
  `annee_circulation` date NOT NULL,
  `marque` varchar(50) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`immatriculation`, `carburant`, `couleur`, `kilometrage`, `modele`, `nbre_porte`, `etat`, `nbre_place`, `annee_circulation`, `marque`) VALUES
('DF-122-CJ', 'Diesel', 'Grise', 87000, 'Golf', 5, 'Bon', 5, '2014-03-17', 'Volkswagen'),
('WW-654-FG', 'Essence', 'Noire', 45000, 'Clio', 5, 'Bon', 5, '2014-07-09', 'Renault');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`code_client`) REFERENCES `clients` (`code_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
