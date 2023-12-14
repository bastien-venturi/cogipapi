-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 14 déc. 2023 à 10:26
-- Version du serveur : 8.2.0
-- Version de PHP : 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cogip_database`
--

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE `companies` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `tva` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `name`, `type_id`, `country`, `tva`, `created_at`, `updated_at`) VALUES
(1, 'ToyWorks', 1, 'France', 'FR123456789', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(2, 'GadgetGuru', 2, 'Belgium', 'BE987654321', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(3, 'Advertastic', 3, 'Germany', 'DE135792468', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(4, 'Tech Innovations', 1, 'USA', 'US123456789', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(5, 'Green Solutions', 2, 'Canada', 'CA987654321', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(6, 'Bright Future Energy', 3, 'UK', 'UK123456789', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(7, 'Eco Friendly Goods', 1, 'Germany', 'DE987654321', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(8, 'Mountain Adventures', 2, 'Switzerland', 'CH123456789', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(9, 'Oceanic Research Ltd.', 3, 'Australia', 'AU987654321', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(10, 'Sky High Technologies', 1, 'USA', 'US112233445', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(11, 'Urban Development Inc.', 2, 'France', 'FR123456789', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(12, 'Future AI Tech', 3, 'Japan', 'JP987654321', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(13, 'Virtual Reality Zone', 1, 'South Korea', 'KR123456789', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(14, 'Renewable Energies Co.', 2, 'Norway', 'NO987654321', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(15, 'Global Logistics', 3, 'Brazil', 'BR123456789', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(16, 'BioHealth Pharmaceuticals', 1, 'India', 'IN987654321', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(17, 'NextGen Robotics', 2, 'Russia', 'RU123456789', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(18, 'Ocean Waves Entertainment', 3, 'Portugal', 'PT987654321', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(19, 'Arctic Expeditions', 1, 'Iceland', 'IC123456789', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(20, 'Desert Safari Tours', 2, 'UAE', 'AE987654321', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(21, 'Cloud Computing Services', 3, 'USA', 'US223344556', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(22, 'Automotive Innovations', 1, 'Germany', 'DE123456789', '2023-12-10 18:02:05', '2023-12-10 18:02:05'),
(23, 'Space Explorations Corp.', 2, 'USA', 'US334455667', '2023-12-10 18:02:05', '2023-12-10 18:02:05');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `Avatar` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `company_id`, `email`, `phone`, `created_at`, `updated_at`, `Avatar`) VALUES
(1, 'Alice Wonderland', 1, 'alice@toyworks.com', '0123456789', '2023-12-06 14:55:42', '2023-12-06 14:55:42', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f312e706e67),
(2, 'Bob Builder', 2, 'bob@gadgetguru.com', '9876543210', '2023-12-06 14:55:42', '2023-12-06 14:55:42', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f322e706e67),
(3, 'Carol Singer', 3, 'carol@advertastic.com', '2468101214', '2023-12-06 14:55:42', '2023-12-06 14:55:42', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f332e706e67),
(4, 'Alice Johnson', 1, 'alice.johnson@example.com', '123-456-7890', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f342e706e67),
(5, 'Bob Smith', 1, 'bob.smith@example.com', '123-456-7891', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f352e706e67),
(6, 'Carol White', 2, 'carol.white@example.com', '123-456-7892', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f362e706e67),
(7, 'David Brown', 3, 'david.brown@example.com', '123-456-7893', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f372e706e67),
(8, 'Eva Green', 2, 'eva.green@example.com', '123-456-7894', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f382e706e67),
(9, 'Frank Black', 4, 'frank.black@example.com', '123-456-7895', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f392e706e67),
(10, 'Grace Hall', 1, 'grace.hall@example.com', '123-456-7896', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f31302e706e67),
(11, 'Henry Lee', 5, 'henry.lee@example.com', '123-456-7897', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f31312e706e67),
(12, 'Irene Clark', 3, 'irene.clark@example.com', '123-456-7898', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f31322e706e67),
(13, 'Jake Lewis', 2, 'jake.lewis@example.com', '123-456-7899', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f31332e706e67),
(14, 'Karen Young', 6, 'karen.young@example.com', '123-456-7810', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f31342e706e67),
(15, 'Liam King', 7, 'liam.king@example.com', '123-456-7811', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f31352e706e67),
(16, 'Mia Scott', 1, 'mia.scott@example.com', '123-456-7812', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f31362e706e67),
(17, 'Noah Hill', 3, 'noah.hill@example.com', '123-456-7813', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f31372e706e67),
(18, 'Olivia Adams', 4, 'olivia.adams@example.com', '123-456-7814', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f31382e706e67),
(19, 'Paul Baker', 5, 'paul.baker@example.com', '123-456-7815', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f31392e706e67),
(20, 'Quinn Turner', 6, 'quinn.turner@example.com', '123-456-7816', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f32302e706e67),
(21, 'Rachel Ward', 7, 'rachel.ward@example.com', '123-456-7817', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f32312e706e67),
(22, 'Steve Fox', 2, 'steve.fox@example.com', '123-456-7818', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f32322e706e67),
(23, 'Tina Cook', 1, 'tina.cook@example.com', '123-456-7819', '2023-12-10 18:07:38', '2023-12-10 18:07:38', 0x697066733a2f2f6261667962656965766c37666d6a747a366d70757569786878616461706a6661766670376b7336763270786e646a706a356f7976703768616f366d2f32332e706e67);

-- --------------------------------------------------------

--
-- Structure de la table `invoices`
--

CREATE TABLE `invoices` (
  `id` int NOT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `id_company` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `invoices`
--

INSERT INTO `invoices` (`id`, `ref`, `id_company`, `created_at`, `updated_at`, `due_date`, `price`) VALUES
(1, 'INV-1001', 1, '2023-12-06', '2023-12-06', '2024-02-06', NULL),
(2, 'INV-1002', 2, '2023-12-06', '2023-12-06', '2024-02-06', NULL),
(3, 'INV-1003', 3, '2023-12-06', '2023-12-06', '2024-02-06', NULL),
(4, 'INV-2001', 1, '2023-01-15', '2023-12-06', '2023-03-15', NULL),
(5, 'INV-2002', 2, '2023-02-20', '2023-12-06', '2023-04-20', NULL),
(6, 'INV-2003', 3, '2023-03-25', '2023-12-06', '2023-05-25', NULL),
(7, 'INV-3001', 1, '2023-04-30', '2023-12-06', '2023-06-30', NULL),
(8, 'INV-3002', 2, '2023-05-05', '2023-12-06', '2023-07-05', NULL),
(9, 'INV-3003', 3, '2023-06-10', '2023-12-06', '2023-08-10', NULL),
(10, 'INV-4001', 1, '2023-07-15', '2023-12-06', '2023-09-15', NULL),
(11, 'INV-4002', 2, '2023-08-20', '2023-12-06', '2023-10-20', NULL),
(12, 'INV-4003', 3, '2023-09-25', '2023-12-06', '2023-11-25', NULL),
(13, 'INV-5001', 1, '2023-10-30', '2023-12-06', '2023-12-30', NULL),
(14, 'INV-5002', 2, '2023-11-05', '2023-12-06', '2024-01-05', NULL),
(15, 'INV-5003', 3, '2023-12-10', '2023-12-06', '2024-02-10', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `update_at`) VALUES
(1, 'View', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(2, 'Edit', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(3, 'Delete', '2023-12-06 14:55:41', '2023-12-06 14:55:41');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(2, 'Accountant', '2023-12-06 14:55:41', '2023-12-06 14:55:41'),
(3, 'Sales Representative', '2023-12-06 14:55:41', '2023-12-06 14:55:41');

-- --------------------------------------------------------

--
-- Structure de la table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int NOT NULL,
  `permission_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 2),
(5, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Toy Manufacturer', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(2, 'Tech Supplier', '2023-12-06 14:55:40', '2023-12-06 14:55:40'),
(3, 'Marketing Agency', '2023-12-06 14:55:40', '2023-12-06 14:55:40');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `role_id`, `last_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Jean-Christian', 2, 'Ranu', 'jc.ranu@cogip.com', 'paella123', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(2, 'Muriel', 3, 'Perrache', 'm.perrache@cogip.com', 'crossword456', '2023-12-06 14:55:42', '2023-12-06 14:55:42'),
(3, 'Ludovic', 1, 'Tech', 'l.tech@cogip.com', 'admin789', '2023-12-06 14:55:42', '2023-12-06 14:55:42');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Index pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_company` (`id_company`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Contraintes pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Contraintes pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `companies` (`id`);

--
-- Contraintes pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `roles_permissions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
