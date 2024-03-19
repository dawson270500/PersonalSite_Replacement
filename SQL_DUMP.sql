-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: personal
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `contactform`
--

DROP TABLE IF EXISTS `contactform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactform` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci NOT NULL,
  `Email` text COLLATE utf8mb4_general_ci NOT NULL,
  `Message` text COLLATE utf8mb4_general_ci NOT NULL,
  `Viewed` int NOT NULL DEFAULT '0',
  `TimeStamp` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactform`
--

LOCK TABLES `contactform` WRITE;
/*!40000 ALTER TABLE `contactform` DISABLE KEYS */;
INSERT INTO `contactform` VALUES (1,'name','email','message',1,'1709408633'),(2,'Bob marley','email@email.com','Really interesting thing that someone thinks I should try',1,'1710369142'),(3,'Mr besos','amazon@hedgefund.net','yeah yeah .....\nstuff and all that kinda jazz',0,'1710369756');
/*!40000 ALTER TABLE `contactform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci NOT NULL,
  `Text` text COLLATE utf8mb4_general_ci NOT NULL,
  `Link` text COLLATE utf8mb4_general_ci NOT NULL,
  `Lang` text COLLATE utf8mb4_general_ci NOT NULL,
  `Img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'https://www.computerhope.com/jargon/p/program.png',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'CPP-EnCryprt','Encryption program written in C++.<br> Works by converting password into a int then adding the password int onto each byte of the file.\r\nSaves the file name in the top of the encrypted file.','https://github.com/dawson270500/CPP-EnCrypt','C++','https://www.computerhope.com/jargon/p/program.png'),(2,'F-TCalc','Terminal calculator written in Fortran. <br> I wrote this mainly just to prove I could use Fortran to write something interesting and that works.','https://github.com/dawson270500/F-TCalc','Fortran','https://www.computerhope.com/jargon/p/program.png'),(3,'OpenText','A text editor that I wrote in C#<br>\r\nUses WinForms to show the GUI.<br>\r\nFeatures:\r\n<ul>\r\n<li>\r\nOpen and save files\r\n</li>\r\n<li>\r\nKeep files open when closed by ticking the keep open box\r\n</li>\r\n<li>\r\nOpen a new window\r\n</li>\r\n</ul><br>\r\n<img src=\"https://i.imgur.com/3Qua0EX.png\">','https://github.com/dawson270500/openText','C#','https://i.imgur.com/3Qua0EX.png'),(4,'Dappageze\'s Website','A website I wrote for a streamer, with a full backend system.<br />This project is currently not available live, you can view the source on github though. <br />Written in PHP 8.2, uses MySQL for the database and JavaScript in a couple of places, but not many.<br />I started writing the site for him long before it went live to his viewers. It allows his viewers to see what games he can play and select a game if they win a weekly competition. The back end allows him to add, remove or edit game entries, as well as grab the password he gives out to the winning viewer in the competition.<br /> <img src=\"https://i.imgur.com/s4uja2q.png\" style=\"width: 50%;\"><br> See an image of this site above. The style for the website is still under works and we are yet to nail down his colour scheme, but all the functionality is now fully working. Along with the mobile site.','https://github.com/dawson270500/dappageze_website','PHP','https://i.imgur.com/s4uja2q.png'),(5,'Space Invaders','This is a space invaders game that I originally wrote a long time ago for college. It was written for a college project that I had to do. I have since improved on it, so this is not all the original code. It took me a long time to get it working again so I can have it on this website for you to play.<br />The college project I made this for was to make a game in adobe flash, but I thought that was too easy so I wrote this. Originally it did have a high score system which would keep the high scores on a SQL server but the code around that wasn&apos;t working at all so I have removed it from this version.<br />I do at one point want to do a full rewrite from the ground, mainly to compare how I have changed as a developer since I have now started working. Could be interesting. Use my contact me page if you think that would be cool<br /> <img src=\"https://i.imgur.com/fea5cKM.png\" style=\"width:50%; height:auto\">','games/space_invaders_old','JavaScript','https://i.imgur.com/fea5cKM.png'),(6,'Justsadcake\'s Website','A website I created for justsadcake, now hosted on its own server.<br> Currently there is a only a poll system which is used for stream goals, the polls keeps a track of who has voted using various pieces of system information to stop people voting more than once.<br> More of the site is under construction still, for example there will be a portfolio to show off her art and a form of contact page for her to accept commissions from.\r\n<img src=\"https://i.imgur.com/6WinFnE.png\" style=\"width:60%;\">\r\n','http://www.justsadcake.co.uk','PHP','https://i.imgur.com/6WinFnE.png'),(7,'Space Invaders ReWrite','The space invaders game has been rewritten finally. This has taken a long time but it is now fully functioning.<br>You can download the framework I developed to create this game from github.<br><img src=\"https://i.imgur.com/pLmPplc.png\"> ','/games/space_invaders_new','JavaScript','https://i.imgur.com/pLmPplc.png'),(8,'Old Personal Website','My old personal website, written in PHP 8.2. What you are using now was written to replace it. <br />I hosted a few things for other people that I made as well, those are also there.','https://github.com/dawson270500/PersonalSite_OLD_PHP','PHP','https://www.computerhope.com/jargon/p/program.png');
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

-- Dump completed on 2024-03-19 22:43:07
