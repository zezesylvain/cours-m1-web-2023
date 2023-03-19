-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 19 mars 2023 à 11:11
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `coursm12023_1`
--

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(26, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(27, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(28, 5, 'ue_id', 'text', 'Ue Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(29, 5, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 4),
(30, 5, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 5),
(31, 5, 'cm', 'number', 'Cm', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 6),
(32, 5, 'td', 'number', 'Td', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 7),
(33, 5, 'tp', 'number', 'Tp', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 8),
(34, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(35, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(36, 5, 'ecue_belongsto_ue_relationship', 'relationship', 'Ue', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"},\"model\":\"App\\\\Models\\\\Ue\",\"table\":\"ues\",\"type\":\"belongsTo\",\"column\":\"ue_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(37, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 6, 'nce', 'text', 'Nce', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 2),
(39, 6, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 3),
(40, 6, 'prenoms', 'text', 'Prenoms', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"5\"}}', 4),
(41, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(42, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(43, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(44, 7, 'ecue_id', 'text', 'Ecue Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(45, 7, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 4),
(46, 7, 'debut', 'time', 'Debut', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 5),
(47, 7, 'duree', 'time', 'Duree', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 6),
(48, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(49, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(50, 7, 'seance_belongsto_ecue_relationship', 'relationship', 'ecues', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"},\"model\":\"App\\\\Models\\\\Ecue\",\"table\":\"ecues\",\"type\":\"belongsTo\",\"column\":\"ecue_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(51, 6, 'etudiant_belongstomany_ue_relationship', 'relationship', 'ues', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Ue\",\"table\":\"ues\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"etudiant_ue\",\"pivot\":\"1\",\"taggable\":null}', 7),
(52, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(53, 8, 'seance_id', 'text', 'Seance Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(54, 8, 'etudiant_id', 'text', 'Etudiant Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(55, 8, 'duree', 'time', 'Duree', 1, 1, 1, 1, 1, 1, '{}', 6),
(56, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(57, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(58, 8, 'retard_belongsto_etudiant_relationship', 'relationship', 'etudiants', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Etudiant\",\"table\":\"etudiants\",\"type\":\"belongsTo\",\"column\":\"etudiant_id\",\"key\":\"id\",\"label\":\"nce\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(59, 8, 'retard_belongsto_seance_relationship', 'relationship', 'seances', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Seance\",\"table\":\"seances\",\"type\":\"belongsTo\",\"column\":\"seance_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(4, 'ues', 'ues', 'Ue', 'Ues', 'voyager-news', 'App\\Models\\Ue', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-23 09:21:44', '2023-02-23 09:21:44'),
(5, 'ecues', 'ecues', 'Ecue', 'Ecues', 'voyager-bag', 'App\\Models\\Ecue', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-23 10:35:23', '2023-02-23 10:41:51'),
(6, 'etudiants', 'etudiants', 'Etudiant', 'Etudiants', 'voyager-person', 'App\\Models\\Etudiant', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-23 10:45:29', '2023-02-23 10:45:29'),
(7, 'seances', 'seances', 'Seance', 'Seances', 'voyager-youtube-play', 'App\\Models\\Seance', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-23 10:46:54', '2023-02-23 10:49:25'),
(8, 'retards', 'retards', 'Retard', 'Retards', 'voyager-github', 'App\\Models\\Retard', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-23 10:54:15', '2023-02-23 10:56:59');

-- --------------------------------------------------------

--
-- Structure de la table `ecues`
--

CREATE TABLE `ecues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ue_id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cm` int(11) DEFAULT NULL,
  `td` int(11) NOT NULL DEFAULT 0,
  `tp` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecues`
--

INSERT INTO `ecues` (`id`, `ue_id`, `nom`, `code`, `cm`, `td`, `tp`, `created_at`, `updated_at`) VALUES
(1, 1, 'Application', 'PWEB-APP', 10, 20, 26, '2023-02-23 10:42:34', '2023-02-23 10:42:34'),
(2, 1, 'Pratique', 'PWEB-PRA', 5, 24, 26, '2023-02-23 10:42:34', '2023-02-23 10:42:34');

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenoms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `user_id`, `nce`, `nom`, `prenoms`, `created_at`, `updated_at`) VALUES
(5, 5, 'CI0219052916', 'KLAROU', 'GUY CHARLES DAIMOMBAIRT', '2023-02-26 15:00:11', '2023-02-26 15:00:11'),
(6, 6, 'CI0217046579', 'ANONKRÉ', 'Ange Parfait ', '2023-02-26 19:46:50', '2023-02-26 19:46:50'),
(7, 7, 'Ci0218049920', 'Timite', 'Check ben idriss', '2023-02-26 20:04:20', '2023-02-26 20:04:20'),
(8, 8, 'CI0217046724', 'Traore ', 'Aboubacar Sidiki', '2023-02-26 20:09:46', '2023-02-26 20:09:46'),
(9, 9, 'CI0213037916', 'SEKONGO', 'ZANAGNIN JUSTIN ', '2023-02-26 20:18:38', '2023-02-26 20:18:38'),
(10, 10, 'CI0219054450', 'MOMBOY', 'SAMUEL AXEL GNINKAN ', '2023-02-26 20:47:17', '2023-02-26 20:47:17'),
(11, 11, 'CI0219053970', 'Tongui', 'Jocelin wilfried', '2023-02-26 20:47:55', '2023-02-26 20:47:55'),
(12, 12, 'CI0218049861', 'DIAKITE', 'PENNAVAYRE SIDNEY', '2023-02-26 20:58:56', '2023-02-26 20:58:56'),
(13, 13, 'CI0219052943', 'Kouassi ', 'Melone martial andy ', '2023-02-26 21:25:03', '2023-02-26 21:25:03'),
(14, 15, 'CI0219053500', 'YACHO', 'BONI YVES', '2023-02-26 21:34:17', '2023-02-26 21:34:17'),
(15, 16, 'CI0217047034', 'ASSA', 'EMMANUEL CARLOS', '2023-02-26 21:58:34', '2023-02-26 21:58:34'),
(16, 17, 'Equivalence', 'SORO', 'Kiyaly Allassane', '2023-02-26 22:15:47', '2023-02-26 22:15:47'),
(17, 18, 'CI0217048086', 'Sylla', 'Karamoko ', '2023-02-27 13:12:18', '2023-02-27 13:12:18'),
(18, 19, 'CI0220053722', 'bayoro', 'brou laurent stephane ', '2023-02-27 14:20:33', '2023-02-27 14:20:33'),
(19, 21, 'CI0219053506', 'Bamba', 'fulgence', '2023-02-27 15:53:38', '2023-02-27 15:53:38'),
(20, 24, 'CI0220057160', 'kouassi', 'edima marley junior', '2023-02-28 11:57:37', '2023-02-28 11:57:37'),
(21, 25, 'CI0219053209', 'MOULOLO', 'Kouakou Eden', '2023-02-28 20:33:54', '2023-02-28 20:33:54'),
(22, 26, 'CI0217047066', 'Dago', 'Akabla Jean-Yves Kevin ', '2023-03-01 20:49:42', '2023-03-01 20:49:42'),
(23, 27, 'Ci0216044406', 'N’goran ', 'Christian maurel', '2023-03-02 14:28:12', '2023-03-02 14:28:12');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant_ue`
--

CREATE TABLE `etudiant_ue` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ue_id` bigint(20) UNSIGNED NOT NULL,
  `etudiant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiant_ue`
--

INSERT INTO `etudiant_ue` (`id`, `ue_id`, `etudiant_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(2, 1, 8, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(3, 1, 9, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(4, 1, 10, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(5, 1, 11, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(6, 1, 12, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(7, 1, 13, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(8, 1, 14, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(9, 3, 5, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(10, 3, 8, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(11, 3, 9, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(12, 3, 10, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(13, 3, 11, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(14, 3, 12, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(15, 3, 13, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(16, 3, 14, '2023-03-19 01:16:07', '2023-03-19 01:16:07'),
(17, 4, 23, '2023-03-19 01:16:38', '2023-03-19 01:16:38'),
(18, 4, 22, '2023-03-19 01:16:38', '2023-03-19 01:16:38'),
(19, 4, 21, '2023-03-19 01:16:38', '2023-03-19 01:16:38'),
(20, 4, 20, '2023-03-19 01:16:38', '2023-03-19 01:16:38'),
(21, 4, 19, '2023-03-19 01:16:38', '2023-03-19 01:16:38'),
(23, 4, 16, '2023-03-19 01:16:38', '2023-03-19 01:16:38'),
(24, 4, 15, '2023-03-19 01:16:38', '2023-03-19 01:16:38'),
(26, 4, 13, '2023-03-19 01:16:38', '2023-03-19 01:16:38'),
(28, 4, 17, '2023-03-19 01:16:38', '2023-03-19 01:16:38'),
(31, 4, 9, '2023-03-19 01:16:38', '2023-03-19 01:16:38'),
(32, 2, 8, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(33, 2, 9, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(34, 2, 10, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(35, 2, 11, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(36, 2, 12, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(37, 2, 13, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(39, 2, 7, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(40, 2, 6, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(41, 2, 5, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(42, 2, 16, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(45, 2, 19, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(46, 2, 20, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(47, 2, 21, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(48, 2, 22, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(49, 2, 23, '2023-03-19 01:17:55', '2023-03-19 01:17:55'),
(50, 1, 20, '2023-03-19 09:40:05', '2023-03-19 09:40:05'),
(51, 3, 18, '2023-03-19 09:40:05', '2023-03-19 09:40:05'),
(52, 3, 17, '2023-03-19 09:40:05', '2023-03-19 09:40:05'),
(53, 4, 5, '2023-03-19 09:40:24', '2023-03-19 09:40:24'),
(55, 4, 18, '2023-03-19 09:41:32', '2023-03-19 09:41:32'),
(56, 1, 23, '2023-03-19 09:56:55', '2023-03-19 09:56:55'),
(57, 1, 22, '2023-03-19 09:59:27', '2023-03-19 09:59:27'),
(58, 3, 23, '2023-03-19 10:03:25', '2023-03-19 10:03:25'),
(59, 3, 21, '2023-03-19 10:03:25', '2023-03-19 10:03:25'),
(60, 4, 14, '2023-03-19 10:03:25', '2023-03-19 10:03:25'),
(61, 4, 12, '2023-03-19 10:03:25', '2023-03-19 10:03:25');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-02-22 11:03:30', '2023-02-22 11:03:30');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-02-22 11:03:30', '2023-02-22 11:03:30', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2023-02-22 11:03:30', '2023-02-22 11:03:30', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-02-22 11:03:30', '2023-02-22 11:03:30', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-02-22 11:03:30', '2023-02-22 11:03:30', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-02-22 11:03:30', '2023-02-22 11:03:30', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2023-02-22 11:03:30', '2023-02-22 11:03:30', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2023-02-22 11:03:30', '2023-02-22 11:03:30', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2023-02-22 11:03:30', '2023-02-22 11:03:30', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2023-02-22 11:03:30', '2023-02-22 11:03:30', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-02-22 11:03:30', '2023-02-22 11:03:30', 'voyager.settings.index', NULL),
(11, 1, 'Ues', '', '_self', 'voyager-news', NULL, NULL, 15, '2023-02-23 09:21:44', '2023-02-23 09:21:44', 'voyager.ues.index', NULL),
(12, 1, 'Ecues', '', '_self', 'voyager-bag', NULL, NULL, 16, '2023-02-23 10:35:23', '2023-02-23 10:35:23', 'voyager.ecues.index', NULL),
(13, 1, 'Etudiants', '', '_self', 'voyager-person', NULL, NULL, 17, '2023-02-23 10:45:29', '2023-02-23 10:45:29', 'voyager.etudiants.index', NULL),
(14, 1, 'Seances', '', '_self', 'voyager-youtube-play', NULL, NULL, 18, '2023-02-23 10:46:54', '2023-02-23 10:46:54', 'voyager.seances.index', NULL),
(15, 1, 'Retards', '', '_self', 'voyager-github', NULL, NULL, 19, '2023-02-23 10:54:16', '2023-02-23 10:54:16', 'voyager.retards.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2023_02_23_090516_create_ues_table', 2),
(26, '2023_02_23_092453_create_ecues_table', 3),
(27, '2023_02_23_092519_create_etudiants_table', 3),
(28, '2023_02_23_092538_create_seances_table', 3),
(29, '2023_02_23_092603_create_retards_table', 3),
(30, '2023_02_23_100939_create_table_etudiant_ue', 4);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(2, 'browse_bread', NULL, '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(3, 'browse_database', NULL, '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(4, 'browse_media', NULL, '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(5, 'browse_compass', NULL, '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(6, 'browse_menus', 'menus', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(7, 'read_menus', 'menus', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(8, 'edit_menus', 'menus', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(9, 'add_menus', 'menus', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(10, 'delete_menus', 'menus', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(11, 'browse_roles', 'roles', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(12, 'read_roles', 'roles', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(13, 'edit_roles', 'roles', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(14, 'add_roles', 'roles', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(15, 'delete_roles', 'roles', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(16, 'browse_users', 'users', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(17, 'read_users', 'users', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(18, 'edit_users', 'users', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(19, 'add_users', 'users', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(20, 'delete_users', 'users', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(21, 'browse_settings', 'settings', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(22, 'read_settings', 'settings', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(23, 'edit_settings', 'settings', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(24, 'add_settings', 'settings', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(25, 'delete_settings', 'settings', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(26, 'browse_ues', 'ues', '2023-02-23 09:21:44', '2023-02-23 09:21:44'),
(27, 'read_ues', 'ues', '2023-02-23 09:21:44', '2023-02-23 09:21:44'),
(28, 'edit_ues', 'ues', '2023-02-23 09:21:44', '2023-02-23 09:21:44'),
(29, 'add_ues', 'ues', '2023-02-23 09:21:44', '2023-02-23 09:21:44'),
(30, 'delete_ues', 'ues', '2023-02-23 09:21:44', '2023-02-23 09:21:44'),
(31, 'browse_ecues', 'ecues', '2023-02-23 10:35:23', '2023-02-23 10:35:23'),
(32, 'read_ecues', 'ecues', '2023-02-23 10:35:23', '2023-02-23 10:35:23'),
(33, 'edit_ecues', 'ecues', '2023-02-23 10:35:23', '2023-02-23 10:35:23'),
(34, 'add_ecues', 'ecues', '2023-02-23 10:35:23', '2023-02-23 10:35:23'),
(35, 'delete_ecues', 'ecues', '2023-02-23 10:35:23', '2023-02-23 10:35:23'),
(36, 'browse_etudiants', 'etudiants', '2023-02-23 10:45:29', '2023-02-23 10:45:29'),
(37, 'read_etudiants', 'etudiants', '2023-02-23 10:45:29', '2023-02-23 10:45:29'),
(38, 'edit_etudiants', 'etudiants', '2023-02-23 10:45:29', '2023-02-23 10:45:29'),
(39, 'add_etudiants', 'etudiants', '2023-02-23 10:45:29', '2023-02-23 10:45:29'),
(40, 'delete_etudiants', 'etudiants', '2023-02-23 10:45:29', '2023-02-23 10:45:29'),
(41, 'browse_seances', 'seances', '2023-02-23 10:46:54', '2023-02-23 10:46:54'),
(42, 'read_seances', 'seances', '2023-02-23 10:46:54', '2023-02-23 10:46:54'),
(43, 'edit_seances', 'seances', '2023-02-23 10:46:54', '2023-02-23 10:46:54'),
(44, 'add_seances', 'seances', '2023-02-23 10:46:54', '2023-02-23 10:46:54'),
(45, 'delete_seances', 'seances', '2023-02-23 10:46:54', '2023-02-23 10:46:54'),
(46, 'browse_retards', 'retards', '2023-02-23 10:54:16', '2023-02-23 10:54:16'),
(47, 'read_retards', 'retards', '2023-02-23 10:54:16', '2023-02-23 10:54:16'),
(48, 'edit_retards', 'retards', '2023-02-23 10:54:16', '2023-02-23 10:54:16'),
(49, 'add_retards', 'retards', '2023-02-23 10:54:16', '2023-02-23 10:54:16'),
(50, 'delete_retards', 'retards', '2023-02-23 10:54:16', '2023-02-23 10:54:16');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `retards`
--

CREATE TABLE `retards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seance_id` bigint(20) UNSIGNED NOT NULL,
  `etudiant_id` bigint(20) UNSIGNED NOT NULL,
  `duree` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(2, 'user', 'Normal User', '2023-02-22 11:03:30', '2023-02-22 11:03:30'),
(3, 'Etudiant', 'Etudiant', '2023-02-26 15:01:19', '2023-02-26 15:01:19');

-- --------------------------------------------------------

--
-- Structure de la table `seances`
--

CREATE TABLE `seances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ecue_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `debut` time NOT NULL,
  `duree` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `seances`
--

INSERT INTO `seances` (`id`, `ecue_id`, `date`, `debut`, `duree`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-02-24', '10:00:00', '04:00:00', '2023-02-23 10:50:08', '2023-02-23 10:50:08');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ues`
--

CREATE TABLE `ues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ues`
--

INSERT INTO `ues` (`id`, `nom`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Programmation WEB Avancée', 'PWEB12', '2023-02-23 09:22:24', '2023-02-23 09:22:24'),
(2, 'IA', 'IA1012', '2023-02-23 09:39:10', '2023-02-23 09:39:10'),
(3, 'Base de données avancées', 'BDA2221', NULL, NULL),
(4, 'Verification', 'VER2122', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(5, 2, 'GUY CHARLES DAIMOMBAIRT KLAROU', 'dcklarou@gmail.com', 'users/default.png', NULL, '$2y$10$YCGZYebhyZJk.Lm5HPUG9uW8WP8OPhCxJB0fg2s4JHUyl4tg7qqMm', NULL, NULL, '2023-02-26 15:00:11', '2023-02-26 15:00:11'),
(6, 2, 'Ange Parfait  ANONKRÉ', 'anonkreangeparfait@gmail.com', 'users/default.png', NULL, '$2y$10$5PEbgZzT1k7OImuDgw40Auy89SI8ZaNTLPEkR44dIqgJSIQslb3qW', NULL, NULL, '2023-02-26 19:46:50', '2023-02-26 19:46:50'),
(7, 2, 'Check ben idriss Timite', 'checkbenidriss@gmail.com', 'users/default.png', NULL, '$2y$10$8YsEcUb8GI/By.6fdlR.Zew1yaO9AUsQUbFJL/.nZHPQwDmTCeny2', NULL, NULL, '2023-02-26 20:04:20', '2023-02-26 20:04:20'),
(8, 2, 'Aboubacar Sidiki Traore ', 'traoresidiki177@gmail.com', 'users/default.png', NULL, '$2y$10$QUKY7bUiyRqwuYBsx7uLquB1gyq3nzrfVTLrr4mJOE2l/eAG9WQvS', NULL, NULL, '2023-02-26 20:09:46', '2023-02-26 20:09:46'),
(9, 2, 'ZANAGNIN JUSTIN  SEKONGO', 'sekongod02@gmail.com', 'users/default.png', NULL, '$2y$10$jc81K1FT94NuIa99FV/CgeL08lsVd4kxgjw62Zo/S7x4uSMfdbxBC', NULL, NULL, '2023-02-26 20:18:38', '2023-02-26 20:18:38'),
(10, 2, 'SAMUEL AXEL GNINKAN  MOMBOY', 'samuelmomboy225@gmail.com', 'users/default.png', NULL, '$2y$10$G.tu7TtrTHNc1Nsrl6jHhus.X6tjg/xtg7szu2TQ4Ia1TZRrvrDsS', NULL, NULL, '2023-02-26 20:47:17', '2023-02-26 20:47:17'),
(11, 2, 'Jocelin wilfried Tongui', 'jocelintongui@gmail.com', 'users/default.png', NULL, '$2y$10$mYLco.OF1fK43yJ5cncplu7jriBC7lwUEycRZd58tTPGtdp1kbVaa', NULL, NULL, '2023-02-26 20:47:55', '2023-02-26 20:47:55'),
(12, 2, 'PENNAVAYRE SIDNEY DIAKITE', 'sidneydiakite2@gmail.com', 'users/default.png', NULL, '$2y$10$DafzgzjfRbfu9zv64x/aeuvv6R6iIos4wJI3kkIS/svrCdv6rMaDq', NULL, NULL, '2023-02-26 20:58:56', '2023-02-26 20:58:56'),
(13, 2, 'Melone martial andy  Kouassi ', 'andy.30@yahoo.com', 'users/default.png', NULL, '$2y$10$cbp4Km7zeA/e5hdyQVzqnOL2PY0uD10TEk73wZLJ1X41T5/UUwtBK', NULL, NULL, '2023-02-26 21:25:03', '2023-02-26 21:25:03'),
(15, 2, 'BONI YVES YACHO', 'yachoyves@gmail.com', 'users/default.png', NULL, '$2y$10$TCAGc7BBG1Lq/hacEbUyBeNr7EcqGSL17OmiTEDMBEMepOURpEooS', NULL, NULL, '2023-02-26 21:34:17', '2023-02-26 21:34:17'),
(16, 2, 'EMMANUEL CARLOS ASSA', 'assaemmanuelcarlos@gmail.com', 'users/default.png', NULL, '$2y$10$A8I5PJ0syV/yJCXpdiLN/eFtEKMQ5y5xn4pzuxG2NCZEJJMfYmM5i', NULL, NULL, '2023-02-26 21:58:34', '2023-02-26 21:58:34'),
(17, 2, 'Kiyaly Allassane SORO', 'kiyalycrypto@gmail.com', 'users/default.png', NULL, '$2y$10$vJweR6eSILjd3SsseIdFPuK0LyxoWl.b1qkQsZtSVMTqn0Ugxh4NG', NULL, NULL, '2023-02-26 22:15:47', '2023-02-26 22:15:47'),
(18, 2, 'Karamoko  Sylla', 'karamokosylla17@yahoo.com', 'users/default.png', NULL, '$2y$10$LJlZdyiveNfL0nJu0x1KeO.Njv3dTSfLTG9yGWmDkjCg2WrBbqJiW', NULL, NULL, '2023-02-27 13:12:18', '2023-02-27 13:12:18'),
(19, 2, 'brou laurent stephane  bayoro', 'bayoronathan1@gmail.com', 'users/default.png', NULL, '$2y$10$h1vM3/VIFk3VDME6d0hgZuJ/mF851oNSPV/60QEwa/iQzk/nX.WXa', NULL, NULL, '2023-02-27 14:20:33', '2023-02-27 14:20:33'),
(21, 2, 'fulgence Bamba', 'bambafulgence622@gmail.com', 'users/default.png', NULL, '$2y$10$H9uZmX2E4prECsPKw4Q4ZuQo5EoZhwQ4lDSNrWonds5qWy8tDqaPC', NULL, NULL, '2023-02-27 15:53:37', '2023-02-27 15:53:38'),
(23, 1, 'Sylvain ZEZE', 's.zeze@vzsite.com', 'users/default.png', NULL, '$2y$10$Y1eTxNn48jwkFRiewVPQheLzh/f2q7XStzs9c5sXBxwNn3W4gAaZW', NULL, NULL, '2023-02-28 03:53:39', '2023-02-28 03:53:39'),
(24, 2, 'edima marley junior kouassi', 'kouassiedima381@gmail.com', 'users/default.png', NULL, '$2y$10$Qs80f86cC1DzbAvgGswpc.V/7PmVaTdJUDbXSTTtWZ3q7qyjVRVIW', NULL, NULL, '2023-02-28 11:57:37', '2023-02-28 11:57:37'),
(25, 2, 'Kouakou Eden MOULOLO', 'moulololeden@gmail.com', 'users/default.png', NULL, '$2y$10$qOfWSB1lu7500WsIhEaBYuVlyjAKpm/Tjy3myRVQSrhyNc95V/Vxi', NULL, NULL, '2023-02-28 20:33:54', '2023-02-28 20:33:54'),
(26, 2, 'Akabla Jean-Yves Kevin  Dago', 'dagoakabla05@gmail.com', 'users/default.png', NULL, '$2y$10$UG1fSFLGhI2c1rQ7NirYX.xDCYY7P7a6x44pl6XFnqVmeT.0hGrvC', NULL, NULL, '2023-03-01 20:49:41', '2023-03-01 20:49:42'),
(27, 2, 'Christian maurel N’goran ', 'christianlebeni@gmail.com', 'users/default.png', NULL, '$2y$10$1mcErC4oHh4VEDkm0oCd6.gwQ7SQUTqQ8kwrbxbtJVNJxd7k29Seq', NULL, NULL, '2023-03-02 14:28:12', '2023-03-02 14:28:12');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `ecues`
--
ALTER TABLE `ecues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `etudiants_nce_unique` (`nce`);

--
-- Index pour la table `etudiant_ue`
--
ALTER TABLE `etudiant_ue`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `retards`
--
ALTER TABLE `retards`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `seances`
--
ALTER TABLE `seances`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `ues`
--
ALTER TABLE `ues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `ecues`
--
ALTER TABLE `ecues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `etudiant_ue`
--
ALTER TABLE `etudiant_ue`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `retards`
--
ALTER TABLE `retards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `seances`
--
ALTER TABLE `seances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ues`
--
ALTER TABLE `ues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
