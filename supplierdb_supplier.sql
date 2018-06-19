-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: supplierdb
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,1,'Aaron Bergman'),(2,2,'Adrian Hane'),(3,3,'Alan Barnes'),(4,4,'Alex Avila'),(5,5,'Allen Rosenblatt'),(6,6,'Andrew Gjertsen'),(7,7,'Angele Hood'),(8,8,'Ann Chong'),(9,9,'Anna Andreadi'),(10,10,'Annie Cyprus'),(11,11,'Anthony Johnson'),(12,12,'Anthony O\'Donnell'),(13,13,'Barbara Fisher'),(14,14,'Barry French'),(15,15,'Barry Weirich'),(16,16,'Becky Castell'),(17,17,'Beth Paige'),(18,18,'Beth Thompson'),(19,19,'Brad Eason'),(20,20,'Brendan Dodson'),(21,21,'Brian Moss'),(22,22,'Bryan Davis'),(23,23,'Bryan Mills'),(24,24,'Cari Schnelling'),(25,25,'Carl Jackson'),(26,26,'Carl Ludwig'),(27,27,'Carlos Daly'),(28,28,'Carlos Soltero'),(29,29,'Chad Cunningham'),(30,30,'Charles McCrossin'),(31,31,'Charlotte Melton'),(32,32,'Christina DeMoss'),(33,33,'Christina Vanderzanden'),(34,34,'Christopher Schild'),(35,35,'Chuck Magee'),(36,36,'Cindy Schnelling'),(37,37,'Claudia Miner'),(38,38,'Clay Rozendal'),(39,39,'Dan Reichenbach'),(40,40,'Delfina Latchford'),(41,41,'Dennis Bolton'),(42,42,'Don Jones'),(43,43,'Don Miller'),(44,44,'Dorothy Badders'),(45,45,'Dorothy Wardle'),(46,46,'Doug Bickford'),(47,47,'Edward Hooks'),(48,48,'Emily Grady'),(49,49,'Erica Bern'),(50,50,'Eugene Barchas'),(51,51,'Evan Minnotte'),(52,52,'Filia McAdams'),(53,53,'Frank Atkinson'),(54,54,'Frank Price'),(55,55,'Fred Wasserman'),(56,56,'Gene Hale'),(57,57,'Giulietta Baptist'),(58,58,'Grant Carroll'),(59,59,'Greg Guthrie'),(60,60,'Guy Armstrong'),(61,61,'Harold Engle'),(62,62,'Heather Kirkland'),(63,63,'Helen Abelman'),(64,64,'Henry Goldwyn'),(65,65,'Hilary Holden'),(66,66,'Hunter Glantz'),(67,67,'Jack Garza'),(68,68,'Jack Lebron'),(69,69,'Jamie Kunitz'),(70,70,'Jenna Caffey'),(71,71,'Jennifer Braxton'),(72,72,'Jeremy Lonsdale'),(73,73,'Jim Karlsson'),(74,74,'Jim Radford'),(75,75,'Jim Sink'),(76,76,'Jocasta Rupert'),(77,77,'Joy Bell'),(78,78,'Joy Smith'),(79,79,'Julia West'),(80,80,'Julie Creighton'),(81,81,'Justin Knight'),(82,82,'Kelly Williams'),(83,83,'Kimberly Carter'),(84,84,'Lena Cacioppo'),(85,85,'Lisa DeCherney'),(86,86,'Logan Haushalter'),(87,87,'Luke Weiss'),(88,88,'Marina Lichtenstein'),(89,89,'Matt Collins'),(90,90,'Michelle Arnett'),(91,91,'Michelle Lonsdale'),(92,92,'Mike Pelletier'),(93,93,'Monica Federle'),(94,94,'Muhammed MacIntyre'),(95,95,'Neola Schneider'),(96,96,'Nicole Hansen'),(97,97,'Noah Childs'),(98,98,'Paul Gonzalez'),(99,99,'Philip Brown'),(100,100,'Ralph Arnett'),(101,101,'Ralph Knight'),(102,102,'Rick Duston'),(103,103,'Rick Reed'),(104,104,'Rob Haberlin'),(105,105,'Roy French'),(106,106,'Roy Skaria'),(107,107,'Sally Knutson'),(108,108,'Sanjit Chand'),(109,109,'Sarah Foster'),(110,110,'Seth Vernon'),(111,111,'Skye Norling'),(112,112,'Sonia Sunley'),(113,113,'Stewart Carmichael'),(114,114,'Susan Vittorini'),(115,115,'Sylvia Foulston'),(116,116,'Thomas Seio'),(117,117,'Toby Braunhardt');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-19  8:53:17
