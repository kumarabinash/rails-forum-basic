-- MySQL dump 10.13  Distrib 5.6.25, for osx10.10 (x86_64)
--
-- Host: localhost    Database: forum_development
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (2,'Kumar','Abinash','abinash','2_abinash.jpg','HAL, Bangalore, India','7406032047','m',2,'2015-07-06 07:22:43','2015-07-06 07:22:43'),(4,'milan','najim','milan','3_milan.jpg','New Delhi, India','9871664451','m',3,'2015-07-06 07:41:13','2015-07-06 07:41:13'),(6,'Rajesh','Patra','rajesh','4_rajesh.jpg','Denkanal, Odisha','9040025447','m',4,'2015-07-06 07:50:41','2015-07-06 07:50:41'),(7,'Subhasis','Satapathy','subhasis','6_subhasis.jpg','Burla, Odisha','9583125265','m',6,'2015-07-06 20:07:19','2015-07-06 20:07:19'),(8,'Apratim','Ankur','ankur','7_ankur.jpg','Belandur, Bangalore','983722191','m',7,'2015-07-06 20:09:54','2015-07-06 20:09:54'),(9,'Kausik','Gupta','rockkausik','8_rockkausik.jpg','Whitefield, Bangalore','8553435362','m',8,'2015-07-06 20:13:30','2015-07-06 20:13:30'),(10,'Saswati','Priyadarshini',NULL,'http://graph.facebook.com/689843584454799/picture',NULL,NULL,NULL,36,'2015-07-11 05:01:58','2015-07-11 05:01:58'),(12,'Priyaranjan','Rout',NULL,'http://graph.facebook.com/851953611564578/picture',NULL,NULL,NULL,42,'2015-07-11 05:26:15','2015-07-11 05:26:15'),(13,'Amit','Hansda',NULL,'http://graph.facebook.com/10203828415740429/picture',NULL,NULL,NULL,43,'2015-07-11 05:33:22','2015-07-11 05:33:22');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-11 12:15:25
