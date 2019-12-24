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
-- Table structure for table `postsharings`
--

DROP TABLE IF EXISTS `postsharings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postsharings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CreateDate` datetime(6) DEFAULT NULL,
  `PostId` int(11) DEFAULT NULL,
  `ProfileId` int(11) DEFAULT NULL,
  `SharedTo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postsharings_PostId_a56f2e94_fk_post_id` (`PostId`),
  KEY `postsharings_ProfileId_8e5de77a_fk_profiles_id` (`ProfileId`),
  KEY `postsharings_SharedTo_84ecb830_fk_profiles_id` (`SharedTo`),
  CONSTRAINT `postsharings_PostId_a56f2e94_fk_post_id` FOREIGN KEY (`PostId`) REFERENCES `post` (`id`),
  CONSTRAINT `postsharings_ProfileId_8e5de77a_fk_profiles_id` FOREIGN KEY (`ProfileId`) REFERENCES `profiles` (`id`),
  CONSTRAINT `postsharings_SharedTo_84ecb830_fk_profiles_id` FOREIGN KEY (`SharedTo`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postsharings`
--

LOCK TABLES `postsharings` WRITE;
/*!40000 ALTER TABLE `postsharings` DISABLE KEYS */;
INSERT INTO `postsharings` VALUES (1,'2019-12-23 04:27:57.602600',2,5,5),(2,'2019-12-23 06:05:09.484131',1,6,5),(3,'2019-12-23 06:07:34.490982',4,6,5);
/*!40000 ALTER TABLE `postsharings` ENABLE KEYS */;
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
