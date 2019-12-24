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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Token` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `CreateDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tremblay.aliya@example.net','c385f2fa95bc8170d7dce8f7feed7cd0424cdcd9','2',0,'2000-02-22 21:02:32.000000'),(2,'carley.bechtelar@example.net','938c91e4042fe2cc28d3a0740aedbc6ac2e99ae0','',0,'2007-08-06 08:07:41.000000'),(3,'gfeest@example.org','70d2b9a1e3bc4c0eae9a0b8945667c43f29c57d0','8178125',0,'1990-09-18 07:29:00.000000'),(4,'alexie12@example.net','84165b6e1a99526494c34401e5ab072ac8ba5505','726498',0,'2006-04-09 10:54:49.000000'),(5,'oleta66@example.com','b44be1c379bca93dee7ce90c199ca6094d073d49','887',0,'1982-08-02 04:27:04.000000'),(6,'lemke.ethyl@example.org','48db27e74c3ee403e3fc5676bf605ceb4aab34a0','357913',0,'2005-03-15 18:13:37.000000'),(7,'hahn.dorthy@example.net','b36875e4d4605b039a1ce6bd2df6444805898142','7472',0,'2019-07-25 23:05:15.000000'),(8,'klindgren@example.com','fc5ac92123cd08461bdba4492042c17ecbdbeece','183660',0,'2003-02-14 05:52:59.000000'),(9,'vickie38@example.com','809bc66c7b839a034511238bf6655615510df572','86',0,'1987-08-21 07:34:38.000000'),(10,'wendy13@example.com','1e62eaf0bba0dda4b72bc7b6d2bae906a2b482a2','2',0,'2000-03-01 03:41:39.000000'),(11,'jeff.moen@example.com','83cbc72e0d617aa1e19ff4238d274228aa586a6f','102801927',0,'2008-12-11 05:06:26.000000'),(12,'vhane@example.net','454215691ad5171c7d93e8df5fc0077a49d726ad','2576656',0,'1980-09-03 07:31:34.000000'),(13,'olesch@example.com','b4a02ccb1242cd6310823d26d5470d593826b544','2875',0,'1986-07-03 07:23:37.000000'),(14,'wroberts@example.net','061c2353df54ca7688b7562a991ec7cc5a9e3b02','7',0,'2018-04-01 15:37:57.000000'),(15,'kozey.demario@example.org','5b637ced77aa75b6266e2256374761f7afec3b5b','723778971',0,'2000-04-08 07:17:53.000000'),(16,'fay.langosh@example.org','f15469036ef4ef5f9c64ac215d6cc3f90daad0c0','773151',0,'1996-04-09 16:47:27.000000'),(17,'conn.dario@example.net','82306d0f8929660aab1917aa698b47b5fae33dbd','1341028',0,'2017-09-17 20:01:59.000000'),(18,'antonietta.bayer@example.net','90f1df85de62732a98e9c298013532c79c7c2a81','13943101',0,'2005-07-06 22:39:36.000000'),(19,'iankunding@example.com','f84e3af978b8a8ecc6b5f08f7bc0fdcb1da32598','',0,'2010-07-22 01:51:28.000000'),(20,'fredy.raynor@example.com','77c08597429e401d4b51f1459d66c676615ddd34','625176378',0,'2004-12-18 07:31:19.000000'),(21,'kwolf@example.com','f61ee193b925ee2967326d515b4d06ea6835f405','153',0,'2002-09-02 17:33:39.000000'),(22,'moen.estella@example.net','33c6f7172baeb95284865726cc08ef55fe310ac1','914208178',0,'2004-08-20 18:13:52.000000'),(23,'jarred.jacobi@example.com','4ac48fa8d451fa52f1f1fa55bd24ee9d3caab6a4','505',0,'1991-11-04 12:32:33.000000'),(24,'alexander54@example.org','d1f376705ee8e51d4731d0ca99cb8aede744cfe7','8302',0,'1978-01-25 12:02:36.000000'),(25,'qhuel@example.org','6c8050be8a4bb7c71900727727ddbdda572d9a38','20994',0,'1997-09-30 16:11:43.000000'),(26,'jast.cassandra@example.org','73769787ba7ca272a839396327b5d7cedbda9afb','67157',0,'1999-01-18 04:36:18.000000'),(27,'rempel.laron@example.net','5e47ff4ae5957653fe074747d8e8dbe1fc8c2ffc','2153',0,'1971-02-18 22:44:02.000000'),(28,'ida.jast@example.net','779c95a29e942d91dc1ccebe855c08f1c50d21cf','87619060',0,'2003-04-28 13:02:27.000000'),(29,'missouri21@example.org','aa2b3a3adb85fa0d49eccb7bd0e8e61fbfb4a970','3405038',0,'1984-07-27 03:55:55.000000'),(30,'o\'kon.kobe@example.net','13cb442c59df1c04ae3e2649b82a0491f8f7f8b7','8',0,'2016-07-25 10:01:21.000000'),(31,'rubie37@example.com','6ee289e4d0fa6ed452cb8299b82451f149e1bf73','4',0,'1990-11-05 21:06:55.000000'),(32,'bogan.rosalinda@example.net','9d58c819147ee5aa10e6c6a892d2ed273621f10e','369152',0,'1990-02-18 11:12:44.000000'),(33,'rubie.olson@example.com','9a88b64ef4a7714fc383b0d38a67d21548192322','813539291',0,'2011-08-12 01:49:18.000000'),(34,'stark.larry@example.net','55b06790a34d936fb4aac801715e3ea52a78a9d6','1611776',0,'2005-11-12 05:30:33.000000'),(35,'ken97@example.org','fd95d7d0db569aad273f3e09fdc000343eb72a10','1401',0,'1996-12-29 21:43:17.000000'),(36,'schneider.savanna@example.org','a04f2823c4f5922499052779c371bf37fccbd59e','49660',0,'2008-01-01 15:21:32.000000'),(37,'javonte44@example.net','3fb8d61ed27fcdd15202352a711fe979e80ba330','3',0,'2007-06-23 15:11:49.000000'),(38,'eleuschke@example.net','5287274a57d549aee58b96a3993370678b06b6c2','1491974',0,'2010-07-17 03:18:56.000000'),(39,'johanna33@example.net','bc3d7be0d8cd4dafc7e9bd52e843eb3e140b690e','',0,'1970-01-09 01:58:20.000000'),(40,'uschroeder@example.org','1d68a1cce00e80a44aa8df3b8ec68537d1dda9fe','',0,'1970-11-15 23:01:35.000000'),(41,'weissnat.philip@example.org','81a73377b571e16167db202bf3b97c0365d5022d','1041',0,'1987-04-06 16:18:34.000000'),(42,'amari.volkman@example.net','84c4b508160d3d3d37b4a8685acba29739977cca','69',0,'2001-07-16 05:41:42.000000'),(43,'lamar00@example.net','40016b598c0a248b9431f6eca69e3aa644932d2e','62594',0,'2009-12-21 20:20:45.000000'),(44,'dino.schroeder@example.com','93e24efdc7049419044bbde4779816ce6fca2043','26',0,'1982-08-17 09:18:54.000000'),(45,'shawna.medhurst@example.com','fdfdc0c7daa2a29db46cce788a08d659831d87f2','70857',0,'2007-07-23 00:19:53.000000'),(46,'weldon95@example.com','a6b768b841167a4fe9225f011be922467a66b582','4',0,'1985-08-28 07:18:10.000000'),(47,'altenwerth.julian@example.net','3a007cd0b92e7fac5f070b7b00563918b2d26cd5','8008',0,'2019-07-19 09:47:09.000000'),(48,'rose.langworth@example.net','e704f73258b6a06e91e712a8b7ce49e567d8b616','13',0,'1976-09-26 09:26:04.000000'),(49,'ltrantow@example.net','7bf872efc3d6a08f0cce2208b9c401c55fab7187','',0,'1977-01-04 16:32:08.000000'),(50,'yessenia.greenholt@example.org','984f3bcf9ddafbbfaf08630d9829270e00514eda','150137963',0,'2016-07-16 05:55:40.000000'),(51,'ablick@example.net','cf5be9442ef5146782d09e563eb04cfd4890eca9','4',0,'1983-03-04 02:35:44.000000'),(52,'schneider.sigmund@example.net','e90e853fcbe885b9c652db2d9822048b67e609d8','154665674',0,'2000-02-13 18:01:21.000000'),(53,'egrimes@example.com','bd4cf1cd396158c5c4eb2eeec86bc42f70a8056a','341',0,'1978-04-15 23:21:54.000000'),(54,'skye.buckridge@example.net','5e45e1c682fdd46ed3adf90588f54b8afcb4ee1e','646',0,'2012-03-23 02:14:03.000000'),(55,'kelsi18@example.net','2c33470b3f3e894a9ff6ef6183453beba918c905','51893465',0,'2014-08-31 06:17:28.000000'),(56,'omayert@example.org','09eddaac5cb4eb4c9f87f9242415f82a7281a5c2','505206',0,'2014-05-13 00:03:00.000000'),(57,'kunde.delia@example.net','cf877b77a1ca066ea7a7be62180442ac495f4cb7','79216421',0,'2006-08-13 23:21:23.000000'),(58,'rwhite@example.org','5bb9aeced688d191cbc5ae1fa7703f5190ff8dd6','9',0,'1981-07-19 05:44:47.000000'),(59,'rstracke@example.org','05d284a40433838a1c6bbbfdaa3a19924983c65a','3849009',0,'2013-02-24 01:58:31.000000'),(60,'adeline.howe@example.org','f097b6276d813cc62f5af3d7d4304dcc685fa50e','8261',0,'2013-06-22 01:39:50.000000'),(61,'schaden.ashton@example.com','a09d2aea597198e4590355ac252877f73ca39017','8',0,'1977-02-16 11:44:25.000000'),(62,'doyle.jamel@example.net','1f1342eb9d691dc00a654b2aa7e18685bb637853','580509',0,'2000-01-12 18:54:54.000000'),(63,'xdicki@example.com','7cc104323550c8e17adce460c089f8f2e63b4f33','16302090',0,'2013-10-08 01:04:36.000000'),(64,'dorian.rau@example.net','f59f451d19d4fda78eb3ce729e8d1f97be8dbcb3','91',0,'2015-01-21 11:14:25.000000'),(65,'wehner.jayne@example.net','d61e3ffc0cb405057702f5f8dd736eeeebfff47c','9397170',0,'1977-04-18 02:08:42.000000'),(66,'wilkinson.lorenza@example.com','a489aef9fb9185de91a8c54a7d051c8b5f28b611','',0,'1981-05-02 21:12:35.000000'),(67,'gayle59@example.org','581748cba1d9d4a5ca9e6bb42d78ed696bf5af2f','53361',0,'1981-06-30 05:13:03.000000'),(68,'laurel.boehm@example.org','4c6419440f792d0cf36229fc277acb65967c8935','6',0,'1989-01-31 03:10:49.000000'),(69,'mante.carissa@example.org','cd25341efc0719158a487f49f804488de9dbce39','55680668',0,'1995-06-19 12:47:36.000000'),(70,'kuhn.novella@example.com','6b88f2a75c56bdfd3e30d37a31dbba66580ca085','496',0,'2008-04-04 22:38:26.000000'),(71,'jacky.wisozk@example.org','e615b8abafebc420878b59f43e503186e0a8911e','53718962',0,'1972-02-25 10:43:07.000000'),(72,'ziemann.zachary@example.org','f53aadaee76f70362b35e4019f5b44bcd1daf5d1','54414655',0,'1994-08-04 22:19:51.000000'),(73,'smarvin@example.com','ed748d58bcd86746eb3a627c91415c2071b4b1fd','',0,'1983-07-06 05:28:46.000000'),(74,'rolfson.gunnar@example.com','4cd8f0c79a5698a1839105fee3a3e6ec3312f43e','1712',0,'1976-09-12 21:04:42.000000'),(75,'anabelle.jones@example.org','fbc4819924c42ecc29a9fe422458e4823cae681a','4567',0,'1988-10-08 15:21:01.000000'),(76,'nlangworth@example.com','1e8396723a5a9b73f27ede74cc84fb43cf921714','',0,'2005-08-29 06:40:13.000000'),(77,'miller.dayna@example.org','53baf9563d6c30daf6773428f3f3398c8cbb7149','666',0,'1980-01-19 13:50:41.000000'),(78,'xbartell@example.net','8eec5f131a890823cf4bf785c9fb811063dab4ea','4932731',0,'2003-07-16 01:45:01.000000'),(79,'florence02@example.com','9436f8b4f1c94bc6b61127958d809bbea54c1f5c','5324744',0,'1982-02-10 14:55:41.000000'),(80,'dakota65@example.com','39c974a8bc83a5d2880273e869173ce041c55f6c','7',0,'2010-04-02 12:14:36.000000'),(81,'qthiel@example.com','f39769e331a7f21ea9d30cdfd19aa5587d5b1307','3',0,'1982-12-30 06:12:56.000000'),(82,'jonathon.walsh@example.com','fb9eee0a2b913043169d3d4dbb637917f9118b1d','42',0,'1998-05-26 10:49:42.000000'),(83,'larkin.marta@example.org','241bcd632474999b820a50a1884ff0e60119bd66','',0,'1989-12-28 06:31:46.000000'),(84,'bella89@example.net','3be4a1dcf8d084e4a75d71d357b1f03b2474988f','',0,'2016-01-02 04:51:39.000000'),(85,'zd\'amore@example.com','5f309a87bc1bec498b167a07f9466f54779480e6','62152',0,'1994-06-24 14:36:34.000000'),(86,'jody76@example.com','6d9cbbcbb82be219ee423e895033373e95371925','6',0,'2000-02-17 21:21:42.000000'),(87,'imani68@example.com','780ae2064808fd83f76baa89015c5baffd11db47','80931',0,'1989-03-22 17:21:06.000000'),(88,'immanuel80@example.com','450b67417a7ab10acfb57d4a0521fd8b41de5457','1030015',0,'1992-03-31 02:16:06.000000'),(89,'domenick70@example.net','52026274190b75feea41c2d4b4bf5ee4806e18f2','15736046',0,'1995-11-15 10:31:15.000000'),(90,'balistreri.lori@example.net','b8d6a5cc4fecd8e6d2d1d0c64ac0694050faad07','133509',0,'1971-07-31 00:23:22.000000'),(91,'eldon92@example.org','9e619248916761c8d87b276bd625ca91c44a8db8','',0,'1976-12-28 21:17:36.000000'),(92,'bayer.katarina@example.org','9b64dbcc2e37e80bca29207210b8e519569e37b9','836',0,'1979-07-30 11:45:58.000000'),(93,'tromp.brenden@example.com','21f6f7f449037f115b54f629a3eef2e18df097d9','8965686',0,'2012-09-30 15:44:08.000000'),(94,'nikko.yundt@example.com','a6582a193fc136d23850e2d173db2892082c83e8','899',0,'1978-03-20 06:02:11.000000'),(95,'garrick.batz@example.com','eae8c088e1fc1c33dc759b88eddd01ea6933fe70','920',0,'2008-01-07 02:35:14.000000'),(96,'daphne03@example.org','485a0a3044c73ddd2daa96c66cbd8979c225d7a7','',0,'2011-06-14 06:49:10.000000'),(97,'elsa.murphy@example.com','eef7d1b767dc7ff52159d756a2780fb15a45395e','99342222',0,'2006-06-21 12:34:59.000000'),(98,'stanton.hammes@example.org','38e9936795313120f69df0842a36f77816751f29','4519',0,'2017-04-14 15:48:57.000000'),(99,'leonardo.nolan@example.net','fdbf3b1e16edfa6af46cc971e5bdb73857c2a26f','5983818',0,'2001-09-07 00:31:05.000000'),(100,'mrenner@example.com','670c56a564b21fec582a1561867089e4f29cb527','91332',0,'1984-05-23 08:43:42.000000');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
