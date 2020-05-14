-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: myapp
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `notesdb`
--

DROP TABLE IF EXISTS `notesdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notesdb` (
  `id` varchar(20) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `subCategory` varchar(45) DEFAULT NULL,
  `dateAdded` varchar(45) DEFAULT NULL,
  `dueDate` varchar(45) DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `userAuthor` varchar(45) DEFAULT NULL,
  `assigned` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `comments` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Add coumns';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notesdb`
--

LOCK TABLES `notesdb` WRITE;
/*!40000 ALTER TABLE `notesdb` DISABLE KEYS */;
INSERT INTO `notesdb` VALUES ('1','Grocery','Bring roti prata','Home','Grocery','22-10-2017','22-10-2017','High','Manali','Ramesh','New','Comments1'),('2','Get Prawn','Bring tiger prawn','Home','NonVeg','23-10-2017','29-12-2017','Normal','Rupesh','Ramesh','New','Comments2'),('3','Bring Coconut','Grated coconut 200 gms','Home','Grocery','22-05-2017','26-12-2018','Medium','Ramesh','Rupesh','New','Comments'),('4','Bring Laddoo','Haldiram Ladoo 1 Kg','Home','Grocery','22-05-2017','26-12-2018','Medium','Manali','Ramesh','New','comments4'),('5','Bring Milk','Mejjie Milk 2L','Home','Grocery','22-05-2017','26-12-2018','Medium','Manali','Ramesh','New','comments1'),('6','Make Idli','Make Rava idli with Sambhar','Home','Cooking','22-05-2017','26-12-2018','Medium','Rupesh','Neha','New','comments4');
/*!40000 ALTER TABLE `notesdb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-14 22:06:59
