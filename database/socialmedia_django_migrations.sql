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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-12-20 08:48:23.830995'),(2,'auth','0001_initial','2019-12-20 08:48:24.062479'),(3,'admin','0001_initial','2019-12-20 08:48:24.616724'),(4,'admin','0002_logentry_remove_auto_add','2019-12-20 08:48:24.768219'),(5,'admin','0003_logentry_add_action_flag_choices','2019-12-20 08:48:24.792737'),(6,'contenttypes','0002_remove_content_type_name','2019-12-20 08:48:24.904222'),(7,'auth','0002_alter_permission_name_max_length','2019-12-20 08:48:24.920690'),(8,'auth','0003_alter_user_email_max_length','2019-12-20 08:48:24.948781'),(9,'auth','0004_alter_user_username_opts','2019-12-20 08:48:24.966524'),(10,'auth','0005_alter_user_last_login_null','2019-12-20 08:48:25.023982'),(11,'auth','0006_require_contenttypes_0002','2019-12-20 08:48:25.030993'),(12,'auth','0007_alter_validators_add_error_messages','2019-12-20 08:48:25.060728'),(13,'auth','0008_alter_user_username_max_length','2019-12-20 08:48:25.083492'),(14,'auth','0009_alter_user_last_name_max_length','2019-12-20 08:48:25.102301'),(15,'auth','0010_alter_group_name_max_length','2019-12-20 08:48:25.121167'),(16,'auth','0011_update_proxy_permissions','2019-12-20 08:48:25.135267'),(17,'sessions','0001_initial','2019-12-20 08:48:25.162826'),(18,'user','0001_initial','2019-12-20 12:13:30.205795'),(19,'message','0001_initial','2019-12-20 12:13:30.316932'),(20,'post','0001_initial','2019-12-20 12:13:30.774888'),(21,'user','0002_remove_users_logintype','2019-12-20 12:15:54.431915'),(22,'user','0003_auto_20191220_1237','2019-12-20 12:37:24.042258'),(23,'message','0002_auto_20191222_1702','2019-12-22 17:02:15.304495'),(24,'post','0002_auto_20191222_1702','2019-12-22 17:02:15.331533'),(25,'user','0004_auto_20191222_1702','2019-12-22 17:02:15.344170'),(26,'post','0003_auto_20191222_1723','2019-12-22 17:23:36.929061');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
