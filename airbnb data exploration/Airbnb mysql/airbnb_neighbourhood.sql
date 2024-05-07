-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: airbnb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `neighbourhood`
--

DROP TABLE IF EXISTS `neighbourhood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neighbourhood` (
  `neighbourhood_id` int NOT NULL,
  `city_code` int NOT NULL,
  `state_code` varchar(55) NOT NULL,
  `country_code` varchar(55) NOT NULL,
  `neighbourhood` text NOT NULL,
  PRIMARY KEY (`neighbourhood_id`),
  KEY `city_neighbourhood_idx` (`city_code`),
  KEY `state_idx` (`state_code`),
  KEY `country_idx` (`country_code`),
  CONSTRAINT `city_neighbourhood` FOREIGN KEY (`city_code`) REFERENCES `city` (`city_code`),
  CONSTRAINT `country_neighbourhood` FOREIGN KEY (`country_code`) REFERENCES `country` (`country_code`),
  CONSTRAINT `state_neighbourhood` FOREIGN KEY (`state_code`) REFERENCES `state` (`state_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neighbourhood`
--

LOCK TABLES `neighbourhood` WRITE;
/*!40000 ALTER TABLE `neighbourhood` DISABLE KEYS */;
INSERT INTO `neighbourhood` VALUES (1,1,'MA','US','Roslindale'),(2,1,'MA','US','Jamaica Plain'),(3,1,'MA','US','Mission Hill'),(4,1,'MA','US','Longwood Medical Area'),(5,1,'MA','US','Bay Village'),(6,1,'MA','US','Leather District'),(7,1,'MA','US','Chinatown'),(8,1,'MA','US','North End'),(9,1,'MA','US','Roxbury'),(10,1,'MA','US','South End'),(11,1,'MA','US','Back Bay'),(12,1,'MA','US','East Boston'),(13,1,'MA','US','Charlestown'),(14,1,'MA','US','West End'),(15,1,'MA','US','Beacon Hill'),(16,1,'MA','US','Downtown'),(17,1,'MA','US','Fenway'),(18,1,'MA','US','Brighton'),(19,1,'MA','US','West Roxbury'),(20,1,'MA','US','Hyde Park'),(21,1,'MA','US','Mattapan'),(22,1,'MA','US','Dorchester'),(23,1,'MA','US','South Boston Waterfront'),(24,1,'MA','US','South Boston'),(25,1,'MA','US','Allston'),(26,2,'FL','US','South Beach'),(27,3,'MS','US','Benton Park'),(28,4,'MA','US','Cambridge'),(29,1,'MA','US','17/Kenmore'),(30,1,'MA','US','25-18'),(31,5,'NY','US','Upper East Side'),(32,5,'NY','US','Theater District'),(33,1,'MA','US','Gay Village'),(34,1,'MA','US','Somerville'),(35,6,'CA','US','Santa Cruz'),(36,1,'MA','US','Central Business District'),(37,5,'NY','US','Financial District'),(38,8,'OR','US','Medford'),(39,1,'MA','US','16 Crossing'),(40,9,'MA','US','Coolidge Corner'),(41,10,'CA','US','Los Altos Hills'),(42,4,'MA','US','Harvard Square'),(43,11,'MA','US','Malden'),(44,12,'MA','US','Newton'),(45,5,'NY','US','Chelsea'),(46,13,'CA','US','Bernal Heights'),(47,1,'MA','US','Government Center'),(48,14,'CA','US','Sunnyvale'),(49,9,'MA','US','Brookline'),(50,5,'NY','US','Midtown East'),(51,5,'NY','US','East Harlem'),(52,1,'MA','US','West 9'),(53,15,'PN','US','Chestnut Hill'),(54,16,'NW','RS','South of Nevsky'),(55,17,'MA','US','Winthrop'),(56,5,'NY','US','Flatiron District'),(57,1,'MA','US','Belv√°ros'),(58,2,'FL','US','Miami Beach'),(59,1,'MA','US','Coral Way'),(60,1,'MA','US','Mission District');
/*!40000 ALTER TABLE `neighbourhood` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-17 21:13:48
