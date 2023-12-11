-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 11 Décembre 2023 à 17:29
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `Id_Adherent` int(50) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Date_naissance` date NOT NULL,
  `Date_adhesion` date NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Num_tel` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=987654322 ;

--
-- Contenu de la table `adherents`
--

INSERT INTO `adherents` (`Id_Adherent`, `Nom`, `Prenom`, `Date_naissance`, `Date_adhesion`, `Adresse`, `Num_tel`, `mail`) VALUES
(123456789, 'Doumbe', 'Cedric', '1998-05-21', '2023-12-05', '75 rue des peupliers', '0685489852', 'cedricdoumbe@gmail.com'),
(987654321, 'Pascal', 'Daniel', '2000-03-23', '2023-10-26', '5 boulevard marechal foch', '0785495878', 'danielpascal@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `ID_Auteur` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Date_naissance` date NOT NULL,
  PRIMARY KEY (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`ID_Auteur`, `Nom`, `Prenom`, `Date_naissance`) VALUES
('369258741', 'Allo', 'Victor', '1998-01-06'),
('741852963', 'Levy', 'Marc', '1998-09-26');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `Id_emprunt` int(50) NOT NULL AUTO_INCREMENT,
  `Date_emprunt` date NOT NULL,
  `Duree` int(50) NOT NULL,
  `Id_Adherent` int(50) NOT NULL,
  `Reference_livre` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_emprunt`),
  KEY `Id_Adherent` (`Id_Adherent`),
  KEY `Reference_livre` (`Reference_livre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2147483647 ;

--
-- Contenu de la table `emprunts`
--

INSERT INTO `emprunts` (`Id_emprunt`, `Date_emprunt`, `Duree`, `Id_Adherent`, `Reference_livre`) VALUES
(987654159, '2023-12-04', 6, 123456789, '84956217'),
(2147483647, '2023-11-22', 8, 987654321, '269574199');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `Reference_livre` varchar(50) NOT NULL,
  `Nbre_pages` int(50) NOT NULL,
  `ID_Auteur` varchar(50) NOT NULL,
  `Date_publication` date NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `Disponibilité` tinyint(1) NOT NULL,
  `Nbre_emprunts` int(50) NOT NULL,
  `Etat` varchar(50) NOT NULL,
  `Nbre_exemplaire` int(50) NOT NULL,
  PRIMARY KEY (`Reference_livre`),
  KEY `ID_Auteur` (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`Reference_livre`, `Nbre_pages`, `ID_Auteur`, `Date_publication`, `Genre`, `Disponibilité`, `Nbre_emprunts`, `Etat`, `Nbre_exemplaire`) VALUES
('269574199', 256, '369258741', '2013-03-01', 'Policier', 1, 2, 'Neuf', 2),
('84956217', 154, '741852963', '2009-07-24', 'Roman', 0, 87, 'Bon', 158);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `adherents`
--
ALTER TABLE `adherents`
  ADD CONSTRAINT `adherents_ibfk_1` FOREIGN KEY (`Id_Adherent`) REFERENCES `emprunts` (`Id_Adherent`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD CONSTRAINT `auteurs_ibfk_1` FOREIGN KEY (`ID_Auteur`) REFERENCES `livres` (`ID_Auteur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_ibfk_1` FOREIGN KEY (`Reference_livre`) REFERENCES `emprunts` (`Reference_livre`) ON DELETE CASCADE ON UPDATE CASCADE;
