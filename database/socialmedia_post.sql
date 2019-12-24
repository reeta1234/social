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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) DEFAULT NULL,
  `Description` varchar(1200) DEFAULT NULL,
  `Scope` varchar(10) NOT NULL,
  `Type` varchar(1) NOT NULL,
  `PostUrl` varchar(100) DEFAULT NULL,
  `ThumbnailUrl` varchar(100) DEFAULT NULL,
  `PostStatus` int(11) NOT NULL,
  `CreateDate` datetime(6) DEFAULT NULL,
  `ProfileId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_ProfileId_f46b5418_fk_profiles_id` (`ProfileId`),
  CONSTRAINT `post_ProfileId_f46b5418_fk_profiles_id` FOREIGN KEY (`ProfileId`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Quasi voluptas quidem qui repellat officia consectetur. Tscipit qui blanditiis.','ulpa qui labore aut officiis qui nulla minus temporibus. Et harum atque qui ducimus maiores non sunt.','public','V','http://kertzmann.com/','http://www.dooleyshanahan.com/',1,'2002-09-16 00:00:00.000000',8),(2,'PHP','adsfs','private','A','ffs','sfsf',1,'2019-12-22 17:26:45.018731',5),(3,'Quasi voluptas quidem qui repellat officia consectetur. Tscipit qui blanditiis.','ulpa qui labore aut officiis qui nulla minus temporibus. Et harum atque qui ducimus maiores non sunt.','public','V','http://kertzmann.com/','http://www.dooleyshanahan.com/',1,'2002-09-16 00:00:00.000000',8),(4,'Ullam minus quas repellat dolorem.',' ex dicta quos dignissimos.','public','I','http://www.franecki.com/','http://www.lebsackbeatty.com/',1,'2010-04-04 00:00:00.000000',6),(5,'Ullam minus quas repellat dolorem.',' ex dicta quos dignissimos.','public','I','http://www.franecki.com/','http://www.lebsackbeatty.com/',1,'2010-04-04 00:00:00.000000',6),(6,'Quasi voluptas quidem qui repellat officia consectetur. Tscipit qui blanditiis.','ulpa qui labore aut officiis qui nulla minus temporibus. Et harum atque qui ducimus maiores non sunt.','public','V','http://kertzmann.com/','http://www.dooleyshanahan.com/',1,'2002-09-16 00:00:00.000000',8),(7,'Ullam minus quas repellat dolorem.',' ex dicta quos dignissimos.','public','I','http://www.franecki.com/','http://www.lebsackbeatty.com/',1,'2010-04-04 00:00:00.000000',6),(8,'Quasi voluptas quidem qui repellat officia consectetur. Tscipit qui blanditiis.','ulpa qui labore aut officiis qui nulla minus temporibus. Et harum atque qui ducimus maiores non sunt.','public','V','http://kertzmann.com/','http://www.dooleyshanahan.com/',1,'2002-09-16 00:00:00.000000',8),(9,'Ullam minus quas repellat dolorem.',' ex dicta quos dignissimos.','public','I','http://www.franecki.com/','http://www.lebsackbeatty.com/',1,'2010-04-04 00:00:00.000000',6),(10,'PHP','afsfsfsdf','public','I','ffs','sfsf',0,'2019-12-23 05:52:54.927597',6);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
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
