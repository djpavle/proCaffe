-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: proCaffe
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bartender`
--

DROP TABLE IF EXISTS `bartender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bartender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(56) DEFAULT NULL,
  `username` varchar(56) DEFAULT NULL,
  `passwd` varchar(56) DEFAULT NULL,
  `sessionID` varchar(128) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bartender`
--

LOCK TABLES `bartender` WRITE;
/*!40000 ALTER TABLE `bartender` DISABLE KEYS */;
INSERT INTO `bartender` VALUES (1,'Milinko','milinko','12345',NULL,0),(3,'Ranko','ranko','abc',NULL,0),(5,'Pavle','pavle','123',NULL,0),(6,'Mile','mile','222',NULL,0),(7,'novi','novi','novi',NULL,0);
/*!40000 ALTER TABLE `bartender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caffeTable_id` int(11) DEFAULT NULL,
  `total_price` decimal(9,2) DEFAULT NULL,
  `bartender_id` int(11) DEFAULT NULL,
  `date_initiated` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `date_finished` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caffeTable_id` (`caffeTable_id`),
  KEY `bartender_id` (`bartender_id`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`caffeTable_id`) REFERENCES `caffetable` (`id`),
  CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`bartender_id`) REFERENCES `bartender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,1,8.10,1,'2020-05-19 13:25:56',0,'2020-05-19 19:37:09'),(2,1,12.10,1,'2020-05-19 19:59:03',0,'2020-05-21 09:39:06'),(4,2,1.70,1,'2020-05-20 18:05:35',0,'2020-05-20 20:10:01'),(5,3,1.40,1,'2020-05-20 18:06:15',0,'2020-05-21 09:40:06'),(18,6,6.40,1,'2020-05-20 18:37:46',0,'2020-05-21 09:34:16'),(19,6,6.40,1,'2020-05-20 18:37:50',0,'2020-05-21 09:34:16'),(23,5,3.20,1,'2020-05-20 18:40:29',0,'2020-05-20 20:51:36'),(24,9,7.10,1,'2020-05-20 18:40:31',0,'2020-05-20 20:12:26'),(28,2,1.70,1,'2020-05-20 20:09:21',0,'2020-05-20 20:10:01'),(29,6,6.40,1,'2020-05-20 20:09:33',0,'2020-05-21 09:34:16'),(30,9,7.10,1,'2020-05-20 20:09:43',0,'2020-05-20 20:12:26'),(31,2,2.60,1,'2020-05-20 20:12:10',0,'2020-05-21 10:15:11'),(32,4,2.90,1,'2020-05-20 20:18:17',0,'2020-05-20 20:18:23'),(33,4,1.70,1,'2020-05-20 20:18:30',0,'2020-05-20 20:18:36'),(35,9,5.10,1,'2020-05-20 20:39:28',0,'2020-05-20 20:39:35'),(36,9,3.40,1,'2020-05-20 20:39:40',0,'2020-05-20 20:39:45'),(37,9,1.20,1,'2020-05-20 20:39:47',0,'2020-05-21 10:15:47'),(38,8,2.40,5,'2020-05-20 20:44:45',0,'2020-05-20 20:46:26'),(39,8,2.40,5,'2020-05-20 20:45:44',0,'2020-05-20 20:46:26'),(40,5,3.20,6,'2020-05-20 20:51:25',0,'2020-05-20 20:51:36'),(41,5,3.20,6,'2020-05-20 20:51:29',0,'2020-05-20 20:51:36'),(43,8,3.70,5,'2020-05-20 20:56:35',0,'2020-05-20 20:56:51'),(44,8,3.70,5,'2020-05-20 20:56:42',0,'2020-05-20 20:56:51'),(45,5,3.60,5,'2020-05-21 09:33:26',0,'2020-05-21 09:33:32'),(46,5,6.30,5,'2020-05-21 09:33:33',0,'2020-05-21 10:22:50'),(47,6,9.10,3,'2020-05-21 09:34:18',0,'2020-05-21 10:16:53'),(48,4,2.00,1,'2020-05-21 09:37:58',0,'2020-05-21 10:24:28'),(49,9,1.20,1,'2020-05-21 09:38:02',0,'2020-05-21 10:15:47'),(50,9,1.20,1,'2020-05-21 09:38:05',0,'2020-05-21 10:15:47'),(51,9,1.20,1,'2020-05-21 09:38:11',0,'2020-05-21 10:15:47'),(52,7,1.20,1,'2020-05-21 09:38:30',0,'2020-05-21 10:16:09'),(53,5,6.30,1,'2020-05-21 09:39:25',0,'2020-05-21 10:22:50'),(54,5,6.30,1,'2020-05-21 09:39:58',0,'2020-05-21 10:22:50'),(55,3,3.70,1,'2020-05-21 09:50:07',0,'2020-05-21 10:00:31'),(56,5,6.30,3,'2020-05-21 09:59:52',0,'2020-05-21 10:22:50'),(57,1,2.40,3,'2020-05-21 09:59:55',0,'2020-05-21 10:12:48'),(58,3,3.70,5,'2020-05-21 10:00:22',0,'2020-05-21 10:00:31'),(59,3,0.00,5,'2020-05-21 10:00:34',1,NULL),(60,8,6.50,5,'2020-05-21 10:00:37',0,'2020-05-21 10:00:49'),(61,1,3.60,5,'2020-05-21 10:12:50',0,'2020-05-21 10:17:59'),(62,2,3.60,5,'2020-05-21 10:15:13',0,'2020-05-21 10:15:25'),(63,2,3.40,5,'2020-05-21 10:15:27',0,'2020-05-21 10:25:03'),(64,9,1.20,5,'2020-05-21 10:15:50',0,'2020-05-24 16:41:04'),(65,8,4.20,5,'2020-05-21 10:15:59',0,'2020-05-24 16:23:15'),(66,7,13.50,5,'2020-05-21 10:16:10',0,'2020-05-24 16:27:11'),(67,10,2.40,5,'2020-05-21 10:16:32',0,'2020-05-24 16:41:17'),(68,6,10.80,5,'2020-05-21 10:16:55',0,'2020-05-24 16:22:18'),(69,1,2.40,1,'2020-05-21 10:21:35',0,'2020-05-21 10:21:49'),(70,4,2.40,1,'2020-05-21 10:24:31',0,'2020-05-24 16:29:24'),(71,2,4.80,3,'2020-05-21 10:25:04',0,'2020-05-24 16:24:27'),(72,1,2.40,5,'2020-05-24 15:48:34',0,'2020-05-24 15:48:40'),(73,1,5.70,5,'2020-05-24 15:48:42',0,'2020-05-24 16:28:17'),(74,5,1.50,5,'2020-05-24 15:48:56',0,'2020-05-24 16:32:00'),(75,6,5.10,5,'2020-05-24 16:22:48',0,'2020-05-24 16:22:54'),(76,8,4.20,5,'2020-05-24 16:23:24',0,'2020-05-24 16:23:30'),(77,2,2.40,5,'2020-05-24 16:24:30',0,'2020-05-24 16:32:09'),(78,6,2.40,5,'2020-05-24 16:27:18',0,'2020-05-24 16:27:33'),(79,6,1.20,5,'2020-05-24 16:27:46',0,'2020-05-24 16:28:00'),(80,1,4.00,5,'2020-05-24 16:28:29',0,'2020-05-24 16:28:41'),(81,4,3.00,1,'2020-05-24 16:29:30',0,'2020-05-24 16:29:33'),(82,4,6.00,1,'2020-05-24 16:29:44',0,'2020-05-24 16:29:56'),(83,8,4.00,5,'2020-05-24 16:32:15',0,'2020-05-24 16:32:29'),(84,1,1.20,3,'2020-05-24 16:32:51',0,'2020-05-24 16:33:00'),(85,6,3.60,3,'2020-05-24 16:33:05',0,'2020-05-24 16:33:15'),(86,1,2.40,3,'2020-05-24 16:40:25',0,'2020-05-24 16:40:36'),(87,9,2.40,3,'2020-05-24 16:41:22',0,'2020-05-24 16:41:27'),(88,9,1.50,3,'2020-05-24 16:41:37',0,'2020-05-24 16:41:47'),(89,2,2.40,3,'2020-05-24 16:41:56',0,'2020-05-24 16:42:15'),(90,5,3.40,3,'2020-05-24 16:42:21',0,'2020-05-24 16:42:40'),(91,5,2.40,1,'2020-05-24 16:45:52',0,'2020-05-24 16:46:01'),(92,2,2.40,1,'2020-05-24 16:51:58',0,'2020-05-24 16:52:02'),(93,2,2.40,5,'2020-05-24 16:52:39',0,'2020-05-24 16:52:46'),(94,1,2.40,5,'2020-05-24 16:57:26',0,'2020-05-24 16:57:35'),(95,2,2.40,5,'2020-05-24 16:57:38',0,'2020-05-24 16:58:07'),(96,1,3.00,5,'2020-05-24 16:57:41',0,'2020-05-24 16:59:28'),(97,4,4.00,5,'2020-05-24 16:57:44',0,'2020-05-24 16:58:32'),(98,2,3.00,5,'2020-05-24 17:01:03',0,'2020-05-24 17:01:17'),(99,2,7.80,1,'2020-05-24 17:02:09',0,'2020-05-24 17:02:35'),(100,9,1.70,1,'2020-05-24 17:02:42',0,'2020-05-24 17:02:52'),(101,9,2.00,1,'2020-05-24 17:03:00',0,'2020-05-24 17:03:21'),(102,4,1.20,5,'2020-05-24 20:52:42',0,'2020-05-24 20:52:55'),(103,2,1.70,5,'2020-05-24 21:00:33',0,'2020-05-24 21:01:01'),(104,1,1.20,5,'2020-05-24 21:00:36',0,'2020-05-24 21:00:52'),(105,4,3.40,5,'2020-05-24 21:00:38',0,'2020-05-24 21:01:08'),(106,1,2.40,5,'2020-05-25 09:59:42',0,'2020-05-25 09:59:57'),(107,1,2.40,5,'2020-05-25 10:00:47',0,'2020-05-25 10:00:57'),(108,1,2.40,5,'2020-05-27 10:35:20',0,'2020-05-27 10:35:24'),(109,1,5.20,5,'2020-06-01 11:52:46',0,'2020-06-01 11:53:09'),(110,10,5.10,5,'2020-06-01 11:53:23',0,'2020-06-01 11:54:27'),(111,7,1.20,5,'2020-06-01 11:53:50',0,'2020-06-01 11:54:10'),(112,1,2.40,5,'2020-06-02 10:00:05',0,'2020-06-02 10:03:56'),(113,4,2.40,5,'2020-06-02 10:00:17',0,'2020-06-02 10:00:43'),(114,5,0.00,5,'2020-06-02 10:00:33',1,NULL),(115,6,0.00,5,'2020-06-02 10:00:58',1,NULL),(116,1,1.20,1,'2020-06-02 10:04:08',0,'2020-06-02 10:04:32'),(117,2,4.80,1,'2020-06-02 10:04:18',0,'2020-06-02 10:04:45'),(118,1,7.00,1,'2020-06-02 10:04:52',0,'2020-06-02 10:05:40'),(119,8,3.40,1,'2020-06-02 10:05:46',0,'2020-06-02 10:05:50'),(120,1,3.60,7,'2020-06-02 10:06:20',0,'2020-06-02 10:06:40');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billitems`
--

DROP TABLE IF EXISTS `billitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_id` int(11) DEFAULT NULL,
  `drink_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bill_id` (`bill_id`),
  KEY `drink_id` (`drink_id`),
  CONSTRAINT `billitems_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`),
  CONSTRAINT `billitems_ibfk_2` FOREIGN KEY (`drink_id`) REFERENCES `drink` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billitems`
--

LOCK TABLES `billitems` WRITE;
/*!40000 ALTER TABLE `billitems` DISABLE KEYS */;
INSERT INTO `billitems` VALUES (34,1,3),(35,1,11),(36,1,12),(69,2,1),(70,2,14),(71,2,14),(75,5,2),(78,2,1),(79,2,4),(80,4,7),(83,18,7),(84,18,5),(85,18,11),(86,24,8),(87,24,6),(91,24,6),(92,24,5),(93,32,5),(94,32,4),(95,33,6),(96,35,5),(97,35,5),(98,35,5),(99,36,6),(100,36,6),(102,38,1),(103,38,1),(104,23,3),(105,23,5),(106,43,6),(107,43,8),(108,45,4),(109,45,4),(110,45,4),(112,57,4),(113,57,4),(114,55,6),(115,55,8),(116,60,14),(117,60,14),(120,31,2),(121,31,4),(122,62,1),(123,62,1),(124,62,1),(126,37,1),(127,52,1),(128,47,5),(129,47,5),(130,47,5),(131,47,10),(132,47,10),(133,61,1),(134,61,1),(135,61,1),(136,69,1),(137,69,1),(138,46,4),(139,46,6),(140,46,6),(141,46,6),(142,48,9),(143,63,5),(144,63,5),(145,72,1),(146,72,1),(147,68,7),(148,68,7),(149,68,7),(150,68,12),(151,68,12),(152,68,13),(153,75,6),(154,75,6),(155,75,6),(156,65,2),(157,65,2),(158,65,2),(159,76,2),(160,76,2),(161,76,2),(162,71,4),(163,71,4),(164,71,4),(165,71,4),(166,66,14),(167,66,14),(168,66,13),(169,66,13),(170,78,1),(171,78,1),(172,79,1),(173,73,7),(174,73,8),(175,73,8),(176,80,8),(177,80,9),(178,70,1),(179,70,1),(180,81,3),(181,81,3),(183,82,8),(184,82,8),(185,82,8),(186,74,3),(187,77,4),(188,77,4),(189,83,8),(190,83,8),(191,84,1),(192,85,4),(193,85,4),(194,85,4),(195,86,1),(196,86,1),(197,64,1),(198,67,1),(199,67,1),(200,87,1),(201,87,1),(202,88,3),(203,89,4),(204,89,4),(205,90,5),(206,90,5),(207,91,1),(208,91,1),(209,92,1),(210,92,1),(211,93,1),(212,93,1),(213,94,1),(214,94,1),(215,95,1),(216,95,1),(217,97,8),(218,97,8),(219,96,3),(220,96,3),(221,98,3),(222,98,3),(224,99,7),(225,99,8),(226,99,11),(227,99,12),(228,100,7),(230,101,9),(231,102,4),(232,104,4),(233,103,5),(234,105,5),(235,105,7),(236,106,1),(237,106,1),(238,107,1),(239,107,1),(240,108,1),(241,108,1),(242,109,1),(243,109,1),(244,109,2),(245,109,2),(246,110,5),(247,110,5),(248,110,5),(249,111,4),(250,112,1),(251,112,1),(252,113,1),(253,113,1),(254,115,1),(255,115,1),(256,116,1),(257,117,2),(258,117,6),(259,117,6),(262,118,13),(263,118,13),(264,119,5),(265,119,5),(266,120,4),(267,120,4),(268,120,4);
/*!40000 ALTER TABLE `billitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `billitems_detailed`
--

DROP TABLE IF EXISTS `billitems_detailed`;
/*!50001 DROP VIEW IF EXISTS `billitems_detailed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `billitems_detailed` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `price`,
 1 AS `volume`,
 1 AS `bill_id`,
 1 AS `drink_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `caffetable`
--

DROP TABLE IF EXISTS `caffetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caffetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(56) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caffetable`
--

LOCK TABLES `caffetable` WRITE;
/*!40000 ALTER TABLE `caffetable` DISABLE KEYS */;
INSERT INTO `caffetable` VALUES (1,'table 1',3),(2,'table 2',3),(3,'table 3',3),(4,'table 4',4),(5,'table 5',4),(6,'table 6',2),(7,'table 7',2),(8,'table 8',4),(9,'table 9',4),(10,'table 10',2);
/*!40000 ALTER TABLE `caffetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink`
--

DROP TABLE IF EXISTS `drink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(56) DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `volume` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink`
--

LOCK TABLES `drink` WRITE;
/*!40000 ALTER TABLE `drink` DISABLE KEYS */;
INSERT INTO `drink` VALUES (1,'espresso',1.20,NULL),(2,'cappucinno',1.40,NULL),(3,'nescaffe',1.50,NULL),(4,'tea',1.20,NULL),(5,'coca cola',1.70,0.25),(6,'sprite',1.70,0.25),(7,'fanta',1.70,0.25),(8,'apple juice',2.00,0.25),(9,'orange juice',2.00,0.25),(10,'lemonade',2.00,0.33),(11,'grapefruit',3.00,0.33),(12,'mineral water',1.10,0.33),(13,'red bull',3.50,0.25),(14,'ginger ale',3.25,0.33);
/*!40000 ALTER TABLE `drink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `billitems_detailed`
--

/*!50001 DROP VIEW IF EXISTS `billitems_detailed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `billitems_detailed` AS select `billitems`.`id` AS `id`,`drink`.`name` AS `name`,`drink`.`price` AS `price`,`drink`.`volume` AS `volume`,`billitems`.`bill_id` AS `bill_id`,`billitems`.`drink_id` AS `drink_id` from (`billitems` join `drink` on((`drink`.`id` = `billitems`.`drink_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-02 10:08:09
