-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 29 nov. 2019 à 12:31
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `hackaton-map-db`
--

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `idEntreprise` int(11) NOT NULL,
  `nomEntreprise` varchar(150) COLLATE utf8_bin NOT NULL,
  `siteWeb` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `adresse` varchar(300) COLLATE utf8_bin NOT NULL,
  `nomContact` varchar(150) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`idEntreprise`, `nomEntreprise`, `siteWeb`, `adresse`, `nomContact`) VALUES
(1, 'SIAMU', 'https://be.brussels/siamu/contact', 'Avenue de l\'Héliport 15 , 1000, Belgique', ''),
(2, 'bit4you ', 'https://www.bit4you.io/fr/', 'Avenue Charles-Quint 292b, 1083, Belgique', NULL),
(3, 'Phidani Software ', 'http://www.phidani.be/cgi-sys/defaultwebpage.cgi', 'Rue de La Caserne 45, 1000, Belgique', NULL),
(4, 'Belgium Web Casino (Golden Palace)', 'https://www.goldenpalace.be/', 'Avenue des Croix de Guerre 120, 1120, Belgique', NULL),
(5, 'Odoo S.A.', 'https://www.odoo.com/fr_FR/page/website-builder', 'Rue des Bourlottes 9, 1376, Belgique', NULL),
(6, 'McArnolds Communication', 'https://www.mcarnolds.be/', 'Chaussée d\'Alsemberg 993, 1180 Belgique', 'Michael de Menten'),
(7, 'Business & decision', 'https://www.businessdecision.be/', 'Rue Saint Lambert 149, 1200, Belgique', NULL),
(8, 'Make it - Fullup ', 'http://www.tankconnect.com', 'Mechelse steenweg 455, 1950, Belgique', NULL),
(9, 'Cread  ', 'https://www.companyweb.be/societe/crea-d/asbl/507764316', 'Rue des Anciens Etangs 40, 1190, Belgique', NULL),
(10, 'Administration communale d\'Uccle', 'http://www.uccle.be/administration', 'Place Jean Vander Elst 29, 1180, Belgique', NULL),
(11, 'Vivio ', 'https://www.vivio.com/\r\n', 'Avenue Wielemans Ceuppens 45, 1190, Belgique', NULL),
(12, 'Banlieues A.S.B.L.', 'https://www.banlieues.be/', 'Chaussée de Waterloo 412C, 1050, Belgique', NULL),
(13, 'Culturious', 'https://www.companyweb.be/societe/culturious/sprl/697569065', 'Rue Dries 165, 1200, Belgique', NULL),
(14, '8Trust S.P.R.L.', 'https://www.8trust.com/', 'Rue du Mail 50, 1050, Belgique', 'Alexis Renard'),
(15, 'She Leads Digital', 'https://sheleadsdigital.org', 'Sint Michielswarande 30B, 1040 , Belgique', 'Nadia Aimé'),
(16, 'PARTENAMUT', 'https://www.partenamut.be', 'Rue du Fossé aux Loups 18, 1000 , Belgique', 'Corentin Pirard'),
(17, 'LARAS', 'https://www.laras.be', 'Rue Royale 150, 1000, Belgique', 'Rémi Gelmini'),
(18, 'Everything is Fun', 'http://www.everythingisfun.eu', 'Chaussée de Boondael 61, 1050, Belgique', 'Thibault Jadoul'),
(19, 'Simone a soif', 'https://www.simoneasoif.be', 'Boulevard Général Wahis 16EA, 1030, Belgique', 'Antoine de Menten'),
(20, 'Tipik Communication Agency S.A. ', 'http://www.inextremis.be', 'Avenue de Tervueren 270, 1150, Belgique', 'Raphaël Libert'),
(21, 'Décathlon Belgique', 'https://www.decathlon.be', 'Rue de l\'Evêque 30, 1000, Belgique', 'Dimitri Nève'),
(22, '56k', 'https://56.be', 'Rue des Liégeois 53 , 1050, Belgique', 'Amaury L'),
(23, 'Rise + Shine', 'http://www.riseandshine.agency', 'Rue Bara 175, 1070, Belgique', 'Jean Durand '),
(24, 'iris-Academy', 'https://www.iris-hospitaux.be', 'Rue Dejoncker, 46, 1060, Belgique', 'Michiel Renier'),
(26, 'Université Catholique de Louvain - Centre de recherche Psychologie/Neurologie', 'https://uclouvain.be/fr/instituts-recherche/ions/neur/neurologie-clinique.html', 'Place du Cardinal Mercier, 10, 1090 Belgique', 'Virginie Roukens'),
(27, 'Irisib', 'http://irisib.be/', 'Rue Royale, 150,1000 Belgique', NULL),
(28, 'Udo Games', 'https://www.udogames.com/', 'Silikon Blok K1-7 Odtü, Turquie', NULL),
(29, 'Feed Me Light', 'https://www.feedmelight.com/', 'Avenue des Nerviens 1, 1780, Belgique', NULL),
(30, 'Noviat S.A.', 'https://www.noviat.com/', 'Avenue de Rusatira, 1, 1083 Belgique', NULL),
(31, 'BGP Entertainment Belgium ', 'https://www.companyweb.be/bedrijf/bgp-entertainment-belgium/bv-bvba/565986882', 'Rue de Livourne 13, 1060, Belgique', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `idFormation` int(11) NOT NULL,
  `nomFormation` varchar(100) COLLATE utf8_bin NOT NULL,
  `codeFormation` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`idFormation`, `nomFormation`, `codeFormation`) VALUES
(1, 'Web Application Developer', 'wad18'),
(2, 'Game developer', 'game03'),
(3, 'Web master', 'web07');

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

CREATE TABLE `stage` (
  `idStage` int(11) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFIn` date NOT NULL,
  `idUser` int(11) NOT NULL,
  `idEntreprise` int(11) DEFAULT NULL,
  `technologies` varchar(500) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `stage`
--

INSERT INTO `stage` (`idStage`, `dateDebut`, `dateFIn`, `idUser`, `idEntreprise`, `technologies`) VALUES
(1, '2019-03-30', '2019-06-25', 1, 1, NULL),
(2, '2019-03-30', '2019-06-25', 2, 2, NULL),
(3, '2019-03-30', '2019-06-25', 3, 3, NULL),
(4, '2019-03-30', '2019-06-25', 4, 4, NULL),
(5, '2019-03-30', '2019-06-25', 5, 5, NULL),
(6, '2019-03-30', '2019-06-25', 6, 6, NULL),
(7, '2019-03-30', '2019-06-25', 7, 7, NULL),
(8, '2019-03-30', '2019-06-25', 8, 8, NULL),
(9, '2019-03-30', '2019-06-25', 9, 9, NULL),
(10, '2019-03-30', '2019-06-25', 10, 10, NULL),
(11, '2019-03-30', '2019-06-25', 11, 11, NULL),
(12, '2019-03-30', '2019-06-25', 12, 12, NULL),
(13, '2019-03-30', '2019-06-25', 11, 11, NULL),
(14, '2019-03-30', '2019-06-25', 12, 12, NULL),
(63, '2019-03-30', '2019-06-25', 13, 13, NULL),
(64, '2019-03-30', '2019-06-25', 14, 2, NULL),
(65, '2019-03-30', '2019-06-25', 15, 14, NULL),
(66, '2019-01-06', '2019-02-28', 16, 14, NULL),
(67, '2019-01-06', '2019-02-28', 17, 26, NULL),
(68, '2019-01-06', '2019-02-28', 18, 27, NULL),
(69, '2019-01-06', '2019-02-28', 19, 28, NULL),
(70, '2019-01-06', '2019-02-28', 20, 29, NULL),
(71, '2019-01-06', '2019-02-28', 21, 30, NULL),
(72, '2019-01-06', '2019-02-28', 22, 28, NULL),
(73, '2019-01-06', '2019-02-28', 23, 31, NULL),
(74, '2019-01-06', '2019-02-28', 24, 26, NULL),
(75, '2019-03-25', '2019-05-24', 25, 15, NULL),
(76, '2019-03-25', '2019-05-24', 26, 16, NULL),
(77, '2019-03-25', '2019-05-24', 27, 6, NULL),
(78, '2019-03-25', '2019-05-24', 28, 14, NULL),
(79, '2019-03-25', '2019-05-24', 29, 17, NULL),
(80, '2019-03-25', '2019-05-24', 30, 18, NULL),
(81, '2019-03-25', '2019-05-24', 31, 19, NULL),
(82, '2019-03-25', '2019-05-24', 32, 20, NULL),
(83, '2019-03-25', '2019-05-24', 33, 21, NULL),
(84, '2019-03-25', '2019-05-24', 34, 22, NULL),
(85, '2019-03-25', '2019-05-24', 35, 23, NULL),
(86, '2019-03-25', '2019-05-24', 36, 24, NULL),
(87, '2019-03-30', '2019-06-25', 13, 13, NULL),
(88, '2019-03-30', '2019-06-25', 14, 2, NULL),
(89, '2019-03-30', '2019-06-25', 15, 14, NULL),
(90, '2019-01-06', '2019-02-28', 16, 14, NULL),
(91, '2019-01-06', '2019-02-28', 17, 26, NULL),
(92, '2019-01-06', '2019-02-28', 18, 27, NULL),
(93, '2019-01-06', '2019-02-28', 19, 28, NULL),
(94, '2019-01-06', '2019-02-28', 20, 29, NULL),
(95, '2019-01-06', '2019-02-28', 21, 30, NULL),
(96, '2019-01-06', '2019-02-28', 22, 28, NULL),
(97, '2019-01-06', '2019-02-28', 23, 31, NULL),
(98, '2019-01-06', '2019-02-28', 24, 26, NULL),
(99, '2019-03-25', '2019-05-24', 25, 15, NULL),
(100, '2019-03-25', '2019-05-24', 26, 16, NULL),
(101, '2019-03-25', '2019-05-24', 27, 6, NULL),
(102, '2019-03-25', '2019-05-24', 28, 14, NULL),
(103, '2019-03-25', '2019-05-24', 29, 17, NULL),
(104, '2019-03-25', '2019-05-24', 30, 18, NULL),
(105, '2019-03-25', '2019-05-24', 31, 19, NULL),
(106, '2019-03-25', '2019-05-24', 32, 20, NULL),
(107, '2019-03-25', '2019-05-24', 33, 21, NULL),
(108, '2019-03-25', '2019-05-24', 34, 22, NULL),
(109, '2019-03-25', '2019-05-24', 35, 23, NULL),
(110, '2019-03-25', '2019-05-24', 36, 24, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `travail`
--

CREATE TABLE `travail` (
  `idTravail` int(11) NOT NULL,
  `typeContrat` varchar(100) COLLATE utf8_bin NOT NULL,
  `dateDebut` date NOT NULL,
  `idUser` int(11) NOT NULL,
  `idEntreprise` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(50) COLLATE utf8_bin NOT NULL,
  `idFormation` int(11) NOT NULL,
  `linkedIn` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `eMail` varchar(150) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`idUser`, `type`, `nom`, `prenom`, `idFormation`, `linkedIn`, `eMail`) VALUES
(1, 'stagiaire', 'Achoukevitch ', 'Natalia', 1, 'https://www.linkedin.com/in/natalia-achoukevitch/\r\n', ''),
(2, 'stagiaire', 'Battisti ', 'Patrizia', 1, 'https://www.linkedin.com/in/patrizia-battisti/\r\n', ''),
(3, 'stagiaire', 'Bonnet ', 'Sophie', 1, 'https://www.linkedin.com/in/sophie-bonnet-wd/\r\n', ''),
(4, 'stagiaire', 'Budally ', 'Annie', 1, 'https://www.linkedin.com/in/annie-budally-zuinen/\r\n', ''),
(5, 'stagiaire', 'Cayphas ', 'Alice', 1, 'https://www.linkedin.com/in/alice-cayphas/\r\n', ''),
(6, 'stagiaire', 'Cosyns ', 'Sarah', 1, 'https://www.linkedin.com/in/sarah-cosyns/\r\n', ''),
(7, 'stagiaire', 'Crescini ', 'Francesca', 1, 'https://www.linkedin.com/in/francesca-carla-crescini/\r\n', ''),
(8, 'stagiaire', 'Dimofte ', 'Florenta', 1, 'https://www.linkedin.com/in/florenta-dimofte/\r\n', ''),
(9, 'stagiaire', 'El Meloudi ', 'Salima', 1, 'https://www.linkedin.com/in/salima-el-meloudi-a90707175/\r\n', ''),
(10, 'stagiaire', 'Gillias ', 'Marie-Ange', 1, 'https://www.linkedin.com/in/marie-ange-gillias/\r\n', ''),
(11, 'stagiaire', 'Maes ', 'Eglantine', 1, 'https://www.linkedin.com/in/eglantine-maes/\r\n', ''),
(12, 'stagiaire', 'Nsibu Lusiela ', 'Diana', 1, 'https://www.linkedin.com/in/diana-nsibu-lusiela/\r\n', ''),
(13, 'stagiaire', 'Parra Salamanca ', 'Viviana', 1, '\r\n', ''),
(14, 'stagiaire', 'Rodriguez Criollo ', 'Saudy', 1, '', ''),
(15, 'stagiaire', 'Sheibani ', 'Golnar', 1, 'https://www.linkedin.com/in/golnar-sheibani-a923494a/\r\n', ''),
(16, 'stagiaire', 'Boland ', 'Marie', 2, 'https://www.linkedin.com/in/marieboland/', ''),
(17, 'stagiaire', 'Buccheri ', 'Lisa', 2, 'https://www.linkedin.com/in/lisa-buccheri-b99545171/', ''),
(18, 'stagiaire', 'El Arabi ', 'Ikrame', 2, 'https://www.linkedin.com/in/ikrame-el-arabi/', ''),
(19, 'stagiaire', 'Gönen ', 'Hümeysa', 2, 'https://www.linkedin.com/in/arcenciel01/', ''),
(20, 'stagiaire', 'Janne ', 'Alice', 2, 'https://www.linkedin.com/in/alice-janne/', ''),
(21, 'stagiaire', 'Julien ', 'Anne-Gaëlle', 2, 'https://www.linkedin.com/in/anne-ga%C3%ABlle-julien-87baa8130/', ''),
(22, 'stagiaire', 'Köken ', 'Kübra', 2, 'https://www.linkedin.com/in/k%C3%BCbra-k%C3%B6ken-29a8b716b/', ''),
(23, 'stagiaire', 'Lantrade ', 'Lauranne', 2, 'https://www.linkedin.com/in/lauranne-lantrade-778739a4/', ''),
(24, 'stagiaire', 'Naqvi ', 'Laila', 2, 'https://www.linkedin.com/in/laila-naqvi-163a5152/', ''),
(25, '', 'Allaoui	', 'Sarra', 3, '', ''),
(26, 'stagiaire', 'Christoyannis 	 ', 'Sofia', 3, '', ''),
(27, 'stagiaire', 'Bongiovanni 	', 'Melissa', 3, 'https://www.linkedin.com/in/melissa-bongiovanni/', ''),
(28, 'stagiaire', 'Bottoni 	', 'Livia ', 3, 'https://www.linkedin.com/in/liviabottoni/', ''),
(29, 'stagiaire', 'Colin	 ', 'Cindy', 3, 'https://www.linkedin.com/in/cindycolin/', ''),
(30, 'stagiaire', 'Grenon   ', 'Sabrina', 3, 'https://www.linkedin.com/in/sabrina-grenon/', ''),
(31, 'stagiaire', 'Gueye  	', 'Sarah', 3, 'https://www.linkedin.com/in/sarah-gueye/', ''),
(32, 'stagiaire', 'Jacques 	 ', 'Floriane', 3, 'https://www.linkedin.com/in/floriane-jacques/', ''),
(33, 'stagiaire', 'La Rosa	', 'Sarah', 3, '', ''),
(34, 'stagiaire', 'Mesdour  ', 'Fatima ', 3, 'https://www.linkedin.com/in/fatima-mesdour-907719150/', ''),
(35, 'stagiaire', 'Motteu 	 ', 'Juliette', 3, 'https://www.linkedin.com/in/juliette-motteu/', ''),
(36, 'stagiaire', 'Regnier  ', 'Bénédicte ', 3, 'https://www.linkedin.com/in/b%C3%A9n%C3%A9dicte-regnier/', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`idEntreprise`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`idFormation`);

--
-- Index pour la table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`idStage`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idEntreprise` (`idEntreprise`);

--
-- Index pour la table `travail`
--
ALTER TABLE `travail`
  ADD PRIMARY KEY (`idTravail`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idEntreprise` (`idEntreprise`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `idFormation` (`idFormation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `idEntreprise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `idFormation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `stage`
--
ALTER TABLE `stage`
  MODIFY `idStage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `travail`
--
ALTER TABLE `travail`
  MODIFY `idTravail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `stage_ibfk_2` FOREIGN KEY (`idEntreprise`) REFERENCES `entreprise` (`idEntreprise`),
  ADD CONSTRAINT `stage_ibfk_3` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Contraintes pour la table `travail`
--
ALTER TABLE `travail`
  ADD CONSTRAINT `travail_ibfk_1` FOREIGN KEY (`idEntreprise`) REFERENCES `entreprise` (`idEntreprise`),
  ADD CONSTRAINT `travail_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idFormation`) REFERENCES `formation` (`idFormation`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
