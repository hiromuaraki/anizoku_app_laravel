-- MySQL dump 10.13  Distrib 5.7.32, for osx10.14 (x86_64)
--
-- Host: localhost    Database: anizoku_app_development
-- ------------------------------------------------------
-- Server version	5.7.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT 'ゲストユーザー',
  `nickname` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `image` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1381175122380288004','twitter','ひろむ@あ！にぞく宣伝本部長','@anizoku_anime',0,'http://pbs.twimg.com/profile_images/1392786156345987074/rOZo3oFB_normal.jpg','https://twitter.com/anizoku_anime','2021-06-11 17:33:24.891006','2021-06-11 17:33:24.891006'),(2,'1393186598406160387','twitter','ひろむの日常チャンネル','@hiromu_anime',0,'http://pbs.twimg.com/profile_images/1402898235144904707/UcX0NJ21_normal.jpg','https://twitter.com/hiromu_anime','2021-06-12 17:32:02.630473','2021-06-12 17:32:02.630473'),(3,'1489804954105618434','twitter',NULL,NULL,0,'','https://twitter.com/','2022-11-23 16:14:38.043251','2022-11-23 16:14:38.043251'),(4,'3426567266','twitter',NULL,NULL,0,'','https://twitter.com/','2022-11-23 16:46:33.234141','2022-11-23 16:46:33.234141'),(5,'1482987955879018496','twitter',NULL,NULL,0,'','https://twitter.com/','2022-11-23 17:30:46.772818','2022-11-23 17:30:46.772818');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-19 21:03:59
