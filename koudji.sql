-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 28, 2025 at 07:54 PM
-- Server version: 5.7.36
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koudji`
--

-- --------------------------------------------------------

--
-- Table structure for table `kpcommange`
--

CREATE TABLE `kpcommange` (
  `cmdid` int(11) NOT NULL,
  `cmddate` date NOT NULL,
  `usrid` int(11) NOT NULL,
  `cmdvu` int(11) NOT NULL,
  `cmdrep` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `kpmessage`
--

CREATE TABLE `kpmessage` (
  `mssid` int(11) NOT NULL,
  `msstitre` varchar(100) COLLATE utf8_bin NOT NULL,
  `msscontenu` text COLLATE utf8_bin NOT NULL,
  `usrid` int(11) NOT NULL,
  `mssvu` int(11) DEFAULT '0',
  `msstype` varchar(10) COLLATE utf8_bin NOT NULL,
  `mssref` int(11) NOT NULL DEFAULT '0',
  `mssvalide` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `kpmessage`
--

INSERT INTO `kpmessage` (`mssid`, `msstitre`, `msscontenu`, `usrid`, `mssvu`, `msstype`, `mssref`, `mssvalide`) VALUES
(1, 'Commentaire', 'Merci', 1, 0, 'Formations', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kpnoeud`
--

CREATE TABLE `kpnoeud` (
  `nodid` int(11) NOT NULL,
  `nodtitre` varchar(150) COLLATE utf8_bin NOT NULL,
  `nodresume` text COLLATE utf8_bin NOT NULL,
  `nodcontenu` text COLLATE utf8_bin NOT NULL,
  `noddate` date NOT NULL,
  `nodimage` varchar(50) COLLATE utf8_bin NOT NULL,
  `nodvu` int(11) NOT NULL,
  `nodtype` int(11) NOT NULL,
  `nodactif` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `kpnoeud`
--

INSERT INTO `kpnoeud` (`nodid`, `nodtitre`, `nodresume`, `nodcontenu`, `noddate`, `nodimage`, `nodvu`, `nodtype`, `nodactif`) VALUES
(1, 'Création de logiciels', 'De grandes expériences et des compétences prouvées pour vous concevoir des logiciels sur mesure. Nous nous sommes à jour des technologies !', '<h4 class=\"fw-bold mb-3\">Création de logiciels</h4>\r\n<h5 class=\"fw-bold mb-3\">à partir de 200.000 F CFA</h5>\r\n<p class=\"mb-4\"> Il existe des millers de logiciels sur internet ou déjà prêts à l\'emploi chez certains éditeurs, mais beaucoup d\'entreprises, même des grandes éprouvent de très grosses difficultés pour la personnalisation et l\'adaption des fonctionnalités à leur mode de fonctionnement. Il arrive aussi que la maintenance et la prise en main même de ces outils causent problème et la disponibilité des éditeurs se fait rare.</p>\r\n<p class=\"mb-4\">D\'un autre côté, il existe des entreprises qui utilisent encore les papiers ou les simples outils bureautiques pour leurs travaux et font régulièrement face aux pertes de données, lenteur de traitement, ...</p>\r\n<p class=\"mb-4 fw-bold\">Avec une grande expérience et des compétences prouvées, nous nous mettons à votre disposition pour vous construire des applications sur mesure qui répondront parfaitement à vos besoins. Nos travaux suivent les étapes normales et nous vous produisont les documents conventionnels.</p>\r\n <p class=\"mb-4 fw-bold\">En plus, selon les termes des contrats que nous proposons, nous assistons nos clients pour une prise en main complète et restons toujours disponibles pour les maintenances.</p>', '2024-04-28', 'logiciels.jpg', 0, 0, 1),
(2, 'Création de sites web', 'Nous vous garantissons une présence permanente sur la toile mondiale. C\'est de votre image qu\'il s\'agit et nous sommes là pour vous accompagner. ', '<h4 class=\"fw-bold mb-3\">Création de site web</h4><h5 class=\"fw-bold mb-3\">à partir de 150.000 F CFA</h5><p class=\"mb-4\">Jusqu\'à preuve du contraite, l\'internet reste le meilleur moyen de communication qui permet d\'atteindre un plus grand nombre de cibles sans grands efforts. Il est vrai que les réseaux sociaux (Facebook, WhatsApp, LinkedIn, Télégram, ...) existent et facilitent beaucoup la tâche mais restent limités à cercle d\'amis et de connaissances. </p><p class=\"mb-4\">Les sites web assurent une présence permanente sur la toile mondiale et sont accessibles à tout le monde à partir de n\'importe quel point de la planète.</p> <div class=\"mb-4 fw-bold\">Avec ou sans CMS, nous vous proposons des solutions fiables et sécurisées pour vous assurer une communication permanente au monde entier. De la conception à la mise en ligne, nous suivons ces étapes : </div><ul class=\"list-group-flush\"><li class=\"list-group-item\">Conception et réalisation</li><li class=\"list-group-item\">Nom de domaine et hébergement</li><li class=\"list-group-item\">Référencement</li><li class=\"list-group-item\">Mise à jour et maintenance</li></ul>\r\n                                ', '2024-04-29', 'swb.jpg', 0, 0, 1),
(3, 'Services courriers', 'Nous vous proposons une solution sécurisée et professionnelle pour vos courriers, quelle que soit leur importance. Surtout que nos prix sont abordables !', '<h4 class=\"fw-bold mb-3\">Services courriers</h4><p class=\"mb-4\">Chaque jour, chaque semaine, chaque mois, vous échangez des courriers à travers le pays. Que vous soyez une institution publique ou privée, une entreprise, une association. Quelle que soient la fréquence et l\'importance de vos échanges, ils méritent un minimum de respect, de sécurité et de protection. Voici enfin une solution professionnelle à coût raisonnable pour vous. </p><p class=\"mb-4\">Même les personnes physiques sont aussi concernées car elles envoient aussi de temps à autre des courriers importants à partir de leurs positions vers différentes destinations du pays.</p> <div class=\"mb-4 fw-bold\">Avec notre expérience et notre connaissance des localités du pays, nous sommes votre atout idéal. Nous vous proposons deux options : </div> <ul class=\"list-group-flush\"><li class=\"list-group-item\">Avec livraison (TAL) : A l\'arrivée, nous déposons le courrier où vous nous indiquerez !</li><li class=\"list-group-item\">Sans livraison (TSL) : Votre destinataire récupère le courrier dans nos locaux</li></ul> <div class=\"mb-4\">Nous assurons la collecte des courriers, l\'emballage, l\'expédition et la distribution, selon les termes de contrats que nous proposons. Voici quelques tarifs déjà appliqués :</div>  <div class=\"bg-light\">Moundou - N\'Djaména : 1.500 F </div><div>Moundou - Abéché : 3.000 F </div><div class=\"bg-light\">Moundou - Sarh : 1.500 F </div><div>N\'Djaména - Abéché : 1.500 F </div><div class=\"bg-light\">N\'Djaména - Sarh : 3.000 F </div><div>Abéché - Sarh : 5.000 F </div>\r\n                               ', '2024-04-29', 'crr.jpg', 0, 0, 0),
(4, 'Services bureautiques', 'Nos équipements sont très performants et produisent de résultas exceptionnels. Notre personnel qualifié vous donne toujours satisfaction.', '<h4 class=\"fw-bold mb-3\">Services bureatiques</h4> <div class=\"row bg-light py-2\"><div class=\"col-7\">Saisie </div><div class=\"col-5\">400 F </div></div>                               <div class=\"row py-2\"><div class=\"col-7\">Impression N/B </div><div class=\"col-5\">100 F </div></div><div class=\"row bg-light py-2\"><div class=\"col-7\">Impression couleur </div><div class=\"col-5\">250 F </div></div><div class=\"row py-2\"><div class=\"col-7\">Photocopie N/B </div><div class=\"col-5\">25 F </div></div><div class=\"row bg-light py-2\"><div class=\"col-7\">Photocopie couleur </div><div class=\"col-5\"> 250 F </div></div>\r\n<div class=\"row py-2\"><div class=\"col-7\">Réliure </div><div class=\"col-5\">500 F </div></div> <div class=\"row bg-light py-2\"><div class=\"col-7\">Plastification </div><div class=\"col-5\">500 F </div></div> <div class=\"row py-2\"><div class=\"col-7\">Scanner </div><div class=\"col-5\">400 F </div></div><div class=\"row bg-light py-2\"><div class=\"col-7\">Antivirus </div><div class=\"col-5\">10.000 F </div></div> <div class=\"row py-2\"><div class=\"col-7\">Installation système </div><div class=\"col-5\">5.000 F </div></div> <div class=\"row bg-light py-2\"><div class=\"col-7\">Installation pilote </div><div class=\"col-5\">5.000 F </div></div>', '2024-04-29', 'brt.jpg', 2, 0, 1),
(5, 'Graphisme-imprimerie', 'Nous avons de bons infographes, consacrés à leur métier. De plus, avec nos équipements ou nos partenaires la finition ne peut que vous surprendre.', '<h4 class=\"fw-bold mb-3\">Graphisme et imprimerie</h4> <div class=\"row bg-light py-2\"><div class=\"col-7\">Conception logo </div><div class=\"col-5\">10.000 F </div></div><div class=\"row py-2\"><div class=\"col-7\">Conception affiche </div><div class=\"col-5\">5.000 F </div></div><div class=\"row bg-light py-2\"><div class=\"col-7\">Conception carte visite</div><div class=\"col-5\">5.000 F </div></div> <div class=\"row py-2\"><div class=\"col-7\">Conception papier entête </div><div class=\"col-5\">5.000 F </div></div><div class=\"row bg-light py-2\"><div class=\"col-7\">Mise en page word (une page)</div><div class=\"col-5\">100 F </div></div><div class=\"row py-2\"><div class=\"col-7\">Impression carte de visite (100)</div><div class=\"col-5\">7.500 F </div></div><div class=\"row bg-light py-2\"><div class=\"col-7\">Impression banderole (mètre carré)</div><div class=\"col-5\"> 6.000 F </div></div><div class=\"row py-2\"><div class=\"col-7\">Impression T-Shirt </div><div class=\"col-5\">4.000 F </div></div><div class=\"row bg-light py-2\"><div class=\"col-7\">Impression polo </div><div class=\"col-5\">5.500 F </div></div> <div class=\"row py-2\"><div class=\"col-7\">Impression affiche A3 </div><div class=\"col-5\">1.000 F </div></div> <div class=\"row bg-light py-2\"><div class=\"col-7\">Antivirus </div><div class=\"col-5\">10.000 F </div></div>', '2024-04-29', 'impr.jpg', 3, 0, 1),
(6, 'MS Word', 'Beaucoup ont négligé cet outil pensant pouvoir l\'apprendre dans le tas, mais ont fini par regretter leur décision. 10.000 F CFA par mois pendant trois mois, pour vous aider à maitriser un outil incontournable aujourd\'hui.', '<h4 class=\"fw-bold mb-3\">MS Word</h4> <ul class=\"list-group-flush\"><li class=\"list-group-item\">Niveau I - 1 mois - 10.000 F CFA</li><li class=\"list-group-item\">Niveau II - 1 mois - 10.000 F CFA</li></ul> <p class=\"mb-4\">Objectifs visés : </p><div class=\"bg-light py-2\">Connaître l\'utilité de Word</div>  <div class=\"py-2\">Comprendre le clavier et l\'utilisation des touches</div> <div class=\"bg-light py-2\">Maitriser les opérations de base lors d\'une saisie</div><div class=\"py-2\">Savoir insérer et manipuler des tableaux dans un document</div> <div class=\"bg-light py-2\">Savoir insérer et manipuler les objets graphiques : formes, images, zone de textes, ....</div><div class=\"py-2\">Réaliser aisément des tables de matières et des tables d\'illustrations</div> <div class=\"bg-light py-2\">Savoir se servir des notes de bas de page et des notes de fin</div>  <div class=\"py-2\">Bien arranger ses entêtes, pieds et numéros de page</div><div class=\"bg-light py-2\">Insérer des symboles et formules mathématiques</div>  <div class=\"py-2\">Suivre les modifications du document par plusieurs utilisateurs</div><div class=\"bg-light py-2\">Verrouiller son document en lecture ou en écriture.</div>', '2024-04-29', 'word.jpg', 2, 1, 1),
(7, 'MS Excel', 'Vous avez longtemps penser qu\'Excel est difficile ou vous vous limitez à une utilisation basique, approchez-vous et nous vous aiderons à mieux vous servir de cet outil très puissant, pour un meilleur rendement', '<h4 class=\"fw-bold mb-3\">MS Excel</h4><ul class=\"list-group-flush\"><li class=\"list-group-item\">Niveau I - 1 mois - 10.000 F CFA</li><li class=\"list-group-item\">Niveau II - 1 mois - 10.000 F CFA</li></ul><p class=\"mb-4\">Objectifs visés : </p> <div class=\"bg-light py-2\">Connaître l\'utilité d\'Excel</div><div class=\"py-2\">Bien comprendre les éléments d\'Excel : classeur, feuille, ligne, colonne, cellule, ...</div> <div class=\"bg-light py-2\">Maitriser les opérations de base lors d\'une saisie</div><div class=\"py-2\">Savoir insérer une formule et utiliser les réfénreces</div><div class=\"bg-light py-2\">Connaitre les fonctions usuelles (et avancées) et savoir s\'en servir</div> <div class=\"py-2\">Manipuler aisément les tableaux de données</div><div class=\"bg-light py-2\">Réaliser des graphiques ou des mises en forme conditionnelles</div> <div class=\"py-2\">Bien arranger ses entêtes, pieds et numéros de page</div><div class=\"bg-light py-2\">Connaitre utiliser les tableaux Croisés Dynamiques</div> <div class=\"bg-light py-2\">Verrouiller son document en lecture ou en écriture.</div>', '2024-04-29', 'excel.jpg', 1, 1, 1),
(8, 'MS PowerPoint', 'PowerPoint est un outil professionnel qui améliore votre image. Il parait simple mais nécessite un guide. Nous vous donnons donc les compétences nécessaires pour réussir vos présentations.', '<h4 class=\"fw-bold mb-3\">MS Powerpoint</h4><div class=\"fw-bold\">20 jours - 10.000 F CFA</div>  <p class=\"mb-4\">PowerPoint est un outil hautement professionnel et sa maitrise améliore nettement votre image. Il comporte beaucoup de fonctionnalités qui ne se limitent pas seulement aux présentations. Voici les objectifs visés par cette formation : </p><div class=\"bg-light py-2\">Connaître l\'utilité de PowerPoint</div> <div class=\"py-2\">Bien comprendre les éléments de ¨PowerPoint : Diapositive, diaporama, thème, transition, animations</div> <div class=\"bg-light py-2\">Bien manipuler les diapositives</div> <div class=\"py-2\">Bien choisir et insérer un thème</div>  <div class=\"bg-light py-2\">Utilisre les tableaux et objets graphiques dans la présentation</div> <div class=\"py-2\">Insérer des graphiques</div><div class=\"bg-light py-2\">Insérer des liens, vidéos et son dans la présentation</div> <div class=\"py-2\">Tirer profit des animations</div><div class=\"bg-light py-2\">Connaitre les différents formats de sortie possibles.</div><div class=\"bg-light py-2\">Résussir sa présentation (diaporama)</div>', '2024-04-29', 'ppt.jpg', 0, 1, 0),
(9, 'Base de données', 'Acquerez de nouvelles compétences pour vos affaires ou un meilleur rendement professionnel. Pour les étudiants en informatique, voici l\'occasion de joindre la pratique à vos connaissances.', '<h4 class=\"fw-bold mb-3\">Base de données</h4><ul class=\"list-group-flush\"><li class=\"list-group-item\">Niveau I : Notions fondamentales - 1 mois - 20.000 F CFA</li><li class=\"list-group-item\">Niveau II : Implémentation dans un SGBD - 1 mois - 20.000 F CFA</li><li class=\"list-group-item\">Niveau III : Les requêtes SQL avancées - 1 mois - 20.000 F CFA</li></ul><p class=\"mb-4\">Cette formation s\'adresse principalement aux Chefs d\'entreprises, comptables, gestionnaires de Ressources Humaines et étudiants en informatique. Toute fois, elle reste ouverte à toute personne qui en éprouve le besoin, surtout celle qui veut embrasser un métier passionnant. Vous y apprendrez :</p><div class=\"bg-light py-2\">Ce qu\'est une base de données</div> <div class=\"py-2\">Comment concevoir une base de données</div> <div class=\"bg-light py-2\">Une introduction au Système d\'Informations</div><div class=\"py-2\">Les informations sur les SGBD très sollicités</div><div class=\"bg-light py-2\">L\'implémentation d\'une base de données dans un SGBD</div> <div class=\"py-2\">Les mises à jour de données : insertion, modification, suppression, consultation</div><div class=\"bg-light py-2\">Les bases du langage des bases de données, le SQL</div><div class=\"py-2\">Les requêtes avancées</div><div class=\"bg-light py-2\">Les spécificités liées au SGBD choisi (Access, MySQL)</div>', '2024-04-29', 'bdd.jpg', 0, 1, 0),
(10, 'Création de sites web', 'Vous avez longtemps rêvé apprendre ce métier très passionnant, voici une bonne opportunité pour vous. A l\'issue de la formation, vous aurez les compétences nécessaires pour produire des travaux de qualité', '<h4 class=\"fw-bold mb-3\">Création de sites web (PHP/MySQL)</h4><ul class=\"list-group-flush\"><li class=\"list-group-item\">Niveau I : HTML, CSS, Bootstrap - 1 mois - 25.000 F CFA</li><li class=\"list-group-item\">Niveau II : PHP, MySQL - 1 mois - 25.000 F CFA</li><li class=\"list-group-item\">Niveau III : PHP avancé, hébergement - 1 mois - 25.000 F CFA</li></ul> <div class=\"bg-light py-2\">Notions fondamentales</div> <div class=\"py-2\">Les bases du web : HTML et CSS</div><div class=\"bg-light py-2\">Le bibliothèques utiles : bootstrap, owl caroussel, datatable, ...</div><div class=\"py-2\">Choisir et adapter un thème existant</div> <div class=\"bg-light py-2\">Introduction à MySQL</div><div class=\"py-2\">Introduction aux CMS</div><div class=\"bg-light py-2\">Les bases du langage PHP</div> <div class=\"py-2\">Les formulaires, sessions, cookies</div><div class=\"bg-light py-2\">Programmation Orienté Objet en PHP</div> <div class=\"py-2\">Les différentes techniques de sécurisation </div>\r\n <div class=\"bg-light py-2\">Hébergement et référencement</div>', '2024-04-29', 'site.jpg', 1, 1, 1),
(11, 'Programmation java', 'Une bonne opportunité d\'apprendre à programmer par vous même. Nos multiples travaux vous aideront à gagner en expériences. La programmation est un metier très passionnant ou nous vous la rendons facile.', '<h4 class=\"fw-bold mb-3\">Programmation java</h4><ul class=\"list-group-flush\"><li class=\"list-group-item\">Niveau I : Découverte du langage - 1 mois - 25.000 F CFA</li><li class=\"list-group-item\">Niveau II : Java et les Bases de données - 1 mois - 25.000 F CFA</li><li class=\"list-group-item\">Niveau III : Application complète - 1 mois - 25.000 F CFA</li></ul>\r\n <div class=\"bg-light py-2\">Les outils qu\'il faut</div> <div class=\"py-2\">Programme, variables et instructions</div> <div class=\"bg-light py-2\">Les tableaux et les collections</div> <div class=\"py-2\">Les méthodes (prédéfinies, propres) et bibliothèques utiles</div>  <div class=\"bg-light py-2\">Interfaces Homme Machine (IHM)</div> <div class=\"py-2\">La gestion des exceptions</div>  <div class=\"bg-light py-2\">Accès aux bases de données en java</div> <div class=\"py-2\">La gestion des fichiers</div> <div class=\"bg-light py-2\">Sérialisation et internationalisation</div> <div class=\"py-2\">La sécurité </div <div class=\"bg-light py-2\">Les expressions régulières</div>', '2024-04-29', 'java.jpg', 0, 1, 1),
(12, 'Fournitures', 'Bureau : <span class=\"fst-italic\">Rame de feuilles A4 - A3, Post-it divers formats, Calepin A5 - A4, port stylo, ciseau, scotch, Chemise à sangle et cartables ; </span>Scolaires : <span class=\"fst-italic\">Sacs, Cahiers, Stylos, Craies, livres ou manuels scolaires, oeuvres littéraires </span>', '<h4 class=\"fw-bold mb-3\">Fournitures</h4> \r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Rame A4 / A3 </div><div class=\"col-5\">4.000 F / 10.000 F </div></div>\r\n        <div class=\"row py-2\"><div class=\"col-7\">Calepin A5 / A4 </div><div class=\"col-5\">500 F / 1.000 F </div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Post-it tout format</div><div class=\"col-5\">-</div></div> \r\n        <div class=\"row py-2\"><div class=\"col-7\">Porte stylo </div><div class=\"col-5\">2.500 F</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Chemise à sangle, Chrono</div><div class=\"col-5\">- </div></div>\r\n        <div class=\"row py-2\"><div class=\"col-7\">Papier conférence</div><div class=\"col-5\">10.000 F </div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Sacs à dos</div><div class=\"col-5\"> 10.000 F </div></div>\r\n        <div class=\"row py-2\"><div class=\"col-7\">Paquet cahiers (100, 50)</div><div class=\"col-5\">1.750 F </div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Cahier 200 P A5 / A4</div><div class=\"col-5\">500 F / 1.000 F </div></div> \r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Scotch tout format</div><div class=\"col-5\">-</div></div> \r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Kit oreiller (écouteur)</div><div class=\"col-5\">1.500 F </div></div> \r\n        <div class=\"row py-2\"><div class=\"col-7\">Stylos diverses qualités </div><div class=\"col-5\">-</div></div> \r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Livres scolaires </div><div class=\"col-5\">2.500 F</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Oeuvres littéraires </div><div class=\"col-5\">-</div></div>', '2025-01-14', 'frn.jpg', 0, 2, 1),
(13, 'Electricité', 'Câble électrique, ampoules pour électricité et panneau, rallonge et multiprises diverses longueurs, kit maintenance, disjoncteurs, prises et interrupteurs apparents ou encastrés, chargeur de téléphones et d\'ordinateurs, Ecran de télévision', '<h4 class=\"fw-bold mb-3\">Fournitures</h4> \r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Câble toute catégorie</div><div class=\"col-5\">-</div></div>\r\n        <div class=\"row py-2\"><div class=\"col-7\">Ecran de télévision tout format</div><div class=\"col-5\">-</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Chargeur ordinateur</div><div class=\"col-5\">12.500 F</div></div> \r\n        <div class=\"row py-2\"><div class=\"col-7\">Chargeur LG / Fantom</div><div class=\"col-5\">1.000 F / 1.500 F</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Ampoules (Electricité, panneau)</div><div class=\"col-5\">-</div></div>\r\n        <div class=\"row py-2\"><div class=\"col-7\">Rallonge diverses qualités</div><div class=\"col-5\">-</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Interrupteur apparent, encastré</div><div class=\"col-5\"> 500 F / 1.000 F </div></div>\r\n        <div class=\"row py-2\"><div class=\"col-7\">Prise apparente, encastrée</div><div class=\"col-5\">500 F / 1.000 F</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Adaptateur fiche</div><div class=\"col-5\">500 F</div></div> \r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Disjoncteur diverses qualités</div><div class=\"col-5\">-</div></div> \r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Décamètre 7.5m</div><div class=\"col-5\">7.500 F </div></div> \r\n        <div class=\"row py-2\"><div class=\"col-7\">Cutter, Paire de ciseau</div><div class=\"col-5\">-</div></div> \r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Testeurs et kit</div><div class=\"col-5\">2.500 F</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Douilles / Port douille</div><div class=\"col-5\">500 F / 1.000 F</div></div>\r\n        ', '2025-01-14', 'elc.jpg', 0, 2, 1),
(14, 'Informatique', 'Ordinateurs portables et de bureau, Imprimante Laser et à jet d\'encre, Clé USB, Disque dur, Connecteurs et câbles RJ 45, Adaptateur VGA-HDMI-USB, fiche d\'alimentation, claviers et souris USB et sans fil, Kit de maintenance et nettoyage', '<h4 class=\"fw-bold mb-3\">Informatique</h4> \r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Ordinateurs portables toute marque</div><div class=\"col-5\"></div></div>\r\n        <div class=\"row py-2\"><div class=\"col-7\">Imprimantes Laser ou à jet</div><div class=\"col-5\">-</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Clé USB toute capacité</div><div class=\"col-5\"></div></div> \r\n        <div class=\"row py-2\"><div class=\"col-7\">Souris USB / sans fil</div><div class=\"col-5\">3.000 F / 4.500 F</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Claviers USB / sans fils</div><div class=\"col-5\">4.500 F / 10.000 F</div></div>\r\n        <div class=\"row py-2\"><div class=\"col-7\">Connecteurs et câbles RJ45</div><div class=\"col-5\">-</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Câble VGA, Alimentation</div><div class=\"col-5\"> 1.000 F </div></div>\r\n        <div class=\"row py-2\"><div class=\"col-7\">Câble HDMI diverses longueurs</div><div class=\"col-5\">-</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Adaptateur VGA-HDMI</div><div class=\"col-5\">5.000 F</div></div> \r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Disque dur toute capacité</div><div class=\"col-5\">-</div></div> \r\n        <div class=\"row bg-light py-2\"><div class=\"col-7\">Tourne vis de maintenance</div><div class=\"col-5\">-</div></div> \r\n        <div class=\"row py-2\"><div class=\"col-7\">Kit de nettoyage</div><div class=\"col-5\">-</div></div> ', '2025-01-14', 'inf.jpg', 0, 2, 1),
(15, 'Machines pour billets', 'DORS 1250 M1 : <span class=\"text-info fst-italic\"> Détecteur de faux billets avec Contrôle intelligent anti-Stokes (iAS), magnétique, infrarouge, ultraviolet, IR transmis, lumière blanche</span><br />ProNote 1.5 : <span class=\"text-info fst-italic\">Compteuse et trieuse multi-devise </span>', '<h4 class=\"fw-bold mb-3\">Détecteurs de faux billets - Compteuse et trieuse de billets</h4> \r\n        <div class=\"row bg-info py-2\"><div class=\"col-12\">DORS 1250 M1 : Contrôle complet de l\'authenticité des billets de banque</div></div>\r\n        <div class=\"row py-2\"><div class=\"col-12\">Utilisé aussi par des experts pour contrôler l\'authenticité des titres, passeports, et autres formulaires numérotés en série</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-12\">Equipé d\'un capteur magnétique intégré et d\'une zone de polarisation magnétique. L\'appareil dispose d\'un écran tactile.</div></div> \r\n        <div class=\"row py-2\"><div class=\"col-12\">Equipé d\'un capteur intelligent Anti-Stokes (iAS), unique sur le marché russe et international des détecteurs de visualisation</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-12\">Contrôle : intelligent Anti-Stokes (iAS), magnétique, infrarouge à deux bandes, infrarouge (IR), ultraviolet (UV) pour vérifier les images et les fibres, IR transmet pour vérifier les filigranes et les fils de sécurité, lumière blanche réfléchie pour vérifier les types et défauts d\'impression, taille vérifier les dimensions des billets.</div></div>\r\n        <div class=\"row bg-info py-2\"><div class=\"col-12\">Pronote 1.5 : compteuse et trieuse de billets de banquedotée d\'une technologie exceptionnel.</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-12\">Intègre un compartiment de rejet pendant le comptage pour renforcer la sécurité</div></div>\r\n        <div class=\"row py-2\"><div class=\"col-12\">Parfaitement préparé pour tous les billets de banque grâce à des mises à jour simples et rapides</div></div>\r\n        <div class=\"row bg-light py-2\"><div class=\"col-12\">Plus compacte de sa catégorie, il répond aux exigences actuelles, avec une interface utilisateur facile d\'utilisation via jog-dial</div></div> \r\n        <div class=\"row py-2\"><div class=\"col-12\">Peut compter jusqu\'à 1.500 billet par minute ; Bac d\'entrée : 700 billets, Sortie : 200 billets ; Compartiment de rejet : 100 billets</div></div> \r\n        ', '2025-01-14', 'cpt.jpg', 5, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kpusers`
--

CREATE TABLE `kpusers` (
  `usrid` int(11) NOT NULL,
  `usrnom` varchar(100) COLLATE utf8_bin NOT NULL,
  `usremail` varchar(50) COLLATE utf8_bin NOT NULL,
  `usrphone` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `usrpassword` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `urslogin` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `usrdate` date DEFAULT NULL,
  `usrderniere` date DEFAULT NULL,
  `usrcode` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `kpusers`
--

INSERT INTO `kpusers` (`usrid`, `usrnom`, `usremail`, `usrphone`, `usrpassword`, `urslogin`, `usrdate`, `usrderniere`, `usrcode`) VALUES
(1, 'khaum', 'elodjim@yahoo.fr', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kpcommange`
--
ALTER TABLE `kpcommange`
  ADD PRIMARY KEY (`cmdid`);

--
-- Indexes for table `kpmessage`
--
ALTER TABLE `kpmessage`
  ADD PRIMARY KEY (`mssid`);

--
-- Indexes for table `kpnoeud`
--
ALTER TABLE `kpnoeud`
  ADD PRIMARY KEY (`nodid`);

--
-- Indexes for table `kpusers`
--
ALTER TABLE `kpusers`
  ADD PRIMARY KEY (`usrid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kpcommange`
--
ALTER TABLE `kpcommange`
  MODIFY `cmdid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kpmessage`
--
ALTER TABLE `kpmessage`
  MODIFY `mssid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kpnoeud`
--
ALTER TABLE `kpnoeud`
  MODIFY `nodid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kpusers`
--
ALTER TABLE `kpusers`
  MODIFY `usrid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
