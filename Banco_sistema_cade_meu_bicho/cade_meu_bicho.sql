-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.21 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando dados para a tabela cade_meu_bicho.animals: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` (`id`, `nome`, `idade`, `foto`, `informacoes_extra`, `cidade`, `estado`, `status`, `created_at`, `updated_at`, `date`, `user_id`, `user_encontrou`) VALUES
	(3, 'joaninha', 12, 'efdd52190ac776196fcb8afc5801961a', 'shdjhadjshdja', 'manaus', 'amazonas', 1, '2021-06-24 20:10:37', '2021-06-25 13:27:27', '2021-06-24 00:00:00', 1, '["Rafael Almeida", "92992435055"]'),
	(5, 'ariel almeida', 3, 'a837076697fb8c6ae9f1f4b7b4aa2fb3', 'fvfvf', 'fvdfvf', 'fvfvf', 0, '2021-06-25 12:30:59', '2021-06-25 13:37:32', '2021-06-25 00:00:00', 1, '["Rafael Almeida", "11111111"]'),
	(6, 'Marriá', 5, '6bec75d1891245b6bcc315cdb9fd52b9', 'bfhjbgdfbgf g', 'dfgfgdf', 'fdgfgf', 0, '2021-06-25 14:04:38', '2021-06-25 14:04:38', '2021-06-25 00:00:00', 1, NULL),
	(7, 'fgdgfdg', 2, '84c68d05b002694e1fe7c2dcbbecefc4', 'fdgfgfdgfdg', 'fgdfgfdgfdg', 'fgfgfdgfg', 0, '2021-06-25 14:05:19', '2021-06-25 14:05:19', '2021-06-25 00:00:00', 1, NULL),
	(8, 'ferfrerfr', 2, '8088493207f352b36df13a6f1ea7067a', 'rferfrf', 'rfrfr', 'rferfrfref', 0, '2021-06-25 14:05:47', '2021-06-25 14:05:47', '2021-06-26 00:00:00', 1, NULL),
	(9, 'edfsffdds', 32, '312ddc3d97bd674dc80a30fb9528db36', 'sdfsfdf', 'dsfdfd', 'dfssfd', 0, '2021-06-25 14:06:07', '2021-06-25 14:06:07', '2021-06-25 00:00:00', 1, NULL),
	(10, 'dsfdsfds', 5, '7b361f0cf539550480915337482c95df', 'dfsdfdf', 'dsfdfsdd', 'dfdsfsdfdf', 0, '2021-06-25 14:06:32', '2021-06-25 14:06:32', '2021-06-25 00:00:00', 1, NULL),
	(11, 'fgdgfdg', 1213231, '988549de84506c5b8e43263d58a02e8c', '213123213', 'sdsc', 'dsfdfsdf', 0, '2021-06-25 14:06:49', '2021-06-25 14:06:49', '2021-06-25 00:00:00', 1, NULL),
	(12, 'fgdgfdg', 3, '22251827b10042ada183441e8f38afb8', 'dcsdsfdfsd', 'dsfsdfdsfsdfds', 'sfdfsf', 0, '2021-06-25 14:07:07', '2021-06-25 14:07:07', '2021-06-25 00:00:00', 1, NULL),
	(13, 'Rafael Railton', 12, 'c80f031b50f50eb2a9fc63c5d5adee95', 'efesfefsefew', 'dwadwadawd', 'sadsdsadsd', 0, '2021-06-25 14:12:12', '2021-06-25 14:12:12', '2021-06-26 00:00:00', 1, NULL);
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;

-- Copiando dados para a tabela cade_meu_bicho.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Copiando dados para a tabela cade_meu_bicho.migrations: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2021_06_24_000701_create_animals_table', 1),
	(7, '2021_06_24_141442_add_date_to_animals_table', 1),
	(8, '2021_06_24_145937_create_sessions_table', 1),
	(9, '2021_06_24_151530_add_user_to_animals_table', 1),
	(10, '2021_06_24_192304_add_user_encontrou_to_animals_table', 2),
	(11, '2021_06_24_193911_add_user_encontrou_to_animals_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Copiando dados para a tabela cade_meu_bicho.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Copiando dados para a tabela cade_meu_bicho.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Copiando dados para a tabela cade_meu_bicho.sessions: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('EG6GJrDJ9EfMEBnWYJGEPDrjC2rju4c4RDNiVeSE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV256eElnaVcwTFFGZlBTR0VwVTFGbUN0OVJKemw4NGY0S2Myckx3WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1624641211),
	('Ro0aVlXNVzuQU9aqAmdNmx2Cxl1Q4Kft79UvijfO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDhxZk1kdUhqMzJCNTNpNHNlT2V5WWQ0azZEWFYwd0g5MzJ5Rkd0RiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hbmltYWxzLzgiO319', 1624641219),
	('vqpRIrPKmZEe41gbG3M3WawqZpET5jGAoVI0w1ey', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGxVekVnMUtLajBKanJLNjZob1FCdzlMcWZaNklIak1KR0twYkllZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1624630408);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Copiando dados para a tabela cade_meu_bicho.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 'Rafael Railton', 'rafaelrailton@gmail.com', NULL, '$2y$10$zCZ0vZOeeAN1r8AVO.N6kuqlZo2lU8ct7e3R4VK8cP0QKL7X64jj2', NULL, NULL, NULL, NULL, NULL, '2021-06-24 17:05:39', '2021-06-24 17:05:39'),
	(2, 'joaninha', 'portariatutiplast@gmail.com', NULL, '$2y$10$qog5I888vkyEHFVAdGLWg.0H9BMclgCbs346kZPDTkU.1VtvP0oQK', NULL, NULL, NULL, NULL, NULL, '2021-06-24 18:01:59', '2021-06-24 18:01:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
