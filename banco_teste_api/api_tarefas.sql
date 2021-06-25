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

-- Copiando dados para a tabela api_tarefas.animals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` (`id`, `nome`, `idade`, `foto`, `estado`, `informacoes_extra`, `cidade`, `status`, `user_id`, `user_encontrou`, `created_at`, `updated_at`) VALUES
	(1, 'Andara', 1, 'sfjkdfjjf', 'sdfdfsfsd', 'sdfdfsfsd', 'sdfdfsfsd', '1', 1, NULL, '2021-06-25 16:53:34', '2021-06-25 16:53:34');
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;

-- Copiando dados para a tabela api_tarefas.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Copiando dados para a tabela api_tarefas.migrations: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(4, '2021_06_22_133203_create_tarefas_table', 1),
	(5, '2021_06_22_134239_create_tarefas_table', 2),
	(6, '2021_06_22_135316_create_tarefas_table', 3),
	(7, '2021_06_22_135316_create_animals_table', 4),
	(41, '2014_10_12_000000_create_users_table', 5),
	(42, '2014_10_12_100000_create_password_resets_table', 5),
	(43, '2019_08_19_000000_create_failed_jobs_table', 5),
	(44, '2021_06_25_162210_create_animals_table', 5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Copiando dados para a tabela api_tarefas.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Copiando dados para a tabela api_tarefas.tarefas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tarefas` DISABLE KEYS */;
INSERT INTO `tarefas` (`id`, `titulo`, `descricao`, `image`, `data`, `created_at`, `updated_at`) VALUES
	(1, 'achou', 'ndjnv', 'sfjkdfjjf', '2021-06-22', '2021-06-22 16:47:02', '2021-06-22 16:51:25');
/*!40000 ALTER TABLE `tarefas` ENABLE KEYS */;

-- Copiando dados para a tabela api_tarefas.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
