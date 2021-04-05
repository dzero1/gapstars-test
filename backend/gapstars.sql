-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: gapstars
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  `parent` int NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21610 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
INSERT INTO `filters` VALUES (14096,137,14100,'Kleding'),(14098,2,14096,'Badmode'),(14100,136,0,'Dames'),(14101,17,14096,'Broeken'),(14104,5,14096,'Jassen en Mantels'),(14105,32,14096,'Jurken'),(14106,5,14096,'Lingerie en nachtmode'),(14107,41,14096,'Shirts en Tops'),(14108,15,14096,'Truien en Vesten'),(14114,3,14100,'Accessoires'),(14126,154,0,'Kids'),(14212,9,14096,'Jeans'),(14213,8,14212,'Straight'),(14214,2,14212,'Skinny'),(14215,9,14212,'Slim'),(14216,38,14107,'Tops'),(14217,6,14108,'Sweaters'),(14219,2,14114,'Riemen'),(14220,15,14107,'Longsleeves'),(14221,28,14107,'T-shirts'),(14223,9,16935,'Blouses'),(14224,31,14105,'Casual jurken'),(14226,1,14096,'Joggingbroeken'),(14228,1,14105,'Maxi jurken'),(14230,1,14101,'Leggings'),(14231,5,16891,'Mini Rokken'),(14232,8,14105,'Mouwloze jurken'),(14234,3,14101,'Shorts'),(14236,10,14105,'Jurken lange mouw'),(14237,3,14101,'Jumpsuits en Playsuits'),(14239,8,14101,'Pantalons'),(14240,14,14105,'Jurken korte mouw'),(14559,1,14100,'Sport'),(14665,69,14126,'Boys'),(14666,93,14126,'Girls'),(16861,5,14212,'Bootcut'),(16877,8,14212,'Relaxed'),(16891,12,14096,'Rokken'),(16909,3,14105,'Cocktail jurken'),(16915,2,14105,'Blousejurken'),(16919,31,14105,'Overige jurken'),(16935,13,14096,'Blouses'),(16942,3,14096,'Overhemden'),(16948,10,16935,'Overige blouses'),(16968,12,14101,'Overige broeken'),(16976,8,16891,'Kokerrok'),(17002,1,14104,'Spijkerjassen'),(17012,3,14104,'Winterjassen'),(17016,2,14104,'Overige Jassen en Mantels'),(17071,2,14096,'Badpakken'),(17091,1,14098,'Overige Badmode'),(17106,1,14559,'Broeken'),(17131,3,14106,'BH\'s'),(17137,2,14106,'Slipjes'),(17241,1,14114,'Mutsen en Hoeden'),(17290,12,16891,'Overige Rokken'),(21249,0,21251,'Shoes'),(21250,15,14665,'Jassen'),(21251,14,0,'Heren'),(21252,14,14449,'Shirts'),(21253,14,21251,'T-shirts'),(21258,15,14665,'T-shirts'),(21260,20,14665,'Broeken'),(21268,3,14665,'Sportkleding'),(21274,5,14665,'Zwemkleding'),(21276,28,14665,'Overige'),(21284,1,14666,'Spijkerbroeken'),(21290,9,14666,'Shirts'),(21292,15,14666,'T-shirts'),(21298,27,14666,'Broeken'),(21306,2,14666,'Sportkleding'),(21308,2,14666,'Zwemkleding'),(21316,27,14666,'Overige'),(21320,1,14666,'Baby rompers'),(21326,1,14666,'Rompers'),(21336,14,14666,'Jassen'),(21338,14,14666,'Rokken'),(21340,14,14666,'Jurken'),(21408,9,14108,'Cardigans'),(21410,8,16891,'Korte Rok'),(21459,4,14104,'Bomberjassen'),(21464,4,16891,'Lange Rok'),(21585,3,17131,'Voorgevormde BH\'s'),(21601,1,17137,'Slips'),(21609,1,14106,'Hipsters');
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phinxlog`
--

DROP TABLE IF EXISTS `phinxlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phinxlog`
--

LOCK TABLES `phinxlog` WRITE;
/*!40000 ALTER TABLE `phinxlog` DISABLE KEYS */;
INSERT INTO `phinxlog` VALUES (20180609140938,'InitMigration','2021-04-04 09:16:13','2021-04-04 09:16:13',0);
/*!40000 ALTER TABLE `phinxlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'admin','$2y$10$NkM4Tf3rzx8h8bNVRU3OiuEXZwFsDXRbpbKWZQbCbFb6qc7rwms6W','2021-04-04 09:23:20','2021-04-04 09:23:20',NULL),(3,'admin1','$2y$10$vgk34IQfuNONQQ21.xdNve7gh4oIyNFQHrnauPBJqSI7XivRWzLhe','2021-04-04 09:24:09','2021-04-04 09:24:09',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gapstars'
--

--
-- Dumping routines for database 'gapstars'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05 14:50:16
