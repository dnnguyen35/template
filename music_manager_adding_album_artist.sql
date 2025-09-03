-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: metro.proxy.rlwy.net    Database: railway
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `artist` int NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `artistId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artist` (`artist`),
  KEY `artistId` (`artistId`),
  CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`artist`) REFERENCES `artists` (`id`),
  CONSTRAINT `albums_ibfk_2` FOREIGN KEY (`artistId`) REFERENCES `artists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artist` varchar(255) NOT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Jack97',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(2,'Sơn Tùng',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(3,'Wrxdie',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(4,'buitruonglinh',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(5,'Vũ',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(6,'madihu',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(7,'Đen Vâu',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(8,'Andree Right Hand',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(9,'Karik',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(10,'Lil Wuyn',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(11,'Obito',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(12,'RONBOOGZ',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(13,'MCK',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(14,'Du Uyên',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(15,'HIEUTHU2',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(16,'Min',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(17,'JUSTATEE',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(18,'Koo',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(19,'DA LAB',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(20,'H2K',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(21,'AMEE',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(22,'Vũ Cát Tường',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(23,'Tùng Tea',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(24,'Tommy Tèo',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(25,'Bình Goat',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(26,'Khoi Vu',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(27,'Trọng Hiếu',NULL,'2025-09-03 08:59:12','2025-09-03 08:59:12'),(28,'Big Daddy',NULL,'2025-09-03 16:49:29','2025-09-03 16:49:29'),(29,'WEAN',NULL,'2025-09-03 16:56:34','2025-09-03 16:56:34');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` varchar(255) NOT NULL,
  `accountNumber` varchar(255) NOT NULL,
  `amount` int NOT NULL,
  `orderInfo` varchar(255) NOT NULL,
  `accountBankId` varchar(255) DEFAULT NULL,
  `resultCode` int DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` enum('pending','completed','uncompleted') DEFAULT 'pending',
  `userId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderId` (`orderId`),
  UNIQUE KEY `orderId_2` (`orderId`),
  KEY `userId` (`userId`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'2ef3ae5a-e037-48a2-9e63-a354333d8cfe','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',1,'2025-07-01 04:34:58','2025-07-01 04:34:58'),(2,'478de905-1eb4-46de-afef-7f99ee750ba6','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',1,'2025-07-01 04:49:34','2025-07-01 04:49:34'),(3,'6b4e6090-b814-4301-8666-a46e8511d38c','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',1,'2025-07-01 04:54:18','2025-07-01 04:54:18'),(4,'0d0ac6a4-93fd-44da-8a3d-10b730f51e32','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',1,'2025-07-01 04:58:07','2025-07-01 04:58:07'),(5,'5d9723af-cd71-43ad-b966-8d95765e7e66','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',1,'2025-07-01 05:02:17','2025-07-01 05:02:17'),(6,'c8d89e3c-6bb6-4a57-85a5-1a8282eefa40','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',1,'2025-07-01 05:16:45','2025-07-01 05:16:45'),(7,'07f6f67e-c61e-432c-8106-3160ec03b92a','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',1,'2025-07-01 05:19:46','2025-07-01 05:19:46'),(8,'4f343a5b-6946-44e2-b0a1-e5f4feb8e73b','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',1,'2025-07-01 05:23:03','2025-07-01 05:23:03'),(9,'da3e6778-5f49-4258-a2a0-63b0f28f0a15','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',1,'2025-07-01 05:26:55','2025-07-01 05:33:49'),(10,'e8b8dbe6-e4df-4171-890c-55cb7cd65cf5','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',1,'2025-07-01 05:36:31','2025-07-01 05:37:18'),(11,'e9a6d16e-f813-44e9-a94d-0749103750fc','1033306197',10000,'Up premium','01203001',7002,'Transaction is being processed by the provider of the payment instrument selected.','uncompleted',1,'2025-07-01 06:53:44','2025-07-01 06:54:39'),(12,'01d7e2fe-7a1d-47bf-910d-6cbc8569d100','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',1,'2025-07-01 07:00:17','2025-07-01 07:01:39'),(13,'9d74779b-3e52-4fd4-9de3-8040fc9556c8','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',2,'2025-07-01 09:02:19','2025-07-01 09:03:18'),(14,'561d8ff1-fbe2-4e7a-bbe4-203963e7f285','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-01 09:38:56','2025-07-01 09:38:56'),(16,'8718ece9-84aa-4ca4-b0a3-d23b7e2e81d2','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-01 09:59:32','2025-07-01 10:02:15'),(17,'c37d112b-185e-4df8-b601-412dd304697a','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-01 10:05:43','2025-07-01 10:09:44'),(18,'a3ec14f6-fe57-4a22-b0c2-46183df27775','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-01 10:11:49','2025-07-01 10:11:49'),(19,'2e69bde2-fea3-4c23-acdd-01bbd2607250','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-01 10:16:15','2025-07-01 10:16:15'),(20,'e7d8827b-80bb-4ff9-b039-c0899a6db4c0','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-01 11:12:41','2025-07-01 11:14:04'),(21,'e855d7c9-75db-4c96-bfab-acb8b9484ebe','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-01 11:16:37','2025-07-01 11:17:48'),(22,'bfbf116a-33a4-498e-93b8-f02cad4e08cd','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-02 02:59:15','2025-07-02 02:59:15'),(23,'02891101-9b8d-443d-a733-ef4fc918a798','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-02 03:01:34','2025-07-02 03:01:34'),(24,'4c63a57e-9882-4d98-8d6f-e90ca17960d8','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-02 03:08:04','2025-07-02 03:08:04'),(25,'8bf302fd-12c6-41a7-a9c7-08d9da8e8e11','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 03:11:06','2025-07-02 03:12:20'),(26,'83fd79f0-a4ed-4902-9fc5-688474fc1579','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 03:16:42','2025-07-02 03:18:07'),(27,'1eda5edd-f940-4b5f-b2ac-d5d05e976143','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 03:22:16','2025-07-02 03:23:15'),(28,'9f37db6f-fd34-4053-b538-6c03fd240ece','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 03:30:20','2025-07-02 03:31:53'),(29,'8cd0cf23-1570-4a29-92f9-d7b00282a3c2','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 03:38:02','2025-07-02 03:39:25'),(30,'edabe78a-1f29-416e-96a6-ff261b7b2d1f','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 03:41:59','2025-07-02 03:42:54'),(31,'2a83f4db-299d-4076-9179-aa62c34f7fed','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 03:49:07','2025-07-02 03:50:06'),(32,'b13bd679-b921-4339-8fdd-299dec2d01e2','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 03:56:06','2025-07-02 03:58:21'),(33,'9f44d335-2936-4054-b4b1-4bb597d67a31','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 07:40:01','2025-07-02 07:41:13'),(34,'2eb84fa2-dd99-4618-b028-ffbabd53d611','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 07:47:53','2025-07-02 07:54:24'),(35,'a36ea08d-801f-41fd-a3c5-af6f7aed2911','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 08:28:12','2025-07-02 08:29:14'),(36,'473c338d-7bb5-4bd3-8918-2cec438cd73a','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 08:30:24','2025-07-02 08:31:16'),(37,'2d2b2895-4100-451c-b791-b603d8457b4c','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-02 09:59:20','2025-07-02 10:00:19'),(38,'a155b7ec-5a02-465c-a097-2deb02e5fed3','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-04 06:39:59','2025-07-04 06:41:05'),(39,'3a8a355f-05ef-4bbc-bed7-b9ae0fc19a66','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',5,'2025-07-04 06:49:52','2025-07-04 06:51:23'),(40,'7b756283-3b30-4221-8194-800360d17ee8','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',5,'2025-07-04 06:58:57','2025-07-04 06:59:53'),(41,'897c0f14-e7d7-4741-a633-182d7d08a8b1','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',6,'2025-07-05 13:47:38','2025-07-05 13:47:38'),(42,'63360d44-d58f-4e8e-8ebd-0b3ad0e18ec5','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',6,'2025-07-05 13:50:00','2025-07-05 13:50:00'),(43,'15bdf9f3-9cdf-4f52-8c70-ccf03c97209a','1033306197',10000,'Up premium','01203001',7002,'Transaction is being processed by the provider of the payment instrument selected.','uncompleted',6,'2025-07-05 13:53:09','2025-07-05 13:54:17'),(44,'d2315f18-e497-4299-a23c-06617abc7630','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',6,'2025-07-05 13:55:39','2025-07-05 13:55:39'),(45,'e8e6f7b6-c243-4df7-9d14-41fca7d6fdfb','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',6,'2025-07-05 13:58:47','2025-07-05 13:58:47'),(46,'ee18411e-41dc-422b-9144-26985bbe8283','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',2,'2025-07-07 05:03:03','2025-07-07 05:03:03'),(47,'cd9bf5ce-c5af-4cde-9b10-702336003291','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',2,'2025-07-07 05:03:24','2025-07-07 05:03:24'),(48,'2e706776-6ee9-49c4-a9c9-640a2198a8ea','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',2,'2025-07-07 05:05:06','2025-07-07 05:05:06'),(49,'10c4e4f2-c75e-4459-ab05-e3acb0c64796','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',2,'2025-07-07 05:16:26','2025-07-07 05:16:26'),(50,'51f0b6ea-b04d-495e-bcad-691d5d5273e3','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',2,'2025-07-07 05:26:24','2025-07-07 05:26:24'),(51,'67bbc892-dbac-4e3c-9430-8163a33fd262','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 05:31:38','2025-07-07 05:31:38'),(52,'b915f14c-ec5e-4f79-bf7a-cb1d32792042','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 05:57:04','2025-07-07 05:57:04'),(53,'9b147f82-c4e2-44cb-adc8-3fd8b3688c4e','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 06:49:40','2025-07-07 06:49:40'),(54,'273f3ab7-ae97-4b64-ac1a-503a7bf55fa6','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 06:57:57','2025-07-07 06:57:57'),(55,'bd54b43f-763d-47ba-be32-4a9edbbf12ea','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 07:12:54','2025-07-07 07:12:54'),(56,'71a304f4-9205-4497-947e-715b6e496415','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 07:17:05','2025-07-07 07:17:05'),(57,'12227daf-a13e-472f-b26f-16122991f697','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 07:26:34','2025-07-07 07:26:34'),(58,'d44e3197-64ea-48d9-a6d0-c6af5bb85704','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 07:28:36','2025-07-07 07:28:36'),(59,'826b8d26-ea24-40df-b006-902bbaabb6ca','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-07 07:49:26','2025-07-07 07:54:51'),(60,'bcad13d9-00b5-4b88-81f8-82f8a08e1ab8','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 10:39:35','2025-07-07 10:39:35'),(61,'7c284163-8c7f-4645-888b-486aec66db81','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 10:42:04','2025-07-07 10:42:04'),(62,'5eaeb45b-f995-46a9-bb06-71aab8f555c5','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 10:53:00','2025-07-07 10:53:00'),(63,'1e1efb80-f413-4b1c-b54a-371f3eef378d','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-07 10:58:28','2025-07-07 10:58:28'),(64,'ae24c776-f9f3-496b-80a6-b33ae4cddf2f','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-08 02:50:16','2025-07-08 02:50:16'),(65,'559fc056-e1ba-4eef-98fd-a05fc1641c5b','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-08 02:51:59','2025-07-08 02:51:59'),(66,'3dc079f1-2c51-42a5-84be-eca268297601','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-08 02:56:15','2025-07-08 02:56:15'),(67,'0724db10-531d-4ae5-afed-352e91aa6ad3','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-08 02:58:18','2025-07-08 02:58:18'),(68,'6a044e2f-7d33-40dd-91e8-cae4ec1bc9df','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-08 03:05:04','2025-07-08 03:05:04'),(69,'fea7c428-bb5e-4c24-a3be-8ce0adcf4ab4','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-08 03:24:46','2025-07-08 03:26:56'),(70,'f9d3d95d-c873-4b6f-9afe-c53b4d4dadea','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-08 03:38:47','2025-07-08 03:39:46'),(71,'e76fa7b2-0bf6-4d46-b0a8-fbcb1446f129','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-08 03:56:43','2025-07-08 03:57:10'),(72,'84c03b0d-ae53-461e-a84e-ed2fd969b4b6','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-08 10:01:02','2025-07-08 10:02:55'),(73,'6d96920b-9267-4975-b637-2016e82bf9d8','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-14 09:03:40','2025-07-14 09:04:39'),(74,'2a79f789-b678-4994-bab2-3976d1f5af70','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-14 10:06:09','2025-07-14 10:08:45'),(75,'0267648b-b72b-45bc-983a-24c0c4c65782','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-16 04:08:40','2025-07-16 04:10:32'),(76,'862e8ecc-cc34-4d03-a496-b9b96b953d7f','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-16 04:11:51','2025-07-16 04:15:28'),(77,'c5fcfcd4-ce6a-43e2-a2d5-1559d52cf0d8','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-16 04:16:37','2025-07-16 04:17:58'),(78,'f837a14e-fccb-43e9-ae74-1a4c11e24a9e','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-16 06:37:27','2025-07-16 06:38:41'),(79,'53fe0e96-a155-4dca-9db7-a03e48ca6bd4','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-18 03:29:09','2025-07-18 03:30:17'),(80,'5e58ddc0-1986-41c6-a5d2-6c19a379be6b','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-22 07:28:58','2025-07-22 07:28:58'),(81,'ad07f81d-ad9a-42bd-9f87-01f0580de2fe','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-07-22 07:30:55','2025-07-22 07:30:55'),(82,'97e01ff9-4bf7-4486-ba31-f327abd00654','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-22 07:35:43','2025-07-22 07:36:48'),(83,'75e82fd6-6be1-425d-a6c2-697573e2e39f','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-22 11:14:50','2025-07-22 11:15:45'),(84,'422b1a2c-eb6a-44f1-82ff-93aac0cafd1a','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-22 11:17:44','2025-07-22 11:18:36'),(85,'7e0cd560-f33c-4e22-8469-fb288653680d','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-23 05:02:46','2025-07-23 05:03:50'),(86,'8d7c2f5d-1b77-42ab-b9e5-e566ea95322a','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-07-30 03:11:48','2025-07-30 03:12:43'),(87,'7576a5c0-16ad-4a1c-be6a-8da6dedf18d3','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-30 08:31:20','2025-07-30 08:33:26'),(88,'e89d3e7a-9c63-4526-bdf5-a2f0842124a4','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-08-01 04:46:58','2025-08-01 04:46:58'),(89,'c7cba994-32ec-46d5-83bc-e674cac21f3a','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-01 04:54:59','2025-08-01 04:55:53'),(90,'288f5d9d-39be-40fc-bd50-71dd8f5307e1','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-01 05:00:53','2025-08-01 05:01:35'),(91,'116bb809-d739-4e91-b413-a63a7b5db12e','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-08-01 05:02:15','2025-08-01 05:03:17'),(92,'0465ea45-3d26-4f5c-8549-7d9f6a3d28da','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-08-01 06:57:58','2025-08-01 06:59:09'),(93,'f4728390-4ea2-49ae-b55f-9720f141747c','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-08-01 07:28:23','2025-08-01 07:29:22'),(94,'82d3f0ac-680b-4d46-8a0e-f194d55365c4','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',5,'2025-08-01 07:31:30','2025-08-01 07:31:30'),(95,'bed44e19-dcfd-4350-9379-92609e3ae170','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',5,'2025-08-01 07:33:35','2025-08-01 07:34:29'),(96,'ddca847d-9600-41a4-9034-4d56f404f6e4','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-08-06 08:22:49','2025-08-06 08:22:49'),(97,'f1069d33-f79b-42a6-a603-ef4f18c34c88','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-08-06 08:25:13','2025-08-06 08:25:13'),(98,'938f220b-01ca-49e9-a1b2-07a3b5299243','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',4,'2025-08-06 09:03:35','2025-08-06 09:03:35'),(99,'99815eb8-4382-465e-bb95-3b7d3ec0a6bb','1033306197',10000,'Up premium','01203001',NULL,NULL,'pending',9,'2025-08-08 15:55:46','2025-08-08 15:55:46'),(100,'f0dc2cb4-6496-46e1-939b-d99f5f9f67bb','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',9,'2025-08-08 15:58:39','2025-08-08 15:59:23'),(101,'79a4badc-8056-4385-9c9e-08ae00dd933d','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',9,'2025-08-08 16:06:50','2025-08-08 16:07:21'),(102,'11373044-40d4-48cc-ac85-e3568853ce04','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',9,'2025-08-08 16:07:59','2025-08-08 16:08:35'),(103,'b37c0f5c-38ae-4d66-ac8f-533753162991','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-08 16:15:52','2025-08-08 16:16:58'),(104,'a0215789-b7fe-41c6-b0b2-43bc9b0ec875','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-08 16:17:55','2025-08-08 16:18:30'),(105,'fd1f191b-337c-4df6-9ad2-7c1cd0ca7aee','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-09 08:27:14','2025-08-09 08:29:43'),(106,'3a9d4a89-f85f-4139-b377-29155945acfe','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-08-21 09:37:20','2025-08-21 09:38:05'),(107,'07c1095b-9d08-476e-a835-eb4b57bf51d0','1033306197',10000,'Up premium','01203001',0,'Successful.','completed',4,'2025-08-21 09:44:45','2025-08-21 09:45:42'),(108,'8699deb6-e8a0-4298-8ba3-e6ed0e8308c2','1033306197',10000,'Up premium','01203001',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-21 09:49:58','2025-08-21 09:50:14'),(109,'22058','1033306197',10000,'Up 4 22058','01203001',NULL,NULL,'pending',4,'2025-08-21 14:06:34','2025-08-21 14:06:34'),(110,'469597','1033306197',10000,'Up 4','01203001',NULL,NULL,'pending',4,'2025-08-21 14:22:54','2025-08-21 14:22:54'),(111,'410494','1033306197',10000,'Up 4','01203001',NULL,NULL,'pending',4,'2025-08-21 14:24:03','2025-08-21 14:24:03'),(112,'446309','1033306197',10000,'Up 4','01203001',NULL,NULL,'pending',4,'2025-08-21 14:30:35','2025-08-21 14:30:35'),(113,'439756','1033306197',10000,'Up 4','01203001',NULL,NULL,'pending',4,'2025-08-21 14:44:05','2025-08-21 14:44:05'),(114,'497988','1033306197',10000,'Up 4','01203001',NULL,NULL,'pending',4,'2025-08-22 09:20:04','2025-08-22 09:20:04'),(115,'470091','1033306197',10000,'CS2AZE705F4 Up 4','01203001',0,'success','completed',4,'2025-08-22 10:03:41','2025-08-22 10:21:47'),(116,'470606','1033306197',10000,'CSZRDM84Y61 Up 4','01203001',0,'success','completed',4,'2025-08-22 10:24:23','2025-08-22 10:26:31'),(117,'420249','0697044105922',10000,'CS054X8CTO3 Up 4','970454',0,'success','completed',4,'2025-08-23 10:38:08','2025-08-23 10:43:35'),(118,'217336','0377694735',10000,'CSWLS1LXT05 Up 2','N/A',0,'success','completed',2,'2025-08-24 15:45:25','2025-08-24 15:46:25'),(119,'1043695','2281072020614',10000,'CSSKCICR665 Up 10','970422',0,'success','completed',10,'2025-09-01 08:47:35','2025-09-01 08:48:55');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_songs`
--

DROP TABLE IF EXISTS `playlist_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist_songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `playlistId` int NOT NULL,
  `songId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `playlist_songs_songId_playlistId_unique` (`playlistId`,`songId`),
  KEY `songId` (`songId`),
  CONSTRAINT `playlist_songs_ibfk_127` FOREIGN KEY (`playlistId`) REFERENCES `playlists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `playlist_songs_ibfk_128` FOREIGN KEY (`songId`) REFERENCES `songs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_songs`
--

LOCK TABLES `playlist_songs` WRITE;
/*!40000 ALTER TABLE `playlist_songs` DISABLE KEYS */;
INSERT INTO `playlist_songs` VALUES (47,1,7),(33,1,15),(9,1,17),(31,1,19),(77,1,20),(76,1,21),(75,1,25),(146,1,36),(152,1,41),(127,29,17),(130,29,19),(128,29,20),(126,29,21),(125,29,24),(123,29,25),(121,29,26),(124,29,27),(122,29,28),(120,29,29),(50,43,4),(51,43,14),(52,43,17),(53,43,21),(49,43,25),(68,46,19),(69,46,20),(143,66,4),(113,88,25),(114,90,25),(117,91,1),(115,91,12),(116,91,20),(151,134,38),(150,134,39);
/*!40000 ALTER TABLE `playlist_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `userId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'Hello world',1,'2025-05-28 07:17:57','2025-05-28 07:17:57'),(29,'Hahaha',1,'2025-06-17 04:12:32','2025-06-17 04:12:32'),(43,'qwe11',5,'2025-06-19 08:15:27','2025-06-19 08:15:27'),(46,'hohoho',3,'2025-06-26 11:07:20','2025-06-26 11:07:20'),(66,'qeqweq',4,'2025-07-01 09:38:30','2025-07-01 09:38:30'),(67,'eqweqweqeq',4,'2025-07-01 09:38:35','2025-07-01 09:38:35'),(68,'fergfergeg',4,'2025-07-01 09:38:40','2025-07-01 09:38:40'),(69,'zxczczc',4,'2025-07-01 09:38:44','2025-07-01 09:38:44'),(72,'Playlist5',1,'2025-07-03 02:51:37','2025-07-03 02:51:37'),(73,'Playlist6',1,'2025-07-03 02:51:46','2025-07-03 02:51:46'),(74,'Playlist7',1,'2025-07-03 02:51:55','2025-07-03 02:51:55'),(75,'Playlist8',1,'2025-07-03 02:52:03','2025-07-03 02:52:03'),(76,'Playlist9',1,'2025-07-03 02:52:13','2025-07-03 02:52:13'),(77,'1qweqwe',5,'2025-07-04 06:49:17','2025-07-04 06:49:17'),(87,'ádasdasd2·',6,'2025-07-05 13:42:38','2025-07-05 13:42:38'),(88,'123123    ',6,'2025-07-05 13:42:50','2025-07-05 13:42:50'),(89,'           123',6,'2025-07-05 13:42:56','2025-07-05 13:42:56'),(90,'*&^%&*^&*^$*&%',6,'2025-07-05 13:43:11','2025-07-05 13:43:11'),(91,'bnm',6,'2025-07-05 13:47:31','2025-07-05 13:47:31'),(106,'Playlist10',1,'2025-07-15 04:15:07','2025-07-15 04:15:07'),(107,'Playlist11',1,'2025-07-15 04:15:15','2025-07-15 04:15:15'),(108,'Playlist12',1,'2025-07-15 04:15:25','2025-07-15 04:15:25'),(114,'rutyuturtyu',4,'2025-07-16 06:43:32','2025-07-16 06:43:32'),(121,'playlist1',7,'2025-07-30 08:19:48','2025-07-30 08:19:48'),(129,'8qweqwe',5,'2025-08-01 07:30:56','2025-08-01 07:30:56'),(130,'nyhhynrghf',5,'2025-08-01 07:31:02','2025-08-01 07:31:02'),(131,'10qewqew',5,'2025-08-01 07:31:09','2025-08-01 07:31:09'),(132,'jkljkljkl',5,'2025-08-01 07:34:50','2025-08-01 07:34:50'),(134,'1224',9,'2025-08-08 15:55:05','2025-08-08 15:55:05'),(136,'123456',9,'2025-08-08 15:55:12','2025-08-08 15:55:12'),(138,'95',9,'2025-08-08 15:55:21','2025-08-08 15:55:21'),(139,'2155',9,'2025-08-08 16:05:04','2025-08-08 16:05:04'),(140,'adsad',9,'2025-08-08 16:06:44','2025-08-08 16:06:44'),(145,'adadadad',4,'2025-08-23 10:47:30','2025-08-23 10:47:30'),(153,'a',10,'2025-09-01 08:46:47','2025-09-01 08:46:47'),(154,'b',10,'2025-09-01 08:46:53','2025-09-01 08:46:53'),(155,'c',10,'2025-09-01 08:46:59','2025-09-01 08:46:59'),(156,'d',10,'2025-09-01 08:47:05','2025-09-01 08:47:05'),(157,'e',10,'2025-09-01 08:47:21','2025-09-01 08:47:21'),(158,'g',10,'2025-09-01 08:50:49','2025-09-01 08:50:49');
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `artist` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `duration` int NOT NULL,
  `audioUrl` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `artistId` int DEFAULT NULL,
  `albumId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artistId` (`artistId`),
  KEY `albumId` (`albumId`),
  CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`artistId`) REFERENCES `artists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`albumId`) REFERENCES `albums` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Hồng nhan','Jack97',195,'https://res.cloudinary.com/duccdrxot/video/upload/v1736990613/by31jv4yp1aosqfvdabj.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1736990616/paevbzd5y9fuj1n5ajtc.jpg','2025-05-21 10:12:46','2025-07-23 08:00:52',1,NULL),(2,'Đừng làm trái tim anh đau','Sơn Tùng',325,'https://res.cloudinary.com/duccdrxot/video/upload/v1737040969/okcxhg5zlefynhjhtiaz.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737040974/m8xckip65tk0r7qp9o9i.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46',2,NULL),(3,'Trở về','Wrxdie',358,'https://res.cloudinary.com/duccdrxot/video/upload/v1737042375/zkcs85ycjsdhydzthon0.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737042382/gjuuxiotvqw8cjr3bz14.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46',3,NULL),(4,'Lời yêu','buitruonglinh',182,'https://res.cloudinary.com/duccdrxot/video/upload/v1737042598/udlezjmd34rjsy0ra2hm.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737042603/e2dmoyttsqgrcrncu31g.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46',4,NULL),(5,'Bình yên','Vũ',196,'https://res.cloudinary.com/duccdrxot/video/upload/v1737042760/m7eyt145srb4is0ikhfi.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737042764/ufipso4xzwtfit7dnudd.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46',5,NULL),(6,'Có em','madihu',225,'https://res.cloudinary.com/duccdrxot/video/upload/v1737042915/vfzv9pfgcxtqynchmebu.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737042922/t5jvhherpupkvladdiie.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46',6,NULL),(7,'Trốn Tìm','Đen Vâu',252,'https://res.cloudinary.com/duccdrxot/video/upload/v1737043731/czui5l8xnunaswjmkjfk.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737043735/sefjohovgkfigyhyhhhk.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46',7,NULL),(8,'Đổi tư thế','Andree Right Hand',245,'https://res.cloudinary.com/duccdrxot/video/upload/v1737044429/xrmkhjoxh8llbd9khtdn.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737044432/krvddg5rq0ewyn5d36nr.jpg','2025-05-21 10:12:46','2025-05-23 10:47:02',8,NULL),(9,'Bạn đời','Karik',318,'https://res.cloudinary.com/duccdrxot/video/upload/v1737044871/fbecnt0id67pxeaxmpaf.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737044874/yevpr2dztrjdvjcoweks.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46',9,NULL),(11,'An','Lil Wuyn',204,'https://res.cloudinary.com/duccdrxot/video/upload/v1747989233/lqnfgsnvs0jhvrnwlzix.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1747989235/dyoagmxjziqkyr3eq72i.jpg','2025-05-23 08:33:56','2025-05-23 08:33:56',10,NULL),(12,'Tell The Kids I Love Them','Obito',225,'https://res.cloudinary.com/duccdrxot/video/upload/v1747990351/y7qwiq23c7mteopzwnfi.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1747990352/qzidoevbvdlhwwbpplev.jpg','2025-05-23 08:52:33','2025-05-23 08:52:33',11,NULL),(13,'KHI MÀ','RONBOOGZ',229,'https://res.cloudinary.com/duccdrxot/video/upload/v1747990750/xqp01fqr5malpox0abph.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1747990751/nzc3lvqfifrkqteaadar.jpg','2025-05-23 08:59:12','2025-05-23 08:59:12',12,NULL),(14,'Vô Điều Kiện','Obito',151,'https://res.cloudinary.com/duccdrxot/video/upload/v1747999081/djdpsqfo9bzt2cnelanj.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1747999082/uzgsyndlp7vvzq4jpsex.jpg','2025-05-23 11:18:03','2025-05-23 11:18:03',11,NULL),(15,'Nơi Này Có Anh','Sơn Tùng',279,'https://res.cloudinary.com/duccdrxot/video/upload/v1747999229/jiu31fdd6ax846rqeazg.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1747999231/lgobgloksx0muym41idd.jpg','2025-05-23 11:20:32','2025-05-23 11:20:32',2,NULL),(17,'Em Muốn Tự Do','Du Uyên',225,'https://res.cloudinary.com/duccdrxot/video/upload/v1748425112/lw80fxzdxzlaxiefbcdh.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1748425114/nidxgoz877abbougd3ih.jpg','2025-05-28 09:38:34','2025-05-28 09:38:34',14,NULL),(19,'thap drill tu doo','MCK',107,'https://res.cloudinary.com/duccdrxot/video/upload/v1749035567/rcamyx1i6g5lvgvyel75.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1749035568/cmz0ybcv2ergrw0aebcj.jpg','2025-06-04 11:12:49','2025-06-04 11:12:49',13,NULL),(20,'50500','HIEUTHU2',229,'https://res.cloudinary.com/duccdrxot/video/upload/v1749798261/kiqdwhpxdrpej84wff0t.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1749798262/oh1yx1wxvcd4vli2jedk.jpg','2025-06-13 07:04:23','2025-06-13 07:04:23',15,NULL),(21,'Hẹn Gặp Em Dưới Ánh Trăng','HIEUTHU2',232,'https://res.cloudinary.com/duccdrxot/video/upload/v1749798599/souam33qyiiziegquplp.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1749798600/liwmep40evm4x3t6sa9v.jpg','2025-06-13 07:10:00','2025-06-13 07:10:00',15,NULL),(24,'VÌ YÊU CỨ ĐÂM ĐẦU','Min',276,'https://res.cloudinary.com/duccdrxot/video/upload/v1749802062/icgcqee7b2bxspoilkcs.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1749802063/yfxqhad4aw7yodur42mx.jpg','2025-06-13 10:30:22','2025-06-13 10:30:22',16,NULL),(25,'BÔNG HOA NHÀI','JUSTATEE',302,'https://res.cloudinary.com/duccdrxot/video/upload/v1750234014/ryprilpzogghtqjqbm2p.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1750234015/tqrhpybkronikjl0bmnt.jpg','2025-06-18 08:06:56','2025-06-18 08:15:29',17,NULL),(26,'Bae Dun Cry','Koo',226,'https://res.cloudinary.com/duccdrxot/video/upload/v1750760899/nvurnt6vghqdepsna2uj.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1750760900/sdxr2tm8pwsavneacbvj.jpg','2025-06-24 10:28:21','2025-06-24 10:28:21',18,NULL),(27,'Nối Dối','RONBOOGZ',206,'https://res.cloudinary.com/duccdrxot/video/upload/v1751352099/wn4wgqbzzf7hxv2jomuo.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1751352100/dxessfb406p0i4hsfqbv.jpg','2025-07-01 06:41:41','2025-07-01 06:41:41',12,NULL),(28,'Hai Đứa Nhóc','RONBOOGZ',216,'https://res.cloudinary.com/duccdrxot/video/upload/v1751367318/g98izhtxggq4xeczqgx0.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1751367320/uarm1twwl6996w37zpys.jpg','2025-07-01 10:55:20','2025-07-01 10:55:20',12,NULL),(29,'Đi Theo Bóng Mặt Trời','Đen Vâu',202,'https://res.cloudinary.com/duccdrxot/video/upload/v1751879420/yk2xuwdyrzegtyfcedus.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1751879422/hrtwqxm9ukb1wnmov2ev.jpg','2025-07-07 09:10:23','2025-07-07 09:10:23',7,NULL),(30,'THỨC GIẤC','DA LAB',323,'https://res.cloudinary.com/duccdrxot/video/upload/v1752222210/y1r4xjgewrf164r778nm.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1752222211/zgpqp4wd7ujjc8tk7rw3.jpg','2025-07-11 08:23:32','2025-07-11 08:23:32',19,NULL),(31,'Phượng Buồn','H2K',160,'https://res.cloudinary.com/duccdrxot/video/upload/v1752222799/u0vpoejgwq7lxsrm2krv.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1752222801/dour7gkh1hpshzle7kg3.jpg','2025-07-11 08:33:21','2025-07-11 08:33:21',20,NULL),(32,'Miền Mộng Mị','AMEE',180,'https://res.cloudinary.com/duccdrxot/video/upload/v1752654508/iu0no9jcjjscntgimo8y.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1752654509/r0ybeoegbjrpaqkdgk74.jpg','2025-07-16 08:28:30','2025-07-16 08:28:30',21,NULL),(33,'Mơ','Vũ Cát Tường',333,'https://res.cloudinary.com/duccdrxot/video/upload/v1752807230/z7c0rl0yv9npo9b7bfsd.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1752807231/ityrwf3cffewu0kbijuy.jpg','2025-07-18 02:53:52','2025-07-18 02:53:52',22,NULL),(35,'Mây Lang Thang','Tùng Tea',198,'https://res.cloudinary.com/duccdrxot/video/upload/v1753864150/e5aa6k9invsnujph9ojp.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1753864151/xklzwdrdh62xkx8jrbgz.jpg','2025-07-30 08:29:12','2025-07-30 08:29:12',23,NULL),(36,'Cảm Ơn','Tommy Tèo',126,'https://res.cloudinary.com/duccdrxot/video/upload/v1753874689/sqzm1amjcjfim0ygqbm7.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1753874691/gy5f9mxgvwd69ncpdq0l.jpg','2025-07-30 11:24:52','2025-07-30 11:24:52',24,NULL),(38,'Lãng Đãng','Đen Vâu',322,'https://res.cloudinary.com/duccdrxot/video/upload/v1754032056/tddmthgz8lz1qxpdeyhj.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1754032058/rqarqesgho0br6zmgnaw.jpg','2025-08-01 07:07:38','2025-08-01 07:07:38',7,NULL),(39,'Trình Là Đây','Bình Goat',206,'https://res.cloudinary.com/duccdrxot/video/upload/v1754473916/bnbwciqjf845a0yqibh9.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1754473917/ds2wayxdvs8rnrdw5r04.jpg','2025-08-06 09:51:58','2025-08-06 10:26:25',25,NULL),(40,'BERLIN','Khoi Vu',140,'https://res.cloudinary.com/duccdrxot/video/upload/v1754671332/fd74puxlgszskgabaqhh.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1754671333/zgjjbw0dwvxkmhqcqmcd.jpg','2025-08-08 16:42:14','2025-08-08 16:42:14',26,NULL),(41,'Kho Báu','Trọng Hiếu',217,'https://res.cloudinary.com/duccdrxot/video/upload/v1756218352/gzt7exi5bqiwnioahvpp.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1756218353/b9brx5zya6kfg4kdzgra.jpg','2025-08-26 14:25:54','2025-08-26 14:25:54',27,NULL),(42,'Tình Yêu Màu Nắng','Big Daddy',308,'https://res.cloudinary.com/duccdrxot/video/upload/v1756918167/asbuz0vcqqfh0pxrcc2l.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1756918168/lqppkmdnkwfwdd63zjbj.jpg','2025-09-03 16:49:29','2025-09-03 16:49:29',28,NULL),(43,'BĂNG QUA CẦU GIẤY','Wrxdie',262,'https://res.cloudinary.com/duccdrxot/video/upload/v1756918591/booe1spgfyxuww6jxrk5.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1756918593/ahgcmqniospxtf4fyg0p.jpg','2025-09-03 16:56:34','2025-09-03 16:56:34',3,NULL),(44,'RETROGRADE','WEAN',226,'https://res.cloudinary.com/duccdrxot/video/upload/v1756919261/bunmxyvq71nxqezu6aho.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1756919264/xjqn6so3ehvsp6hgulco.jpg','2025-09-03 17:07:45','2025-09-03 17:07:45',29,NULL);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isAdmin` tinyint(1) DEFAULT '0',
  `isBlocked` tinyint(1) DEFAULT '0',
  `salt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `playlistLimit` int DEFAULT '5',
  `songLimit` int DEFAULT '25',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nguyen1','dnnguyeen2003@gmail.com','22e5e9608c59650cc9023f4306d3ef28f42e8edc2908d142112eb5b98c71c7925bd76e2c9e13f93da2d39d6f2e0e3b687be913f7a495fbcd7af9e5391804ee41',1,0,'a580af17ff69dbe951b81fcd2536cc8d','2025-05-20 09:40:52','2025-07-01 07:01:39',15,75),(2,'hahaha','hodanghoang2003@gmail.com','bcb5e0970119d97a372f0c11587d2873999893c6f2538b7102d8a33b24b0459b32ac0e5e16e088f3dbc56dab827b885bfe3be093d473f38a21ddb09a472a2803',0,0,'56f414604748e68a66c8d99f25d4f0bf','2025-05-28 09:23:10','2025-08-29 15:53:12',10,50),(3,'minhquan','minhquany9@gmail.com','bf2cc7f1f5567013f0f4ee9de61428c2659d9a1f3fafcc1596d23509cdc5ff6e23028dc29c09ac3299faba91dd229b3c42901d106d772a748e34ad6366e8d55e',0,0,'7387384827c30ea0aa0c40e0077dde55','2025-06-11 11:16:36','2025-08-23 10:33:31',5,25),(4,'abcabc','nguyenhoanglong10082003@gmail.com','3eedd2c77a076e350e59ff06c8e5410bf3e9f12d0763e9957d3923e2cf0e677e37e12d943fd463a915254c3f4c6e28f4c7304acf9684347de836a1c4eda1d0d7',0,0,'3d60fc2860750679d92f03b3a6c9e668','2025-06-19 07:59:05','2025-08-23 10:43:35',10,50),(5,'qweqwe','anhtuhanam1@gmail.com','6f17117771583caa251f5a5043b4696a4021bbb769a908ddd31e25a46ec8c67dc0e820892839f102190a88a75e467d83a72a5e5baf7714a033f38bfc28c3602a',0,0,'704b1420159f62ba785250c2519f407e','2025-06-19 08:10:49','2025-08-01 07:34:29',10,50),(6,'defghe','nothingisworthanything@gmail.com','e8615b33a800f1cd4de8a6b1b86d9d50646cac1ededfd90299ba7e722924ca1fd76beadbc998a197a300e83de5a0729cafb1ad05a662ab9e69a70ac5d3dfcfe4',0,0,'20ab42c39a51cec9c60f51e19d25c4b6','2025-07-05 13:42:02','2025-07-14 04:24:47',5,25),(7,'huhuhu','abcdefhuhuhu@gmail.com','aee789194a93f2d15c918bf5ea0803b1455d9c73bf890edfb1ef75a9a7ac9fc2e2013f0069fc363b77708dccc916804c70800f3d315825d570947da25a8c56f7',0,0,'4a9667c9194fc685b456ff202e2dc0d9','2025-07-30 08:19:23','2025-07-30 08:19:23',5,25),(8,'hohoho','abcdefhohoho@gmail.com','a35d80390f3aa3b8c5a25cda0393b2c57a6babc33493418ddf11ebfed21cc4beabe6e6b6c7566d11e8fa94ee2654c4cb3b02b2dda74b9fa436928f2d9d0d79d1',0,0,'8222348588c009fc0a2f275ef5e23c3a','2025-08-01 07:57:08','2025-08-01 07:57:38',5,25),(9,'phuoc','daiphuoc1497@gmail.com','b22475fc3d35f5217a3a2f7ea326f06da412f6a8cd3f265cf77806bc5e468ef0fd98fdfeac4c36c2ca974e119b56f3e56f27113def6f80ce0500bbecef30883d',0,0,'22228bc4db717ac77aae5026fd6a0e8d','2025-08-08 15:54:48','2025-08-08 16:03:51',5,25),(10,'defdef','10a10.19.duongngocxuanmy@gmail.com','3dfe197da5797dd2252f13ea8d620f02f148525b71739b902bfbc79335e1a29b60c9fb437dd718a91eef97560ca5fde0efc8c75921ca61b6d6bf64a3fe7bc52b',0,0,'979f559b00a81a320f816d78e63b55de','2025-08-28 15:24:07','2025-09-01 08:48:55',10,50);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `songId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wishlists_songId_userId_unique` (`userId`,`songId`),
  KEY `songId` (`songId`),
  CONSTRAINT `wishlists_ibfk_127` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_128` FOREIGN KEY (`songId`) REFERENCES `songs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (21,1,3),(22,1,4),(165,1,11),(167,1,12),(160,1,14),(33,1,17),(55,1,19),(196,1,21),(113,1,25),(153,1,27),(166,1,28),(169,1,30),(171,1,31),(191,1,32),(213,1,33),(199,1,35),(198,1,36),(207,1,39),(209,1,40),(212,1,41),(108,3,20),(205,4,33),(203,4,35),(202,4,36),(211,4,38),(210,4,39),(70,5,13),(73,5,17),(72,5,19),(71,5,20),(69,5,25),(195,5,33),(148,6,24),(208,9,39);
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-04  0:12:28
