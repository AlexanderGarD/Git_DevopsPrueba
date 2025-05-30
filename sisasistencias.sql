-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 30-05-2025 a las 13:11:46
-- Versión del servidor: 11.5.2-MariaDB
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sisasistencias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracions`
--

DROP TABLE IF EXISTS `configuracions`;
CREATE TABLE IF NOT EXISTS `configuracions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `divisa` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `web` varchar(255) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configuracions`
--

INSERT INTO `configuracions` (`id`, `nombre`, `descripcion`, `direccion`, `telefono`, `divisa`, `correo_electronico`, `web`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Jose Abelardo Quiñones', 'Colegio Privado', 'Calle San Pedro Mz A Lt 10, Mala 15608', 'Calle San Pedro Mz A Lt 10, Mala 15608', 'S/.', 'admision@jaq.edu.pe', 'https://colegio-quiñones.edu.pe', 'uploads/logos/1748356590_insignia.jpg', '2025-05-25 01:14:19', '2025-05-27 19:36:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestions`
--

DROP TABLE IF EXISTS `gestions`;
CREATE TABLE IF NOT EXISTS `gestions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gestions_nombre_unique` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gestions`
--

INSERT INTO `gestions` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(10, '2024', '2025-05-30 05:36:56', '2025-05-30 05:36:56'),
(11, '2025', '2025-05-30 05:37:04', '2025-05-30 05:37:04'),
(12, '2026', '2025-05-30 05:37:14', '2025-05-30 05:37:14'),
(13, '2027', '2025-05-30 05:37:24', '2025-05-30 05:37:24'),
(14, '2028', '2025-05-30 05:37:31', '2025-05-30 05:37:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

DROP TABLE IF EXISTS `grados`;
CREATE TABLE IF NOT EXISTS `grados` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `nivel_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `grados_nivel_id_foreign` (`nivel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id`, `nombre`, `nivel_id`, `created_at`, `updated_at`) VALUES
(1, '1ERO SECUNDARIA', 7, '2025-05-30 10:45:28', '2025-05-30 12:47:34'),
(2, '1ERO INICIAL', 4, '2025-05-30 10:58:43', '2025-05-30 12:55:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_19_031520_create_configuracions_table', 1),
(5, '2025_05_25_043217_create_gestions_table', 2),
(6, '2025_05_27_024954_create_nivels_table', 3),
(7, '2025_05_29_143626_create_turnos_table', 4),
(8, '2025_05_30_000636_create_periodos_table', 5),
(9, '2025_05_30_044639_create_grados_table', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivels`
--

DROP TABLE IF EXISTS `nivels`;
CREATE TABLE IF NOT EXISTS `nivels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nivels_nombre_unique` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `nivels`
--

INSERT INTO `nivels` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(4, 'INICIAL', '2025-05-29 19:12:14', '2025-05-29 19:12:14'),
(6, 'PRIMARIA', '2025-05-29 19:40:18', '2025-05-29 19:40:47'),
(7, 'SECUNDARIA', '2025-05-30 08:50:39', '2025-05-30 08:50:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

DROP TABLE IF EXISTS `periodos`;
CREATE TABLE IF NOT EXISTS `periodos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `gestion_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `periodos_gestion_id_foreign` (`gestion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `periodos`
--

INSERT INTO `periodos` (`id`, `nombre`, `gestion_id`, `created_at`, `updated_at`) VALUES
(1, '1er trimestre', 11, '2025-05-30 00:37:38', '2025-05-30 00:37:38'),
(2, '1er trimestre', 10, '2025-05-30 06:25:43', '2025-05-30 10:44:46'),
(3, '2do trimestre', 11, '2025-05-30 06:51:10', '2025-05-30 06:51:10'),
(4, '2do trimestre', 10, '2025-05-30 06:51:46', '2025-05-30 06:51:46'),
(5, '1er trimestre', 12, '2025-05-30 08:29:52', '2025-05-30 08:29:52'),
(6, '2do trimestre', 12, '2025-05-30 08:43:32', '2025-05-30 08:43:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eCHFqJTDZ00bXibN5ckKfxippoTyZEDnWQiCfMvW', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQ2Z0V1Z1enJhM3lDdW8yZTBsdkVsUFJMeFU1WHZGV3ZLdmJRZFE0RiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NDg2MTAwNDY7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUxOiJodHRwOi8vbG9jYWxob3N0L3Npc2FzaXN0ZW5jaWFzL3B1YmxpYy9hZG1pbi90dXJub3MiO319', 1748610071),
('jc4l5DQZJLbtekyML1krminj9Qvi6RmYp6PzsnKk', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaU4xNWZRUlRKT0tJZXZ5NmFkYXdTSEdHT0ZaYTFuQ0REcGxoQVRNWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly9sb2NhbGhvc3Qvc2lzYXNpc3RlbmNpYXMvcHVibGljL2FkbWluL2dyYWRvcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzQ4NTU3MDg1O319', 1748592270);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

DROP TABLE IF EXISTS `turnos`;
CREATE TABLE IF NOT EXISTS `turnos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'MAÑANA', '2025-05-29 20:36:43', '2025-05-30 04:06:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gonzalo Francia', 'gfvalle17@gmail.com', NULL, '$2y$12$M/Km4LUbhI7bN/VTCrD8dOPXgHvehANxNI3tESt4O7thZmQcvelJe', NULL, '2025-05-23 21:20:09', '2025-05-23 21:20:09');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `grados`
--
ALTER TABLE `grados`
  ADD CONSTRAINT `grados_nivel_id_foreign` FOREIGN KEY (`nivel_id`) REFERENCES `nivels` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD CONSTRAINT `periodos_gestion_id_foreign` FOREIGN KEY (`gestion_id`) REFERENCES `gestions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
