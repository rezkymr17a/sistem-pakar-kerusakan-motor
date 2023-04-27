/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.30 : Database - proyek
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `aturans` */

DROP TABLE IF EXISTS `aturans`;

CREATE TABLE `aturans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aturan_kerusakan_id` int unsigned NOT NULL,
  `aturan_gejala_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `aturans` */

insert  into `aturans`(`id`,`aturan_kerusakan_id`,`aturan_gejala_id`,`created_at`,`updated_at`) values (79,1,1,'2022-12-22 08:00:49','2022-12-22 08:00:49'),(80,1,2,'2022-12-22 08:00:49','2022-12-22 08:00:49'),(81,1,3,'2022-12-22 08:00:49','2022-12-22 08:00:49'),(82,1,4,'2022-12-22 08:00:49','2022-12-22 08:00:49'),(83,2,5,'2022-12-22 08:01:14','2022-12-22 08:01:14'),(84,2,6,'2022-12-22 08:01:14','2022-12-22 08:01:14'),(85,2,7,'2022-12-22 08:01:14','2022-12-22 08:01:14'),(86,2,8,'2022-12-22 08:01:14','2022-12-22 08:01:14'),(87,3,7,'2022-12-22 08:01:35','2022-12-22 08:01:35'),(88,3,9,'2022-12-22 08:01:35','2022-12-22 08:01:35'),(89,4,1,'2022-12-22 08:01:43','2022-12-22 08:01:43'),(90,4,5,'2022-12-22 08:01:43','2022-12-22 08:01:43'),(91,4,7,'2022-12-22 08:01:43','2022-12-22 08:01:43'),(92,4,10,'2022-12-22 08:01:43','2022-12-22 08:01:43'),(93,5,5,'2022-12-22 08:06:20','2022-12-22 08:06:20'),(94,5,7,'2022-12-22 08:06:20','2022-12-22 08:06:20'),(95,5,11,'2022-12-22 08:06:20','2022-12-22 08:06:20'),(96,5,12,'2022-12-22 08:06:20','2022-12-22 08:06:20'),(97,5,13,'2022-12-22 08:06:20','2022-12-22 08:06:20'),(98,6,7,'2022-12-22 08:06:40','2022-12-22 08:06:40'),(99,6,14,'2022-12-22 08:06:40','2022-12-22 08:06:40'),(100,6,15,'2022-12-22 08:06:40','2022-12-22 08:06:40'),(101,7,16,'2022-12-22 08:06:56','2022-12-22 08:06:56'),(102,7,17,'2022-12-22 08:06:56','2022-12-22 08:06:56'),(103,8,16,'2022-12-22 08:07:17','2022-12-22 08:07:17'),(104,8,17,'2022-12-22 08:07:17','2022-12-22 08:07:17'),(105,8,18,'2022-12-22 08:07:17','2022-12-22 08:07:17'),(106,9,19,'2022-12-22 08:07:34','2022-12-22 08:07:34'),(107,9,20,'2022-12-22 08:07:35','2022-12-22 08:07:35'),(108,10,21,'2022-12-22 08:07:59','2022-12-22 08:07:59'),(109,10,22,'2022-12-22 08:07:59','2022-12-22 08:07:59'),(110,10,23,'2022-12-22 08:07:59','2022-12-22 08:07:59'),(111,10,24,'2022-12-22 08:07:59','2022-12-22 08:07:59'),(112,11,10,'2022-12-22 08:08:16','2022-12-22 08:08:16'),(113,11,12,'2022-12-22 08:08:16','2022-12-22 08:08:16'),(114,11,25,'2022-12-22 08:08:16','2022-12-22 08:08:16'),(115,12,1,'2022-12-22 08:08:57','2022-12-22 08:08:57'),(116,12,2,'2022-12-22 08:08:57','2022-12-22 08:08:57'),(117,12,3,'2022-12-22 08:08:57','2022-12-22 08:08:57'),(118,12,4,'2022-12-22 08:08:57','2022-12-22 08:08:57'),(119,12,28,'2022-12-22 08:08:57','2022-12-22 08:08:57');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `gejalas` */

DROP TABLE IF EXISTS `gejalas`;

CREATE TABLE `gejalas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gejala_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejala_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gejalas` */

insert  into `gejalas`(`id`,`gejala_code`,`gejala_name`,`created_at`,`updated_at`) values (1,'G01','Startet listrik tidak bisa','2022-12-22 02:25:35','2022-12-22 02:30:44'),(2,'G02','Klakso tidak bunyi','2022-12-22 02:31:01','2022-12-22 02:31:01'),(3,'G03','Reating dan lampu tidak bekerja','2022-12-22 02:31:22','2022-12-22 02:31:22'),(4,'G04','kelistrikan mati','2022-12-22 02:31:37','2022-12-22 02:31:37'),(5,'G05','Di Starter manual sulit','2022-12-22 02:32:00','2022-12-22 02:32:00'),(6,'G06','Terjadi suara ledakan kecil pada knalpot','2022-12-22 02:32:26','2022-12-22 02:32:26'),(7,'G07','Tarikan berat','2022-12-22 02:32:42','2022-12-22 02:32:42'),(8,'G08','Kelaur asap kehitaman pada knalot','2022-12-22 02:33:03','2022-12-22 02:33:03'),(9,'G09','Mesin mudah panas','2022-12-22 02:50:08','2022-12-22 02:50:08'),(10,'G10','Bahan bakar boros','2022-12-22 02:50:38','2022-12-22 02:50:38'),(11,'G11','Bunyi Gemlitik pada mesin','2022-12-22 02:50:54','2022-12-22 02:52:53'),(12,'G12','Suara mesin kasar','2022-12-22 02:51:08','2022-12-22 02:53:07'),(13,'G13','Kecepatan tidak optimal','2022-12-22 02:51:26','2022-12-22 02:53:23'),(14,'G14','Bunyi kasar pada saat jalan pelan','2022-12-22 02:51:40','2022-12-22 02:53:44'),(15,'G15','Kampas kopling lambat','2022-12-22 02:51:58','2022-12-22 02:54:02'),(16,'G16','Suara bising ketika motor digunakan','2022-12-22 02:54:35','2022-12-22 02:54:35'),(17,'G17','Motor mati (Tidak bisa hidup sama sekali)','2022-12-22 02:54:56','2022-12-22 02:54:56'),(18,'G18','Pada suhu dingin mesin motor susah dihidupkan','2022-12-22 02:55:20','2022-12-22 02:55:20'),(19,'G19','Kemampuan pengereman berkurang','2022-12-22 02:55:37','2022-12-22 02:55:37'),(20,'G20','Timbul suara berderit ketika rem digunakan','2022-12-22 02:56:01','2022-12-22 02:56:01'),(21,'G21','Ayunan motor lembut','2022-12-22 02:56:15','2022-12-22 02:56:15'),(22,'G22','Ayunan motor keras','2022-12-22 02:56:27','2022-12-22 02:56:27'),(23,'G23','Pantulan motor berlebihn','2022-12-22 02:56:42','2022-12-22 02:56:42'),(24,'G24','Berbunyi ketikam motor berjalan','2022-12-22 02:57:03','2022-12-22 02:57:03'),(25,'G25','Performa dan tenaga motor turun','2022-12-22 02:57:21','2022-12-22 02:57:21'),(28,'G26','Gejala 26','2022-12-22 08:08:35','2022-12-22 08:08:35');

/*Table structure for table `kerusakans` */

DROP TABLE IF EXISTS `kerusakans`;

CREATE TABLE `kerusakans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kerusakan_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kerusakan_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kerusakan_penyebab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kerusakan_perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kerusakans` */

insert  into `kerusakans`(`id`,`kerusakan_code`,`kerusakan_name`,`kerusakan_penyebab`,`kerusakan_perbaikan`,`created_at`,`updated_at`) values (1,'K01','Kerusakan AKI','Kerusakan AKI','Kerusakan AKI','2022-12-22 04:39:09','2022-12-22 05:07:43'),(2,'K02','Kerusakan Busi','Kerusakan Busi','Kerusakan Busi','2022-12-22 05:08:24','2022-12-22 05:08:24'),(3,'K03','Kerusakan Celah Klep','Kerusakan Celah Klep','Kerusakan Celah Klep','2022-12-22 05:08:39','2022-12-22 05:08:39'),(4,'K04','Kerusakan Injektor','Kerusakan Injektor','Kerusakan Injektor','2022-12-22 05:08:55','2022-12-22 05:08:55'),(5,'K05','Kerusakan Roller','Kerusakan Roller','Kerusakan Roller','2022-12-22 05:09:15','2022-12-22 05:09:15'),(6,'K06','Keruskan CVT','Kerusakan CVT','Kerusakan CVT','2022-12-22 05:09:33','2022-12-22 05:09:33'),(7,'K07','Kerusakan ECU','Kerusakan ECU','Kerusakan ECU','2022-12-22 05:09:50','2022-12-22 05:09:50'),(8,'K08','Kerusakan Fuel pump','Kerusakan Fuel pump','Kerusakan Fuel pump','2022-12-22 05:10:20','2022-12-22 05:10:20'),(9,'K09','Kerusakan Kampas','Kerusakan Kampas','Kerusakan Kampas','2022-12-22 05:10:36','2022-12-22 05:10:36'),(10,'K10','Kerusakan Shock Breaker','Kerusakan Shock Breaker','Kerusakan Shock Breaker','2022-12-22 05:10:56','2022-12-22 05:10:56'),(11,'K11','Kerusakan Filter Udara','Kerusakan Filter Udara','Kerusakan Filter Udara','2022-12-22 05:11:14','2022-12-22 05:11:14'),(12,'K12','Kerusakan sistem sinyal','Kerusakan sistem sinyal','Kerusakan sistem sinyal','2022-12-22 05:11:36','2022-12-22 05:11:36');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_11_17_162542_create_tb_customer_table',1),(6,'2022_11_22_044000_create_gejala_table',2),(7,'2022_11_25_024002_create_students_table',2),(19,'2022_12_16_044506_create_gejalas_table',3),(20,'2022_12_16_044529_create_kerusakans_table',3);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyebab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perbaikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `students` */

/*Table structure for table `tb_customer` */

DROP TABLE IF EXISTS `tb_customer`;

CREATE TABLE `tb_customer` (
  `customer_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_gejala` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_customer` */

insert  into `tb_customer`(`customer_id`,`kode_name`,`name_gejala`,`created_at`,`updated_at`) values (1,'Ivor Holland','Shelley Aguirre','2022-12-21 02:39:40','2022-12-21 02:39:40'),(2,'Ivor Holland','admin','2022-12-22 01:53:06','2022-12-22 01:53:06');

/*Table structure for table `tb_gejala` */

DROP TABLE IF EXISTS `tb_gejala`;

CREATE TABLE `tb_gejala` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_gejala` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_gejala` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,'admin','admin@admin.com',NULL,'$2y$10$tWDjgBMEpihGq4mn4GrSH.G.CluFeMfHsUbfY/m6ZULI9LAoqFE4y','3zt67g25aWPI1bNmbI2t4a41eTsRrrX609rkUuTdBFCijlo7zYGza6acS9F6','2022-12-21 02:10:42','2022-12-21 02:10:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
