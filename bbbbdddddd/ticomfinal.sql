-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2022 a las 02:42:41
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ticomfinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `our`, `mission`, `vission`, `imagen1`, `imagen2`, `description`, `keywords`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Nosotros ticom', '<p>Somos una empresa especializado en brindar soluciones web para tu negocio:</p>', '<p>Nuestra Mission una empresa especializado en brindar soluciones web para tu negocio:</p>', '<p>Nuestra Vision una empresa especializado en brindar soluciones web para tu negocio</p>', 'public/about/ticom-fondo.jpg', 'public/about/ticom-diseno-web.jpg', 'Diseño de páginas web', 'creacion de paginas web', 1, '2022-06-10 00:21:19', '2022-06-10 02:36:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `description`, `keywords`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Blog', 'public/blog/blog1.jpg', 'blog de páginas web', 'blog creacion de paginas web', 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `url`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Categoria 1', 'categoria-1', 'default.jpg', '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'Categoria 2', 'categoria-2', 'default.jpg', '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoryhostings`
--

CREATE TABLE `categoryhostings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoryhostings`
--

INSERT INTO `categoryhostings` (`id`, `name`, `slug`, `image`, `description`, `state`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'HOSTING', 'hosting', 'public/categoryservice/category1.jpg', 'hosting de paginas web', 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoryservices`
--

CREATE TABLE `categoryservices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoryservices`
--

INSERT INTO `categoryservices` (`id`, `name`, `slug`, `image`, `description`, `state`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'SOLUCIONES WEB', 'soluciones-web', 'public/categoryservice/category1.jpg', 'Solucion en Diseño webSolucion en Diseño webSolucion en Diseño webSolucion en Diseño web', 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configurations`
--

CREATE TABLE `configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movil` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metatitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configurations`
--

INSERT INTO `configurations` (`id`, `logo`, `icon`, `telephono`, `movil`, `facebook`, `youtube`, `instagram`, `email`, `address`, `description`, `metatitle`, `metadescription`, `keywords`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'public/logo/ticom.jpg', '#', '7959969', '996929478', '#', '#', '#', 'informes@ticomperu.com', 'Av Petit Thouars 1255 Lima Lima', 'Somos una empresa especializada en brindar soluciones tecnologicas en web', 'ticom de inicio', 'ticom de inicio', 'ticom de inicio', 1, '2022-06-10 00:21:19', '2022-06-10 02:35:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mensaje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `homeservices`
--

CREATE TABLE `homeservices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubication` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `homeservices`
--

INSERT INTO `homeservices` (`id`, `title`, `description`, `url`, `texto`, `ubication`, `state`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Diseño de Páginas Web', 'Somos una empresa especializada en el Diseño de Páginas Web.\n\n            Contamos con un equipo de profesionales especializados en desarrollar proyectos de Diseño Web.\n            \n            Emprende el camino con nosotros y convertimos tu WebSite en una Herramienta de ventas.', '#', 'Ver más', 'derecha', 1, 'public/homeservices/servicio2.jpg', 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'Creación de carrito de Compras', 'Somos una empresa especializada en el crear ecommerce.\n\n            Contamos con un equipo de profesionales especializados en desarrollar proyectos de Diseño Web.\n            \n            Emprende el camino con nosotros y convertimos tu WebSite en una Herramienta de ventas.', '#', 'Ver más', 'izquierda', 1, 'public/homeservices/servicio3.jpg', 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostings`
--

CREATE TABLE `hostings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bandwidth` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpanel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emails` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `shortdescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longdescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategoryhosting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `hostings`
--

INSERT INTO `hostings` (`id`, `title`, `slug`, `imagen`, `imagen2`, `storage`, `bandwidth`, `cpanel`, `emails`, `bd`, `price`, `shortdescription`, `longdescription`, `state`, `user_id`, `subcategoryhosting_id`, `created_at`, `updated_at`) VALUES
(1, 'Plan empresarial', 'hosting-linux-plan-empresarial', NULL, NULL, '2000MB', '10GB', 'propio', 'ilimitados', 'ilimitados', 200.00, 'Hosting descripcion corta', 'Hosting descripcion larga', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'Plan corporativo', 'hosting-linux-plan-corporativo', NULL, NULL, '2000MB', '10GB', 'propio', 'ilimitados', 'ilimitados', 200.00, 'Hosting descripcion corta', 'Hosting descripcion larga', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(3, 'Plan profesional', 'hosting-linux-plan-profesional', NULL, NULL, '2000MB', '10GB', 'propio', 'ilimitados', 'ilimitados', 200.00, 'Hosting descripcion corta', 'Hosting descripcion larga', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(4, 'Plan silver', 'hosting-linux-plan-silver', NULL, NULL, '10000 MB', '100 GB', 'propio', 'ilimitados', 'ilimitados', 400.00, 'Hosting descripcion corta', 'Hosting descripcion larga', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(5, 'Plan gold', 'hosting-linux-plan-gold', NULL, NULL, '10000 MB', '100 GB', 'propio', 'ilimitados', 'ilimitados', 400.00, 'Hosting descripcion corta', 'Hosting descripcion larga', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_15_052601_create_categories_table', 1),
(5, '2021_03_17_210609_create_tags_table', 1),
(6, '2021_05_15_025305_create_posts_table', 1),
(7, '2021_06_11_062459_create_photos_table', 1),
(8, '2021_06_17_211614_create_post_tag_table', 1),
(9, '2021_08_01_053253_create_permission_tables', 1),
(10, '2021_12_03_010941_create_categorias_table', 1),
(11, '2021_12_04_010750_create_marcas_table', 1),
(12, '2022_01_02_054601_create_products_table', 1),
(13, '2022_01_03_012554_create_images_table', 1),
(14, '2022_04_10_184644_create_sliders_table', 1),
(15, '2022_04_10_223500_create_offers_table', 1),
(16, '2022_04_10_231722_create_homeservices_table', 1),
(17, '2022_04_11_003750_create_configurations_table', 1),
(18, '2022_04_11_063250_create_abouts_table', 1),
(19, '2022_04_15_181053_create_pagecontacts_table', 1),
(20, '2022_04_15_191050_create_contacts_table', 1),
(21, '2022_04_16_002105_create_categoryservices_table', 1),
(22, '2022_04_16_002711_create_subcategoryservices_table', 1),
(23, '2022_04_16_003542_create_services_table', 1),
(24, '2022_04_17_152439_create_categoryhostings_table', 1),
(25, '2022_04_17_152520_create_subcategoryhostings_table', 1),
(26, '2022_04_17_225204_create_blogs_table', 1),
(27, '2022_04_18_221909_create_hostings_table', 1),
(28, '2022_06_05_202459_create_whies_table', 1),
(29, '2022_06_06_012356_create_questions_table', 1),
(30, '2022_06_08_172228_create_works_table', 1),
(31, '2022_06_08_210437_create_teams_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `offers`
--

INSERT INTO `offers` (`id`, `image`, `title`, `description`, `url`, `texto`, `state`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'loguito.jpg', 'Enfoque Global', 'Solución Completa desde registro de dominio, hosting, web ..', '#', 'Ver más', 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'loguito.jpg', 'Dirigido al Cliente', 'Solución Completa desde registro de dominio, hosting, web ..', '#', 'Ver más', 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(3, 'loguito.jpg', 'Para el Logro de tu éxito', 'Solución Completa desde registro de dominio, hosting, web ..', '#', 'Ver más', 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagecontacts`
--

CREATE TABLE `pagecontacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saludo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pagecontacts`
--

INSERT INTO `pagecontacts` (`id`, `title`, `title1`, `title2`, `saludo`, `map`, `imagen`, `description`, `keywords`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'empresa de diseño web Contáctenos', 'Contáctenos', 'Envienos un Mensaje', 'Escribenos y lo más pronto estaremos en contacto con Ud.', NULL, 'public/contact/ticom-contacto.jpg', 'Diseño de páginas web', 'creacion de paginas web', 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view Post', 'web', '2022-06-10 00:21:18', '2022-06-10 00:21:18'),
(2, 'create Post', 'web', '2022-06-10 00:21:18', '2022-06-10 00:21:18'),
(3, 'update Post', 'web', '2022-06-10 00:21:18', '2022-06-10 00:21:18'),
(4, 'delete Post', 'web', '2022-06-10 00:21:18', '2022-06-10 00:21:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iframe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `url`, `excerpt`, `iframe`, `body`, `published_at`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Mi primer post', 'mi-primer-post', 'esto es un resumen de mi primer post', NULL, '<p> esto es un resumen de mi primer post es de mi primer post esto es un resumen de mi primer post</p>', '2022-06-06 00:21:19', 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'Mi segundo post', 'mi-segundo-post', 'esto es un resumen de mi segundo post', NULL, '<p> esto es un resumen de mi segundo post es de mi segundo post esto es un resumen de mi segundo post</p>', '2022-06-07 00:21:19', 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(3, 'Mi tercer post', 'mi-tercer-post', 'esto es un resumen de mi tercer post', NULL, '<p> esto es un resumen de mi tercer post es de mi tercer post esto es un resumen de mi segundo post</p>', '2022-06-08 00:21:19', 2, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(4, 'Mi cuarto post', 'mi-cuarto-post', 'esto es un resumen de mi cuarto post', NULL, '<p> esto es un resumen de mi cuarto post es de mi cuarto post esto es un resumen de mi segundo post</p>', '2022-06-09 00:21:19', 2, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resumen` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iframe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` double(8,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `categoria_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `marca_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `clasification` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `title`, `description`, `state`, `order`, `clasification`, `created_at`, `updated_at`) VALUES
(1, 'pregunta numero 1', 'Respuesta a pregunta 1 Solución Completa desde registro de dominio, hosting, web ..', 1, 1, '1', '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'pregunta numero 2', 'Respuesta a pregunta 1 Solución Completa desde registro de dominio, hosting, web ..', 1, 2, '1', '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(3, 'pregunta numero 3', 'Respuesta a pregunta 1 Solución Completa desde registro de dominio, hosting, web ..', 1, 3, '1', '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(4, 'pregunta numero 4', 'Respuesta a pregunta 1 Solución Completa desde registro de dominio, hosting, web ..', 1, 4, '1', '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(5, 'pregunta numero 5', 'Respuesta a pregunta 1 Solución Completa desde registro de dominio, hosting, web ..', 1, 5, '1', '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(6, 'pregunta numero 6', 'Respuesta a pregunta 1 Solución Completa desde registro de dominio, hosting, web ..', 1, 6, '1', '2022-06-10 00:21:20', '2022-06-10 00:21:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-06-10 00:21:18', '2022-06-10 00:21:18'),
(2, 'Writer', 'web', '2022-06-10 00:21:18', '2022-06-10 00:21:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortdescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longdescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titlemarket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionmarket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlmarket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategoryservice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `imagen1`, `imagen2`, `imagen3`, `imagen4`, `shortdescription`, `longdescription`, `titlemarket`, `descriptionmarket`, `urlmarket`, `state`, `user_id`, `subcategoryservice_id`, `created_at`, `updated_at`) VALUES
(1, 'Diseño web Peru', 'dielo-web-peru', 'public/service/servicio1.jpg', 'public/service/servicio2.jpg', 'public/service/servicio3.jpg', 'public/services/imagen4/ToKgn3WPE2IlHjB1Mmi8wmBWVZZWTJOWRdvF99b2.jpg', '<p>Diseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru</p>', '<p>Diseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru0</p>', 'Diseño de Páginas Web', 'Creamos soluciones copletas para tu empresa', 'Contáctenos', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 02:30:56'),
(2, 'Soluciones Ecommerce', 'soluciones-ecommerce', 'public/service/servicio1.jpg', 'public/service/servicio2.jpg', 'public/service/servicio3.jpg', NULL, 'Diseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Diseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru0', NULL, NULL, NULL, 0, 1, 2, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title4` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `title1`, `title2`, `title3`, `title4`, `url`, `image`, `state`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Diseño web Peru', 'para', 'Empresas', 'Desde S/ 400', '#', 'public/sliders/slider1.jpg', 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'Soluciones Ecommerce', 'para', 'Negocios', 'Desde S/ 800', '#', 'public/sliders/slider2.jpg', 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoryhostings`
--

CREATE TABLE `subcategoryhostings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `categoryhosting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subcategoryhostings`
--

INSERT INTO `subcategoryhostings` (`id`, `name`, `slug`, `image`, `description`, `keywords`, `state`, `categoryhosting_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Hosting Linux', 'hosting-linux', 'public/subcategoryhosting/subcategory1.jpg', 'hosting-linux hosting-linux hosting-linuxhosting-linuxhosting-linuxhosting-linux', 'Hosting linux', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'Hosting Windows', 'hosting-windows', 'public/subcategoryhosting/subcategory2.jpg', 'Solucion en Diseño webSolucion en Diseño webSolucion en Diseño webSolucion en Diseño web', 'Hosting windows', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoryservices`
--

CREATE TABLE `subcategoryservices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `categoryservice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subcategoryservices`
--

INSERT INTO `subcategoryservices` (`id`, `name`, `slug`, `image`, `description`, `state`, `categoryservice_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Diseño de Páginas Web', 'diseno-de-paginas-web', 'public/subcategoryservice/subcategory1.jpg', 'Solucion en Diseño webSolucion en Diseño webSolucion en Diseño webSolucion en Diseño web', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'Soluciones Ecommerce', 'soluciones-ecommerce', 'public/subcategoryservice/subcategory2.jpg', 'Solucion en Diseño webSolucion en Diseño webSolucion en Diseño webSolucion en Diseño web', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(3, 'Sistemas Web', 'sistemas-web', 'public/subcategoryservice/subcategory3.jpg', 'Solucion en Diseño webSolucion en Diseño webSolucion en Diseño webSolucion en Diseño web', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(4, 'Marketing Online', 'marketing-online', 'public/subcategoryservice/subcategory4.jpg', 'Solucion en Diseño webSolucion en Diseño webSolucion en Diseño webSolucion en Diseño web', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(5, 'Posicionamiento Web', 'posicionamiento-web', 'public/subcategoryservice/subcategory5.jpg', 'Solucion en Diseño webSolucion en Diseño webSolucion en Diseño webSolucion en Diseño web', 1, 1, 1, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'tag1', 'tag1', '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'tag2', 'tag2', '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(3, 'tag3', 'tag3', '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(4, 'tag4', 'tag4', '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profesion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortdescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longdescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `teams`
--

INSERT INTO `teams` (`id`, `name`, `slug`, `profesion`, `rol`, `shortdescription`, `longdescription`, `image`, `state`, `facebook`, `youtube`, `twitter`, `instagram`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Michael Cabello Alvino', 'michael-cabello-alvino', 'Ing. de sistemas', 'Gte de Sistemas', 'Michael Cabello Cliente web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Michael Cabello Cliente Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'public/team/team1.jpg', 1, 'https://facebook.com/', 'https://youtube.com/', 'https://twitter.com/', 'https://instagram.com/', 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(2, 'Michael Cabello Alvino2', 'michael-cabello-alvino', 'Ing. de sistemas', 'Gte de Sistemas', 'Michael Cabello Cliente web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Michael Cabello Cliente Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'public/team/team1.jpg', 1, 'https://facebook.com/', 'https://youtube.com/', 'https://twitter.com/', 'https://instagram.com/', 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(3, 'Michael Cabello Alvino3', 'michael-cabello-alvino', 'Ing. de sistemas', 'Gte de Sistemas', 'Michael Cabello Cliente web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Michael Cabello Cliente Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'public/team/team1.jpg', 1, 'https://facebook.com/', 'https://youtube.com/', 'https://twitter.com/', 'https://instagram.com/', 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Michael', 'michael@ticomperu.com', NULL, '$2y$10$8MtRuCQn1tUeClYvMy8VseUKp0ga9IB8V0pGqugxoiR2OyEp8iOnm', NULL, '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'pepe', 'pepe@ticomperu.com', NULL, '$2y$10$OvvXSP/yNJ/UFmGEaQQEpu9T01HTKylLVt4q4gqTlKyeQuoLKO9Z2', NULL, '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `whies`
--

CREATE TABLE `whies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `clasification` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `whies`
--

INSERT INTO `whies` (`id`, `title`, `description`, `image`, `state`, `order`, `clasification`, `created_at`, `updated_at`) VALUES
(1, 'Enfoque Global', 'Solución Completa desde registro de dominio, hosting, web ..', 'linearicons-laptop-phone', 1, 1, '1', '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(2, 'Enfoque Global', 'Solución Completa desde registro de dominio, hosting, web ..', 'linearicons-laptop-phone', 1, 2, '1', '2022-06-10 00:21:19', '2022-06-10 00:21:19'),
(3, 'Enfoque Global', 'Solución Completa desde registro de dominio, hosting, web ..', 'linearicons-laptop-phone', 1, 3, '1', '2022-06-10 00:21:19', '2022-06-10 00:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortdescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longdescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `works`
--

INSERT INTO `works` (`id`, `customer`, `title`, `slug`, `shortdescription`, `longdescription`, `website`, `image`, `state`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'alltronics', 'cliente uno', 'cliente-uno', 'Cliente web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work1.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(2, 'csr', 'cliente dos', 'cliente-dos', 'Cliente dos web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente dos Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work2.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(3, 'Boxer', 'cliente tres', 'cliente-tres', 'Cliente tres web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente tres Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work3.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(4, 'triathlon sport', 'cliente cuatro', 'cliente-cuatro', 'Cliente cuatro web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente cuatro Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work4.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(5, 'telefonica', 'cliente cinco', 'cliente-cinco', 'Cliente cinco web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente cinco Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work4.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(6, 'claro', 'cliente seis', 'cliente-seis', 'Cliente seis web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente seis Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work4.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(7, 'BBVA', 'cliente siete', 'cliente-siete', 'Cliente siete web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente siete Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work4.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(8, 'atento', 'cliente ocho', 'cliente-ocho', 'Cliente ocho web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente ocho Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work4.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(9, 'redes neuro', 'cliente nueve', 'cliente-nueve', 'Cliente nueve web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente nueve Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work4.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(10, 'dectronic', 'cliente diez', 'cliente-diez', 'Cliente diez web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente diez Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work4.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(11, 'finca schu', 'cliente once', 'cliente-once', 'Cliente once web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente once Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work4.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(12, 'trodat', 'cliente doce', 'cliente-doce', 'Cliente doce web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente doce Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work4.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(13, 'printy', 'cliente trece', 'cliente-trece', 'Cliente trece web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente trece Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work4.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20'),
(14, 'alltronics', 'cliente catorce', 'cliente-catorce', 'Cliente catorce web PeruDiseño web PeruDiseño web PeruDiseño web PeruDiseño web Peru', 'Cliente catorce Diseño web PeruDiseweb PeruDiseño web PeruDiseño web PeruDiseño uDiseño web PeruDiseño web Peru0', 'http://www.ticomperu.com', 'public/work/work4.jpg', 0, 1, '2022-06-10 00:21:20', '2022-06-10 00:21:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoryhostings`
--
ALTER TABLE `categoryhostings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryhostings_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `categoryservices`
--
ALTER TABLE `categoryservices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryservices_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configurations_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `homeservices`
--
ALTER TABLE `homeservices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeservices_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `hostings`
--
ALTER TABLE `hostings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hostings_user_id_foreign` (`user_id`),
  ADD KEY `hostings_subcategoryhosting_id_foreign` (`subcategoryhosting_id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `pagecontacts`
--
ALTER TABLE `pagecontacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pagecontacts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_marca_id_foreign` (`marca_id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_user_id_foreign` (`user_id`),
  ADD KEY `services_subcategoryservice_id_foreign` (`subcategoryservice_id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `subcategoryhostings`
--
ALTER TABLE `subcategoryhostings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategoryhostings_categoryhosting_id_foreign` (`categoryhosting_id`),
  ADD KEY `subcategoryhostings_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `subcategoryservices`
--
ALTER TABLE `subcategoryservices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategoryservices_categoryservice_id_foreign` (`categoryservice_id`),
  ADD KEY `subcategoryservices_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `whies`
--
ALTER TABLE `whies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `works_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categoryhostings`
--
ALTER TABLE `categoryhostings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoryservices`
--
ALTER TABLE `categoryservices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `homeservices`
--
ALTER TABLE `homeservices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `hostings`
--
ALTER TABLE `hostings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pagecontacts`
--
ALTER TABLE `pagecontacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subcategoryhostings`
--
ALTER TABLE `subcategoryhostings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subcategoryservices`
--
ALTER TABLE `subcategoryservices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `whies`
--
ALTER TABLE `whies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `categoryhostings`
--
ALTER TABLE `categoryhostings`
  ADD CONSTRAINT `categoryhostings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `categoryservices`
--
ALTER TABLE `categoryservices`
  ADD CONSTRAINT `categoryservices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `configurations`
--
ALTER TABLE `configurations`
  ADD CONSTRAINT `configurations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `homeservices`
--
ALTER TABLE `homeservices`
  ADD CONSTRAINT `homeservices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `hostings`
--
ALTER TABLE `hostings`
  ADD CONSTRAINT `hostings_subcategoryhosting_id_foreign` FOREIGN KEY (`subcategoryhosting_id`) REFERENCES `subcategoryhostings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hostings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pagecontacts`
--
ALTER TABLE `pagecontacts`
  ADD CONSTRAINT `pagecontacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_subcategoryservice_id_foreign` FOREIGN KEY (`subcategoryservice_id`) REFERENCES `subcategoryservices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subcategoryhostings`
--
ALTER TABLE `subcategoryhostings`
  ADD CONSTRAINT `subcategoryhostings_categoryhosting_id_foreign` FOREIGN KEY (`categoryhosting_id`) REFERENCES `categoryhostings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subcategoryhostings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subcategoryservices`
--
ALTER TABLE `subcategoryservices`
  ADD CONSTRAINT `subcategoryservices_categoryservice_id_foreign` FOREIGN KEY (`categoryservice_id`) REFERENCES `categoryservices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subcategoryservices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `works_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
