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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-12-22 16:23:01.897813','5','Users object (2)',1,'[{\"added\": {}}]',7,1),(2,'2019-12-22 16:45:51.733852','1','Messages object (1)',1,'[{\"added\": {}}]',9,1),(3,'2019-12-22 17:11:22.671678','1','Post object (1)',1,'[{\"added\": {}}]',10,1),(4,'2019-12-22 17:24:14.990698','1','Post object (1)',3,'',10,1),(5,'2019-12-22 17:24:41.507810','2','Post object (2)',1,'[{\"added\": {}}]',10,1),(6,'2019-12-22 17:26:45.021621','2','Post object (2)',2,'[{\"changed\": {\"fields\": [\"Scope\", \"Type\"]}}]',10,1),(7,'2019-12-23 04:23:01.230728','1','Postlikes object (1)',1,'[{\"added\": {}}]',12,1),(8,'2019-12-23 04:24:14.240560','2','Postlikes object (2)',1,'[{\"added\": {}}]',12,1),(9,'2019-12-23 04:26:33.560875','1','Postratings object (1)',1,'[{\"added\": {}}]',11,1),(10,'2019-12-23 04:27:57.603408','1','Postsharings object (1)',1,'[{\"added\": {}}]',13,1),(11,'2019-12-23 05:43:37.905948','6','tremblay.aliya@example.net',1,'[{\"added\": {}}]',7,1),(12,'2019-12-23 05:43:54.867706','7','carley.bechtelar@example.net',1,'[{\"added\": {}}]',7,1),(13,'2019-12-23 05:44:07.609627','8','oleta66@example.com',1,'[{\"added\": {}}]',7,1),(14,'2019-12-23 05:44:19.648996','9','lemke.ethyl@example.org',1,'[{\"added\": {}}]',7,1),(15,'2019-12-23 05:52:54.929490','10','10',1,'[{\"added\": {}}]',10,1),(16,'2019-12-23 05:54:20.828879','3','Postlikes object (3)',1,'[{\"added\": {}}]',12,1),(17,'2019-12-23 05:59:44.191812','4','Postlikes object (4)',1,'[{\"added\": {}}]',12,1),(18,'2019-12-23 06:03:29.179433','2','Postratings object (2)',1,'[{\"added\": {}}]',11,1),(19,'2019-12-23 06:03:48.112874','3','Postratings object (3)',1,'[{\"added\": {}}]',11,1),(20,'2019-12-23 06:05:09.484818','2','Postsharings object (2)',1,'[{\"added\": {}}]',13,1),(21,'2019-12-23 06:07:34.491804','3','Postsharings object (3)',1,'[{\"added\": {}}]',13,1),(22,'2019-12-23 10:07:49.342728','2','ewrette',1,'[{\"added\": {}}]',9,1),(23,'2019-12-23 10:08:08.155303','3','sggdfgdfgfd',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
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
