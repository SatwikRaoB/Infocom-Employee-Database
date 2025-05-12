-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: infocom
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `audittrail`
--

DROP TABLE IF EXISTS `audittrail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audittrail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=806 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audittrail`
--

LOCK TABLES `audittrail` WRITE;
/*!40000 ALTER TABLE `audittrail` DISABLE KEYS */;
INSERT INTO `audittrail` VALUES (187,'Amith','Logout','2024-02-14 01:38:55'),(188,'Amith','Login','2024-02-14 01:39:06'),(189,'Amith','Viewed login_credential','2024-02-14 01:39:10'),(190,'Amith','updated login_credential','2024-02-14 01:39:38'),(191,'Amith','Logout','2024-02-14 01:41:20'),(192,'Amith','Login','2024-02-14 01:45:31'),(193,'Amith','Viewed login_credential','2024-02-14 01:45:33'),(194,'Amith','Login','2024-02-14 01:46:50'),(195,'Amith','Viewed login_credential','2024-02-14 01:46:54'),(196,'Amith','updated login_credential','2024-02-14 01:46:58'),(197,'Amith','Viewed login_credential','2024-02-14 01:47:21'),(198,'Amith','updated login_credential','2024-02-14 01:47:23'),(199,'Amith','Logout','2024-02-14 01:47:55'),(200,'Amith','Login','2024-02-14 01:48:05'),(201,'Amith','Viewed login_credential','2024-02-14 01:48:08'),(202,'Amith','updated login_credential','2024-02-14 01:48:09'),(203,'Amith','updated login_credential','2024-02-14 01:48:10'),(204,'Amith','updated login_credential','2024-02-14 01:48:14'),(205,'Amith','Login','2024-02-14 01:49:50'),(206,'Amith','Viewed login_credential','2024-02-14 01:49:52'),(207,'Amith','updated login_credential','2024-02-14 01:49:55'),(208,'Amith','Login','2024-02-14 01:50:50'),(209,'Amith','Viewed login_credential','2024-02-14 01:50:52'),(210,'Amith','updated login_credential','2024-02-14 01:50:53'),(211,'Amith','updated login_credential','2024-02-14 01:51:03'),(212,'Amith','updated login_credential','2024-02-14 01:51:07'),(213,'Amith','Login','2024-02-14 01:53:07'),(214,'Amith','Viewed login_credential','2024-02-14 01:53:18'),(215,'Amith','updated login_credential','2024-02-14 01:53:26'),(216,'Amith','Logout','2024-02-14 01:54:47'),(217,'Amith','Login','2024-02-14 01:54:56'),(218,'Amith','Viewed login_credential','2024-02-14 01:54:59'),(219,'Amith','updated login_credential','2024-02-14 01:55:03'),(220,'Amith','updated login_credential','2024-02-14 01:55:09'),(221,'Amith','Logout','2024-02-14 01:55:32'),(222,'Amith','Login','2024-02-14 01:55:41'),(223,'Amith','Viewed login_credential','2024-02-14 01:55:44'),(224,'Amith','updated login_credential','2024-02-14 01:55:46'),(225,'Amith','updated login_credential','2024-02-14 01:55:49'),(226,'Amith','Logout','2024-02-14 01:56:10'),(227,'Amith','Login','2024-02-14 01:56:20'),(228,'Amith','Viewed login_credential','2024-02-14 01:56:23'),(229,'Amith','updated login_credential','2024-02-14 01:56:24'),(230,'Amith','updated login_credential','2024-02-14 01:56:26'),(231,'Amith','updated login_credential','2024-02-14 01:56:30'),(232,'Amith','Login','2024-02-14 02:03:38'),(233,'Amith','Viewed login_credential','2024-02-14 02:03:40'),(234,'Amith','updated login_credential','2024-02-14 02:03:42'),(235,'Amith','updated login_credential','2024-02-14 02:04:09'),(236,'Amith','Viewed login_credential','2024-02-14 02:04:42'),(237,'Amith','updated login_credential','2024-02-14 02:04:48'),(238,'Amith','updated login_credential','2024-02-14 02:04:51'),(239,'Amith','updated login_credential','2024-02-14 02:04:53'),(240,'Amith','Logout','2024-02-14 02:06:14'),(241,'Amith','Login','2024-02-14 02:12:14'),(242,'Amith','Viewed login_credential','2024-02-14 02:12:16'),(243,'Amith','updated login_credential','2024-02-14 02:12:18'),(244,'Amith','updated login_credential','2024-02-14 02:12:20'),(245,'Amith','updated login_credential','2024-02-14 02:12:53'),(246,'Amith','Login','2024-02-15 19:10:10'),(247,'Amith','Viewed login_credential','2024-02-15 19:10:14'),(248,'Amith','Viewed HR_data','2024-02-15 19:10:17'),(249,'Amith','Viewed se_data','2024-02-15 19:10:19'),(250,'Amith','Viewed pr_data','2024-02-15 19:10:21'),(251,'Amith','Viewed emp_se','2024-02-15 19:10:23'),(252,'Amith','Viewed emp_hr','2024-02-15 19:10:25'),(253,'Amith','Viewed emp_hr','2024-02-15 19:10:27'),(254,'Amith','Viewed emp_pr','2024-02-15 19:10:29'),(255,'Amith','Logout','2024-02-15 19:10:34'),(256,'pritam','Login','2024-02-15 19:10:48'),(257,'pritam','Viewed pr_data','2024-02-15 19:10:51'),(258,'pritam','Viewed emp_se','2024-02-15 19:10:53'),(259,'pritam','Viewed emp_hr','2024-02-15 19:10:55'),(260,'pritam','Viewed emp_pr','2024-02-15 19:10:57'),(261,'pritam','Logout','2024-02-15 19:11:52'),(262,'Amith','Login','2024-02-15 19:26:13'),(263,'Amith','Viewed login_credential','2024-02-15 19:26:17'),(264,'Amith','updated login_credential','2024-02-15 19:26:25'),(265,'Amith','updated login_credential','2024-02-15 19:26:35'),(266,'Amith','Logout','2024-02-15 19:26:49'),(267,'pritam','Login','2024-02-15 19:26:57'),(268,'pritam','Logout','2024-02-15 19:27:01'),(269,'Balu','Login','2024-02-15 19:27:09'),(270,'Balu','Viewed emp_se','2024-02-15 19:27:13'),(271,'Balu','Viewed emp_hr','2024-02-15 19:27:18'),(272,'Balu','Viewed emp_pr','2024-02-15 19:27:19'),(273,'Balu','Logout','2024-02-15 19:27:23'),(274,'Amith','Login','2024-03-02 19:22:14'),(275,'Amith','Viewed HR_data','2024-03-02 19:22:42'),(276,'Amith','Login','2024-03-02 19:29:13'),(277,'Amith','Viewed HR_data','2024-03-02 19:29:17'),(278,'Amith','Login','2024-03-02 19:31:20'),(279,'Amith','Viewed HR_data','2024-03-02 19:31:22'),(280,'Amith','updated HR_data','2024-03-02 19:31:27'),(281,'Amith','updated HR_data','2024-03-02 19:31:35'),(282,'Amith','Logout','2024-03-02 19:31:48'),(283,'Amith','Login','2024-03-02 19:38:28'),(284,'Amith','Viewed HR_data','2024-03-02 19:38:32'),(285,'Amith','Viewed HR_data','2024-03-02 19:39:47'),(286,'Amith','Viewed HR_data','2024-03-02 19:40:01'),(287,'Amith','Viewed login_credential','2024-03-02 19:40:03'),(288,'Amith','Viewed pr_data','2024-03-02 19:40:06'),(289,'Amith','Viewed emp_se','2024-03-02 19:40:08'),(290,'Amith','Logout','2024-03-02 19:42:03'),(291,'Amith','Login','2024-03-02 19:42:37'),(292,'Amith','Viewed HR_data','2024-03-02 19:42:39'),(293,'Amith','Viewed login_credential','2024-03-02 19:42:41'),(294,'Amith','Logout','2024-03-02 19:42:45'),(295,'Amith','Login','2024-03-02 19:46:36'),(296,'Amith','Viewed HR_data','2024-03-02 19:46:39'),(297,'Amith','Viewed login_credential','2024-03-02 19:46:42'),(298,'Amith','Login','2024-03-02 19:51:08'),(299,'Amith','Viewed HR_data','2024-03-02 19:51:11'),(300,'Amith','Login','2024-03-02 19:52:26'),(301,'Amith','Viewed HR_data','2024-03-02 19:52:29'),(302,'Amith','Viewed login_credential','2024-03-02 19:52:33'),(303,'Amith','Logout','2024-03-02 19:53:19'),(304,'Amith','Login','2024-03-02 19:53:28'),(305,'Amith','Viewed HR_data','2024-03-02 19:53:31'),(306,'Amith','Login','2024-03-02 19:55:25'),(307,'Amith','Viewed HR_data','2024-03-02 19:55:28'),(308,'Amith','Viewed login_credential','2024-03-02 19:55:32'),(309,'Amith','Login','2024-03-02 19:57:19'),(310,'Amith','Viewed HR_data','2024-03-02 19:57:22'),(311,'Amith','Login','2024-03-02 20:00:05'),(312,'Amith','Viewed HR_data','2024-03-02 20:00:08'),(313,'Amith','Login','2024-03-02 20:01:30'),(314,'Amith','Viewed HR_data','2024-03-02 20:01:32'),(315,'Amith','Login','2024-03-02 20:02:13'),(316,'Amith','Viewed HR_data','2024-03-02 20:02:15'),(317,'Amith','Viewed HR_data','2024-03-02 20:02:20'),(318,'Amith','Viewed login_credential','2024-03-02 20:02:22'),(319,'Amith','Login','2024-03-02 20:04:33'),(320,'Amith','Viewed HR_data','2024-03-02 20:04:35'),(321,'Amith','Login','2024-03-02 20:09:04'),(322,'Amith','Viewed HR_data','2024-03-02 20:12:42'),(323,'Amith','Viewed HR_data','2024-03-02 20:16:54'),(324,'Amith','Logout','2024-03-02 20:16:57'),(325,'Amith','Login','2024-03-02 20:25:15'),(326,'Amith','Viewed HR_data','2024-03-02 20:25:17'),(327,'Amith','Login','2024-03-02 20:27:48'),(328,'Amith','Viewed HR_data','2024-03-02 20:27:50'),(329,'Amith','Login','2024-03-02 20:28:47'),(330,'Amith','Viewed HR_data','2024-03-02 20:28:48'),(331,'Amith','Logout','2024-03-02 20:28:58'),(332,'Amith','Login','2024-03-02 20:29:37'),(333,'Amith','Viewed HR_data','2024-03-02 20:29:38'),(334,'Amith','updated HR_data','2024-03-02 20:29:56'),(335,'Amith','updated HR_data','2024-03-02 20:30:00'),(336,'Amith','updated HR_data','2024-03-02 20:30:03'),(337,'Amith','Viewed HR_data','2024-03-02 20:30:15'),(338,'Amith','Login','2024-03-02 20:42:22'),(339,'Amith','Viewed HR_data','2024-03-02 20:42:23'),(340,'Amith','Login','2024-03-02 20:44:06'),(341,'Amith','Viewed login_credential','2024-03-02 20:44:09'),(342,'Amith','Login','2024-03-02 20:49:55'),(343,'Amith','Viewed HR_data','2024-03-02 20:49:56'),(344,'Amith','Login','2024-03-02 20:53:01'),(345,'Amith','Viewed HR_data','2024-03-02 20:53:02'),(346,'Amith','Login','2024-03-02 21:03:54'),(347,'Amith','Viewed HR_data','2024-03-02 21:03:56'),(348,'Amith','Login','2024-03-02 21:10:49'),(349,'Amith','Viewed HR_data','2024-03-02 21:10:51'),(350,'Amith','Login','2024-03-02 21:12:07'),(351,'Amith','Viewed HR_data','2024-03-02 21:12:09'),(352,'Amith','Login','2024-03-02 21:14:38'),(353,'Amith','Viewed HR_data','2024-03-02 21:14:40'),(354,'Amith','Login','2024-03-02 21:15:34'),(355,'Amith','Logout','2024-03-02 21:38:41'),(356,'Amith','Login','2024-03-02 22:21:49'),(357,'Amith','Viewed HR_data','2024-03-02 22:21:51'),(358,'Amith','Login','2024-03-02 22:22:50'),(359,'Amith','Viewed HR_data','2024-03-02 22:22:52'),(360,'Amith','Login','2024-03-02 22:27:06'),(361,'Amith','Viewed HR_data','2024-03-02 22:27:08'),(362,'Amith','Login','2024-03-02 22:31:46'),(363,'Amith','Viewed HR_data','2024-03-02 22:31:48'),(364,'Amith','Login','2024-03-02 22:35:18'),(365,'Amith','Viewed HR_data','2024-03-02 22:35:21'),(366,'Amith','Login','2024-03-02 22:41:52'),(367,'Amith','Viewed HR_data','2024-03-02 22:41:54'),(368,'Amith','Login','2024-03-02 22:42:43'),(369,'Amith','Viewed HR_data','2024-03-02 22:42:45'),(370,'Amith','Login','2024-03-02 22:43:24'),(371,'Amith','Viewed HR_data','2024-03-02 22:43:25'),(372,'Amith','Updated/Inserted into HR_data','2024-03-02 22:43:26'),(373,'Amith','Login','2024-03-02 22:44:49'),(374,'Amith','Viewed HR_data','2024-03-02 22:44:51'),(375,'Amith','Updated/Inserted into HR_data','2024-03-02 22:44:51'),(376,'Amith','Login','2024-03-02 22:46:28'),(377,'Amith','Viewed HR_data','2024-03-02 22:46:31'),(378,'Amith','Updated/Inserted into HR_data','2024-03-02 22:46:32'),(379,'Amith','Login','2024-03-02 22:47:25'),(380,'Amith','Viewed HR_data','2024-03-02 22:47:26'),(381,'Amith','Updated/Inserted into HR_data','2024-03-02 22:47:30'),(382,'Amith','Login','2024-03-02 22:50:42'),(383,'Amith','Viewed HR_data','2024-03-02 22:50:44'),(384,'Amith','Updated/Inserted into HR_data','2024-03-02 22:50:46'),(385,'Amith','Viewed HR_data','2024-03-02 22:50:49'),(386,'Amith','Updated/Inserted into HR_data','2024-03-02 22:50:53'),(387,'Amith','Viewed HR_data','2024-03-02 22:50:54'),(388,'Amith','Updated/Inserted into HR_data','2024-03-02 22:51:21'),(389,'Amith','Viewed HR_data','2024-03-02 22:51:31'),(390,'Amith','Viewed HR_data','2024-03-02 22:51:48'),(391,'Amith','Updated/Inserted into HR_data','2024-03-02 22:51:52'),(392,'Amith','Login','2024-03-02 22:53:03'),(393,'Amith','Viewed HR_data','2024-03-02 22:53:05'),(394,'Amith','Updated/Inserted into HR_data','2024-03-02 22:53:11'),(395,'Amith','Login','2024-03-02 22:54:02'),(396,'Amith','Viewed HR_data','2024-03-02 22:54:03'),(397,'Amith','Updated/Inserted into HR_data','2024-03-02 22:54:14'),(398,'Amith','Login','2024-03-02 22:54:55'),(399,'Amith','Viewed HR_data','2024-03-02 22:54:56'),(400,'Amith','Updated/Inserted into HR_data','2024-03-02 22:55:01'),(401,'Amith','Updated/Inserted into HR_data','2024-03-02 22:55:09'),(402,'Amith','Login','2024-03-02 22:57:58'),(403,'Amith','Viewed HR_data','2024-03-02 22:57:59'),(404,'Amith','Updated/Inserted into HR_data','2024-03-02 22:58:03'),(405,'Amith','Login','2024-03-02 22:58:30'),(406,'Amith','Viewed HR_data','2024-03-02 22:58:32'),(407,'Amith','Updated/Inserted into HR_data','2024-03-02 22:58:32'),(408,'Amith','Viewed HR_data','2024-03-02 22:58:34'),(409,'Amith','Viewed HR_data','2024-03-02 22:58:43'),(410,'Amith','Updated/Inserted into HR_data','2024-03-02 22:58:48'),(411,'Amith','Login','2024-03-02 23:00:59'),(412,'Amith','Viewed HR_data','2024-03-02 23:01:01'),(413,'Amith','Updated/Inserted into HR_data','2024-03-02 23:01:04'),(414,'Amith','Updated/Inserted into HR_data','2024-03-02 23:01:10'),(415,'Amith','Viewed HR_data','2024-03-02 23:01:18'),(416,'Amith','Login','2024-03-02 23:06:05'),(417,'Amith','Viewed HR_data','2024-03-02 23:06:07'),(418,'Amith','Login','2024-03-02 23:08:01'),(419,'Amith','Viewed HR_data','2024-03-02 23:08:02'),(420,'Amith','Login','2024-03-02 23:08:48'),(421,'Amith','Viewed HR_data','2024-03-02 23:08:49'),(422,'Amith','Login','2024-03-02 23:09:41'),(423,'Amith','Viewed HR_data','2024-03-02 23:09:43'),(424,'Amith','Login','2024-03-02 23:13:25'),(425,'Amith','Viewed HR_data','2024-03-02 23:13:26'),(426,'Amith','Login','2024-03-02 23:14:09'),(427,'Amith','Viewed HR_data','2024-03-02 23:14:10'),(428,'Amith','Updated/Inserted into HR_data','2024-03-02 23:14:13'),(429,'Amith','Login','2024-03-02 23:15:03'),(430,'Amith','Viewed HR_data','2024-03-02 23:15:04'),(431,'Amith','Updated/Inserted into HR_data','2024-03-02 23:15:07'),(432,'Amith','Login','2024-03-02 23:17:35'),(433,'Amith','Viewed HR_data','2024-03-02 23:17:36'),(434,'Amith','Updated/Inserted into HR_data','2024-03-02 23:17:39'),(435,'Amith','Viewed HR_data','2024-03-02 23:17:43'),(436,'Amith','Login','2024-03-02 23:21:48'),(437,'Amith','Viewed HR_data','2024-03-02 23:21:49'),(438,'Amith','inserted into HR_data','2024-03-02 23:21:52'),(439,'Amith','Updated/Inserted into HR_data','2024-03-02 23:21:52'),(440,'Amith','Login','2024-03-02 23:22:24'),(441,'Amith','Viewed HR_data','2024-03-02 23:22:25'),(442,'Amith','Viewed HR_data','2024-03-02 23:22:41'),(443,'Amith','Updated/Inserted into HR_data','2024-03-02 23:22:42'),(444,'Amith','Viewed HR_data','2024-03-02 23:22:44'),(445,'Amith','Updated/Inserted into HR_data','2024-03-02 23:22:46'),(446,'Amith','Viewed HR_data','2024-03-02 23:22:48'),(447,'Amith','Updated/Inserted into HR_data','2024-03-02 23:23:08'),(448,'Amith','inserted into HR_data','2024-03-02 23:23:31'),(449,'Amith','Updated/Inserted into HR_data','2024-03-02 23:23:31'),(450,'Amith','Viewed HR_data','2024-03-02 23:23:39'),(451,'Amith','Login','2024-03-02 23:25:46'),(452,'Amith','Viewed HR_data','2024-03-02 23:25:48'),(453,'Amith','Updated/Inserted into HR_data','2024-03-02 23:26:28'),(454,'Amith','inserted into HR_data','2024-03-02 23:26:52'),(455,'Amith','Updated/Inserted into HR_data','2024-03-02 23:26:52'),(456,'Amith','Login','2024-03-02 23:27:28'),(457,'Amith','Viewed HR_data','2024-03-02 23:27:30'),(458,'Amith','inserted into HR_data','2024-03-02 23:27:53'),(459,'Amith','Updated/Inserted into HR_data','2024-03-02 23:27:53'),(460,'Amith','Login','2024-03-02 23:28:20'),(461,'Amith','Viewed HR_data','2024-03-02 23:28:22'),(462,'Amith','inserted into HR_data','2024-03-02 23:28:33'),(463,'Amith','Updated/Inserted into HR_data','2024-03-02 23:28:33'),(464,'Amith','Updated/Inserted into HR_data','2024-03-02 23:28:41'),(465,'Amith','Viewed HR_data','2024-03-02 23:28:44'),(466,'Amith','Viewed HR_data','2024-03-02 23:28:47'),(467,'Amith','Viewed HR_data','2024-03-02 23:28:53'),(468,'Amith','Logout','2024-03-02 23:29:10'),(469,'Amith','Login','2024-03-02 23:50:35'),(470,'Amith','Viewed HR_data','2024-03-02 23:50:37'),(471,'Amith','Login','2024-03-02 23:51:45'),(472,'Amith','Viewed HR_data','2024-03-02 23:51:47'),(473,'Amith','Login','2024-03-02 23:52:42'),(474,'Amith','Viewed HR_data','2024-03-02 23:52:44'),(475,'Amith','Login','2024-03-02 23:54:40'),(476,'Amith','Viewed HR_data','2024-03-02 23:54:41'),(477,'Amith','Login','2024-03-02 23:59:49'),(478,'Amith','Viewed HR_data','2024-03-02 23:59:50'),(479,'Amith','Login','2024-03-03 00:02:30'),(480,'Amith','Viewed HR_data','2024-03-03 00:02:32'),(481,'Amith','Login','2024-03-03 01:36:07'),(482,'Amith','Viewed HR_data','2024-03-03 01:36:10'),(483,'Amith','Login','2024-03-03 01:40:06'),(484,'Amith','Viewed HR_data','2024-03-03 01:40:07'),(485,'Amith','Logout','2024-03-03 01:40:40'),(486,'Amith','Login','2024-03-03 01:43:34'),(487,'Amith','Viewed HR_data','2024-03-03 01:43:36'),(488,'Amith','Login','2024-03-03 01:44:51'),(489,'Amith','Viewed HR_data','2024-03-03 01:44:53'),(490,'Amith','Viewed HR_data','2024-03-03 01:44:54'),(491,'Amith','Viewed HR_data','2024-03-03 01:44:59'),(492,'Amith','Viewed HR_data','2024-03-03 01:44:59'),(493,'Amith','Viewed HR_data','2024-03-03 01:45:00'),(494,'Amith','Viewed HR_data','2024-03-03 01:45:00'),(495,'Amith','Viewed HR_data','2024-03-03 01:45:00'),(496,'Amith','Viewed HR_data','2024-03-03 01:45:00'),(497,'Amith','Viewed HR_data','2024-03-03 01:45:01'),(498,'Amith','Viewed HR_data','2024-03-03 01:45:01'),(499,'Amith','Viewed HR_data','2024-03-03 01:45:02'),(500,'Amith','Viewed HR_data','2024-03-03 01:45:02'),(501,'Amith','Viewed HR_data','2024-03-03 01:45:02'),(502,'Amith','Viewed HR_data','2024-03-03 01:45:02'),(503,'Amith','Viewed HR_data','2024-03-03 01:45:02'),(504,'Amith','Viewed HR_data','2024-03-03 01:45:02'),(505,'Amith','Viewed HR_data','2024-03-03 01:45:03'),(506,'Amith','Viewed HR_data','2024-03-03 01:45:03'),(507,'Amith','Viewed HR_data','2024-03-03 01:45:03'),(508,'Amith','Viewed HR_data','2024-03-03 01:45:03'),(509,'Amith','Viewed HR_data','2024-03-03 01:45:04'),(510,'Amith','Viewed HR_data','2024-03-03 01:45:04'),(511,'Amith','Viewed HR_data','2024-03-03 01:45:04'),(512,'Amith','Viewed HR_data','2024-03-03 01:45:04'),(513,'Amith','Viewed HR_data','2024-03-03 01:45:05'),(514,'Amith','Viewed HR_data','2024-03-03 01:45:05'),(515,'Amith','Viewed HR_data','2024-03-03 01:45:05'),(516,'Amith','Viewed HR_data','2024-03-03 01:45:05'),(517,'Amith','Viewed HR_data','2024-03-03 01:45:06'),(518,'Amith','Viewed HR_data','2024-03-03 01:45:06'),(519,'Amith','Viewed HR_data','2024-03-03 01:45:06'),(520,'Amith','Viewed HR_data','2024-03-03 01:45:06'),(521,'Amith','Viewed HR_data','2024-03-03 01:45:06'),(522,'Amith','Viewed HR_data','2024-03-03 01:45:07'),(523,'Amith','Viewed HR_data','2024-03-03 01:45:07'),(524,'Amith','Viewed HR_data','2024-03-03 01:45:07'),(525,'Amith','Viewed HR_data','2024-03-03 01:45:07'),(526,'Amith','Viewed HR_data','2024-03-03 01:45:07'),(527,'Amith','Viewed HR_data','2024-03-03 01:45:08'),(528,'Amith','Viewed HR_data','2024-03-03 01:45:09'),(529,'Amith','Viewed HR_data','2024-03-03 01:45:09'),(530,'Amith','Viewed HR_data','2024-03-03 01:45:09'),(531,'Amith','Viewed HR_data','2024-03-03 01:45:09'),(532,'Amith','Viewed HR_data','2024-03-03 01:45:09'),(533,'Amith','inserted into HR_data','2024-03-03 01:45:32'),(534,'Amith','Updated/Inserted into HR_data','2024-03-03 01:45:32'),(535,'Amith','Viewed HR_data','2024-03-03 01:45:34'),(536,'Amith','Viewed HR_data','2024-03-03 01:45:46'),(537,'Amith','Viewed HR_data','2024-03-03 01:47:03'),(538,'Amith','Viewed HR_data','2024-03-03 01:47:14'),(539,'Amith','Viewed HR_data','2024-03-03 01:47:15'),(540,'Amith','Viewed HR_data','2024-03-03 01:47:15'),(541,'Amith','Viewed HR_data','2024-03-03 01:47:16'),(542,'Amith','Viewed HR_data','2024-03-03 01:47:16'),(543,'Amith','Viewed HR_data','2024-03-03 01:47:16'),(544,'Amith','Viewed HR_data','2024-03-03 01:47:16'),(545,'Amith','Viewed HR_data','2024-03-03 01:47:16'),(546,'Amith','Viewed HR_data','2024-03-03 01:47:17'),(547,'Amith','Viewed HR_data','2024-03-03 01:47:17'),(548,'Amith','Viewed HR_data','2024-03-03 01:47:17'),(549,'Amith','Viewed HR_data','2024-03-03 01:47:17'),(550,'Amith','Viewed HR_data','2024-03-03 01:47:18'),(551,'Amith','Viewed HR_data','2024-03-03 01:47:18'),(552,'Amith','Viewed HR_data','2024-03-03 01:47:18'),(553,'Amith','Viewed HR_data','2024-03-03 01:47:18'),(554,'Amith','Viewed HR_data','2024-03-03 01:47:19'),(555,'Amith','Viewed HR_data','2024-03-03 01:47:19'),(556,'Amith','Viewed HR_data','2024-03-03 01:47:19'),(557,'Amith','Viewed HR_data','2024-03-03 01:47:20'),(558,'Amith','Viewed HR_data','2024-03-03 01:47:20'),(559,'Amith','Viewed HR_data','2024-03-03 01:47:20'),(560,'Amith','Viewed HR_data','2024-03-03 01:47:21'),(561,'Amith','Viewed HR_data','2024-03-03 01:47:21'),(562,'Amith','Viewed HR_data','2024-03-03 01:47:21'),(563,'Amith','Viewed HR_data','2024-03-03 01:47:21'),(564,'Amith','Viewed HR_data','2024-03-03 01:47:21'),(565,'Amith','Viewed HR_data','2024-03-03 01:47:22'),(566,'Amith','Viewed HR_data','2024-03-03 01:47:22'),(567,'Amith','Viewed HR_data','2024-03-03 01:47:22'),(568,'Amith','Viewed HR_data','2024-03-03 01:48:39'),(569,'Amith','Viewed login_credential','2024-03-03 01:48:42'),(570,'Amith','inserted into login_credential','2024-03-03 01:48:51'),(571,'Amith','Updated/Inserted into login_credential','2024-03-03 01:48:51'),(572,'Amith','Updated/Inserted into login_credential','2024-03-03 01:49:40'),(573,'Amith','Viewed login_credential','2024-03-03 01:49:44'),(574,'Amith','Viewed login_credential','2024-03-03 01:49:46'),(575,'Amith','Viewed login_credential','2024-03-03 01:49:46'),(576,'Amith','Viewed login_credential','2024-03-03 01:49:47'),(577,'Amith','Viewed login_credential','2024-03-03 01:49:47'),(578,'Amith','Viewed login_credential','2024-03-03 01:50:22'),(579,'Amith','Viewed login_credential','2024-03-03 01:50:23'),(580,'Amith','Viewed login_credential','2024-03-03 01:50:25'),(581,'Amith','Viewed login_credential','2024-03-03 01:50:28'),(582,'Amith','Viewed HR_data','2024-03-03 01:50:31'),(583,'Amith','Viewed HR_data','2024-03-03 01:51:15'),(584,'Amith','Updated/Inserted into HR_data','2024-03-03 01:51:30'),(585,'Amith','Viewed HR_data','2024-03-03 01:51:35'),(586,'Amith','Viewed HR_data','2024-03-03 01:51:36'),(587,'Amith','Viewed HR_data','2024-03-03 01:54:16'),(588,'Amith','Viewed HR_data','2024-03-03 01:54:17'),(589,'Amith','Viewed HR_data','2024-03-03 01:54:18'),(590,'Amith','Viewed HR_data','2024-03-03 01:54:18'),(591,'Amith','Viewed HR_data','2024-03-03 01:54:20'),(592,'Amith','Viewed login_credential','2024-03-03 02:02:18'),(593,'Amith','Viewed emp_pr','2024-03-03 02:02:26'),(594,'Amith','Viewed emp_hr','2024-03-03 02:02:30'),(595,'Amith','Viewed emp_se','2024-03-03 02:02:32'),(596,'Amith','Viewed se_data','2024-03-03 02:02:34'),(597,'Amith','Viewed pr_data','2024-03-03 02:02:35'),(598,'Amith','Viewed HR_data','2024-03-03 02:02:37'),(599,'Amith','Viewed login_credential','2024-03-03 02:02:39'),(600,'Amith','Logout','2024-03-03 02:02:43'),(601,'Amith','Login','2024-03-05 18:16:28'),(602,'Amith','Viewed login_credential','2024-03-05 18:16:31'),(603,'Amith','inserted into login_credential','2024-03-05 18:16:45'),(604,'Amith','Updated/Inserted into login_credential','2024-03-05 18:16:45'),(605,'Amith','Viewed login_credential','2024-03-05 18:16:48'),(606,'Amith','Viewed login_credential','2024-03-05 18:16:49'),(607,'Amith','Viewed login_credential','2024-03-05 18:16:49'),(608,'Amith','Viewed login_credential','2024-03-05 18:16:49'),(609,'Amith','Viewed login_credential','2024-03-05 18:16:50'),(610,'Amith','Viewed login_credential','2024-03-05 18:16:50'),(611,'Amith','Viewed login_credential','2024-03-05 18:16:50'),(612,'Amith','Viewed login_credential','2024-03-05 18:16:50'),(613,'Amith','Viewed login_credential','2024-03-05 18:16:50'),(614,'Amith','Viewed login_credential','2024-03-05 18:16:51'),(615,'Amith','Viewed login_credential','2024-03-05 18:16:51'),(616,'Amith','Viewed login_credential','2024-03-05 18:16:51'),(617,'Amith','Updated/Inserted into login_credential','2024-03-05 18:16:53'),(618,'Amith','Viewed login_credential','2024-03-05 18:16:54'),(619,'Amith','Viewed login_credential','2024-03-05 18:16:56'),(620,'Amith','Viewed login_credential','2024-03-05 18:16:56'),(621,'Amith','Viewed login_credential','2024-03-05 18:16:56'),(622,'Amith','Viewed login_credential','2024-03-05 18:16:57'),(623,'Amith','Viewed login_credential','2024-03-05 18:16:57'),(624,'Amith','Viewed login_credential','2024-03-05 18:16:57'),(625,'Amith','Viewed login_credential','2024-03-05 18:16:57'),(626,'Amith','Viewed login_credential','2024-03-05 18:16:57'),(627,'Amith','Updated/Inserted into login_credential','2024-03-05 18:17:00'),(628,'Amith','Viewed login_credential','2024-03-05 18:17:55'),(629,'Amith','Viewed login_credential','2024-03-05 18:17:56'),(630,'Amith','Viewed login_credential','2024-03-05 18:17:57'),(631,'Amith','Viewed login_credential','2024-03-05 18:17:57'),(632,'Amith','Viewed login_credential','2024-03-05 18:17:57'),(633,'Amith','Viewed login_credential','2024-03-05 18:17:57'),(634,'Amith','Viewed login_credential','2024-03-05 18:17:58'),(635,'Amith','Viewed login_credential','2024-03-05 18:17:58'),(636,'Amith','Viewed login_credential','2024-03-05 18:17:58'),(637,'Amith','Viewed login_credential','2024-03-05 18:17:58'),(638,'Amith','Viewed login_credential','2024-03-05 18:17:58'),(639,'Amith','Viewed login_credential','2024-03-05 18:17:58'),(640,'Amith','inserted into login_credential','2024-03-05 18:18:00'),(641,'Amith','Updated/Inserted into login_credential','2024-03-05 18:18:00'),(642,'Amith','Viewed login_credential','2024-03-05 18:18:02'),(643,'Amith','Updated/Inserted into login_credential','2024-03-05 18:18:04'),(644,'Amith','Viewed login_credential','2024-03-05 18:18:06'),(645,'Amith','Login','2024-03-05 18:31:56'),(646,'Amith','Viewed login_credential','2024-03-05 18:31:59'),(647,'Amith','Login','2024-03-05 18:35:45'),(648,'Amith','Viewed login_credential','2024-03-05 18:35:47'),(649,'Amith','Updated/Inserted into login_credential','2024-03-05 18:35:51'),(650,'Amith','Login','2024-03-05 18:36:05'),(651,'Amith','Viewed login_credential','2024-03-05 18:36:07'),(652,'amith','Login','2024-03-05 20:10:39'),(653,'amith','Viewed login_credential','2024-03-05 20:13:55'),(654,'amith','Login','2024-03-05 20:14:26'),(655,'amith','Viewed login_credential','2024-03-05 20:14:31'),(656,'amith','inserted into login_credential','2024-03-05 20:14:40'),(657,'amith','Updated/Inserted into login_credential','2024-03-05 20:14:40'),(658,'amith','Viewed emp_se','2024-03-05 20:15:11'),(659,'amith','Logout','2024-03-05 20:15:27'),(660,'pritam','Login','2024-03-05 20:15:43'),(661,'pritam','Viewed pr_data','2024-03-05 20:15:48'),(662,'pritam','Viewed emp_se','2024-03-05 20:15:54'),(663,'pritam','Logout','2024-03-05 20:16:14'),(664,'amith','Login','2024-03-08 00:39:38'),(665,'amith','Viewed login_credential','2024-03-08 00:39:41'),(666,'amith','Updated/Inserted into login_credential','2024-03-08 00:39:46'),(667,'amith','Updated/Inserted into login_credential','2024-03-08 00:39:49'),(668,'amith','Updated/Inserted into login_credential','2024-03-08 00:40:56'),(669,'amith','Login','2024-03-08 00:43:42'),(670,'amith','Viewed login_credential','2024-03-08 00:43:45'),(671,'amith','Login','2024-03-08 00:46:28'),(672,'amith','Viewed login_credential','2024-03-08 00:46:30'),(673,'amith','Updated/Inserted into login_credential','2024-03-08 00:46:33'),(674,'amith','Viewed login_credential','2024-03-08 00:46:43'),(675,'amith','Viewed login_credential','2024-03-08 00:46:43'),(676,'amith','Viewed login_credential','2024-03-08 00:46:44'),(677,'amith','Viewed login_credential','2024-03-08 00:46:44'),(678,'amith','Login','2024-03-08 00:49:30'),(679,'amith','Viewed login_credential','2024-03-08 00:49:32'),(680,'amith','Viewed login_credential','2024-03-08 00:49:48'),(681,'amith','Viewed login_credential','2024-03-08 00:49:59'),(682,'Amith','Login','2024-03-08 00:51:24'),(683,'Amith','Viewed login_credential','2024-03-08 00:51:26'),(684,'Amith','Viewed login_credential','2024-03-08 00:52:46'),(685,'Amith','Viewed login_credential','2024-03-08 00:52:48'),(686,'Amith','Viewed login_credential','2024-03-08 00:52:57'),(687,'Amith','Viewed login_credential','2024-03-08 00:53:21'),(688,'Amith','Logout','2024-03-08 00:53:53'),(689,'amith','Login','2024-03-08 00:56:55'),(690,'amith','Viewed login_credential','2024-03-08 00:56:57'),(691,'amith','Viewed login_credential','2024-03-08 00:57:00'),(692,'amith','Viewed login_credential','2024-03-08 00:57:45'),(693,'amith','Logout','2024-03-08 00:58:36'),(694,'amith','Login','2024-03-08 00:58:48'),(695,'amith','Viewed login_credential','2024-03-08 00:58:50'),(696,'amith','Viewed login_credential','2024-03-08 00:58:54'),(697,'amith','Viewed login_credential','2024-03-08 00:59:28'),(698,'amith','Login','2024-03-08 01:00:33'),(699,'amith','Viewed login_credential','2024-03-08 01:00:35'),(700,'amith','Viewed login_credential','2024-03-08 01:00:42'),(701,'amith','Viewed login_credential','2024-03-08 01:03:29'),(702,'amith','Logout','2024-03-08 01:03:33'),(703,'Amith','Login','2024-03-08 01:03:45'),(704,'Amith','Viewed login_credential','2024-03-08 01:03:47'),(705,'Amith','Viewed login_credential','2024-03-08 01:03:53'),(706,'Amith','Viewed login_credential','2024-03-08 01:04:00'),(707,'amith','Login','2024-03-08 01:05:23'),(708,'amith','Viewed login_credential','2024-03-08 01:05:25'),(709,'amith','Viewed login_credential','2024-03-08 01:05:30'),(710,'amith','Viewed login_credential','2024-03-08 01:05:34'),(711,'amith','Viewed login_credential','2024-03-08 01:05:34'),(712,'amith','Viewed login_credential','2024-03-08 01:05:34'),(713,'amith','Viewed login_credential','2024-03-08 01:05:35'),(714,'amith','Viewed login_credential','2024-03-08 01:05:35'),(715,'amith','Updated/Inserted into login_credential','2024-03-08 01:06:16'),(716,'amith','Viewed login_credential','2024-03-08 01:06:19'),(717,'amith','Updated/Inserted into login_credential','2024-03-08 01:06:38'),(718,'amith','Viewed login_credential','2024-03-08 01:06:40'),(719,'amith','Updated/Inserted into login_credential','2024-03-08 01:06:50'),(720,'amith','Viewed login_credential','2024-03-08 01:06:51'),(721,'amith','Updated/Inserted into login_credential','2024-03-08 01:06:55'),(722,'Amith','Login','2024-03-08 01:08:54'),(723,'Amith','Viewed login_credential','2024-03-08 01:08:56'),(724,'Amith','inserted into login_credential','2024-03-08 01:09:06'),(725,'Amith','Updated/Inserted into login_credential','2024-03-08 01:09:06'),(726,'Amith','Viewed login_credential','2024-03-08 01:09:09'),(727,'Amith','Viewed login_credential','2024-03-08 01:09:20'),(728,'Amith','inserted into login_credential','2024-03-08 01:09:55'),(729,'Amith','Updated/Inserted into login_credential','2024-03-08 01:09:55'),(730,'Amith','Viewed login_credential','2024-03-08 01:09:57'),(731,'Amith','Viewed login_credential','2024-03-08 01:11:41'),(732,'amith','Login','2024-03-08 01:11:54'),(733,'amith','Viewed login_credential','2024-03-08 01:11:55'),(734,'amith','inserted into login_credential','2024-03-08 01:12:02'),(735,'amith','Updated/Inserted into login_credential','2024-03-08 01:12:02'),(736,'amith','Viewed login_credential','2024-03-08 01:12:05'),(737,'amith','Viewed login_credential','2024-03-08 01:12:10'),(738,'amith','Viewed login_credential','2024-03-08 01:12:59'),(739,'amith','Viewed login_credential','2024-03-08 01:13:07'),(740,'amith','Viewed login_credential','2024-03-08 01:13:12'),(741,'amith','Viewed login_credential','2024-03-08 01:13:12'),(742,'amith','Viewed login_credential','2024-03-08 01:13:13'),(743,'amith','Viewed login_credential','2024-03-08 01:13:13'),(744,'amith','Viewed login_credential','2024-03-08 01:13:13'),(745,'amith','Viewed login_credential','2024-03-08 01:13:13'),(746,'amith','Viewed login_credential','2024-03-08 01:13:13'),(747,'amith','Viewed login_credential','2024-03-08 01:13:14'),(748,'amith','Viewed login_credential','2024-03-08 01:13:14'),(749,'amith','Viewed login_credential','2024-03-08 01:13:14'),(750,'amith','Viewed login_credential','2024-03-08 01:14:36'),(751,'amith','Logout','2024-03-08 01:14:38'),(752,'amith','Login','2024-03-08 01:14:46'),(753,'amith','Viewed login_credential','2024-03-08 01:16:21'),(754,'amith','Viewed login_credential','2024-03-08 01:16:23'),(755,'amith','Viewed HR_data','2024-03-08 01:16:31'),(756,'amith','Viewed HR_data','2024-03-08 01:16:35'),(757,'amith','Viewed HR_data','2024-03-08 01:16:44'),(758,'amith','Viewed HR_data','2024-03-08 01:16:46'),(759,'amith','Updated/Inserted into HR_data','2024-03-08 01:17:24'),(760,'amith','Viewed HR_data','2024-03-08 01:17:28'),(761,'amith','Viewed HR_data','2024-03-08 01:17:37'),(762,'amith','Viewed HR_data','2024-03-08 01:17:37'),(763,'amith','Viewed HR_data','2024-03-08 01:17:37'),(764,'amith','Viewed HR_data','2024-03-08 01:17:38'),(765,'amith','Viewed HR_data','2024-03-08 01:17:38'),(766,'amith','Viewed HR_data','2024-03-08 01:17:38'),(767,'amith','Viewed HR_data','2024-03-08 01:17:38'),(768,'amith','Viewed HR_data','2024-03-08 01:17:38'),(769,'amith','Viewed HR_data','2024-03-08 01:17:39'),(770,'amith','Viewed HR_data','2024-03-08 01:17:39'),(771,'amith','Viewed HR_data','2024-03-08 01:17:39'),(772,'amith','Viewed HR_data','2024-03-08 01:17:39'),(773,'amith','Viewed HR_data','2024-03-08 01:17:39'),(774,'amith','Viewed HR_data','2024-03-08 01:17:39'),(775,'amith','Viewed HR_data','2024-03-08 01:17:40'),(776,'amith','Viewed HR_data','2024-03-08 01:17:40'),(777,'amith','Viewed HR_data','2024-03-08 01:17:40'),(778,'amith','Viewed HR_data','2024-03-08 01:17:40'),(779,'amith','Viewed HR_data','2024-03-08 01:17:41'),(780,'amith','Viewed HR_data','2024-03-08 01:17:41'),(781,'amith','Viewed HR_data','2024-03-08 01:17:41'),(782,'amith','Viewed emp_pr','2024-03-08 01:17:43'),(783,'amith','Viewed emp_hr','2024-03-08 01:17:52'),(784,'amith','Viewed emp_se','2024-03-08 01:17:54'),(785,'amith','Viewed se_data','2024-03-08 01:17:56'),(786,'amith','Viewed pr_data','2024-03-08 01:17:57'),(787,'amith','Viewed HR_data','2024-03-08 01:17:59'),(788,'amith','Logout','2024-03-08 01:18:02'),(789,'pritam','Login','2024-03-08 01:18:09'),(790,'pritam','Viewed HR_data','2024-03-08 01:18:13'),(791,'pritam','Viewed emp_se','2024-03-08 01:18:17'),(792,'pritam','Viewed emp_hr','2024-03-08 01:18:18'),(793,'pritam','Viewed emp_hr','2024-03-08 01:18:22'),(794,'pritam','Viewed emp_pr','2024-03-08 01:18:24'),(795,'pritam','Viewed emp_hr','2024-03-08 01:18:25'),(796,'pritam','Viewed emp_hr','2024-03-08 01:18:27'),(797,'pritam','Viewed emp_se','2024-03-08 01:18:28'),(798,'pritam','Viewed HR_data','2024-03-08 01:18:30'),(799,'pritam','Logout','2024-03-08 01:18:32'),(800,'Amith','Login','2024-03-08 01:21:29'),(801,'Amith','Viewed login_credential','2024-03-08 01:21:31'),(802,'Amith','Viewed HR_data','2024-03-08 01:21:34'),(803,'Amith','Viewed HR_data','2024-03-08 01:21:36'),(804,'Amith','Logout','2024-03-08 01:21:38'),(805,'Amith','Login','2024-03-08 01:22:25');
/*!40000 ALTER TABLE `audittrail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_hr`
--

DROP TABLE IF EXISTS `emp_hr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_hr` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `rank` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_hr`
--

LOCK TABLES `emp_hr` WRITE;
/*!40000 ALTER TABLE `emp_hr` DISABLE KEYS */;
INSERT INTO `emp_hr` VALUES (521,'Genesee','737474743','1');
/*!40000 ALTER TABLE `emp_hr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_pr`
--

DROP TABLE IF EXISTS `emp_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_pr` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_pr`
--

LOCK TABLES `emp_pr` WRITE;
/*!40000 ALTER TABLE `emp_pr` DISABLE KEYS */;
INSERT INTO `emp_pr` VALUES (621,'Baker','379487927',90000);
/*!40000 ALTER TABLE `emp_pr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_se`
--

DROP TABLE IF EXISTS `emp_se`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_se` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `bloodgroup` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_se`
--

LOCK TABLES `emp_se` WRITE;
/*!40000 ALTER TABLE `emp_se` DISABLE KEYS */;
INSERT INTO `emp_se` VALUES (721,'Sunset','4646436632',65800,'O+');
/*!40000 ALTER TABLE `emp_se` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_data`
--

DROP TABLE IF EXISTS `hr_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_data` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_data`
--

LOCK TABLES `hr_data` WRITE;
/*!40000 ALTER TABLE `hr_data` DISABLE KEYS */;
INSERT INTO `hr_data` VALUES (1,'Balu','Tech','Steph'),(2,'Hitesh','Dev','Richard'),(3,'Kanna','QC','Steph'),(4,'Lalith','QC','Richard'),(5,'Hari','Support','Chris'),(6,'Ritu','QC','Richard'),(7,'Namb','IT','Steph');
/*!40000 ALTER TABLE `hr_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_credential`
--

DROP TABLE IF EXISTS `login_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_credential` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_credential`
--

LOCK TABLES `login_credential` WRITE;
/*!40000 ALTER TABLE `login_credential` DISABLE KEYS */;
INSERT INTO `login_credential` VALUES ('Amith','1234','Admin'),('Anish','1234','SE'),('Balu','1234','General'),('Harish','1234','PR'),('Pritam','1234','HR');
/*!40000 ALTER TABLE `login_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_data`
--

DROP TABLE IF EXISTS `pr_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr_data` (
  `id` int NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_data`
--

LOCK TABLES `pr_data` WRITE;
/*!40000 ALTER TABLE `pr_data` DISABLE KEYS */;
INSERT INTO `pr_data` VALUES (221,'Mark','Rubin','1996-01-02');
/*!40000 ALTER TABLE `pr_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_data`
--

DROP TABLE IF EXISTS `se_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_data` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `projectname` varchar(255) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_data`
--

LOCK TABLES `se_data` WRITE;
/*!40000 ALTER TABLE `se_data` DISABLE KEYS */;
INSERT INTO `se_data` VALUES (110,'Steve','Infosys','Steph','2024-09-02');
/*!40000 ALTER TABLE `se_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-07 20:35:12
