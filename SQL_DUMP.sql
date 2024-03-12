-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: personal
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contactform`
--

DROP TABLE IF EXISTS `contactform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactform` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Message` text NOT NULL,
  `Viewed` int(11) NOT NULL DEFAULT 0,
  `TimeStamp` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactform`
--

LOCK TABLES `contactform` WRITE;
/*!40000 ALTER TABLE `contactform` DISABLE KEYS */;
INSERT INTO `contactform` VALUES (1,'name','email','message',0,'1709408633');
/*!40000 ALTER TABLE `contactform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Text` text NOT NULL,
  `Link` text NOT NULL,
  `Lang` text NOT NULL,
  `Img` varchar(255) NOT NULL DEFAULT 'https://www.computerhope.com/jargon/p/program.png',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'example 1','really cool example','www.google.com','penis script','https://external-preview.redd.it/y9H8wFuaGD_p2pq2N8nB30bIsbsYM1z0p5Spkr8UDXI.png?auto=webp&s=c793a80d3f2f9ed36adb005724383a3ec8d34610'),(2,'test 2','this is a really really good','www.wikipedia.com','somethign or other','https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTfz3tIfnYqrELwrTFI1kvqcV1n9QYB6HMzJIRf57E5N9I_at2B5MVpuKpK5fnfJWz3n1ZP-hQ8U0avEuU'),(3,'Freddie is a cat','something something','www.google.com','Brainless','/img/freddie.jpg'),(4,'Freddie is a cat','something something','www.google.com','Brainless','/img/freddie.jpg'),(5,'Freddie is a cat','something something','www.google.com','Brainless','/img/freddie.jpg'),(6,'Freddie is a cat','something something','www.google.com','Brainless','/img/freddie.jpg'),(7,'Freddie is a cat','something something','www.google.com','Brainless','/img/freddie.jpg');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-12 21:33:49
