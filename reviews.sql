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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `work_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `rate` float NOT NULL DEFAULT '0',
  `rating_drawing` float NOT NULL DEFAULT '0',
  `rating_story` float NOT NULL DEFAULT '0',
  `rating_actor` float NOT NULL DEFAULT '0',
  `rating_incidental_music` float NOT NULL DEFAULT '0',
  `rating_directing` float NOT NULL DEFAULT '0',
  `rating_characters` float NOT NULL DEFAULT '0',
  `content` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_reviews_on_work_id_and_user_id` (`work_id`,`user_id`),
  KEY `index_reviews_on_work_id` (`work_id`),
  KEY `index_reviews_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_74a66bd6c5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_dadac170c9` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1450,3,5,0.9,0.9,0.9,0.7,0.7,0.9,'純文学作品の最高峰。何度も見返したくなる名作だと思う。\n見ない人は是非視聴し感想を共有したい。','2022-11-23 17:07:27.830638','2022-11-23 17:07:27.830638'),(2,393,3,4.8,0.9,0.7,0.7,0.9,0.7,0.9,'この作品はとても面白いです！！','2022-12-08 17:18:21.544641','2022-12-08 17:18:21.544641'),(3,2302,3,4,0.7,0.5,0.5,0.9,0.5,0.9,'このアニメはとても面白いです！！\n','2022-12-11 16:12:02.313098','2022-12-11 16:12:02.313098');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-19 21:13:08
