-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 16 déc. 2020 à 20:17
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cesiblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `DateAjout` date NOT NULL,
  `Auteur` varchar(50) NOT NULL,
  `ImageRepository` varchar(50) DEFAULT NULL,
  `ImageFileName` varchar(255) DEFAULT NULL,
  `categorie_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`categorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `Titre`, `Description`, `DateAjout`, `Auteur`, `ImageRepository`, `ImageFileName`, `categorie_id`) VALUES
(1, 'La dune du pillattt', '                                    une description qui va bien\r\n        \r\n        \r\n        ', '2020-09-30', 'Léo', NULL, NULL, 1),
(2, 'La vie de Bryan', '            une description qui va bien\r\n        ', '2020-09-27', 'Rebecca', NULL, NULL, NULL),
(3, 'La vie de Bryan', 'une description qui va bien', '2020-09-28', 'Maeva', NULL, NULL, NULL),
(4, 'Salut ça va', 'une description qui va bien', '2020-09-29', 'Louis', NULL, NULL, NULL),
(5, 'Bois d\'Arcy', 'une description qui va bien', '2020-09-30', 'Arthur', NULL, NULL, NULL),
(7, 'Bois d\'Arcy', 'une description qui va bien', '2020-10-02', 'Maeva', NULL, NULL, NULL),
(8, 'Salut ça va', 'une description qui va bien', '2020-10-03', 'Maeva', NULL, NULL, NULL),
(9, 'Salut ça va', 'une description qui va bien', '2020-10-04', 'Léo', NULL, NULL, NULL),
(10, 'Bois d\'Arcy', 'une description qui va bien', '2020-10-05', 'Arthur', NULL, NULL, NULL),
(11, 'Salut ça va', 'une description qui va bien', '2020-10-06', 'Louis', NULL, NULL, NULL),
(12, 'Le petit prince', 'une description qui va bien', '2020-10-07', 'Louis', NULL, NULL, NULL),
(13, 'Le petit prince', 'une description qui va bien', '2020-10-08', 'Maeva', NULL, NULL, NULL),
(14, 'La vie de Bryan', 'une description qui va bien', '2020-10-09', 'Louis', NULL, NULL, NULL),
(15, 'La dune du pillat', 'une description qui va bien', '2020-10-10', 'Louis', NULL, NULL, NULL),
(16, 'Le petit prince', 'une description qui va bien', '2020-10-11', 'Maeva', NULL, NULL, NULL),
(17, 'Bois d\'Arcy', 'une description qui va bien', '2020-10-12', 'Léo', NULL, NULL, NULL),
(18, 'Bois d\'Arcy', 'une description qui va bien', '2020-10-13', 'Arthur', NULL, NULL, NULL),
(19, 'La vie de Bryan', 'une description qui va bien', '2020-10-14', 'Arthur', NULL, NULL, NULL),
(20, 'Bois d\'Arcy', 'une description qui va bien', '2020-10-15', 'Louis', NULL, NULL, NULL),
(21, 'Bois d\'Arcy', 'une description qui va bien', '2020-10-16', 'Léonne', NULL, NULL, NULL),
(22, 'Salut ça va', 'une description qui va bien', '2020-10-17', 'Léonne', NULL, NULL, NULL),
(23, 'La vie de Bryan', 'une description qui va bien', '2020-10-18', 'Louis', NULL, NULL, NULL),
(24, 'La vie de Bryan', 'une description qui va bien', '2020-10-19', 'Léo', NULL, NULL, NULL),
(25, 'La dune du pillat', 'une description qui va bien', '2020-10-20', 'Louis', NULL, NULL, NULL),
(26, 'Le petit prince', 'une description qui va bien', '2020-10-21', 'Arthur', NULL, NULL, NULL),
(27, 'Le petit prince', 'une description qui va bien', '2020-10-22', 'Arthur', NULL, NULL, NULL),
(28, 'La dune du pillat', 'une description qui va bien', '2020-10-23', 'Louis', NULL, NULL, NULL),
(29, 'La vie de Bryan', 'une description qui va bien', '2020-10-24', 'Maeva', NULL, NULL, NULL),
(30, 'Bois d\'Arcy', 'une description qui va bien', '2020-10-25', 'Léo', NULL, NULL, NULL),
(31, 'La dune du pillat', 'une description qui va bien', '2020-10-26', 'Louis', NULL, NULL, NULL),
(32, 'La dune du pillat', 'une description qui va bien', '2020-10-27', 'Arthur', NULL, NULL, NULL),
(33, 'La dune du pillat', 'une description qui va bien', '2020-10-28', 'Arthur', NULL, NULL, NULL),
(34, 'Salut ça va', 'une description qui va bien', '2020-10-29', 'Léonne', NULL, NULL, NULL),
(35, 'Bois d\'Arcy', 'une description qui va bien', '2020-10-30', 'Louis', NULL, NULL, NULL),
(36, 'La vie de Bryan', 'une description qui va bien', '2020-10-31', 'Léo', NULL, NULL, NULL),
(37, 'Salut ça va', 'une description qui va bien', '2020-11-01', 'Louis', NULL, NULL, NULL),
(38, 'Salut ça va', 'une description qui va bien', '2020-11-02', 'Arthur', NULL, NULL, NULL),
(39, 'Bois d\'Arcy', 'une description qui va bien', '2020-11-03', 'Louis', NULL, NULL, NULL),
(40, 'La dune du pillat', 'une description qui va bien', '2020-11-04', 'Léo', NULL, NULL, NULL),
(41, 'La dune du pillat', 'une description qui va bien', '2020-11-05', 'Louis', NULL, NULL, NULL),
(42, 'La vie de Bryan', 'une description qui va bien', '2020-11-06', 'Léo', NULL, NULL, NULL),
(43, 'La vie de Bryan', 'une description qui va bien', '2020-11-07', 'Léo', NULL, NULL, NULL),
(44, 'Bois d\'Arcy', 'une description qui va bien', '2020-11-08', 'Maeva', NULL, NULL, NULL),
(45, 'Salut ça va', 'une description qui va bien', '2020-11-09', 'Léonne', NULL, NULL, NULL),
(46, 'Bois d\'Arcy', 'une description qui va bien', '2020-11-10', 'Léonne', NULL, NULL, NULL),
(47, 'Bois d\'Arcy', 'une description qui va bien', '2020-11-11', 'Louis', NULL, NULL, NULL),
(48, 'Salut ça va', 'une description qui va bien', '2020-11-12', 'Maeva', NULL, NULL, NULL),
(49, 'Bois d\'Arcy', 'une description qui va bien', '2020-11-13', 'Louis', NULL, NULL, NULL),
(50, 'La dune du pillat', 'une description qui va bien', '2020-11-14', 'Louis', NULL, NULL, NULL),
(51, 'Salut ça va', 'une description qui va bien', '2020-11-15', 'Léonne', NULL, NULL, NULL),
(52, 'La dune du pillat', 'une description qui va bien', '2020-11-16', 'Louis', NULL, NULL, NULL),
(53, 'Bois d\'Arcy', 'une description qui va bien', '2020-11-17', 'Léo', NULL, NULL, NULL),
(54, 'La vie de Bryan', 'une description qui va bien', '2020-11-18', 'Maeva', NULL, NULL, NULL),
(55, 'Le petit prince', 'une description qui va bien', '2020-11-19', 'Arthur', NULL, NULL, NULL),
(56, 'Bois d\'Arcy', 'une description qui va bien', '2020-11-20', 'Maeva', NULL, NULL, NULL),
(57, 'Le petit prince', 'une description qui va bien', '2020-11-21', 'Léo', NULL, NULL, NULL),
(58, 'Le petit prince', 'une description qui va bien', '2020-11-22', 'Léo', NULL, NULL, NULL),
(59, 'Bois d\'Arcy', 'une description qui va bien', '2020-11-23', 'Léonne', NULL, NULL, NULL),
(60, 'La dune du pillat', 'une description qui va bien', '2020-11-24', 'Arthur', NULL, NULL, NULL),
(61, 'La vie de Bryan', 'une description qui va bien', '2020-11-25', 'Arthur', NULL, NULL, NULL),
(62, 'La vie de Bryan', 'une description qui va bien', '2020-11-26', 'Maeva', NULL, NULL, NULL),
(63, 'Le petit prince', 'une description qui va bien', '2020-11-27', 'Maeva', NULL, NULL, NULL),
(64, 'La dune du pillat', 'une description qui va bien', '2020-11-28', 'Léo', NULL, NULL, NULL),
(65, 'La vie de Bryan', 'une description qui va bien', '2020-11-29', 'Arthur', NULL, NULL, NULL),
(66, 'La dune du pillat', 'une description qui va bien', '2020-11-30', 'Léo', NULL, NULL, NULL),
(67, 'La dune du pillat', 'une description qui va bien', '2020-12-01', 'Louis', NULL, NULL, NULL),
(68, 'La dune du pillat', 'une description qui va bien', '2020-12-02', 'Arthur', NULL, NULL, NULL),
(69, 'Bois d\'Arcy', 'une description qui va bien', '2020-12-03', 'Arthur', NULL, NULL, NULL),
(70, 'La dune du pillat', 'une description qui va bien', '2020-12-04', 'Arthur', NULL, NULL, NULL),
(71, 'La dune du pillat', 'une description qui va bien', '2020-12-05', 'Arthur', NULL, NULL, NULL),
(72, 'Bois d\'Arcy', 'une description qui va bien', '2020-12-06', 'Léonne', NULL, NULL, NULL),
(73, 'Salut ça va', 'une description qui va bien', '2020-12-07', 'Maeva', NULL, NULL, NULL),
(74, 'Le petit prince', 'une description qui va bien', '2020-12-08', 'Louis', NULL, NULL, NULL),
(75, 'Salut ça va', 'une description qui va bien', '2020-12-09', 'Arthur', NULL, NULL, NULL),
(76, 'Bois d\'Arcy', 'une description qui va bien', '2020-12-10', 'Léo', NULL, NULL, NULL),
(77, 'Le petit prince', 'une description qui va bien', '2020-12-11', 'Arthur', NULL, NULL, NULL),
(78, 'Le petit prince', 'une description qui va bien', '2020-12-12', 'Maeva', NULL, NULL, NULL),
(79, 'Le petit prince', 'une description qui va bien', '2020-12-13', 'Léo', NULL, NULL, NULL),
(80, 'La vie de Bryan', 'une description qui va bien', '2020-12-14', 'Arthur', NULL, NULL, NULL),
(81, 'La vie de Bryan', 'une description qui va bien', '2020-12-15', 'Louis', NULL, NULL, NULL),
(82, 'Salut ça va', 'une description qui va bien', '2020-12-16', 'Arthur', NULL, NULL, NULL),
(83, 'Le petit prince', 'une description qui va bien', '2020-12-17', 'Louis', NULL, NULL, NULL),
(84, 'La vie de Bryan', 'une description qui va bien', '2020-12-18', 'Léo', NULL, NULL, NULL),
(85, 'Bois d\'Arcy', 'une description qui va bien', '2020-12-19', 'Léo', NULL, NULL, NULL),
(86, 'La vie de Bryan', 'une description qui va bien', '2020-12-20', 'Arthur', NULL, NULL, NULL),
(87, 'La vie de Bryan', 'une description qui va bien', '2020-12-21', 'Léonne', NULL, NULL, NULL),
(88, 'La vie de Bryan', 'une description qui va bien', '2020-12-22', 'Louis', NULL, NULL, NULL),
(89, 'Le petit prince', 'une description qui va bien', '2020-12-23', 'Arthur', NULL, NULL, NULL),
(90, 'La vie de Bryan', 'une description qui va bien', '2020-12-24', 'Léo', NULL, NULL, NULL),
(91, 'La dune du pillat', 'une description qui va bien', '2020-12-25', 'Léo', NULL, NULL, NULL),
(92, 'Le petit prince', 'une description qui va bien', '2020-12-26', 'Louis', NULL, NULL, NULL),
(93, 'La vie de Bryan', 'une description qui va bien', '2020-12-27', 'Léonne', NULL, NULL, NULL),
(94, 'Salut ça va', 'une description qui va bien', '2020-12-28', 'Arthur', NULL, NULL, NULL),
(95, 'Bois d\'Arcy', 'une description qui va bien', '2020-12-29', 'Maeva', NULL, NULL, NULL),
(96, 'Le petit prince', 'une description qui va bien', '2020-12-30', 'Léonne', NULL, NULL, NULL),
(97, 'La dune du pillat', 'une description qui va bien', '2020-12-31', 'Arthur', NULL, NULL, NULL),
(98, 'La dune du pillat', 'une description qui va bien', '2021-01-01', 'Léo', NULL, NULL, NULL),
(99, 'Salut ça va', 'une description qui va bien', '2021-01-02', 'Maeva', NULL, NULL, NULL),
(100, 'Bois d\'Arcy', 'une description qui va bien', '2021-01-03', 'Arthur', NULL, NULL, NULL),
(101, 'La vie de Bryan', 'une description qui va bien', '2021-01-04', 'Léo', NULL, NULL, NULL),
(102, 'Salut ça va', 'une description qui va bien', '2021-01-05', 'Léonne', NULL, NULL, NULL),
(103, 'La vie de Bryan', 'une description qui va bien', '2021-01-06', 'Louis', NULL, NULL, NULL),
(104, 'Bois d\'Arcy', 'une description qui va bien', '2021-01-07', 'Arthur', NULL, NULL, NULL),
(105, 'Bois d\'Arcy', 'une description qui va bien', '2021-01-08', 'Maeva', NULL, NULL, NULL),
(106, 'La dune du pillat', 'une description qui va bien', '2021-01-09', 'Arthur', NULL, NULL, NULL),
(107, 'La vie de Bryan', 'une description qui va bien', '2021-01-10', 'Léonne', NULL, NULL, NULL),
(108, 'La dune du pillat', 'une description qui va bien', '2021-01-11', 'Arthur', NULL, NULL, NULL),
(109, 'Le petit prince', 'une description qui va bien', '2021-01-12', 'Arthur', NULL, NULL, NULL),
(110, 'Le petit prince', 'une description qui va bien', '2021-01-13', 'Maeva', NULL, NULL, NULL),
(111, 'La dune du pillat', 'une description qui va bien', '2021-01-14', 'Arthur', NULL, NULL, NULL),
(112, 'La dune du pillat', 'une description qui va bien', '2021-01-15', 'Léo', NULL, NULL, NULL),
(113, 'Bois d\'Arcy', 'une description qui va bien', '2021-01-16', 'Léonne', NULL, NULL, NULL),
(114, 'La vie de Bryan', 'une description qui va bien', '2021-01-17', 'Maeva', NULL, NULL, NULL),
(115, 'La dune du pillat', 'une description qui va bien', '2021-01-18', 'Léo', NULL, NULL, NULL),
(116, 'La vie de Bryan', 'une description qui va bien', '2021-01-19', 'Louis', NULL, NULL, NULL),
(117, 'Salut ça va', 'une description qui va bien', '2021-01-20', 'Louis', NULL, NULL, NULL),
(118, 'Bois d\'Arcy', 'une description qui va bien', '2021-01-21', 'Louis', NULL, NULL, NULL),
(119, 'La vie de Bryan', 'une description qui va bien', '2021-01-22', 'Louis', NULL, NULL, NULL),
(120, 'Le petit prince', 'une description qui va bien', '2021-01-23', 'Maeva', NULL, NULL, NULL),
(121, 'Salut ça va', 'une description qui va bien', '2021-01-24', 'Maeva', NULL, NULL, NULL),
(122, 'Salut ça va', 'une description qui va bien', '2021-01-25', 'Léonne', NULL, NULL, NULL),
(123, 'La vie de Bryan', 'une description qui va bien', '2021-01-26', 'Arthur', NULL, NULL, NULL),
(124, 'Salut ça va', 'une description qui va bien', '2021-01-27', 'Léonne', NULL, NULL, NULL),
(125, 'La vie de Bryan', 'une description qui va bien', '2021-01-28', 'Arthur', NULL, NULL, NULL),
(126, 'Bois d\'Arcy', 'une description qui va bien', '2021-01-29', 'Arthur', NULL, NULL, NULL),
(127, 'Salut ça va', 'une description qui va bien', '2021-01-30', 'Léo', NULL, NULL, NULL),
(128, 'La vie de Bryan', 'une description qui va bien', '2021-01-31', 'Léo', NULL, NULL, NULL),
(129, 'Bois d\'Arcy', 'une description qui va bien', '2021-02-01', 'Arthur', NULL, NULL, NULL),
(130, 'Bois d\'Arcy', 'une description qui va bien', '2021-02-02', 'Léo', NULL, NULL, NULL),
(131, 'Le petit prince', 'une description qui va bien', '2021-02-03', 'Louis', NULL, NULL, NULL),
(132, 'Le petit prince', 'une description qui va bien', '2021-02-04', 'Léo', NULL, NULL, NULL),
(133, 'Salut ça va', 'une description qui va bien', '2021-02-05', 'Louis', NULL, NULL, NULL),
(134, 'Le petit prince', 'une description qui va bien', '2021-02-06', 'Louis', NULL, NULL, NULL),
(135, 'La vie de Bryan', 'une description qui va bien', '2021-02-07', 'Louis', NULL, NULL, NULL),
(136, 'La dune du pillat', 'une description qui va bien', '2021-02-08', 'Léonne', NULL, NULL, NULL),
(137, 'Le petit prince', 'une description qui va bien', '2021-02-09', 'Louis', NULL, NULL, NULL),
(138, 'Salut ça va', 'une description qui va bien', '2021-02-10', 'Léo', NULL, NULL, NULL),
(139, 'Salut ça va', 'une description qui va bien', '2021-02-11', 'Arthur', NULL, NULL, NULL),
(140, 'La vie de Bryan', 'une description qui va bien', '2021-02-12', 'Louis', NULL, NULL, NULL),
(141, 'Salut ça va', 'une description qui va bien', '2021-02-13', 'Léo', NULL, NULL, NULL),
(142, 'La dune du pillat', 'une description qui va bien', '2021-02-14', 'Maeva', NULL, NULL, NULL),
(143, 'Salut ça va', 'une description qui va bien', '2021-02-15', 'Louis', NULL, NULL, NULL),
(144, 'Salut ça va', 'une description qui va bien', '2021-02-16', 'Louis', NULL, NULL, NULL),
(145, 'La dune du pillat', 'une description qui va bien', '2021-02-17', 'Léo', NULL, NULL, NULL),
(146, 'Salut ça va', 'une description qui va bien', '2021-02-18', 'Léonne', NULL, NULL, NULL),
(147, 'Bois d\'Arcy', 'une description qui va bien', '2021-02-19', 'Maeva', NULL, NULL, NULL),
(148, 'Bois d\'Arcy', 'une description qui va bien', '2021-02-20', 'Louis', NULL, NULL, NULL),
(149, 'Bois d\'Arcy', 'une description qui va bien', '2021-02-21', 'Arthur', NULL, NULL, NULL),
(150, 'Bois d\'Arcy', 'une description qui va bien', '2021-02-22', 'Maeva', NULL, NULL, NULL),
(151, 'La vie de Bryan', 'une description qui va bien', '2021-02-23', 'Maeva', NULL, NULL, NULL),
(152, 'La dune du pillat', 'une description qui va bien', '2021-02-24', 'Arthur', NULL, NULL, NULL),
(153, 'Bois d\'Arcy', 'une description qui va bien', '2021-02-25', 'Maeva', NULL, NULL, NULL),
(154, 'La vie de Bryan', 'une description qui va bien', '2021-02-26', 'Maeva', NULL, NULL, NULL),
(155, 'La vie de Bryan', 'une description qui va bien', '2021-02-27', 'Léo', NULL, NULL, NULL),
(156, 'La vie de Bryan', 'une description qui va bien', '2021-02-28', 'Léo', NULL, NULL, NULL),
(157, 'Salut ça va', 'une description qui va bien', '2021-03-01', 'Arthur', NULL, NULL, NULL),
(158, 'La dune du pillat', 'une description qui va bien', '2021-03-02', 'Léo', NULL, NULL, NULL),
(159, 'La dune du pillat', 'une description qui va bien', '2021-03-03', 'Léo', NULL, NULL, NULL),
(160, 'Bois d\'Arcy', 'une description qui va bien', '2021-03-04', 'Arthur', NULL, NULL, NULL),
(161, 'Salut ça va', 'une description qui va bien', '2021-03-05', 'Léo', NULL, NULL, NULL),
(162, 'Le petit prince', 'une description qui va bien', '2021-03-06', 'Maeva', NULL, NULL, NULL),
(163, 'La dune du pillat', 'une description qui va bien', '2021-03-07', 'Louis', NULL, NULL, NULL),
(164, 'Bois d\'Arcy', 'une description qui va bien', '2021-03-08', 'Léonne', NULL, NULL, NULL),
(165, 'La dune du pillat', 'une description qui va bien', '2021-03-09', 'Léonne', NULL, NULL, NULL),
(166, 'Bois d\'Arcy', 'une description qui va bien', '2021-03-10', 'Léo', NULL, NULL, NULL),
(167, 'Le petit prince', 'une description qui va bien', '2021-03-11', 'Léo', NULL, NULL, NULL),
(168, 'Le petit prince', 'une description qui va bien', '2021-03-12', 'Louis', NULL, NULL, NULL),
(169, 'Salut ça va', 'une description qui va bien', '2021-03-13', 'Léonne', NULL, NULL, NULL),
(170, 'La vie de Bryan', 'une description qui va bien', '2021-03-14', 'Arthur', NULL, NULL, NULL),
(171, 'La dune du pillat', 'une description qui va bien', '2021-03-15', 'Maeva', NULL, NULL, NULL),
(172, 'Le petit prince', 'une description qui va bien', '2021-03-16', 'Arthur', NULL, NULL, NULL),
(173, 'Salut ça va', 'une description qui va bien', '2021-03-17', 'Léo', NULL, NULL, NULL),
(174, 'Bois d\'Arcy', 'une description qui va bien', '2021-03-18', 'Léonne', NULL, NULL, NULL),
(175, 'La dune du pillat', 'une description qui va bien', '2021-03-19', 'Léo', NULL, NULL, NULL),
(176, 'La vie de Bryan', 'une description qui va bien', '2021-03-20', 'Louis', NULL, NULL, NULL),
(177, 'Salut ça va', 'une description qui va bien', '2021-03-21', 'Maeva', NULL, NULL, NULL),
(178, 'La vie de Bryan', 'une description qui va bien', '2021-03-22', 'Léo', NULL, NULL, NULL),
(179, 'Salut ça va', 'une description qui va bien', '2021-03-23', 'Léo', NULL, NULL, NULL),
(180, 'Bois d\'Arcy', 'une description qui va bien', '2021-03-24', 'Léonne', NULL, NULL, NULL),
(181, 'Salut ça va', 'une description qui va bien', '2021-03-25', 'Louis', NULL, NULL, NULL),
(182, 'Le petit prince', 'une description qui va bien', '2021-03-26', 'Léo', NULL, NULL, NULL),
(183, 'Le petit prince', 'une description qui va bien', '2021-03-27', 'Arthur', NULL, NULL, NULL),
(184, 'La dune du pillat', 'une description qui va bien', '2021-03-28', 'Léonne', NULL, NULL, NULL),
(185, 'Le petit prince', 'une description qui va bien', '2021-03-29', 'Léo', NULL, NULL, NULL),
(186, 'Bois d\'Arcy', 'une description qui va bien', '2021-03-30', 'Arthur', NULL, NULL, NULL),
(187, 'La vie de Bryan', 'une description qui va bien', '2021-03-31', 'Maeva', NULL, NULL, NULL),
(188, 'Salut ça va', 'une description qui va bien', '2021-04-01', 'Maeva', NULL, NULL, NULL),
(189, 'Bois d\'Arcy', 'une description qui va bien', '2021-04-02', 'Léonne', NULL, NULL, NULL),
(190, 'La dune du pillat', 'une description qui va bien', '2021-04-03', 'Maeva', NULL, NULL, NULL),
(191, 'Bois d\'Arcy', 'une description qui va bien', '2021-04-04', 'Léonne', NULL, NULL, NULL),
(192, 'La vie de Bryan', 'une description qui va bien', '2021-04-05', 'Louis', NULL, NULL, NULL),
(193, 'Salut ça va', 'une description qui va bien', '2021-04-06', 'Maeva', NULL, NULL, NULL),
(194, 'La dune du pillat', 'une description qui va bien', '2021-04-07', 'Arthur', NULL, NULL, NULL),
(195, 'Salut ça va', 'une description qui va bien', '2021-04-08', 'Maeva', NULL, NULL, NULL),
(196, 'Salut ça va', 'une description qui va bien', '2021-04-09', 'Arthur', NULL, NULL, NULL),
(197, 'Bois d\'Arcy', 'une description qui va bien', '2021-04-10', 'Maeva', NULL, NULL, NULL),
(198, 'Bois d\'Arcy', 'une description qui va bien', '2021-04-11', 'Léo', NULL, NULL, NULL),
(199, 'La dune du pillat', 'une description qui va bien', '2021-04-12', 'Maeva', NULL, NULL, NULL),
(200, 'La dune du pillat', 'une description qui va bien', '2021-04-13', 'Léo', NULL, NULL, NULL),
(201, 'Allo', 'Ceci est la description du truc', '2020-09-17', 'Arthur', NULL, NULL, NULL),
(202, 'Allo', 'azezrgfhggfez', '2020-10-02', 'Louis', NULL, NULL, NULL),
(204, 'Troisième', 'juyhtgfdfgsrg', '2020-10-15', 'Maeva', NULL, NULL, NULL),
(205, 'Troisième', 'juyhtgfdfgsrg', '2020-10-15', 'Maeva', NULL, NULL, NULL),
(207, 'bonjour', 'ceci est un article', '0000-00-00', 'Léo', NULL, NULL, NULL),
(208, 'bonjour', 'ceci est un article', '0000-00-00', 'Léo', NULL, NULL, NULL),
(209, 'bonjour', 'ceci est un article', '0000-00-00', 'Léo', NULL, NULL, NULL),
(210, 'bonjour', 'ceci est un article', '2020-01-02', 'Léo', NULL, NULL, NULL),
(211, 'Un article', 'Un super article', '2020-10-07', 'Alexandre', NULL, NULL, NULL),
(212, 'Un article très bien', 'Un super article2', '2020-10-15', 'Alexandre', NULL, NULL, NULL),
(213, 'Plop', '            Le bel article !        \r\n        ', '2020-10-28', 'Aegir', NULL, NULL, NULL),
(214, 'Un article', 'mezfokzeijj', '2020-10-14', 'Léo', NULL, NULL, 2),
(215, 'Un titre vouala', 'Bonjour les amis ceci est une description intéressante pour introduire le cours de php objet', '2020-09-25', 'Moi même', './upload/', 'machin.jpg', NULL),
(216, 'Un titre vouala', 'Bonjour les amis ceci est une description intéressante pour introduire le cours de php objet', '2020-09-25', 'Moi même', './upload/', 'machin.jpg', NULL),
(217, 'Un titre vouala', 'Bonjour les amis ceci est une description intéressante pour introduire le cours de php objet', '2020-09-25', 'Moi même', './upload/', 'machin.jpg', NULL),
(218, 'Un titre vouala', 'Bonjour les amis ceci est une description intéressante pour introduire le cours de php objet', '2020-09-25', 'Moi même', './upload/', 'machin.jpg', NULL),
(219, 'Un titre vouala', 'Bonjour les amis ceci est une description intéressante pour introduire le cours de php objet', '2020-09-25', 'Moi même', './upload/', 'machin.jpg', NULL),
(220, 'Un titre vouala', 'Bonjour les amis ceci est une description intéressante pour introduire le cours de php objet', '2020-09-25', 'Moi même', './upload/', 'machin.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(255) NOT NULL,
  `Icon` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `Libelle`, `Icon`) VALUES
(1, 'Maisons', '<i class=\"fas fa-home\"></i>'),
(2, 'Paysan', '<i class=\"fas fa-home\"></i>'),
(3, 'App', '<i class=\"fas fa-home\"></i>'),
(4, 'Jardin', '◘');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Texte` longtext NOT NULL,
  `Auteur` varchar(255) NOT NULL,
  `Mail` varchar(150) NOT NULL,
  `Date` date NOT NULL,
  `Article_Id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `com_id` (`Article_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `Texte`, `Auteur`, `Mail`, `Date`, `Article_Id`) VALUES
(1, 'Plop', 'Plop', 'machin@machin.fr', '0000-00-00', 1),
(2, 'Ceci est mon beau commentaire', 'Celui-ci', 'machin@machin.fr', '0000-00-00', 1),
(3, 'Ceci est mon beau commentaire', 'Moi-même', 'machin@machin.fr', '2020-10-27', 1),
(4, 'Ceci est mon beau commentaire', 'Lui-en-soit', 'machin@gmail.fr', '2020-10-27', 1),
(5, 'Plop', 'Plop', 'machin@machin.fr', '2020-10-27', 1),
(6, 'Ceci est mon beau commentaire', 'Moi-même', 'machin@gmail.fr', '2020-10-27', 2),
(7, 'Ceci est mon beau commentaire', 'Moi-même', 'machin@gmail.fr', '2020-10-27', 2),
(8, 'Plop', 'Celui-ci', 'Machin@truc.fr', '2020-10-27', 2),
(9, 'Yo', 'Oui', 'bon@gmail.com', '2020-12-16', 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `cat_id` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `com_id` FOREIGN KEY (`Article_Id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
