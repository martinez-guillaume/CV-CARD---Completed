-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 14 avr. 2023 à 12:58
-- Version du serveur : 8.0.32-0ubuntu0.22.04.2
-- Version de PHP : 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `visit_card`
--

-- --------------------------------------------------------

--
-- Structure de la table `card`
--

CREATE TABLE `card` (
  `id` int NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `civility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `card`
--

INSERT INTO `card` (`id`, `firstname`, `lastname`, `email`, `phone_number`, `address1`, `address2`, `post_code`, `city`, `civility`, `user_id`, `image_name`, `updated_at`) VALUES
(276, 'Louis', 'Guichard', 'benoit03@hotmail.fr', '06 02 02 30 19', 'chemin de Boyer', 'Apt. 468', '3200', 'Costa', 'Me.', 12, NULL, NULL),
(277, 'Madeleine', 'Boyer', 'tleroux@free.fr', '06 91 21 02 93', '257, avenue Hebert', 'Étage 855', '0400', 'Blondel', 'Dr.', 12, NULL, NULL),
(278, 'Adrien', 'Millet', 'richard.noemi@imbert.com', '07 91 80 95 44', 'chemin de Blot', 'Suite 550', '0300', 'Ramos', 'Me.', 12, NULL, NULL),
(279, 'Victor', 'Millet', 'peron.maryse@live.com', '0751961998', '2, impasse de Lesage', 'Étage 559', '4600', 'Navarro-la-Forêt', 'Dr.', 12, NULL, NULL),
(280, 'Guillaume', 'Gautier', 'lucy84@denis.fr', '0792573563', '90, rue Hortense Boulay', 'Apt. 989', '5100', 'Colletnec', 'Me.', 12, NULL, NULL),
(281, 'Jeannine', 'Moreau', 'leblanc.christophe@noos.fr', '+33 6 33 32 98 09', '41, chemin Poirier', 'Apt. 149', '2600', 'Pereira', 'Dr.', 12, NULL, NULL),
(282, 'Thibaut', 'Perret', 'launay.marianne@club-internet.fr', '06 75 18 29 45', '61, rue de Dupuis', 'Suite 382', '1900', 'Hoarau', 'M.', 12, NULL, NULL),
(283, 'Dominique', 'Ramos', 'barthelemy.antoine@royer.fr', '+33 (0)7 61 47 86 55', '11, rue de Vallet', 'Suite 085', '9500', 'BarthelemyBourg', 'Dr.', 12, NULL, NULL),
(284, 'Richard', 'Mahe', 'yjacques@orange.fr', '0666797191', '44, rue Henriette Buisson', 'Suite 646', '8400', 'Levy-les-Bains', 'Dr.', 12, NULL, NULL),
(285, 'Élisabeth', 'Collin', 'boulanger.gregoire@free.fr', '07 83 28 29 92', '752, avenue Mathieu', 'Apt. 787', '4400', 'Lejeune', 'Me.', 12, NULL, NULL),
(286, 'Christophe', 'Delattre', 'yallain@gonzalez.net', '+33 7 39 63 05 14', '35, place Théophile Valentin', 'Étage 174', '7500', 'Rouxboeuf', 'Dr.', 12, NULL, NULL),
(287, 'Jacqueline', 'Leleu', 'drossi@noos.fr', '+33 (0)6 76 15 72 02', '31, impasse Duval', 'Chambre 814', '2800', 'MaillardBourg', 'Me.', 12, NULL, NULL),
(288, 'Charlotte', 'Bourdon', 'oceane21@club-internet.fr', '+33 6 04 41 26 31', '15, rue de Buisson', 'Bât. 500', '3900', 'Denis-la-Forêt', 'Dr.', 12, NULL, NULL),
(289, 'Christophe', 'Evrard', 'nicolas.roussel@tele2.fr', '06 94 09 97 11', '49, boulevard de Costa', 'Bât. 603', '7300', 'LelievreVille', 'Pr.', 12, NULL, NULL),
(290, 'Claude', 'Humbert', 'emeyer@live.com', '+33 (0)6 18 86 59 29', '2, avenue de Barbe', 'Apt. 624', '1600', 'Bonneau', 'Dr.', 12, NULL, NULL),
(291, 'Anouk', 'Wagner', 'imuller@chauveau.net', '+33 (0)6 25 72 88 38', '58, chemin de Bernard', 'Chambre 372', '7500', 'Bailly', 'Me.', 12, NULL, NULL),
(292, 'Joséphine', 'Dumont', 'wlaine@club-internet.fr', '+33 (0)6 16 13 86 24', '7, rue de Techer', 'Chambre 695', '0500', 'Guilletnec', 'Mme.', 12, NULL, NULL),
(293, 'Jacqueline', 'Leclercq', 'danielle.bruneau@laposte.net', '07 39 35 70 74', '45, boulevard Manon Renault', 'Chambre 820', '6100', 'Perrot-sur-Morel', 'Mlle', 12, NULL, NULL),
(294, 'Alain', 'Delmas', 'olivier05@weber.fr', '06 92 66 44 57', 'chemin Agnès Raynaud', 'Apt. 382', '7500', 'Morel-sur-Antoine', 'Dr.', 12, NULL, NULL),
(295, 'Marc', 'Loiseau', 'yleleu@wanadoo.fr', '07 56 55 77 93', '82, rue Thomas', 'Bât. 751', '6400', 'Baillydan', 'Mlle', 12, NULL, NULL),
(296, 'Raymond', 'Lombard', 'rlebrun@yahoo.fr', '07 68 48 01 87', 'rue Josette Valette', 'Suite 954', '5200', 'Pons-la-Forêt', 'Me.', 12, NULL, NULL),
(297, 'Christine', 'Lesage', 'emile.bouvier@live.com', '0628868050', '66, rue de Schmitt', 'Chambre 332', '2B00', 'Courtoisboeuf', 'Dr.', 12, NULL, NULL),
(298, 'Émilie', 'Legros', 'zgomez@bruneau.fr', '0756527520', '93, chemin de Rocher', 'Apt. 414', '0700', 'Moreno-sur-Mer', 'Me.', 12, NULL, NULL),
(299, 'Denis', 'Bertrand', 'benard.aurore@gmail.com', '+33 (0)7 69 41 98 29', 'place de Cohen', 'Suite 236', '97400', 'Delorme', 'Pr.', 12, NULL, NULL),
(300, 'Clémence', 'Tanguy', 'pelletier.zoe@humbert.fr', '+33 (0)6 08 36 54 40', 'rue de Humbert', 'Bât. 187', '6100', 'Lacombe', 'Dr.', 12, NULL, NULL),
(301, 'Claire', 'Fischer', 'emile67@gmail.com', '0748629516', '96, rue Maurice', 'Apt. 537', '1600', 'Payet-la-Forêt', 'M.', 12, NULL, NULL),
(302, 'Sabine', 'Gillet', 'lorraine48@renault.fr', '+33 6 85 51 94 77', '2, rue Joseph Gerard', 'Apt. 229', '8900', 'Gerard', 'M.', 12, NULL, NULL),
(303, 'Yves', 'Benoit', 'antoinette.leconte@leleu.org', '06 11 39 35 09', '8, impasse de Lecomte', 'Chambre 558', '4100', 'Delannoy', 'Me.', 12, NULL, NULL),
(304, 'Simone', 'Martel', 'christophe97@laposte.net', '0733061649', '68, rue de Vaillant', 'Étage 933', '3300', 'LegrosBourg', 'M.', 12, NULL, NULL),
(305, 'Nicolas', 'Garcia', 'gomes.martin@martins.org', '07 55 96 69 90', '81, avenue de Guichard', 'Étage 165', '7700', 'DelmasBourg', 'Mlle', 12, NULL, NULL),
(306, 'Marine', 'Lecomte', 'jerome.lecoq@sfr.fr', '06 58 81 94 89', '712, place Benard', 'Chambre 263', '2600', 'Dumas', 'Pr.', 12, NULL, NULL),
(307, 'Corinne', 'Remy', 'jacques18@pelletier.fr', '+33 (0)6 87 42 22 96', '24, avenue Lambert', 'Bât. 940', '4200', 'Lecoq-sur-Mer', 'Me.', 12, NULL, NULL),
(308, 'Thierry', 'Mary', 'tessier.david@free.fr', '06 62 50 46 51', '26, avenue Salmon', 'Suite 280', '8000', 'Lombard', 'Pr.', 12, NULL, NULL),
(309, 'Noël', 'Merle', 'edith.briand@tanguy.net', '07 50 86 51 41', 'boulevard de Prevost', 'Apt. 950', '6700', 'Brunet-les-Bains', 'M.', 12, NULL, NULL),
(310, 'Audrey', 'Pinto', 'catherine78@club-internet.fr', '0786974553', '43, avenue de Rossi', 'Étage 896', '5100', 'Duval', 'Mlle', 12, NULL, NULL),
(311, 'Dominique', 'Pruvost', 'iferrand@moreno.net', '+33 7 96 76 89 81', '75, rue de Boutin', 'Chambre 507', '7100', 'Courtois', 'Dr.', 12, NULL, NULL),
(312, 'Maryse', 'Perrin', 'elise61@laposte.net', '0736327525', '133, chemin Marcel Guibert', 'Étage 943', '1900', 'Valentin-les-Bains', 'Mlle', 12, NULL, NULL),
(313, 'Valérie', 'Francois', 'diane06@gomes.fr', '+33 7 40 80 12 08', 'chemin Roche', 'Étage 517', '3000', 'Dos Santos-les-Bains', 'Me.', 12, NULL, NULL),
(314, 'Aimé', 'Michaud', 'christine80@hotmail.fr', '+33 (0)7 56 71 09 53', '6, avenue Léon Muller', 'Bât. 389', '0100', 'Rousseau', 'Dr.', 12, NULL, NULL),
(315, 'Grégoire', 'Perret', 'buisson.marc@mallet.fr', '0777217670', '2, avenue Charles Faure', 'Étage 168', '1800', 'Nicolas-sur-Mer', 'Dr.', 12, NULL, NULL),
(316, 'Clémence', 'Lemoine', 'paulette.dumas@evrard.fr', '07 72 48 91 75', 'rue de Petitjean', 'Suite 207', '4900', 'Brun', 'M.', 12, NULL, NULL),
(317, 'Tristan', 'Rodrigues', 'marechal.william@hotmail.fr', '+33 (0)6 67 87 61 06', '1, place Marie', 'Chambre 056', '1600', 'Launaynec', 'Pr.', 12, NULL, NULL),
(318, 'Jeanne', 'Lenoir', 'pschmitt@barthelemy.com', '+33 7 43 75 09 65', '22, chemin Breton', 'Chambre 902', '8300', 'Chretiennec', 'Pr.', 12, NULL, NULL),
(319, 'Geneviève', 'Raymond', 'mathilde.nguyen@yahoo.fr', '+33 7 82 74 95 83', '10, boulevard Aubry', 'Bât. 647', '6900', 'Auger', 'Mme.', 12, NULL, NULL),
(320, 'Caroline', 'Weiss', 'jules82@sfr.fr', '07 30 90 28 18', '2, avenue Gregoire', 'Suite 415', '5200', 'Bouvierdan', 'Dr.', 12, NULL, NULL),
(321, 'Eugène', 'Barre', 'rlaurent@club-internet.fr', '06 79 28 38 26', '4, impasse Philippine Valette', 'Étage 660', '4800', 'Leleu', 'Mlle', 12, NULL, NULL),
(322, 'Caroline', 'Hamel', 'crodrigues@germain.com', '+33 7 42 74 12 96', '46, chemin Capucine Morel', 'Apt. 087', '9300', 'Gilbert-sur-Gay', 'Dr.', 12, NULL, NULL),
(323, 'Marcelle', 'Dubois', 'mendes.ines@free.fr', '+33 7 91 77 80 22', '4, avenue William Muller', 'Apt. 474', '2500', 'Hebertboeuf', 'Me.', 12, NULL, NULL),
(324, 'Jeannine', 'Olivier', 'valexandre@yahoo.fr', '+33 (0)7 71 27 82 21', '570, avenue de Wagner', 'Bât. 249', '2300', 'Vallet-la-Forêt', 'Pr.', 12, NULL, NULL),
(325, 'Patrick', 'Didier', 'lopes.charlotte@chevallier.com', '+33 (0)7 71 56 38 33', '94, chemin Turpin', 'Étage 014', '8000', 'Marienec', 'Pr.', 12, NULL, NULL),
(326, 'Martin', 'Gaudin', 'nbesson@noos.fr', '06 52 35 20 98', 'rue Boulay', 'Bât. 091', '8000', 'Pasquier-les-Bains', 'Mme.', 12, NULL, NULL),
(327, 'Thérèse', 'Mathieu', 'qmarie@tele2.fr', '+33 6 90 50 60 42', 'rue Arnaude Bernard', 'Apt. 759', '3000', 'Guillaume', 'Pr.', 12, NULL, NULL),
(328, 'Charles', 'Rousset', 'luce59@club-internet.fr', '06 90 58 29 19', '402, rue de Giraud', 'Bât. 146', '3600', 'Legros-la-Forêt', 'Me.', 12, NULL, NULL),
(329, 'Juliette', 'Faivre', 'margaret.duval@hotmail.fr', '+33 7 37 92 23 29', '136, rue Colin', 'Bât. 884', '0700', 'Pons', 'Dr.', 12, NULL, NULL),
(330, 'Roland', 'Lesage', 'maurice.lambert@orange.fr', '+33 7 86 60 62 55', '17, boulevard Frédérique Moulin', 'Chambre 180', '8200', 'Massondan', 'Mlle', 12, NULL, NULL),
(331, 'Jacques', 'Delattre', 'bernier.martin@noos.fr', '07 97 49 76 52', 'chemin Carpentier', 'Apt. 339', '3900', 'Delmas', 'Pr.', 12, NULL, NULL),
(332, 'Constance', 'Merle', 'valentine.mallet@thierry.net', '0768538275', '14, rue Céline Leconte', 'Bât. 813', '1900', 'Maillet', 'Me.', 12, NULL, NULL),
(333, 'Henri', 'Charles', 'carlier.leon@dumas.net', '0657801736', '84, rue Adrien Charles', 'Suite 944', '2400', 'Morel', 'Pr.', 12, NULL, NULL),
(334, 'Laurent', 'Leduc', 'veronique.collin@bousquet.org', '06 33 21 07 30', '893, chemin Paris', 'Chambre 372', '97100', 'Lemaitreboeuf', 'Me.', 12, NULL, NULL),
(335, 'Madeleine', 'Verdier', 'lemoine.michel@carpentier.com', '+33 6 86 43 80 20', '31, impasse Gaudin', 'Suite 467', '6600', 'Pineau-sur-Laporte', 'M.', 12, NULL, NULL),
(336, 'Léon', 'Lamy', 'bertrand.meunier@ollivier.com', '0746333965', '7, rue Émilie Fontaine', 'Suite 943', '5200', 'Michaudboeuf', 'M.', 12, NULL, NULL),
(337, 'Sylvie', 'Seguin', 'lelievre.alice@paul.net', '0797893880', '818, rue de Lemaire', 'Étage 832', '8500', 'GrondinVille', 'Pr.', 12, NULL, NULL),
(338, 'Alex', 'Faure', 'bernard.francois@sfr.fr', '+33 7 38 82 22 20', '35, chemin Dominique Aubert', 'Chambre 104', '9100', 'Charpentier-sur-Teixeira', 'Me.', 12, NULL, NULL),
(339, 'Isaac', 'Hubert', 'maury.denise@yahoo.fr', '+33 (0)6 31 22 56 98', '99, chemin Suzanne Baudry', 'Bât. 525', '4600', 'Lelievre-les-Bains', 'Me.', 12, NULL, NULL),
(340, 'Christelle', 'Morvan', 'upons@tele2.fr', '+33 7 76 29 19 79', '85, avenue de Muller', 'Étage 704', '9400', 'Petitdan', 'M.', 12, NULL, NULL),
(341, 'Adèle', 'Lacroix', 'charlotte01@berger.com', '+33 (0)7 75 66 91 42', '56, boulevard de Maurice', 'Étage 004', '6900', 'Pagesnec', 'Dr.', 12, NULL, NULL),
(342, 'Christophe', 'Andre', 'cecile97@seguin.com', '07 46 39 13 44', '7, impasse de Collet', 'Apt. 049', '5500', 'Robin', 'Dr.', 12, NULL, NULL),
(343, 'Timothée', 'Daniel', 'mhardy@thierry.fr', '+33 (0)6 63 63 99 99', 'rue Georges', 'Chambre 472', '9000', 'Petit', 'Dr.', 12, NULL, NULL),
(344, 'Anne', 'Brun', 'vbourgeois@bernier.com', '07 49 02 91 46', '44, boulevard Bouchet', 'Étage 265', '9500', 'Laporte', 'Pr.', 12, NULL, NULL),
(345, 'Joseph', 'Michel', 'joseph.raymond@yahoo.fr', '+33 (0)6 94 62 20 92', '82, rue Lebon', 'Suite 384', '2400', 'Berthelot-la-Forêt', 'Me.', 12, NULL, NULL),
(346, 'Margaux', 'Weber', 'eric25@dbmail.com', '06 54 33 30 85', '95, chemin de Devaux', 'Étage 056', '5200', 'Fouquet-la-Forêt', 'Pr.', 12, NULL, NULL),
(347, 'Susan', 'Dijoux', 'anne37@lelievre.fr', '+33 7 53 34 65 08', '15, rue de Alexandre', 'Bât. 591', '0900', 'Nguyen', 'Pr.', 12, NULL, NULL),
(348, 'Océane', 'Klein', 'toussaint.marc@bourdon.com', '0791648018', '3, rue de Bailly', 'Chambre 736', '2800', 'Vaillant', 'Me.', 12, NULL, NULL),
(349, 'Juliette', 'Prevost', 'gnguyen@morin.com', '+33 7 82 44 76 84', '610, chemin Coulon', 'Bât. 912', '2600', 'Cordier', 'Dr.', 12, NULL, NULL),
(350, 'Matthieu', 'Da Costa', 'raymond.marcelle@berger.com', '+33 6 89 90 11 44', 'chemin De Sousa', 'Bât. 906', '3800', 'Benard', 'Dr.', 12, NULL, NULL),
(351, 'Sébastien', 'Chauvet', 'idenis@sfr.fr', '+33 (0)7 53 67 24 08', '82, boulevard Nicolas Ferreira', 'Étage 030', '1200', 'Goncalves-les-Bains', 'Dr.', 12, NULL, NULL),
(352, 'Michelle', 'Thibault', 'sebastien51@gilbert.org', '07 39 52 38 79', '27, avenue Peron', 'Bât. 228', '2B00', 'Marechal', 'Pr.', 12, NULL, NULL),
(353, 'Henri', 'Begue', 'aguillot@gmail.com', '06 14 66 75 57', '95, rue de Baron', 'Étage 747', '2800', 'Dumas', 'Mlle', 12, NULL, NULL),
(354, 'Anne', 'Gilles', 'ulucas@gmail.com', '07 98 38 13 54', '7, impasse Danielle Baudry', 'Chambre 376', '6800', 'Daniel-sur-Raynaud', 'Mlle', 12, NULL, NULL),
(355, 'Alexandre', 'Alexandre', 'regnier.antoinette@hotmail.fr', '+33 (0)7 34 23 10 53', '36, boulevard de Rodrigues', 'Étage 964', '9400', 'GautierBourg', 'Mlle', 12, NULL, NULL),
(356, 'Zoé', 'Petit', 'fleger@hubert.com', '0755158388', '454, avenue de Guyon', 'Étage 610', '2800', 'Legrand-sur-Richard', 'M.', 12, NULL, NULL),
(357, 'Dominique', 'Klein', 'georges.camus@ruiz.com', '+33 (0)6 47 34 99 39', '684, place de Potier', 'Bât. 866', '8900', 'Marie-sur-Robert', 'Pr.', 12, NULL, NULL),
(358, 'Olivier', 'Foucher', 'amelie99@hotmail.fr', '06 58 47 79 42', 'place Leleu', 'Apt. 459', '8100', 'Le Gall-les-Bains', 'Mme.', 12, NULL, NULL),
(359, 'Marc', 'Michel', 'timothee.michaud@cordier.org', '+33 (0)7 84 64 10 09', 'rue Colin', 'Étage 530', '6000', 'Alvesboeuf', 'Pr.', 12, NULL, NULL),
(360, 'Célina', 'Lemaire', 'ugirard@free.fr', '+33 7 99 88 83 35', '61, impasse de Lecoq', 'Bât. 523', '3500', 'Cohen', 'Me.', 12, NULL, NULL),
(361, 'Philippe', 'Hoareau', 'patricia.mendes@mahe.fr', '0667634544', '986, boulevard Marcel Roger', 'Suite 613', '2400', 'Rousseaunec', 'M.', 12, NULL, NULL),
(362, 'Élise', 'Durand', 'thierry.jourdan@joseph.org', '+33 (0)6 14 47 07 54', '3, impasse Élodie Mahe', 'Apt. 087', '8700', 'Sauvage', 'Mme.', 12, NULL, NULL),
(363, 'Bertrand', 'Breton', 'charlotte.garcia@noos.fr', '+33 6 04 04 09 40', '250, chemin Marion', 'Chambre 637', '1000', 'Fontainedan', 'Me.', 12, NULL, NULL),
(364, 'Paulette', 'Chevallier', 'marion.honore@monnier.org', '+33 7 39 77 18 50', '20, chemin Dijoux', 'Suite 407', '0600', 'Guerin-sur-Lebreton', 'Pr.', 12, NULL, NULL),
(365, 'Isabelle', 'Bouchet', 'lemoine.audrey@hotmail.fr', '0643159896', '12, boulevard de Renard', 'Étage 512', '97100', 'PerretVille', 'Mlle', 12, NULL, NULL),
(366, 'Anne', 'Bonneau', 'jjoly@weber.fr', '+33 7 91 78 54 35', '64, impasse Laetitia Wagner', 'Bât. 282', '7900', 'Hebert', 'M.', 12, NULL, NULL),
(367, 'Richard', 'Gillet', 'theophile48@pottier.fr', '+33 (0)6 16 81 31 62', '1, rue de Mercier', 'Bât. 874', '8000', 'LeleuBourg', 'Pr.', 12, NULL, NULL),
(368, 'Virginie', 'Toussaint', 'henri.dupre@orange.fr', '+33 6 95 57 87 81', '21, impasse Vasseur', 'Apt. 739', '5200', 'Baudry-la-Forêt', 'Me.', 12, NULL, NULL),
(369, 'Richard', 'Valette', 'robert15@noel.fr', '06 18 47 63 33', '422, rue de Adam', 'Chambre 136', '2500', 'Neveu', 'M.', 12, NULL, NULL),
(370, 'Édouard', 'Legrand', 'nboutin@brunet.org', '+33 (0)7 68 11 55 55', '849, avenue Bernard Noel', 'Suite 011', '9300', 'Chevalier-la-Forêt', 'Pr.', 12, NULL, NULL),
(371, 'Marguerite', 'Herve', 'henry.lucas@jacquot.org', '+33 (0)6 05 32 99 74', '708, impasse Juliette Meunier', 'Suite 260', '3500', 'De Oliveiradan', 'Dr.', 12, NULL, NULL),
(372, 'Franck', 'Gillet', 'mathilde.humbert@riviere.fr', '+33 6 64 06 81 85', '41, chemin Étienne Delmas', 'Suite 414', '9400', 'Roux', 'Pr.', 12, NULL, NULL),
(373, 'Margaret', 'Marion', 'mgaudin@free.fr', '0674359897', '57, avenue de Hardy', 'Chambre 688', '2600', 'Begue', 'Dr.', 12, NULL, NULL),
(374, 'Arnaude', 'Collet', 'wcolin@bouvier.fr', '+33 (0)7 56 86 53 92', '5, boulevard Françoise Gregoire', 'Étage 464', '97600', 'Blanc', 'Me.', 12, NULL, NULL),
(375, 'Timothée', 'Vincent', 'philippe.boutin@berger.com', '0730841469', '77, chemin Verdier', 'Étage 747', '5100', 'Legendrenec', 'Pr.', 12, NULL, NULL),
(376, 'Luc', 'Deschamps', 'stephane43@ruiz.com', '+33 (0)7 94 73 71 56', '240, chemin Aurélie Legros', 'Apt. 675', '4300', 'Potier-les-Bains', 'Dr.', 12, NULL, NULL),
(417, 'Vincent', 'Sureau', 'vsureau@simplon.co', '0665309435', '71 rue de la république', 'RDC', '13130', 'Berre L\'Etang', 'M.', 14, 'resistance-4-anneaux-643925f91a057643062986.webp', '2023-04-14 12:07:53');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230411143612', '2023-04-13 14:57:27', 253),
('DoctrineMigrations\\Version20230411150141', '2023-04-13 14:57:27', 150),
('DoctrineMigrations\\Version20230412135243', '2023-04-13 14:57:27', 109),
('DoctrineMigrations\\Version20230412141202', '2023-04-13 14:57:27', 62),
('DoctrineMigrations\\Version20230413130820', '2023-04-13 15:08:41', 404),
('DoctrineMigrations\\Version20230414093349', '2023-04-14 11:34:04', 88),
('DoctrineMigrations\\Version20230414094803', '2023-04-14 11:48:25', 99);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:168:\\\"http://127.0.0.1:8000/verify/email?expires=1681394952&id=1&signature=q2fUtZAx3nSxSDlyLZTMKulYYkA82uic0jjjkegKh8o%3D&token=PHg7mVGg2soqavHVaWrhqcrcW2zspTATS56EP4WgTpU%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:20:\\\"contact@visitcard.fr\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:10:\\\"Visit Card\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:24:\\\"vincentsureau5@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-04-13 15:09:12', '2023-04-13 15:09:12', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:174:\\\"http://127.0.0.1:8000/verify/email?expires=1681395009&id=2&signature=G49ADtag9HMaqgTgwz5YLMZVC1uOKOOglCGFMRXheTA%3D&token=2fEO%2B6Scg0h1k8OUnYI5E05yK%2BHcKhkIWe%2FZuWUuxYE%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:20:\\\"contact@visitcard.fr\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:10:\\\"Visit Card\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:14:\\\"test@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-04-13 15:10:09', '2023-04-13 15:10:09', NULL),
(3, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:181:\\\"http://127.0.0.1:8000/verify/email?expires=1681470077&id=14&signature=Zt6YBoi%2B4TArH%2Fc6jupm2pQ%2BUdVVrXRiOfJinKG4A2U%3D&token=u3kaVeAbt4E%2F%2Fd9%2B4hmIvYMqW68TlKomp2RErW8lxVo%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:20:\\\"contact@visitcard.fr\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:10:\\\"Visit Card\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:24:\\\"vincentsureau5@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-04-14 12:01:17', '2023-04-14 12:01:17', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`) VALUES
(12, 'william42@bazin.fr', '[]', 'iure', 1),
(14, 'vincentsureau5@gmail.com', '[]', '$2y$13$dqc8epgVTJW2yNErcopn6.5WIXYfAzGSZ5oYRwT98iELYi787rOQ6', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_161498D3A76ED395` (`user_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `card`
--
ALTER TABLE `card`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `FK_161498D3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
