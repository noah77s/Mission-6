-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 20 Novembre 2023 à 17:48
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `notation`
--

CREATE TABLE IF NOT EXISTS `notation` (
  `id_notation` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `idFilm` varchar(50) NOT NULL,
  `note` int(11) NOT NULL,
  PRIMARY KEY (`id_notation`),
  KEY `idFilm` (`idFilm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `notation`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `notation`
--
ALTER TABLE `notation`
  ADD CONSTRAINT `notation_ibfk_1` FOREIGN KEY (`id_notation`) REFERENCES `film` (`idFilm`) ON DELETE CASCADE ON UPDATE CASCADE;
