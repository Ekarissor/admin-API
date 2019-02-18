-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 18 fév. 2019 à 10:57
-- Version du serveur :  5.7.21
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `admin-api`
--

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190214111737', '2019-02-14 11:18:21');

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `soft`, `alcohol`, `food`) VALUES
(1, NULL, 'GET27', NULL),
(2, 'Eau', NULL, NULL),
(3, NULL, NULL, 'Chips'),
(4, NULL, 'Bière', NULL),
(5, NULL, NULL, 'Couscous'),
(6, NULL, 'Manzana', NULL);

--
-- Déchargement des données de la table `resource_student`
--

INSERT INTO `resource_student` (`resource_id`, `student_id`) VALUES
(1, 4),
(2, 1),
(3, 6),
(4, 3);

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `firstname`, `lastname`, `response`) VALUES
(1, 'Alexandre', 'Briffaut', 1),
(2, 'Sullivan', 'Delaby', 5),
(3, 'John', 'Travalto', 5),
(4, 'Emmanuel', 'Macron', 0),
(5, 'Vladimir', 'Poutine', 5),
(6, 'Eric', 'Zemmour', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
