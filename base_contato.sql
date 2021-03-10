-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Mar-2021 às 23:56
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `base_contato`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ultimo_nome` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sexo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`id`, `avatar`, `nome`, `ultimo_nome`, `email`, `telefone`, `created_at`, `updated_at`, `sexo`) VALUES
(11, '1615392439.png', 'Thelesson', 'SIlva', 'thelesson999@email.com', '(21) 2909-0909', '2021-03-08 06:44:00', '2021-03-11 01:45:28', 0),
(13, NULL, 'theless', 'ffdgds', 'theleeesson.souza@gmail.com', '(32) 2323-2323', '2021-03-08 08:05:00', '2021-03-09 15:44:14', 0),
(14, NULL, 'wrwrw', 'wrwrw', 'etete@goolge.com', '(21)9999-9999', '2021-03-09 15:52:00', '2021-03-11 01:16:34', 0),
(18, NULL, 'Flavia', 'Flaviana', 'flavia@gmai.com', '(32) 3232-3290', '2021-03-10 04:59:49', '2021-03-10 04:59:49', 1),
(19, NULL, 'Bravo', 'Zulu', 'bravo@face.com', '(21) 2898-9897', '2021-03-09 14:51:00', '2021-03-11 01:16:10', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_rows`
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
-- Extraindo dados da tabela `data_rows`
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
(22, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 7, 'UF', 'text', 'UF', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 7, 'cidade', 'text', 'Cidade', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 7, 'casos_total', 'text', 'Casos Total', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 7, 'casos_diarios', 'text', 'Casos Diarios', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 7, 'casos_por_milhao_hab', 'text', 'Casos Por Milhao Hab', 1, 1, 1, 1, 1, 1, '{}', 6),
(28, 7, 'mortes_total', 'text', 'Mortes Total', 1, 1, 1, 1, 1, 1, '{}', 7),
(29, 7, 'mortes_diarias', 'text', 'Mortes Diarias', 1, 1, 1, 1, 1, 1, '{}', 8),
(30, 7, 'mortes_por_milhao_hab', 'text', 'Mortes Por Milhao Hab', 1, 1, 1, 1, 1, 1, '{}', 9),
(31, 7, 'datax', 'text', 'Datax', 1, 1, 1, 1, 1, 1, '{}', 10),
(32, 7, 'populacao', 'text', 'Populacao', 1, 1, 1, 1, 1, 1, '{}', 11),
(46, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(47, 9, 'UF', 'text', 'UF', 0, 1, 1, 1, 1, 1, '{}', 2),
(48, 9, 'cidade', 'text', 'Cidade', 1, 1, 1, 1, 1, 1, '{}', 3),
(49, 9, 'casos_total', 'text', 'Casos Total', 1, 1, 1, 1, 1, 1, '{}', 4),
(50, 9, 'casos_diarios', 'text', 'Casos Diarios', 1, 1, 1, 1, 1, 1, '{}', 5),
(51, 9, 'casos_por_milhao_hab', 'text', 'Casos Por Milhao Hab', 1, 1, 1, 1, 1, 1, '{}', 6),
(52, 9, 'mortes_total', 'text', 'Mortes Total', 1, 1, 1, 1, 1, 1, '{}', 7),
(53, 9, 'mortes_diarias', 'text', 'Mortes Diarias', 1, 1, 1, 1, 1, 1, '{}', 8),
(54, 9, 'mortes_por_milhao_hab', 'text', 'Mortes Por Milhao Hab', 1, 1, 1, 1, 1, 1, '{}', 9),
(55, 9, 'datax', 'text', 'Datax', 1, 1, 1, 1, 1, 1, '{}', 10),
(56, 9, 'populacao', 'text', 'Populacao', 1, 1, 1, 1, 1, 1, '{}', 11),
(57, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(58, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(59, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 13, 'epidemiological_week', 'text', 'Epidemiological Week', 1, 1, 1, 1, 1, 1, '{}', 2),
(61, 13, 'datax', 'text', 'Datax', 1, 1, 1, 1, 1, 1, '{}', 3),
(62, 13, 'order_for_place', 'text', 'Order For Place', 1, 1, 1, 1, 1, 1, '{}', 4),
(63, 13, 'estado', 'text', 'Estado', 1, 1, 1, 1, 1, 1, '{}', 5),
(64, 13, 'city', 'text', 'City', 0, 1, 1, 1, 1, 1, '{}', 6),
(65, 13, 'city_ibge_code', 'text', 'City Ibge Code', 0, 1, 1, 1, 1, 1, '{}', 7),
(66, 13, 'place_type', 'text', 'Place Type', 1, 1, 1, 1, 1, 1, '{}', 8),
(67, 13, 'last_available_confirmed', 'text', 'Last Available Confirmed', 1, 1, 1, 1, 1, 1, '{}', 9),
(68, 13, 'last_available_confirmed_per_100k_inhabitants', 'text', 'Last Available Confirmed Per 100k Inhabitants', 0, 1, 1, 1, 1, 1, '{}', 10),
(69, 13, 'new_confirmed', 'text', 'New Confirmed', 1, 1, 1, 1, 1, 1, '{}', 11),
(70, 13, 'last_available_deaths', 'text', 'Last Available Deaths', 1, 1, 1, 1, 1, 1, '{}', 12),
(71, 13, 'new_deaths', 'text', 'New Deaths', 1, 1, 1, 1, 1, 1, '{}', 13),
(72, 13, 'last_available_death_rate', 'text', 'Last Available Death Rate', 1, 1, 1, 1, 1, 1, '{}', 14),
(73, 13, 'estimated_population', 'text', 'Estimated Population', 0, 1, 1, 1, 1, 1, '{}', 15),
(74, 13, 'is_last', 'text', 'Is Last', 1, 1, 1, 1, 1, 1, '{}', 16),
(75, 13, 'is_repeated', 'text', 'Is Repeated', 1, 1, 1, 1, 1, 1, '{}', 17),
(76, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 18),
(77, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19),
(78, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 15, 'titulo', 'text', 'Titulo', 1, 1, 1, 1, 1, 1, '{}', 2),
(80, 15, 'subtitulo', 'text', 'Subtitulo', 0, 1, 1, 1, 1, 1, '{}', 3),
(81, 15, 'icone', 'text', 'Icone', 0, 1, 1, 1, 1, 1, '{}', 4),
(82, 15, 'txt_botao', 'text', 'Texto do  Botão', 0, 1, 1, 1, 1, 1, '{}', 5),
(83, 15, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 6),
(84, 15, 'created_at', 'timestamp', 'Criado em', 0, 1, 1, 1, 0, 1, '{}', 7),
(85, 15, 'updated_at', 'timestamp', 'Atualizado em', 0, 0, 0, 0, 0, 0, '{}', 8),
(86, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 16, 'nomeUsuario', 'text', 'NomeUsuario', 1, 1, 1, 1, 1, 1, '{}', 2),
(88, 16, 'cidade', 'text', 'Cidade', 1, 1, 1, 1, 1, 1, '{}', 3),
(89, 16, 'porcentagem', 'text', 'Porcentagem', 1, 1, 1, 1, 1, 1, '{}', 4),
(90, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(91, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(92, 16, 'ranking', 'text', 'Ranking', 1, 1, 1, 1, 1, 1, '{}', 7),
(93, 13, 'populado', 'text', 'Populado', 0, 1, 1, 1, 1, 1, '{}', 20),
(94, 16, 'brasil_id', 'text', 'Brasil Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(104, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 21, 'avatar', 'text', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 2),
(106, 21, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{}', 3),
(107, 21, 'ultimo_nome', 'text', 'Ultimo Nome', 1, 1, 1, 1, 1, 1, '{}', 4),
(108, 21, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(109, 21, 'telefone', 'text', 'Telefone', 1, 1, 1, 1, 1, 1, '{}', 6),
(110, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(111, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(112, 21, 'sexo', 'text', 'Sexo', 1, 1, 1, 1, 1, 1, '{}', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_types`
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
-- Extraindo dados da tabela `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-02-13 00:42:18', '2021-02-13 00:42:18'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-02-13 00:42:18', '2021-02-13 00:42:18'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-02-13 00:42:18', '2021-02-13 00:42:18'),
(7, 'covid_gazeta', 'covid-gazeta', 'Covid Gazeta', 'Covid Gazeta', NULL, NULL, NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-02-13 07:33:25', '2021-02-13 07:33:25'),
(9, 'covid_gazetas', 'covid-gazetas', 'Covid Gazeta', 'Covid Gazetas', NULL, 'App\\Models\\CovidGazeta', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-02-13 07:48:46', '2021-02-13 07:48:46'),
(12, 'covid', 'covid', 'Covid', 'Covids', NULL, 'App\\Models\\Covid', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-02-13 09:33:09', '2021-02-13 09:33:09'),
(13, 'covids', 'covids', 'Covid', 'Covids', NULL, 'App\\Models\\Covid', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-13 09:34:08', '2021-02-14 02:00:19'),
(14, 'cartoes', 'cartoes', 'Dashboard Cards', 'Dashboard Cards', NULL, 'App\\Carto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-02-13 20:37:41', '2021-02-13 20:37:41'),
(15, 'cartos', 'cartos', 'Dashboard Cards', 'Dashboard Cards', NULL, 'App\\Carto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-02-13 20:39:26', '2021-02-13 20:39:26'),
(16, 'internos', 'internos', 'Interno', 'Internos', NULL, 'App\\Interno', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-14 01:00:34', '2021-02-14 02:16:24'),
(21, 'contatos', 'contatos', 'Contato', 'Contatos', NULL, 'App\\Models\\Contato', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-09 21:00:13', '2021-03-09 21:00:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
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
-- Estrutura da tabela `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-02-13 00:42:19', '2021-02-13 00:42:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_items`
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
-- Extraindo dados da tabela `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-02-13 00:42:19', '2021-02-13 00:42:19', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2021-02-13 00:42:19', '2021-02-13 20:32:10', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2021-02-13 00:42:19', '2021-02-13 20:32:10', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2021-02-13 00:42:19', '2021-02-13 20:32:10', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2021-02-13 00:42:19', '2021-02-13 20:32:10', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-02-13 00:42:19', '2021-02-13 20:29:48', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-02-13 00:42:19', '2021-02-13 20:30:24', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-02-13 00:42:19', '2021-02-13 20:30:24', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-02-13 00:42:19', '2021-02-13 20:30:24', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2021-02-13 00:42:19', '2021-02-13 20:32:10', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-02-13 00:42:19', '2021-02-13 20:30:24', 'voyager.hooks', NULL),
(14, 1, 'Dados Gazeta', '', '_self', NULL, '#000000', 17, 2, '2021-02-13 07:48:46', '2021-02-13 20:31:05', 'voyager.covid-gazetas.index', 'null'),
(16, 1, 'Dados Brasil IO', '', '_self', NULL, '#000000', 17, 1, '2021-02-13 09:34:08', '2021-02-13 20:30:49', 'voyager.covids.index', 'null'),
(17, 1, 'Dados Covid', '', '_self', 'voyager-bag', '#000000', NULL, 3, '2021-02-13 20:29:37', '2021-02-13 20:32:10', NULL, ''),
(18, 1, 'WebApp', '', '_self', 'voyager-laptop', '#000000', NULL, 2, '2021-02-13 20:31:59', '2021-02-13 20:32:10', NULL, ''),
(20, 1, 'Dashboard Cards', '', '_self', NULL, NULL, 18, 1, '2021-02-13 20:39:26', '2021-02-14 02:39:34', 'voyager.cartos.index', NULL),
(21, 1, 'Api interna', '', '_self', NULL, '#000000', 18, 2, '2021-02-14 01:00:35', '2021-02-14 02:39:50', 'voyager.internos.index', 'null'),
(23, 1, 'Contatos', '', '_self', NULL, NULL, NULL, 9, '2021-03-09 21:00:14', '2021-03-09 21:00:14', 'voyager.contatos.index', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_02_06_025839_create_sessions_table', 1),
(7, '2016_01_01_000000_add_voyager_user_fields', 2),
(8, '2016_01_01_000000_create_data_types_table', 2),
(9, '2016_05_19_173453_create_menu_table', 2),
(10, '2016_10_21_190000_create_roles_table', 2),
(11, '2016_10_21_190000_create_settings_table', 2),
(12, '2016_11_30_135954_create_permission_table', 2),
(13, '2016_11_30_141208_create_permission_role_table', 2),
(14, '2016_12_26_201236_data_types__add__server_side', 2),
(15, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(16, '2017_01_14_005015_create_translations_table', 2),
(17, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(18, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(21, '2017_08_05_000000_add_group_to_settings_table', 2),
(22, '2017_11_26_013050_add_user_role_relationship', 2),
(23, '2017_11_26_015000_create_user_roles_table', 2),
(24, '2018_03_11_000000_add_user_settings', 2),
(25, '2018_03_14_000000_add_details_to_data_types_table', 2),
(26, '2018_03_16_000000_make_settings_value_nullable', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(2, 'browse_bread', NULL, '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(3, 'browse_database', NULL, '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(4, 'browse_media', NULL, '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(5, 'browse_compass', NULL, '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(6, 'browse_menus', 'menus', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(7, 'read_menus', 'menus', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(8, 'edit_menus', 'menus', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(9, 'add_menus', 'menus', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(10, 'delete_menus', 'menus', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(11, 'browse_roles', 'roles', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(12, 'read_roles', 'roles', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(13, 'edit_roles', 'roles', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(14, 'add_roles', 'roles', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(15, 'delete_roles', 'roles', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(16, 'browse_users', 'users', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(17, 'read_users', 'users', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(18, 'edit_users', 'users', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(19, 'add_users', 'users', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(20, 'delete_users', 'users', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(21, 'browse_settings', 'settings', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(22, 'read_settings', 'settings', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(23, 'edit_settings', 'settings', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(24, 'add_settings', 'settings', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(25, 'delete_settings', 'settings', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(26, 'browse_hooks', NULL, '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(27, 'browse_covid_gazeta', 'covid_gazeta', '2021-02-13 07:33:25', '2021-02-13 07:33:25'),
(28, 'read_covid_gazeta', 'covid_gazeta', '2021-02-13 07:33:25', '2021-02-13 07:33:25'),
(29, 'edit_covid_gazeta', 'covid_gazeta', '2021-02-13 07:33:25', '2021-02-13 07:33:25'),
(30, 'add_covid_gazeta', 'covid_gazeta', '2021-02-13 07:33:25', '2021-02-13 07:33:25'),
(31, 'delete_covid_gazeta', 'covid_gazeta', '2021-02-13 07:33:25', '2021-02-13 07:33:25'),
(37, 'browse_covid_gazetas', 'covid_gazetas', '2021-02-13 07:48:46', '2021-02-13 07:48:46'),
(38, 'read_covid_gazetas', 'covid_gazetas', '2021-02-13 07:48:46', '2021-02-13 07:48:46'),
(39, 'edit_covid_gazetas', 'covid_gazetas', '2021-02-13 07:48:46', '2021-02-13 07:48:46'),
(40, 'add_covid_gazetas', 'covid_gazetas', '2021-02-13 07:48:46', '2021-02-13 07:48:46'),
(41, 'delete_covid_gazetas', 'covid_gazetas', '2021-02-13 07:48:46', '2021-02-13 07:48:46'),
(42, 'browse_covid', 'covid', '2021-02-13 09:33:10', '2021-02-13 09:33:10'),
(43, 'read_covid', 'covid', '2021-02-13 09:33:10', '2021-02-13 09:33:10'),
(44, 'edit_covid', 'covid', '2021-02-13 09:33:10', '2021-02-13 09:33:10'),
(45, 'add_covid', 'covid', '2021-02-13 09:33:10', '2021-02-13 09:33:10'),
(46, 'delete_covid', 'covid', '2021-02-13 09:33:10', '2021-02-13 09:33:10'),
(47, 'browse_covids', 'covids', '2021-02-13 09:34:08', '2021-02-13 09:34:08'),
(48, 'read_covids', 'covids', '2021-02-13 09:34:08', '2021-02-13 09:34:08'),
(49, 'edit_covids', 'covids', '2021-02-13 09:34:08', '2021-02-13 09:34:08'),
(50, 'add_covids', 'covids', '2021-02-13 09:34:08', '2021-02-13 09:34:08'),
(51, 'delete_covids', 'covids', '2021-02-13 09:34:08', '2021-02-13 09:34:08'),
(52, 'browse_cartoes', 'cartoes', '2021-02-13 20:37:41', '2021-02-13 20:37:41'),
(53, 'read_cartoes', 'cartoes', '2021-02-13 20:37:41', '2021-02-13 20:37:41'),
(54, 'edit_cartoes', 'cartoes', '2021-02-13 20:37:41', '2021-02-13 20:37:41'),
(55, 'add_cartoes', 'cartoes', '2021-02-13 20:37:41', '2021-02-13 20:37:41'),
(56, 'delete_cartoes', 'cartoes', '2021-02-13 20:37:41', '2021-02-13 20:37:41'),
(57, 'browse_cartos', 'cartos', '2021-02-13 20:39:26', '2021-02-13 20:39:26'),
(58, 'read_cartos', 'cartos', '2021-02-13 20:39:26', '2021-02-13 20:39:26'),
(59, 'edit_cartos', 'cartos', '2021-02-13 20:39:26', '2021-02-13 20:39:26'),
(60, 'add_cartos', 'cartos', '2021-02-13 20:39:26', '2021-02-13 20:39:26'),
(61, 'delete_cartos', 'cartos', '2021-02-13 20:39:26', '2021-02-13 20:39:26'),
(62, 'browse_internos', 'internos', '2021-02-14 01:00:34', '2021-02-14 01:00:34'),
(63, 'read_internos', 'internos', '2021-02-14 01:00:34', '2021-02-14 01:00:34'),
(64, 'edit_internos', 'internos', '2021-02-14 01:00:34', '2021-02-14 01:00:34'),
(65, 'add_internos', 'internos', '2021-02-14 01:00:34', '2021-02-14 01:00:34'),
(66, 'delete_internos', 'internos', '2021-02-14 01:00:34', '2021-02-14 01:00:34'),
(72, 'browse_contatos', 'contatos', '2021-03-09 21:00:14', '2021-03-09 21:00:14'),
(73, 'read_contatos', 'contatos', '2021-03-09 21:00:14', '2021-03-09 21:00:14'),
(74, 'edit_contatos', 'contatos', '2021-03-09 21:00:14', '2021-03-09 21:00:14'),
(75, 'add_contatos', 'contatos', '2021-03-09 21:00:14', '2021-03-09 21:00:14'),
(76, 'delete_contatos', 'contatos', '2021-03-09 21:00:14', '2021-03-09 21:00:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
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
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 1, 'teste2', '290670785ba9a00bb6f22eec696cf94717d4b2176bbfa4e9fb2b9966386679e2', '[\"read\"]', '2021-02-13 19:35:42', '2021-02-13 18:56:48', '2021-02-13 19:35:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-02-13 00:42:19', '2021-02-13 00:42:19'),
(2, 'user', 'Normal User', '2021-02-13 00:42:19', '2021-02-13 00:42:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4HYbEbUGUF7DcwdirSGXIP0CpVWPBkFUQST7G3oK', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.72 Safari/537.36 Edg/89.0.774.45', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoic1JYRG15SWl4TUhDZnBqa2ttM1pLeTdHY2pzcWY1T0lQa0tvbG9DOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQyeVF4ZWRNL000MkZPS3RzNWRtOUl1L2tXZ2Jscll5WlBCTFdNNmF0cTdSTm5VcVVxcjdOLiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkMnlReGVkTS9NNDJGT0t0czVkbTlJdS9rV2dibHJZeVpQQkxXTTZhdHE3Uk5uVXFVcXI3Ti4iO30=', 1615417005);

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
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
-- Extraindo dados da tabela `settings`
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
-- Estrutura da tabela `translations`
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
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `settings`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$2yQxedM/M42FOKts5dm9Iu/kWgblrYyZPBLWM6atq7RNnUqUqr7N.', NULL, NULL, NULL, NULL, NULL, 'profile-photos/AdLiuQRp6HjI3h9Oa69RkICR9rlh88ww1Ystk4pr.png', NULL, '2021-03-10 18:59:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Índices para tabela `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Índices para tabela `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Índices para tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Índices para tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Índices para tabela `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Índices para tabela `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de tabela `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Limitadores para a tabela `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
