-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: socialmedia
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `postratings`
--

DROP TABLE IF EXISTS `postratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Rating` decimal(2,1) DEFAULT NULL,
  `CreateDate` datetime(6) DEFAULT NULL,
  `PostId` int(11) DEFAULT NULL,
  `ProfileId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postratings_PostId_d4c3a3d5_fk_post_id` (`PostId`),
  KEY `postratings_ProfileId_2137056d_fk_profiles_id` (`ProfileId`),
  CONSTRAINT `postratings_PostId_d4c3a3d5_fk_post_id` FOREIGN KEY (`PostId`) REFERENCES `post` (`id`),
  CONSTRAINT `postratings_ProfileId_2137056d_fk_profiles_id` FOREIGN KEY (`ProfileId`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postratings`
--

LOCK TABLES `postratings` WRITE;
/*!40000 ALTER TABLE `postratings` DISABLE KEYS */;
INSERT INTO `postratings` VALUES (1,2.0,'2019-12-23 04:26:33.560241',2,5),(2,4.0,'2019-12-23 06:03:29.178070',7,8),(3,2.0,'2019-12-23 06:03:48.111099',1,5);
/*!40000 ALTER TABLE `postratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-24 16:25:28
