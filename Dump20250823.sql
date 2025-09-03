-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: yamanote.proxy.rlwy.net    Database: railway
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` varchar(255) NOT NULL,
  `requestId` varchar(255) NOT NULL,
  `amount` int NOT NULL,
  `orderInfo` varchar(255) NOT NULL,
  `payUrl` varchar(255) DEFAULT NULL,
  `resultCode` int DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` enum('pending','completed','uncompleted') DEFAULT 'pending',
  `userId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderId` (`orderId`),
  UNIQUE KEY `orderId_2` (`orderId`),
  UNIQUE KEY `orderId_3` (`orderId`),
  UNIQUE KEY `orderId_4` (`orderId`),
  UNIQUE KEY `orderId_5` (`orderId`),
  UNIQUE KEY `orderId_6` (`orderId`),
  UNIQUE KEY `orderId_7` (`orderId`),
  UNIQUE KEY `orderId_8` (`orderId`),
  UNIQUE KEY `orderId_9` (`orderId`),
  UNIQUE KEY `orderId_10` (`orderId`),
  UNIQUE KEY `orderId_11` (`orderId`),
  UNIQUE KEY `orderId_12` (`orderId`),
  UNIQUE KEY `orderId_13` (`orderId`),
  UNIQUE KEY `orderId_14` (`orderId`),
  UNIQUE KEY `orderId_15` (`orderId`),
  UNIQUE KEY `orderId_16` (`orderId`),
  UNIQUE KEY `orderId_17` (`orderId`),
  UNIQUE KEY `orderId_18` (`orderId`),
  UNIQUE KEY `orderId_19` (`orderId`),
  UNIQUE KEY `orderId_20` (`orderId`),
  UNIQUE KEY `orderId_21` (`orderId`),
  UNIQUE KEY `orderId_22` (`orderId`),
  UNIQUE KEY `orderId_23` (`orderId`),
  UNIQUE KEY `orderId_24` (`orderId`),
  UNIQUE KEY `orderId_25` (`orderId`),
  UNIQUE KEY `orderId_26` (`orderId`),
  UNIQUE KEY `orderId_27` (`orderId`),
  UNIQUE KEY `orderId_28` (`orderId`),
  UNIQUE KEY `orderId_29` (`orderId`),
  UNIQUE KEY `orderId_30` (`orderId`),
  UNIQUE KEY `orderId_31` (`orderId`),
  UNIQUE KEY `orderId_32` (`orderId`),
  UNIQUE KEY `orderId_33` (`orderId`),
  UNIQUE KEY `orderId_34` (`orderId`),
  UNIQUE KEY `orderId_35` (`orderId`),
  UNIQUE KEY `orderId_36` (`orderId`),
  UNIQUE KEY `orderId_37` (`orderId`),
  UNIQUE KEY `orderId_38` (`orderId`),
  UNIQUE KEY `orderId_39` (`orderId`),
  UNIQUE KEY `orderId_40` (`orderId`),
  UNIQUE KEY `orderId_41` (`orderId`),
  UNIQUE KEY `orderId_42` (`orderId`),
  UNIQUE KEY `orderId_43` (`orderId`),
  UNIQUE KEY `orderId_44` (`orderId`),
  UNIQUE KEY `orderId_45` (`orderId`),
  UNIQUE KEY `orderId_46` (`orderId`),
  UNIQUE KEY `orderId_47` (`orderId`),
  UNIQUE KEY `orderId_48` (`orderId`),
  UNIQUE KEY `orderId_49` (`orderId`),
  UNIQUE KEY `orderId_50` (`orderId`),
  UNIQUE KEY `orderId_51` (`orderId`),
  UNIQUE KEY `orderId_52` (`orderId`),
  UNIQUE KEY `orderId_53` (`orderId`),
  UNIQUE KEY `orderId_54` (`orderId`),
  UNIQUE KEY `orderId_55` (`orderId`),
  UNIQUE KEY `orderId_56` (`orderId`),
  UNIQUE KEY `orderId_57` (`orderId`),
  UNIQUE KEY `orderId_58` (`orderId`),
  UNIQUE KEY `orderId_59` (`orderId`),
  UNIQUE KEY `orderId_60` (`orderId`),
  UNIQUE KEY `orderId_61` (`orderId`),
  UNIQUE KEY `orderId_62` (`orderId`),
  KEY `userId` (`userId`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'2ef3ae5a-e037-48a2-9e63-a354333d8cfe','9222ebfa-5cd4-4c60-85cd-2eedc8e91ff3',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wyZWYzYWU1YS1lMDM3LTQ4YTItOWU2My1hMzU0MzMzZDhjZmU&s=6dee71dfd296f84cff0eb93136aacbbae152d95889575734e7e0590baac4ee6d',NULL,NULL,'pending',1,'2025-07-01 04:34:58','2025-07-01 04:34:58'),(2,'478de905-1eb4-46de-afef-7f99ee750ba6','20fa1911-7ada-482c-ae66-b28a9ed8e419',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w0NzhkZTkwNS0xZWI0LTQ2ZGUtYWZlZi03Zjk5ZWU3NTBiYTY&s=b7547e25a2b538bb5202368537a6d2218868af796a052745f7209630f37eb0c2',NULL,NULL,'pending',1,'2025-07-01 04:49:34','2025-07-01 04:49:34'),(3,'6b4e6090-b814-4301-8666-a46e8511d38c','9e29d5a4-05de-44a0-a5c6-8f88912da367',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w2YjRlNjA5MC1iODE0LTQzMDEtODY2Ni1hNDZlODUxMWQzOGM&s=5c0cce6d46b1bea96bac97c1a7480812f9d2da0f16c86ca05e69c7046a7bc784',NULL,NULL,'pending',1,'2025-07-01 04:54:18','2025-07-01 04:54:18'),(4,'0d0ac6a4-93fd-44da-8a3d-10b730f51e32','9d51ecb8-c575-45f4-b4ab-8a44e011abad',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wwZDBhYzZhNC05M2ZkLTQ0ZGEtOGEzZC0xMGI3MzBmNTFlMzI&s=8412c0136258afa658508685c7ec214ac754aa989a62c0bb7f5e43dc874faa91',NULL,NULL,'pending',1,'2025-07-01 04:58:07','2025-07-01 04:58:07'),(5,'5d9723af-cd71-43ad-b966-8d95765e7e66','db1c3380-9ff4-4a42-8a80-e2462fc80391',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w1ZDk3MjNhZi1jZDcxLTQzYWQtYjk2Ni04ZDk1NzY1ZTdlNjY&s=fe9c687e23a847b3a81383897ace2b30c7453353da876138a63a7c1173d45f55',NULL,NULL,'pending',1,'2025-07-01 05:02:17','2025-07-01 05:02:17'),(6,'c8d89e3c-6bb6-4a57-85a5-1a8282eefa40','4adc40ae-bca3-4105-b869-023a20008e20',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xjOGQ4OWUzYy02YmI2LTRhNTctODVhNS0xYTgyODJlZWZhNDA&s=5003a84723590bade59e132136c353a937406b0f26540bf430ba214ace51ed94',NULL,NULL,'pending',1,'2025-07-01 05:16:45','2025-07-01 05:16:45'),(7,'07f6f67e-c61e-432c-8106-3160ec03b92a','2d3da8a6-757e-41c7-a901-715273e1da87',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wwN2Y2ZjY3ZS1jNjFlLTQzMmMtODEwNi0zMTYwZWMwM2I5MmE&s=40a1b3cf08de0b0ccd5c218ddc46316c4ff6a40e00eef858207bcde6d8539ca8',NULL,NULL,'pending',1,'2025-07-01 05:19:46','2025-07-01 05:19:46'),(8,'4f343a5b-6946-44e2-b0a1-e5f4feb8e73b','78fbb5fa-5f11-4b0e-8838-c80cee493abf',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w0ZjM0M2E1Yi02OTQ2LTQ0ZTItYjBhMS1lNWY0ZmViOGU3M2I&s=b7bd6564f750022aa52c4f3367274c6b2211bae462d942e5ff4a477024a8c23a',NULL,NULL,'pending',1,'2025-07-01 05:23:03','2025-07-01 05:23:03'),(9,'da3e6778-5f49-4258-a2a0-63b0f28f0a15','ac5784d1-1fef-4061-92ae-45f585d1e1cf',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xkYTNlNjc3OC01ZjQ5LTQyNTgtYTJhMC02M2IwZjI4ZjBhMTU&s=2c7e72d9f87487a0dbf2ac00442db011509911ad417aa038bc4ea5da0889b62e',0,'Successful.','completed',1,'2025-07-01 05:26:55','2025-07-01 05:33:49'),(10,'e8b8dbe6-e4df-4171-890c-55cb7cd65cf5','566d029f-9c1f-4efa-9638-4254db94d5be',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xlOGI4ZGJlNi1lNGRmLTQxNzEtODkwYy01NWNiN2NkNjVjZjU&s=7190983f12d0be437b52c885957c576675a7b529bb36bc95abb455437ce7bafa',0,'Successful.','completed',1,'2025-07-01 05:36:31','2025-07-01 05:37:18'),(11,'e9a6d16e-f813-44e9-a94d-0749103750fc','bbea6cf6-d89b-46e1-bf43-b7f1e3b9c736',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xlOWE2ZDE2ZS1mODEzLTQ0ZTktYTk0ZC0wNzQ5MTAzNzUwZmM&s=327e9e9ea43ab2149c5c5a18cfb2147e0bbc92622e79ad8bde7f121432f893c7',7002,'Transaction is being processed by the provider of the payment instrument selected.','uncompleted',1,'2025-07-01 06:53:44','2025-07-01 06:54:39'),(12,'01d7e2fe-7a1d-47bf-910d-6cbc8569d100','bf98f684-c92b-48a0-b2cd-7aafb5341436',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wwMWQ3ZTJmZS03YTFkLTQ3YmYtOTEwZC02Y2JjODU2OWQxMDA&s=afe98bf4ebae204563c15a413e4b3861f01e2fab2c708a17bbb35832d2318e51',0,'Successful.','completed',1,'2025-07-01 07:00:17','2025-07-01 07:01:39'),(13,'9d74779b-3e52-4fd4-9de3-8040fc9556c8','81be2674-d795-4950-b2a2-3dc915479d74',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w5ZDc0Nzc5Yi0zZTUyLTRmZDQtOWRlMy04MDQwZmM5NTU2Yzg&s=ab4f13c11d255e3f24ddc6fea7d4c29fe97cd474edaefcbe6e035747d57647b1',0,'Successful.','completed',2,'2025-07-01 09:02:19','2025-07-01 09:03:18'),(14,'561d8ff1-fbe2-4e7a-bbe4-203963e7f285','882f96af-4732-4aff-9fa2-1142b27515be',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w1NjFkOGZmMS1mYmUyLTRlN2EtYmJlNC0yMDM5NjNlN2YyODU&s=62e8b58053cf64e6d8a0202ed3ec0de2781a76aa9a5beea4e3ffff4902a7627c',NULL,NULL,'pending',4,'2025-07-01 09:38:56','2025-07-01 09:38:56'),(16,'8718ece9-84aa-4ca4-b0a3-d23b7e2e81d2','ba3ee35a-9895-4287-a428-2808684ec6af',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w4NzE4ZWNlOS04NGFhLTRjYTQtYjBhMy1kMjNiN2UyZTgxZDI&s=c1122a4aaacf67b8613791cd1abf4a8bbb3e62d8a825267184729bdeea48c5b4',0,'Successful.','completed',4,'2025-07-01 09:59:32','2025-07-01 10:02:15'),(17,'c37d112b-185e-4df8-b601-412dd304697a','dfc948f1-0c03-4efa-9bdb-5262206aa80f',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xjMzdkMTEyYi0xODVlLTRkZjgtYjYwMS00MTJkZDMwNDY5N2E&s=fd6064d980e731c5d3903f458c2ff28b5020f036dc2299eb6ecf2e0d7e7d07a6',0,'Successful.','completed',4,'2025-07-01 10:05:43','2025-07-01 10:09:44'),(18,'a3ec14f6-fe57-4a22-b0c2-46183df27775','e1d96e7c-c97a-43be-b702-2f962ede300b',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xhM2VjMTRmNi1mZTU3LTRhMjItYjBjMi00NjE4M2RmMjc3NzU&s=ce0af450e51c2b044bba1e6e5180a2f10993b9f8953562727acdb423759016a9',NULL,NULL,'pending',4,'2025-07-01 10:11:49','2025-07-01 10:11:49'),(19,'2e69bde2-fea3-4c23-acdd-01bbd2607250','56b7d585-8e25-42ec-ac79-4fc9c94793c2',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wyZTY5YmRlMi1mZWEzLTRjMjMtYWNkZC0wMWJiZDI2MDcyNTA&s=33992bb39e31bedd3a250a3411369dfa5cd1b6b8dbe9f0deee335b243079d12c',NULL,NULL,'pending',4,'2025-07-01 10:16:15','2025-07-01 10:16:15'),(20,'e7d8827b-80bb-4ff9-b039-c0899a6db4c0','1050152f-75f2-4a1a-8357-90c12c6ea33e',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xlN2Q4ODI3Yi04MGJiLTRmZjktYjAzOS1jMDg5OWE2ZGI0YzA&s=5cc3d9877ea31c46eab0d4fd2d5ea32b5b15025a50c4ad2872db84862fc8759a',0,'Successful.','completed',4,'2025-07-01 11:12:41','2025-07-01 11:14:04'),(21,'e855d7c9-75db-4c96-bfab-acb8b9484ebe','82889e61-9556-433a-8978-4869ec1da68e',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xlODU1ZDdjOS03NWRiLTRjOTYtYmZhYi1hY2I4Yjk0ODRlYmU&s=9bedeab023a80cc578011915c1f64415cc7a7250e69c486d947aa9073a65fcd8',0,'Successful.','completed',4,'2025-07-01 11:16:37','2025-07-01 11:17:48'),(22,'bfbf116a-33a4-498e-93b8-f02cad4e08cd','b1bcd66d-ce82-479e-b54e-23b73e3a0e99',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xiZmJmMTE2YS0zM2E0LTQ5OGUtOTNiOC1mMDJjYWQ0ZTA4Y2Q&s=8cdaa239f3ba7b1f8e5f0bd099496c2afdda118f92aebcc0eae8d6702ab1650e',NULL,NULL,'pending',4,'2025-07-02 02:59:15','2025-07-02 02:59:15'),(23,'02891101-9b8d-443d-a733-ef4fc918a798','a80cfff9-8e43-4e53-8aad-264d3dbea238',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wwMjg5MTEwMS05YjhkLTQ0M2QtYTczMy1lZjRmYzkxOGE3OTg&s=38eb908783e8fbf10384f248836c3c6c483044b29b252e34278173426b80e33b',NULL,NULL,'pending',4,'2025-07-02 03:01:34','2025-07-02 03:01:34'),(24,'4c63a57e-9882-4d98-8d6f-e90ca17960d8','271f6c66-8f80-43d9-871e-7c70ae18a2ff',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w0YzYzYTU3ZS05ODgyLTRkOTgtOGQ2Zi1lOTBjYTE3OTYwZDg&s=de2f2d0cbfaa39a3959f4b7a9aad00c83a4d6734a716d99d22a46df8e8c9f2fd',NULL,NULL,'pending',4,'2025-07-02 03:08:04','2025-07-02 03:08:04'),(25,'8bf302fd-12c6-41a7-a9c7-08d9da8e8e11','a0f0fc7d-e3ad-4f16-9d6e-fc867119bbeb',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w4YmYzMDJmZC0xMmM2LTQxYTctYTljNy0wOGQ5ZGE4ZThlMTE&s=cf83c8c3b7c957ff62c3664b662df548128b5b545cb305bfe330bc579d3f7302',0,'Successful.','completed',4,'2025-07-02 03:11:06','2025-07-02 03:12:20'),(26,'83fd79f0-a4ed-4902-9fc5-688474fc1579','de3a3eff-e2d5-41c8-9ec8-a8fe66b16e2b',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w4M2ZkNzlmMC1hNGVkLTQ5MDItOWZjNS02ODg0NzRmYzE1Nzk&s=79229677b86d13c685460edd0c1e3509bd9a894b40df6f10923f7b4b5a159206',0,'Successful.','completed',4,'2025-07-02 03:16:42','2025-07-02 03:18:07'),(27,'1eda5edd-f940-4b5f-b2ac-d5d05e976143','f195c027-1ec3-46fe-8d70-afc1a2cf54a3',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wxZWRhNWVkZC1mOTQwLTRiNWYtYjJhYy1kNWQwNWU5NzYxNDM&s=15672ac5289344987d56d9b016e057f1f1b0029c928240b023339f88add47d80',0,'Successful.','completed',4,'2025-07-02 03:22:16','2025-07-02 03:23:15'),(28,'9f37db6f-fd34-4053-b538-6c03fd240ece','1ce7e288-5732-4927-92ca-2d509996c2d9',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w5ZjM3ZGI2Zi1mZDM0LTQwNTMtYjUzOC02YzAzZmQyNDBlY2U&s=29a3fe47162fa474722d8b67cddb42e42788b30a985d08a88abe70cb5316f725',0,'Successful.','completed',4,'2025-07-02 03:30:20','2025-07-02 03:31:53'),(29,'8cd0cf23-1570-4a29-92f9-d7b00282a3c2','1bb128f0-fe85-4b0a-8c15-0aed67d63199',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w4Y2QwY2YyMy0xNTcwLTRhMjktOTJmOS1kN2IwMDI4MmEzYzI&s=1e398250f79cd2c54a6cd8d178692c12790a2d372e1f198702fefff3cd7905eb',0,'Successful.','completed',4,'2025-07-02 03:38:02','2025-07-02 03:39:25'),(30,'edabe78a-1f29-416e-96a6-ff261b7b2d1f','2f3ece28-6ce8-44c9-b694-978635b461f1',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xlZGFiZTc4YS0xZjI5LTQxNmUtOTZhNi1mZjI2MWI3YjJkMWY&s=426bfde14536275272c626c42e3029edbbfe7efb657a47656bf1945ad6672d0e',0,'Successful.','completed',4,'2025-07-02 03:41:59','2025-07-02 03:42:54'),(31,'2a83f4db-299d-4076-9179-aa62c34f7fed','bc9cc077-a517-444d-8597-ba0499602cba',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wyYTgzZjRkYi0yOTlkLTQwNzYtOTE3OS1hYTYyYzM0ZjdmZWQ&s=032637705ad2520aaae673752c96ed5b3db469ea5ccad7ddd75e7bb52e641cfa',0,'Successful.','completed',4,'2025-07-02 03:49:07','2025-07-02 03:50:06'),(32,'b13bd679-b921-4339-8fdd-299dec2d01e2','09d2304d-ee58-4e15-a6bf-41e979359299',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xiMTNiZDY3OS1iOTIxLTQzMzktOGZkZC0yOTlkZWMyZDAxZTI&s=43be68c596637a6508c0bc2fec291201af367f94a9331b9292916ea87391b3aa',0,'Successful.','completed',4,'2025-07-02 03:56:06','2025-07-02 03:58:21'),(33,'9f44d335-2936-4054-b4b1-4bb597d67a31','adf16b99-8e6d-4a73-84da-07341049d96b',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w5ZjQ0ZDMzNS0yOTM2LTQwNTQtYjRiMS00YmI1OTdkNjdhMzE&s=4adaa9a79b3283b19b407d717b4abd6b9f3ac86e4bfcff25e76ea3de4a4860fb',0,'Successful.','completed',4,'2025-07-02 07:40:01','2025-07-02 07:41:13'),(34,'2eb84fa2-dd99-4618-b028-ffbabd53d611','53caeab8-758f-4e5f-8a8d-91544e00577a',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wyZWI4NGZhMi1kZDk5LTQ2MTgtYjAyOC1mZmJhYmQ1M2Q2MTE&s=656f58aa2eb263d9a67f970026498c0417c34cd63d39b269279959e3edad8628',0,'Successful.','completed',4,'2025-07-02 07:47:53','2025-07-02 07:54:24'),(35,'a36ea08d-801f-41fd-a3c5-af6f7aed2911','f0d45f64-8840-4d17-9dd3-7685859d15ae',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xhMzZlYTA4ZC04MDFmLTQxZmQtYTNjNS1hZjZmN2FlZDI5MTE&s=0546d6767de66be99c98d1a93a5da341e2dabe94e91c5fd633e2ade09dd1fc3f',0,'Successful.','completed',4,'2025-07-02 08:28:12','2025-07-02 08:29:14'),(36,'473c338d-7bb5-4bd3-8918-2cec438cd73a','d86ad5be-be13-4ecc-b589-64050b8b774a',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w0NzNjMzM4ZC03YmI1LTRiZDMtODkxOC0yY2VjNDM4Y2Q3M2E&s=acbf1df72453c42a7cfd9db77aad9b42e3c087c44698c2478e0ec858744efb9e',0,'Successful.','completed',4,'2025-07-02 08:30:24','2025-07-02 08:31:16'),(37,'2d2b2895-4100-451c-b791-b603d8457b4c','a76455c9-3fc5-42bc-89c9-79e566b88f4d',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wyZDJiMjg5NS00MTAwLTQ1MWMtYjc5MS1iNjAzZDg0NTdiNGM&s=50ddee4f4dc929ffa31ebe75e6c993784b63aa3ba1ba51330e5fb031f3a9aab4',0,'Successful.','completed',4,'2025-07-02 09:59:20','2025-07-02 10:00:19'),(38,'a155b7ec-5a02-465c-a097-2deb02e5fed3','666c60e0-d5a7-422b-a6a3-2895fd6e044d',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xhMTU1YjdlYy01YTAyLTQ2NWMtYTA5Ny0yZGViMDJlNWZlZDM&s=201fa5615adb1540c7d65a3b416282ff0fdaa228f19520acf52667363bee4dee',0,'Successful.','completed',4,'2025-07-04 06:39:59','2025-07-04 06:41:05'),(39,'3a8a355f-05ef-4bbc-bed7-b9ae0fc19a66','53ada94d-ac34-4781-a223-f3dfe637da85',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wzYThhMzU1Zi0wNWVmLTRiYmMtYmVkNy1iOWFlMGZjMTlhNjY&s=9339297d38f9ca33a9f0d4ebe002c42908041edb0f3a63214705bcd28a1955d2',0,'Successful.','completed',5,'2025-07-04 06:49:52','2025-07-04 06:51:23'),(40,'7b756283-3b30-4221-8194-800360d17ee8','b2958c51-6bee-4ec1-9759-84d867afd930',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w3Yjc1NjI4My0zYjMwLTQyMjEtODE5NC04MDAzNjBkMTdlZTg&s=ded0b5a44493544d8092a3f38b92b6f255b73b5f787d0b32c0e94b798ad320af',0,'Successful.','completed',5,'2025-07-04 06:58:57','2025-07-04 06:59:53'),(41,'897c0f14-e7d7-4741-a633-182d7d08a8b1','0c80a838-bf45-463f-8166-e171895493a1',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w4OTdjMGYxNC1lN2Q3LTQ3NDEtYTYzMy0xODJkN2QwOGE4YjE&s=8d40d81e49f131668a4f2c8531f700d869ace125c97caa177da10da938ae6516',NULL,NULL,'pending',6,'2025-07-05 13:47:38','2025-07-05 13:47:38'),(42,'63360d44-d58f-4e8e-8ebd-0b3ad0e18ec5','781fc936-4b70-415b-a0b1-47d0e5c152ab',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w2MzM2MGQ0NC1kNThmLTRlOGUtOGViZC0wYjNhZDBlMThlYzU&s=af691abb7735c97314170bbb5a88f05aeb48fdc8d18a7a7e8f35a8b975c71c95',NULL,NULL,'pending',6,'2025-07-05 13:50:00','2025-07-05 13:50:00'),(43,'15bdf9f3-9cdf-4f52-8c70-ccf03c97209a','4037cc81-7ef1-497f-ad98-0d9bab0f919f',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wxNWJkZjlmMy05Y2RmLTRmNTItOGM3MC1jY2YwM2M5NzIwOWE&s=6a7dae7fd6f9f499d34bbf509fefdfc2c55a341ae50e9b584f178f0aff4b4693',7002,'Transaction is being processed by the provider of the payment instrument selected.','uncompleted',6,'2025-07-05 13:53:09','2025-07-05 13:54:17'),(44,'d2315f18-e497-4299-a23c-06617abc7630','ce0323fb-54e9-4f59-a2f1-f00c8910aab0',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xkMjMxNWYxOC1lNDk3LTQyOTktYTIzYy0wNjYxN2FiYzc2MzA&s=a05a6d79e66214a107548004102a11a7ee3224e9b83a9b867f4bf6fe97430623',NULL,NULL,'pending',6,'2025-07-05 13:55:39','2025-07-05 13:55:39'),(45,'e8e6f7b6-c243-4df7-9d14-41fca7d6fdfb','33de30a0-9c34-4933-8aa6-9a3b4a1f96ce',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xlOGU2ZjdiNi1jMjQzLTRkZjctOWQxNC00MWZjYTdkNmZkZmI&s=e52a097216eca630f631e9d08fa933765559b05401f506692cc52363a2b1d941',NULL,NULL,'pending',6,'2025-07-05 13:58:47','2025-07-05 13:58:47'),(46,'ee18411e-41dc-422b-9144-26985bbe8283','dd1d18dc-9242-4e22-a33b-748d5c449ca5',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xlZTE4NDExZS00MWRjLTQyMmItOTE0NC0yNjk4NWJiZTgyODM&s=955f457c0cdea9bed5efea069af5400aa7ad2195b4c7e6f65bddca1f6d4c1be3',NULL,NULL,'pending',2,'2025-07-07 05:03:03','2025-07-07 05:03:03'),(47,'cd9bf5ce-c5af-4cde-9b10-702336003291','0b8b6e92-3ddd-4d43-8fc0-6861ed32f469',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xjZDliZjVjZS1jNWFmLTRjZGUtOWIxMC03MDIzMzYwMDMyOTE&s=431d34a1cf3c54a58a15eedbbc2b5e376dea071cc19b26bddb7a57aeab3bc4a3',NULL,NULL,'pending',2,'2025-07-07 05:03:24','2025-07-07 05:03:24'),(48,'2e706776-6ee9-49c4-a9c9-640a2198a8ea','bef263c3-19ea-46b8-88a4-de7863db0416',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wyZTcwNjc3Ni02ZWU5LTQ5YzQtYTljOS02NDBhMjE5OGE4ZWE&s=13f440de75c50c3c34f3fc3ff39f5308006bae9069443edbe7fdd71867253e36',NULL,NULL,'pending',2,'2025-07-07 05:05:06','2025-07-07 05:05:06'),(49,'10c4e4f2-c75e-4459-ab05-e3acb0c64796','8bbd6d60-d43c-4b64-afb5-75b0e9c2bcb2',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wxMGM0ZTRmMi1jNzVlLTQ0NTktYWIwNS1lM2FjYjBjNjQ3OTY&s=089d037f2a7cfcd4cbe19273a36867a6527a3f1246cab44fa53ebc491388b7a7',NULL,NULL,'pending',2,'2025-07-07 05:16:26','2025-07-07 05:16:26'),(50,'51f0b6ea-b04d-495e-bcad-691d5d5273e3','d4be2bcc-3fea-4576-ba7a-654f737d0333',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w1MWYwYjZlYS1iMDRkLTQ5NWUtYmNhZC02OTFkNWQ1MjczZTM&s=e53fa0fbc5234a5a79d560dc86021c6c8ca08dba8d5b88b9e5e0616c7c1e9d8a',NULL,NULL,'pending',2,'2025-07-07 05:26:24','2025-07-07 05:26:24'),(51,'67bbc892-dbac-4e3c-9430-8163a33fd262','e7d86b6d-2722-4d4b-b18e-493c7ea73f04',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w2N2JiYzg5Mi1kYmFjLTRlM2MtOTQzMC04MTYzYTMzZmQyNjI&s=658723b9d61d83fe4682390af2c2fd230da517079dd284e24da3d02637a8931a',NULL,NULL,'pending',4,'2025-07-07 05:31:38','2025-07-07 05:31:38'),(52,'b915f14c-ec5e-4f79-bf7a-cb1d32792042','bf270be2-a758-471d-8d1c-4380c37604ba',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xiOTE1ZjE0Yy1lYzVlLTRmNzktYmY3YS1jYjFkMzI3OTIwNDI&s=ec9d1c9adb626a759c025f3d22b7c575b462a1e4628d0bb403ac79dbd0c5cdf6',NULL,NULL,'pending',4,'2025-07-07 05:57:04','2025-07-07 05:57:04'),(53,'9b147f82-c4e2-44cb-adc8-3fd8b3688c4e','f0d3bc46-6318-44f0-a11e-af24c084e4a8',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w5YjE0N2Y4Mi1jNGUyLTQ0Y2ItYWRjOC0zZmQ4YjM2ODhjNGU&s=02cde74052446bd8cf0ce5977a2364e3765f489982f996f0c7ce644550efdc8f',NULL,NULL,'pending',4,'2025-07-07 06:49:40','2025-07-07 06:49:40'),(54,'273f3ab7-ae97-4b64-ac1a-503a7bf55fa6','c930d2ec-32a0-4ad7-8ef8-9ef832a45903',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wyNzNmM2FiNy1hZTk3LTRiNjQtYWMxYS01MDNhN2JmNTVmYTY&s=5a871836020876cc2664c03a795835000365fd709984b5cc1e859d4724cf3396',NULL,NULL,'pending',4,'2025-07-07 06:57:57','2025-07-07 06:57:57'),(55,'bd54b43f-763d-47ba-be32-4a9edbbf12ea','9517b464-cf8d-4232-af06-97ac5ebaf70a',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xiZDU0YjQzZi03NjNkLTQ3YmEtYmUzMi00YTllZGJiZjEyZWE&s=e757b1db1db7eb8f43f8a704fe7da173c5dd84de1f8c7a630852d482c945e1d0',NULL,NULL,'pending',4,'2025-07-07 07:12:54','2025-07-07 07:12:54'),(56,'71a304f4-9205-4497-947e-715b6e496415','faf18517-42e4-42c7-8ddc-2525b7325359',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w3MWEzMDRmNC05MjA1LTQ0OTctOTQ3ZS03MTViNmU0OTY0MTU&s=f24bb8a7dc40339a76d6021690527488444fda071ce88212185a7b26aee59cc1',NULL,NULL,'pending',4,'2025-07-07 07:17:05','2025-07-07 07:17:05'),(57,'12227daf-a13e-472f-b26f-16122991f697','689b2ec8-f53d-43ed-84df-e7172a468eb9',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wxMjIyN2RhZi1hMTNlLTQ3MmYtYjI2Zi0xNjEyMjk5MWY2OTc&s=56fb0cd5a5a8cea64b2e5f41eab075434b08ef3a13377ce93a3c9c80f4343775',NULL,NULL,'pending',4,'2025-07-07 07:26:34','2025-07-07 07:26:34'),(58,'d44e3197-64ea-48d9-a6d0-c6af5bb85704','e11ea70d-0bb9-41f7-ab00-83d68ebdf227',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xkNDRlMzE5Ny02NGVhLTQ4ZDktYTZkMC1jNmFmNWJiODU3MDQ&s=fdcb6222ae58c38031035a4e00e73d82926e26ef1c437defca03cf7f8a488a89',NULL,NULL,'pending',4,'2025-07-07 07:28:36','2025-07-07 07:28:36'),(59,'826b8d26-ea24-40df-b006-902bbaabb6ca','99a97ca8-9a15-4a8f-9960-429c0aadd237',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w4MjZiOGQyNi1lYTI0LTQwZGYtYjAwNi05MDJiYmFhYmI2Y2E&s=ffe41358411fb8960d322a01efda032ee22907c7cd259d88fde54d36d3f48d83',0,'Successful.','completed',4,'2025-07-07 07:49:26','2025-07-07 07:54:51'),(60,'bcad13d9-00b5-4b88-81f8-82f8a08e1ab8','e8644bf4-a3ce-4f11-89f9-ca83882ea6b8',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xiY2FkMTNkOS0wMGI1LTRiODgtODFmOC04MmY4YTA4ZTFhYjg&s=c1c82aeb23acb08fe065f2d9653c66951b04f36da41398f4db5f50c288ce247d',NULL,NULL,'pending',4,'2025-07-07 10:39:35','2025-07-07 10:39:35'),(61,'7c284163-8c7f-4645-888b-486aec66db81','2428aaae-4258-40c6-9a24-652b888a86f6',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w3YzI4NDE2My04YzdmLTQ2NDUtODg4Yi00ODZhZWM2NmRiODE&s=09eb03e770a28cadae66af529d53c5ea7feb674614705a3834ac4df72eef9db4',NULL,NULL,'pending',4,'2025-07-07 10:42:04','2025-07-07 10:42:04'),(62,'5eaeb45b-f995-46a9-bb06-71aab8f555c5','9a09ffee-16c5-465f-b379-3295c78854db',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w1ZWFlYjQ1Yi1mOTk1LTQ2YTktYmIwNi03MWFhYjhmNTU1YzU&s=bc36d3c9590aece5d65f341938e04139c9621e212de734cd4a49b57798f6f598',NULL,NULL,'pending',4,'2025-07-07 10:53:00','2025-07-07 10:53:00'),(63,'1e1efb80-f413-4b1c-b54a-371f3eef378d','bbe58de9-d28b-4100-a2c9-058020f9b155',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wxZTFlZmI4MC1mNDEzLTRiMWMtYjU0YS0zNzFmM2VlZjM3OGQ&s=00215c33bcea8cf1dd82e8673a1e76b024b5a0ee8d810abfecc7a1141afa9a73',NULL,NULL,'pending',4,'2025-07-07 10:58:28','2025-07-07 10:58:28'),(64,'ae24c776-f9f3-496b-80a6-b33ae4cddf2f','05662d48-9579-41aa-acc6-18bf702cc276',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xhZTI0Yzc3Ni1mOWYzLTQ5NmItODBhNi1iMzNhZTRjZGRmMmY&s=a7f98ffd3ff845a0a495877ee617f4aff74f9d2d7d31a1212000204e022cb688',NULL,NULL,'pending',4,'2025-07-08 02:50:16','2025-07-08 02:50:16'),(65,'559fc056-e1ba-4eef-98fd-a05fc1641c5b','585b1ae7-ff20-4a79-979d-da4e2a33a5b0',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w1NTlmYzA1Ni1lMWJhLTRlZWYtOThmZC1hMDVmYzE2NDFjNWI&s=45ba805385e67cb1a5dc39c33902570f2bd5b5a19cfaa076057169ef9d48f7e4',NULL,NULL,'pending',4,'2025-07-08 02:51:59','2025-07-08 02:51:59'),(66,'3dc079f1-2c51-42a5-84be-eca268297601','a4e4de97-e51f-4866-97f2-3a0c1af65ba6',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wzZGMwNzlmMS0yYzUxLTQyYTUtODRiZS1lY2EyNjgyOTc2MDE&s=297c9c518807590a99f2f87403a7c8de756cfca38c22fcedc1eeebfa0f6b1447',NULL,NULL,'pending',4,'2025-07-08 02:56:15','2025-07-08 02:56:15'),(67,'0724db10-531d-4ae5-afed-352e91aa6ad3','b9a88be8-54c8-4b22-bb61-8c1f9e76c971',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wwNzI0ZGIxMC01MzFkLTRhZTUtYWZlZC0zNTJlOTFhYTZhZDM&s=be24fd556aff81d3619cea607589be5efa1d9571440e624a064954de7ef128a0',NULL,NULL,'pending',4,'2025-07-08 02:58:18','2025-07-08 02:58:18'),(68,'6a044e2f-7d33-40dd-91e8-cae4ec1bc9df','c5123c27-40be-4e3f-a091-c57dc6d482e0',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w2YTA0NGUyZi03ZDMzLTQwZGQtOTFlOC1jYWU0ZWMxYmM5ZGY&s=3ddc3eb234a044674b7aaf55d5e3340f03adb4d1044dc414f202457d29b5af45',NULL,NULL,'pending',4,'2025-07-08 03:05:04','2025-07-08 03:05:04'),(69,'fea7c428-bb5e-4c24-a3be-8ce0adcf4ab4','3fb9cf01-ac1b-4efc-871c-0e7d58ccd59a',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xmZWE3YzQyOC1iYjVlLTRjMjQtYTNiZS04Y2UwYWRjZjRhYjQ&s=d3339284bdbc32395f09443c597f38e26fa93325f39d78807b04d919373d8d67',0,'Successful.','completed',4,'2025-07-08 03:24:46','2025-07-08 03:26:56'),(70,'f9d3d95d-c873-4b6f-9afe-c53b4d4dadea','c7e9a292-1028-4efc-96b5-39a8106f22c1',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xmOWQzZDk1ZC1jODczLTRiNmYtOWFmZS1jNTNiNGQ0ZGFkZWE&s=dcec2d60b9b50d6d1d989d536d94041ac761531d6371d1b2dbec4e275fd882d8',0,'Successful.','completed',4,'2025-07-08 03:38:47','2025-07-08 03:39:46'),(71,'e76fa7b2-0bf6-4d46-b0a8-fbcb1446f129','d9855fed-2b49-4cd5-8509-e16d4b0e9c4e',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xlNzZmYTdiMi0wYmY2LTRkNDYtYjBhOC1mYmNiMTQ0NmYxMjk&s=e3150e4f59e888d3fa5ebdd56aaa7d32b477a79efc09d1e6ed4cbbc62013d966',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-08 03:56:43','2025-07-08 03:57:10'),(72,'84c03b0d-ae53-461e-a84e-ed2fd969b4b6','5db448d8-73a8-4700-88de-2901bc2f2f70',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w4NGMwM2IwZC1hZTUzLTQ2MWUtYTg0ZS1lZDJmZDk2OWI0YjY&s=f0621c1e8f81761aeb7497a53fd26b63d5321c8c02fdbfdf2d82358ca57f08d1',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-08 10:01:02','2025-07-08 10:02:55'),(73,'6d96920b-9267-4975-b637-2016e82bf9d8','4dcfad8a-5fe2-48c8-abcb-129159b3d3fb',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w2ZDk2OTIwYi05MjY3LTQ5NzUtYjYzNy0yMDE2ZTgyYmY5ZDg&s=45d5b307bbed2f623c03bc8b2bf3de606fd99d8e219f202345f93f2a823e4e40',0,'Successful.','completed',4,'2025-07-14 09:03:40','2025-07-14 09:04:39'),(74,'2a79f789-b678-4994-bab2-3976d1f5af70','cd025889-6f8a-458d-8110-39036a50fb35',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wyYTc5Zjc4OS1iNjc4LTQ5OTQtYmFiMi0zOTc2ZDFmNWFmNzA&s=1c0c102b2d92035539ed32ab7ab6cc6a0afda0f24561a2a00d30cbcb5f62b246',0,'Successful.','completed',4,'2025-07-14 10:06:09','2025-07-14 10:08:45'),(75,'0267648b-b72b-45bc-983a-24c0c4c65782','5229be6b-c1e2-4d19-a0de-bf51bfe6b15f',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wwMjY3NjQ4Yi1iNzJiLTQ1YmMtOTgzYS0yNGMwYzRjNjU3ODI&s=6b175a027800e1e44c2785c4923f8d7f8cc63084c403b66bfd077b321b1c9116',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-16 04:08:40','2025-07-16 04:10:32'),(76,'862e8ecc-cc34-4d03-a496-b9b96b953d7f','e3d60d6e-0f87-420d-85aa-7bd1eec34992',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w4NjJlOGVjYy1jYzM0LTRkMDMtYTQ5Ni1iOWI5NmI5NTNkN2Y&s=1f6a8f182962b159e3e7527daa1e0bd9e52a70e2da81264835b23683be38e59c',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-16 04:11:51','2025-07-16 04:15:28'),(77,'c5fcfcd4-ce6a-43e2-a2d5-1559d52cf0d8','a3faa488-03af-4d2f-b266-0dc48c3b5fc6',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xjNWZjZmNkNC1jZTZhLTQzZTItYTJkNS0xNTU5ZDUyY2YwZDg&s=8d633a73f6ebd93bd788211b482d682fe7cf078d6a5915e0de0ce9650d450ae1',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-16 04:16:37','2025-07-16 04:17:58'),(78,'f837a14e-fccb-43e9-ae74-1a4c11e24a9e','ce1f5808-047e-48fb-99cf-d8cdb34fc96b',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xmODM3YTE0ZS1mY2NiLTQzZTktYWU3NC0xYTRjMTFlMjRhOWU&s=fedbccbd4282f49486c31227eb0b574abd1dd581ce8880ac3b32b8deab7e73e2',0,'Successful.','completed',4,'2025-07-16 06:37:27','2025-07-16 06:38:41'),(79,'53fe0e96-a155-4dca-9db7-a03e48ca6bd4','9d0c8f6a-4eda-4e29-867a-d5230004fec5',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w1M2ZlMGU5Ni1hMTU1LTRkY2EtOWRiNy1hMDNlNDhjYTZiZDQ&s=0ff10fc2f036098efc88c370a3d98b17291b211d30647cde162b9e491ebf1daa',0,'Successful.','completed',4,'2025-07-18 03:29:09','2025-07-18 03:30:17'),(80,'5e58ddc0-1986-41c6-a5d2-6c19a379be6b','493c72f5-e7e0-4b0a-bd03-45a7ab4a97cc',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w1ZTU4ZGRjMC0xOTg2LTQxYzYtYTVkMi02YzE5YTM3OWJlNmI&s=cf8719c75d029730f279c935082dc0e2066190a9144402131b4122afa877eeb8',NULL,NULL,'pending',4,'2025-07-22 07:28:58','2025-07-22 07:28:58'),(81,'ad07f81d-ad9a-42bd-9f87-01f0580de2fe','9d6f98a0-3277-4f54-893c-1962c1530d67',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xhZDA3ZjgxZC1hZDlhLTQyYmQtOWY4Ny0wMWYwNTgwZGUyZmU&s=54bbcc46624bac2ced339523f966e799de5bfc07301bc0094d0659b16cb14a03',NULL,NULL,'pending',4,'2025-07-22 07:30:55','2025-07-22 07:30:55'),(82,'97e01ff9-4bf7-4486-ba31-f327abd00654','696098fc-7618-498b-9f73-b6bea6fa4e2e',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w5N2UwMWZmOS00YmY3LTQ0ODYtYmEzMS1mMzI3YWJkMDA2NTQ&s=a4c974d31f019a23f8d069889a79f818085344ef183dc07dfc7784f6b5559449',0,'Successful.','completed',4,'2025-07-22 07:35:43','2025-07-22 07:36:48'),(83,'75e82fd6-6be1-425d-a6c2-697573e2e39f','1012f017-0119-41a2-bf88-45421e29692c',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w3NWU4MmZkNi02YmUxLTQyNWQtYTZjMi02OTc1NzNlMmUzOWY&s=1f698d4a1a1d1489b418bb1376d16c0728518216977b52395a0922522e52da93',0,'Successful.','completed',4,'2025-07-22 11:14:50','2025-07-22 11:15:45'),(84,'422b1a2c-eb6a-44f1-82ff-93aac0cafd1a','7dfcfe8e-6ef1-4c96-9950-bc09883c5b37',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w0MjJiMWEyYy1lYjZhLTQ0ZjEtODJmZi05M2FhYzBjYWZkMWE&s=b4c2aaff2932579fa3240a48c78508e65893cd9c0018ed9dac5ba963f4b3a378',0,'Successful.','completed',4,'2025-07-22 11:17:44','2025-07-22 11:18:36'),(85,'7e0cd560-f33c-4e22-8469-fb288653680d','a86c6ada-993b-422f-a7df-4cbbfe97fb6d',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w3ZTBjZDU2MC1mMzNjLTRlMjItODQ2OS1mYjI4ODY1MzY4MGQ&s=b4d47331a9735a5403f858f65ea7f10dcdc8e7b01fbb74160dc77f1029b62543',0,'Successful.','completed',4,'2025-07-23 05:02:46','2025-07-23 05:03:50'),(86,'8d7c2f5d-1b77-42ab-b9e5-e566ea95322a','0e617eb0-6f69-461c-8c33-37ce95c85522',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w4ZDdjMmY1ZC0xYjc3LTQyYWItYjllNS1lNTY2ZWE5NTMyMmE&s=cca6955a9e30ef4e51e190042066f3100b3a9ba63f15db0ee0d613406e87e9f8',0,'Successful.','completed',4,'2025-07-30 03:11:48','2025-07-30 03:12:43'),(87,'7576a5c0-16ad-4a1c-be6a-8da6dedf18d3','56607c9a-57e1-4267-8f75-07f6fdf77ca1',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w3NTc2YTVjMC0xNmFkLTRhMWMtYmU2YS04ZGE2ZGVkZjE4ZDM&s=5b0a6e1e2a0fa9169757849f1fdbc4404183196344a6ca942eca2f51e7041163',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-07-30 08:31:20','2025-07-30 08:33:26'),(88,'e89d3e7a-9c63-4526-bdf5-a2f0842124a4','ca5c6b53-3831-4517-b9f7-31af6dfb2e46',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xlODlkM2U3YS05YzYzLTQ1MjYtYmRmNS1hMmYwODQyMTI0YTQ&s=ca58ce44aa97b964d255a5e7163bc2f043eb89684eaa34ea7b1381a65d5a7a39',NULL,NULL,'pending',4,'2025-08-01 04:46:58','2025-08-01 04:46:58'),(89,'c7cba994-32ec-46d5-83bc-e674cac21f3a','aedefa3b-0dfc-4b5c-836f-14c4711ee2a5',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xjN2NiYTk5NC0zMmVjLTQ2ZDUtODNiYy1lNjc0Y2FjMjFmM2E&s=d803da0bf7823bcb7b21cf4b176480fbb4d2a444779fef17c2957a125cc02245',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-01 04:54:59','2025-08-01 04:55:53'),(90,'288f5d9d-39be-40fc-bd50-71dd8f5307e1','d570db7e-e6e3-45c6-a923-26ab0855e074',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wyODhmNWQ5ZC0zOWJlLTQwZmMtYmQ1MC03MWRkOGY1MzA3ZTE&s=c307dfe13826abb981268120819fa2562798ce871ede077fc12a45a70aebd5bb',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-01 05:00:53','2025-08-01 05:01:35'),(91,'116bb809-d739-4e91-b413-a63a7b5db12e','e4da1e20-9ae7-4438-935d-51e901ad59d8',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wxMTZiYjgwOS1kNzM5LTRlOTEtYjQxMy1hNjNhN2I1ZGIxMmU&s=a63d49f7aee60d49abdad1d4c7e965389e1acae810ab16a1e905d4b8bb9c0590',0,'Successful.','completed',4,'2025-08-01 05:02:15','2025-08-01 05:03:17'),(92,'0465ea45-3d26-4f5c-8549-7d9f6a3d28da','65c5db5b-760b-40bf-9c1b-ab086d466c89',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wwNDY1ZWE0NS0zZDI2LTRmNWMtODU0OS03ZDlmNmEzZDI4ZGE&s=1ae880a2b14817ea9147aa8334de8cb14fa0e2ac93b912ed4fb394378b1fe9f4',0,'Successful.','completed',4,'2025-08-01 06:57:58','2025-08-01 06:59:09'),(93,'f4728390-4ea2-49ae-b55f-9720f141747c','30086522-e33b-49e7-9e78-ec3c52aabada',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xmNDcyODM5MC00ZWEyLTQ5YWUtYjU1Zi05NzIwZjE0MTc0N2M&s=37b1915f03ce4cba8862c41f1f3cc8a53d9992a6e9f9da15311af0538b14464f',0,'Successful.','completed',4,'2025-08-01 07:28:23','2025-08-01 07:29:22'),(94,'82d3f0ac-680b-4d46-8a0e-f194d55365c4','8e0109f6-6aa3-4b29-9c3b-d69a0c5a0f2f',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w4MmQzZjBhYy02ODBiLTRkNDYtOGEwZS1mMTk0ZDU1MzY1YzQ&s=2bea62b49fb66b0a190e58a6cfc4a50b60b292fd15c6f7389b86f94d252b68ce',NULL,NULL,'pending',5,'2025-08-01 07:31:30','2025-08-01 07:31:30'),(95,'bed44e19-dcfd-4350-9379-92609e3ae170','4deec00d-6b17-4c5c-a0ba-cd257537f65b',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xiZWQ0NGUxOS1kY2ZkLTQzNTAtOTM3OS05MjYwOWUzYWUxNzA&s=c0bff70d3cbc58a244dd76b6a9a9de3076135a5abda19975639d8fcbb64d221d',0,'Successful.','completed',5,'2025-08-01 07:33:35','2025-08-01 07:34:29'),(96,'ddca847d-9600-41a4-9034-4d56f404f6e4','fdc1669d-7467-4c4d-93bb-51d4166ac425',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xkZGNhODQ3ZC05NjAwLTQxYTQtOTAzNC00ZDU2ZjQwNGY2ZTQ&s=4f09a2949d8e3015d2eaebd0e5a3dd3f75011aa36d8ca1482897fe8ebb24f25f',NULL,NULL,'pending',4,'2025-08-06 08:22:49','2025-08-06 08:22:49'),(97,'f1069d33-f79b-42a6-a603-ef4f18c34c88','bb16bf57-2156-4603-9d9b-f76d635fcab2',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xmMTA2OWQzMy1mNzliLTQyYTYtYTYwMy1lZjRmMThjMzRjODg&s=bb00bb132e9a1fdb162c4adc01c5d778ff143d303c23d8d79f63aa82fe45a735',NULL,NULL,'pending',4,'2025-08-06 08:25:13','2025-08-06 08:25:13'),(98,'938f220b-01ca-49e9-a1b2-07a3b5299243','e6d54516-d430-40cd-827f-5e9aecdf5765',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w5MzhmMjIwYi0wMWNhLTQ5ZTktYTFiMi0wN2EzYjUyOTkyNDM&s=4ffb1d8bab040fb1b6a4d55174121bfb30c047fafd34fa818bec940b209007e6',NULL,NULL,'pending',4,'2025-08-06 09:03:35','2025-08-06 09:03:35'),(99,'99815eb8-4382-465e-bb95-3b7d3ec0a6bb','acb77e4d-2126-4a46-926b-4792f6a09545',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w5OTgxNWViOC00MzgyLTQ2NWUtYmI5NS0zYjdkM2VjMGE2YmI&s=e9bb9712c6b5a0876495bc7932c1fe3322f95a9112da82522cb805bfb2488d24',NULL,NULL,'pending',9,'2025-08-08 15:55:46','2025-08-08 15:55:46'),(100,'f0dc2cb4-6496-46e1-939b-d99f5f9f67bb','da3a7fbd-0241-4faf-9996-308d6aa24723',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xmMGRjMmNiNC02NDk2LTQ2ZTEtOTM5Yi1kOTlmNWY5ZjY3YmI&s=60cd39000dbce498bf84670303b8e7c75b75346cf5d6620a340e3987b29dba2d',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',9,'2025-08-08 15:58:39','2025-08-08 15:59:23'),(101,'79a4badc-8056-4385-9c9e-08ae00dd933d','2686ecf9-ad6f-4739-8c6e-0888fb754a32',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w3OWE0YmFkYy04MDU2LTQzODUtOWM5ZS0wOGFlMDBkZDkzM2Q&s=5b97376674dedf34d042ff42c63dedf3def80c6aa6ff8ac05ef57ca4203a72dc',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',9,'2025-08-08 16:06:50','2025-08-08 16:07:21'),(102,'11373044-40d4-48cc-ac85-e3568853ce04','06b67cb3-da4c-4b9c-af13-ad02ed7c22f3',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wxMTM3MzA0NC00MGQ0LTQ4Y2MtYWM4NS1lMzU2ODg1M2NlMDQ&s=a82f2ca801696652d5513918144ad5dc6cb48ace8208b49447b8dad105fa0d7a',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',9,'2025-08-08 16:07:59','2025-08-08 16:08:35'),(103,'b37c0f5c-38ae-4d66-ac8f-533753162991','032acc5c-1ed1-4472-861e-f7573135282a',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xiMzdjMGY1Yy0zOGFlLTRkNjYtYWM4Zi01MzM3NTMxNjI5OTE&s=27d4fd7bdf5a3e76464ee8455c809b72818495f06e93efbec8f7a7e838521b85',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-08 16:15:52','2025-08-08 16:16:58'),(104,'a0215789-b7fe-41c6-b0b2-43bc9b0ec875','a19a4d07-a392-43ab-902b-f8235ffd564c',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xhMDIxNTc4OS1iN2ZlLTQxYzYtYjBiMi00M2JjOWIwZWM4NzU&s=425820d8440af89589a5da0815cfffc471d411f1b30b22d1ca7066da3fc119ec',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-08 16:17:55','2025-08-08 16:18:30'),(105,'fd1f191b-337c-4df6-9ad2-7c1cd0ca7aee','552ae4b7-7623-4e71-b250-acdc919f9182',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3xmZDFmMTkxYi0zMzdjLTRkZjYtOWFkMi03YzFjZDBjYTdhZWU&s=8b4c056aafc320938972b873b18dd623b4e5f2d7f1fdcbdcda901c01b1c83ac4',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-09 08:27:14','2025-08-09 08:29:43'),(106,'3a9d4a89-f85f-4139-b377-29155945acfe','8d22453f-0266-4ba8-839f-32f803675458',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wzYTlkNGE4OS1mODVmLTQxMzktYjM3Ny0yOTE1NTk0NWFjZmU&s=a14d7ed5fd571dc7a7578a0a105bf7aa08148a85bf310b379058af0030b16e8d',0,'Successful.','completed',4,'2025-08-21 09:37:20','2025-08-21 09:38:05'),(107,'07c1095b-9d08-476e-a835-eb4b57bf51d0','613ef12b-25ed-4bee-a7fb-22102c13ab82',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3wwN2MxMDk1Yi05ZDA4LTQ3NmUtYTgzNS1lYjRiNTdiZjUxZDA&s=c91efa03e39a5ca540a7f57a416c0d5ea387dc6ad8cf6d1e771ca9c65cdf4cdb',0,'Successful.','completed',4,'2025-08-21 09:44:45','2025-08-21 09:45:42'),(108,'8699deb6-e8a0-4298-8ba3-e6ed0e8308c2','51158275-99a4-4b63-81c9-4d7e471f7c30',10000,'Up premium','https://test-payment.momo.vn/v2/gateway/pay?t=TU9NT3w4Njk5ZGViNi1lOGEwLTQyOTgtOGJhMy1lNmVkMGU4MzA4YzI&s=0ab300894b963712bbfd9fe1f05677adb27afca2a10bb20f09618295b0feef0a',1006,'Giao dịch bị từ chối bởi người dùng.','uncompleted',4,'2025-08-21 09:49:58','2025-08-21 09:50:14'),(109,'22058','d058b798-9584-4ddf-b22c-cc8817b62d32',10000,'Up 4 22058','https://pay.payos.vn/web/54d7a7968a0d44fb83712fb649a3a8d0',NULL,NULL,'pending',4,'2025-08-21 14:06:34','2025-08-21 14:06:34'),(110,'469597','d7151c11-fdce-409a-8e18-b1a670124344',10000,'Up 4','https://pay.payos.vn/web/2d6ebc5ae8b043009deb434a18760926',NULL,NULL,'pending',4,'2025-08-21 14:22:54','2025-08-21 14:22:54'),(111,'410494','b1ad977a-1dac-4120-979f-92a0df9e83ea',10000,'Up 4','https://pay.payos.vn/web/d4802fd4475546228808b4ae7ad60974',NULL,NULL,'pending',4,'2025-08-21 14:24:03','2025-08-21 14:24:03'),(112,'446309','67ab515b-3981-4029-b852-f9b41a25c579',10000,'Up 4','https://pay.payos.vn/web/082fd0aa502f4f8d88c3edd91182a830',NULL,NULL,'pending',4,'2025-08-21 14:30:35','2025-08-21 14:30:35'),(113,'439756','854171b9-0603-4a20-9169-756d58af4de3',10000,'Up 4','https://pay.payos.vn/web/6ab516ce22f54c0bba444851b4b204a4',NULL,NULL,'pending',4,'2025-08-21 14:44:05','2025-08-21 14:44:05'),(114,'497988','7d6113aa-bb9b-4dc3-9a2b-ae9dba216b38',10000,'Up 4','https://pay.payos.vn/web/5d99625789b94bbb8a8276e8bb8ae506',NULL,NULL,'pending',4,'2025-08-22 09:20:04','2025-08-22 09:20:04'),(115,'470091','4f9ce7b0-b590-4394-9625-2dbf8bfee128',10000,'CS2AZE705F4 Up 4','https://pay.payos.vn/web/f25cc718f10f4c4e9c14c3707e558a38',0,'success','completed',4,'2025-08-22 10:03:41','2025-08-22 10:21:47'),(116,'470606','e8b54d80-d397-4c60-8217-70af49805146',10000,'CSZRDM84Y61 Up 4','https://pay.payos.vn/web/145987edaa8a433b959303e7600af022',0,'success','completed',4,'2025-08-22 10:24:23','2025-08-22 10:26:31');
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
  CONSTRAINT `playlist_songs_ibfk_125` FOREIGN KEY (`playlistId`) REFERENCES `playlists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `playlist_songs_ibfk_126` FOREIGN KEY (`songId`) REFERENCES `songs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_songs`
--

LOCK TABLES `playlist_songs` WRITE;
/*!40000 ALTER TABLE `playlist_songs` DISABLE KEYS */;
INSERT INTO `playlist_songs` VALUES (47,1,7),(33,1,15),(9,1,17),(31,1,19),(77,1,20),(76,1,21),(75,1,25),(146,1,36),(127,29,17),(130,29,19),(128,29,20),(126,29,21),(125,29,24),(123,29,25),(121,29,26),(124,29,27),(122,29,28),(120,29,29),(50,43,4),(51,43,14),(52,43,17),(53,43,21),(49,43,25),(68,46,19),(69,46,20),(143,66,4),(113,88,25),(114,90,25),(117,91,1),(115,91,12),(116,91,20),(151,134,38),(150,134,39);
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `userId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'Hello world',1,'2025-05-28 07:17:57','2025-05-28 07:17:57'),(4,'Hahaha',2,'2025-05-28 09:33:40','2025-05-28 09:33:40'),(5,'Hahahahaha',2,'2025-05-28 09:48:53','2025-05-28 09:48:53'),(29,'Hahaha',1,'2025-06-17 04:12:32','2025-06-17 04:12:32'),(43,'qwe11',5,'2025-06-19 08:15:27','2025-06-19 08:15:27'),(46,'hohoho',3,'2025-06-26 11:07:20','2025-06-26 11:07:20'),(50,'qweqweqwe',2,'2025-07-01 05:38:05','2025-07-01 05:38:05'),(51,'aaxas',2,'2025-07-01 05:38:11','2025-07-01 05:38:11'),(66,'qeqweq',4,'2025-07-01 09:38:30','2025-07-01 09:38:30'),(67,'eqweqweqeq',4,'2025-07-01 09:38:35','2025-07-01 09:38:35'),(68,'fergfergeg',4,'2025-07-01 09:38:40','2025-07-01 09:38:40'),(69,'zxczczc',4,'2025-07-01 09:38:44','2025-07-01 09:38:44'),(72,'Playlist5',1,'2025-07-03 02:51:37','2025-07-03 02:51:37'),(73,'Playlist6',1,'2025-07-03 02:51:46','2025-07-03 02:51:46'),(74,'Playlist7',1,'2025-07-03 02:51:55','2025-07-03 02:51:55'),(75,'Playlist8',1,'2025-07-03 02:52:03','2025-07-03 02:52:03'),(76,'Playlist9',1,'2025-07-03 02:52:13','2025-07-03 02:52:13'),(77,'1qweqwe',5,'2025-07-04 06:49:17','2025-07-04 06:49:17'),(86,'5qweqwe',2,'2025-07-04 07:04:24','2025-07-04 07:04:24'),(87,'ádasdasd2·',6,'2025-07-05 13:42:38','2025-07-05 13:42:38'),(88,'123123    ',6,'2025-07-05 13:42:50','2025-07-05 13:42:50'),(89,'           123',6,'2025-07-05 13:42:56','2025-07-05 13:42:56'),(90,'*&^%&*^&*^$*&%',6,'2025-07-05 13:43:11','2025-07-05 13:43:11'),(91,'bnm',6,'2025-07-05 13:47:31','2025-07-05 13:47:31'),(106,'Playlist10',1,'2025-07-15 04:15:07','2025-07-15 04:15:07'),(107,'Playlist11',1,'2025-07-15 04:15:15','2025-07-15 04:15:15'),(108,'Playlist12',1,'2025-07-15 04:15:25','2025-07-15 04:15:25'),(114,'rutyuturtyu',4,'2025-07-16 06:43:32','2025-07-16 06:43:32'),(121,'playlist1',7,'2025-07-30 08:19:48','2025-07-30 08:19:48'),(129,'8qweqwe',5,'2025-08-01 07:30:56','2025-08-01 07:30:56'),(130,'nyhhynrghf',5,'2025-08-01 07:31:02','2025-08-01 07:31:02'),(131,'10qewqew',5,'2025-08-01 07:31:09','2025-08-01 07:31:09'),(132,'jkljkljkl',5,'2025-08-01 07:34:50','2025-08-01 07:34:50'),(134,'1224',9,'2025-08-08 15:55:05','2025-08-08 15:55:05'),(136,'123456',9,'2025-08-08 15:55:12','2025-08-08 15:55:12'),(138,'95',9,'2025-08-08 15:55:21','2025-08-08 15:55:21'),(139,'2155',9,'2025-08-08 16:05:04','2025-08-08 16:05:04'),(140,'adsad',9,'2025-08-08 16:06:44','2025-08-08 16:06:44');
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
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `artist` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `duration` int NOT NULL,
  `audioUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `imageUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Hồng nhan','Jack97',195,'https://res.cloudinary.com/duccdrxot/video/upload/v1736990613/by31jv4yp1aosqfvdabj.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1736990616/paevbzd5y9fuj1n5ajtc.jpg','2025-05-21 10:12:46','2025-07-23 08:00:52'),(2,'Đừng làm trái tim anh đau','Sơn Tùng',325,'https://res.cloudinary.com/duccdrxot/video/upload/v1737040969/okcxhg5zlefynhjhtiaz.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737040974/m8xckip65tk0r7qp9o9i.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46'),(3,'Trở về','Wrxdie',358,'https://res.cloudinary.com/duccdrxot/video/upload/v1737042375/zkcs85ycjsdhydzthon0.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737042382/gjuuxiotvqw8cjr3bz14.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46'),(4,'Lời yêu','buitruonglinh',182,'https://res.cloudinary.com/duccdrxot/video/upload/v1737042598/udlezjmd34rjsy0ra2hm.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737042603/e2dmoyttsqgrcrncu31g.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46'),(5,'Bình yên','Vũ',196,'https://res.cloudinary.com/duccdrxot/video/upload/v1737042760/m7eyt145srb4is0ikhfi.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737042764/ufipso4xzwtfit7dnudd.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46'),(6,'Có em','madihu',225,'https://res.cloudinary.com/duccdrxot/video/upload/v1737042915/vfzv9pfgcxtqynchmebu.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737042922/t5jvhherpupkvladdiie.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46'),(7,'Trốn Tìm','Đen Vâu',252,'https://res.cloudinary.com/duccdrxot/video/upload/v1737043731/czui5l8xnunaswjmkjfk.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737043735/sefjohovgkfigyhyhhhk.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46'),(8,'Đổi tư thế','Andree Right Hand',245,'https://res.cloudinary.com/duccdrxot/video/upload/v1737044429/xrmkhjoxh8llbd9khtdn.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737044432/krvddg5rq0ewyn5d36nr.jpg','2025-05-21 10:12:46','2025-05-23 10:47:02'),(9,'Bạn đời','Karik',318,'https://res.cloudinary.com/duccdrxot/video/upload/v1737044871/fbecnt0id67pxeaxmpaf.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1737044874/yevpr2dztrjdvjcoweks.jpg','2025-05-21 10:12:46','2025-05-21 10:12:46'),(11,'An','Lil Wuyn',204,'https://res.cloudinary.com/duccdrxot/video/upload/v1747989233/lqnfgsnvs0jhvrnwlzix.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1747989235/dyoagmxjziqkyr3eq72i.jpg','2025-05-23 08:33:56','2025-05-23 08:33:56'),(12,'Tell The Kids I Love Them','Obito',225,'https://res.cloudinary.com/duccdrxot/video/upload/v1747990351/y7qwiq23c7mteopzwnfi.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1747990352/qzidoevbvdlhwwbpplev.jpg','2025-05-23 08:52:33','2025-05-23 08:52:33'),(13,'KHI MÀ','RONBOOGZ',229,'https://res.cloudinary.com/duccdrxot/video/upload/v1747990750/xqp01fqr5malpox0abph.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1747990751/nzc3lvqfifrkqteaadar.jpg','2025-05-23 08:59:12','2025-05-23 08:59:12'),(14,'Vô Điều Kiện','Obito',151,'https://res.cloudinary.com/duccdrxot/video/upload/v1747999081/djdpsqfo9bzt2cnelanj.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1747999082/uzgsyndlp7vvzq4jpsex.jpg','2025-05-23 11:18:03','2025-05-23 11:18:03'),(15,'Nơi Này Có Anh','Sơn Tùng',279,'https://res.cloudinary.com/duccdrxot/video/upload/v1747999229/jiu31fdd6ax846rqeazg.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1747999231/lgobgloksx0muym41idd.jpg','2025-05-23 11:20:32','2025-05-23 11:20:32'),(17,'Em Muốn Tự Do','Du Uyên',225,'https://res.cloudinary.com/duccdrxot/video/upload/v1748425112/lw80fxzdxzlaxiefbcdh.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1748425114/nidxgoz877abbougd3ih.jpg','2025-05-28 09:38:34','2025-05-28 09:38:34'),(19,'thap drill tu doo','MCK',107,'https://res.cloudinary.com/duccdrxot/video/upload/v1749035567/rcamyx1i6g5lvgvyel75.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1749035568/cmz0ybcv2ergrw0aebcj.jpg','2025-06-04 11:12:49','2025-06-04 11:12:49'),(20,'50500','HIEUTHU2',229,'https://res.cloudinary.com/duccdrxot/video/upload/v1749798261/kiqdwhpxdrpej84wff0t.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1749798262/oh1yx1wxvcd4vli2jedk.jpg','2025-06-13 07:04:23','2025-06-13 07:04:23'),(21,'Hẹn Gặp Em Dưới Ánh Trăng','HIEUTHU2',232,'https://res.cloudinary.com/duccdrxot/video/upload/v1749798599/souam33qyiiziegquplp.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1749798600/liwmep40evm4x3t6sa9v.jpg','2025-06-13 07:10:00','2025-06-13 07:10:00'),(24,'VÌ YÊU CỨ ĐÂM ĐẦU','Min',276,'https://res.cloudinary.com/duccdrxot/video/upload/v1749802062/icgcqee7b2bxspoilkcs.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1749802063/yfxqhad4aw7yodur42mx.jpg','2025-06-13 10:30:22','2025-06-13 10:30:22'),(25,'BÔNG HOA NHÀI','JUSTATEE',302,'https://res.cloudinary.com/duccdrxot/video/upload/v1750234014/ryprilpzogghtqjqbm2p.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1750234015/tqrhpybkronikjl0bmnt.jpg','2025-06-18 08:06:56','2025-06-18 08:15:29'),(26,'Bae Dun Cry','Koo',226,'https://res.cloudinary.com/duccdrxot/video/upload/v1750760899/nvurnt6vghqdepsna2uj.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1750760900/sdxr2tm8pwsavneacbvj.jpg','2025-06-24 10:28:21','2025-06-24 10:28:21'),(27,'Nối Dối','RONBOOGZ',206,'https://res.cloudinary.com/duccdrxot/video/upload/v1751352099/wn4wgqbzzf7hxv2jomuo.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1751352100/dxessfb406p0i4hsfqbv.jpg','2025-07-01 06:41:41','2025-07-01 06:41:41'),(28,'Hai Đứa Nhóc','RONBOOGZ',216,'https://res.cloudinary.com/duccdrxot/video/upload/v1751367318/g98izhtxggq4xeczqgx0.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1751367320/uarm1twwl6996w37zpys.jpg','2025-07-01 10:55:20','2025-07-01 10:55:20'),(29,'Đi Theo Bóng Mặt Trời','Đen Vâu',202,'https://res.cloudinary.com/duccdrxot/video/upload/v1751879420/yk2xuwdyrzegtyfcedus.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1751879422/hrtwqxm9ukb1wnmov2ev.jpg','2025-07-07 09:10:23','2025-07-07 09:10:23'),(30,'THỨC GIẤC','DA LAB',323,'https://res.cloudinary.com/duccdrxot/video/upload/v1752222210/y1r4xjgewrf164r778nm.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1752222211/zgpqp4wd7ujjc8tk7rw3.jpg','2025-07-11 08:23:32','2025-07-11 08:23:32'),(31,'Phượng Buồn','H2K',160,'https://res.cloudinary.com/duccdrxot/video/upload/v1752222799/u0vpoejgwq7lxsrm2krv.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1752222801/dour7gkh1hpshzle7kg3.jpg','2025-07-11 08:33:21','2025-07-11 08:33:21'),(32,'Miền Mộng Mị','AMEE',180,'https://res.cloudinary.com/duccdrxot/video/upload/v1752654508/iu0no9jcjjscntgimo8y.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1752654509/r0ybeoegbjrpaqkdgk74.jpg','2025-07-16 08:28:30','2025-07-16 08:28:30'),(33,'Mơ','Vũ Cát Tường',333,'https://res.cloudinary.com/duccdrxot/video/upload/v1752807230/z7c0rl0yv9npo9b7bfsd.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1752807231/ityrwf3cffewu0kbijuy.jpg','2025-07-18 02:53:52','2025-07-18 02:53:52'),(35,'Mây Lang Thang','Tùng Tea',198,'https://res.cloudinary.com/duccdrxot/video/upload/v1753864150/e5aa6k9invsnujph9ojp.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1753864151/xklzwdrdh62xkx8jrbgz.jpg','2025-07-30 08:29:12','2025-07-30 08:29:12'),(36,'Cảm Ơn','Tommy Tèo',126,'https://res.cloudinary.com/duccdrxot/video/upload/v1753874689/sqzm1amjcjfim0ygqbm7.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1753874691/gy5f9mxgvwd69ncpdq0l.jpg','2025-07-30 11:24:52','2025-07-30 11:24:52'),(38,'Lãng Đãng','Đen Vâu',322,'https://res.cloudinary.com/duccdrxot/video/upload/v1754032056/tddmthgz8lz1qxpdeyhj.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1754032058/rqarqesgho0br6zmgnaw.jpg','2025-08-01 07:07:38','2025-08-01 07:07:38'),(39,'Trình Là Đây','Bình Goat',206,'https://res.cloudinary.com/duccdrxot/video/upload/v1754473916/bnbwciqjf845a0yqibh9.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1754473917/ds2wayxdvs8rnrdw5r04.jpg','2025-08-06 09:51:58','2025-08-06 10:26:25'),(40,'BERLIN','Khoi Vu',140,'https://res.cloudinary.com/duccdrxot/video/upload/v1754671332/fd74puxlgszskgabaqhh.mp3','https://res.cloudinary.com/duccdrxot/image/upload/v1754671333/zgjjbw0dwvxkmhqcqmcd.jpg','2025-08-08 16:42:14','2025-08-08 16:42:14');
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
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isAdmin` tinyint(1) DEFAULT '0',
  `isBlocked` tinyint(1) DEFAULT '0',
  `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `playlistLimit` int DEFAULT '5',
  `songLimit` int DEFAULT '25',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`),
  UNIQUE KEY `email_4` (`email`),
  UNIQUE KEY `email_5` (`email`),
  UNIQUE KEY `email_6` (`email`),
  UNIQUE KEY `email_7` (`email`),
  UNIQUE KEY `email_8` (`email`),
  UNIQUE KEY `email_9` (`email`),
  UNIQUE KEY `email_10` (`email`),
  UNIQUE KEY `email_11` (`email`),
  UNIQUE KEY `email_12` (`email`),
  UNIQUE KEY `email_13` (`email`),
  UNIQUE KEY `email_14` (`email`),
  UNIQUE KEY `email_15` (`email`),
  UNIQUE KEY `email_16` (`email`),
  UNIQUE KEY `email_17` (`email`),
  UNIQUE KEY `email_18` (`email`),
  UNIQUE KEY `email_19` (`email`),
  UNIQUE KEY `email_20` (`email`),
  UNIQUE KEY `email_21` (`email`),
  UNIQUE KEY `email_22` (`email`),
  UNIQUE KEY `email_23` (`email`),
  UNIQUE KEY `email_24` (`email`),
  UNIQUE KEY `email_25` (`email`),
  UNIQUE KEY `email_26` (`email`),
  UNIQUE KEY `email_27` (`email`),
  UNIQUE KEY `email_28` (`email`),
  UNIQUE KEY `email_29` (`email`),
  UNIQUE KEY `email_30` (`email`),
  UNIQUE KEY `email_31` (`email`),
  UNIQUE KEY `email_32` (`email`),
  UNIQUE KEY `email_33` (`email`),
  UNIQUE KEY `email_34` (`email`),
  UNIQUE KEY `email_35` (`email`),
  UNIQUE KEY `email_36` (`email`),
  UNIQUE KEY `email_37` (`email`),
  UNIQUE KEY `email_38` (`email`),
  UNIQUE KEY `email_39` (`email`),
  UNIQUE KEY `email_40` (`email`),
  UNIQUE KEY `email_41` (`email`),
  UNIQUE KEY `email_42` (`email`),
  UNIQUE KEY `email_43` (`email`),
  UNIQUE KEY `email_44` (`email`),
  UNIQUE KEY `email_45` (`email`),
  UNIQUE KEY `email_46` (`email`),
  UNIQUE KEY `email_47` (`email`),
  UNIQUE KEY `email_48` (`email`),
  UNIQUE KEY `email_49` (`email`),
  UNIQUE KEY `email_50` (`email`),
  UNIQUE KEY `email_51` (`email`),
  UNIQUE KEY `email_52` (`email`),
  UNIQUE KEY `email_53` (`email`),
  UNIQUE KEY `email_54` (`email`),
  UNIQUE KEY `email_55` (`email`),
  UNIQUE KEY `email_56` (`email`),
  UNIQUE KEY `email_57` (`email`),
  UNIQUE KEY `email_58` (`email`),
  UNIQUE KEY `email_59` (`email`),
  UNIQUE KEY `email_60` (`email`),
  UNIQUE KEY `email_61` (`email`),
  UNIQUE KEY `email_62` (`email`),
  UNIQUE KEY `email_63` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nguyen1','dnnguyeen2003@gmail.com','22e5e9608c59650cc9023f4306d3ef28f42e8edc2908d142112eb5b98c71c7925bd76e2c9e13f93da2d39d6f2e0e3b687be913f7a495fbcd7af9e5391804ee41',1,0,'a580af17ff69dbe951b81fcd2536cc8d','2025-05-20 09:40:52','2025-07-01 07:01:39',15,75),(2,'hahaha','hodanghoang2003@gmail.com','8d370c609e54bd780cab476d00f684dd875060fdbdbcfa25b9dea3d2c85cce88e1aa6b19daee73486b1d3ec5ce77bf49609b67ed152a430c9680cac30d6dc8d2',0,0,'56f414604748e68a66c8d99f25d4f0bf','2025-05-28 09:23:10','2025-07-18 11:18:26',5,25),(3,'minhquan','minhquany9@gmail.com','bf2cc7f1f5567013f0f4ee9de61428c2659d9a1f3fafcc1596d23509cdc5ff6e23028dc29c09ac3299faba91dd229b3c42901d106d772a748e34ad6366e8d55e',0,0,'7387384827c30ea0aa0c40e0077dde55','2025-06-11 11:16:36','2025-07-24 10:58:35',5,25),(4,'abcabc','nguyenhoanglong10082003@gmail.com','3eedd2c77a076e350e59ff06c8e5410bf3e9f12d0763e9957d3923e2cf0e677e37e12d943fd463a915254c3f4c6e28f4c7304acf9684347de836a1c4eda1d0d7',0,0,'3d60fc2860750679d92f03b3a6c9e668','2025-06-19 07:59:05','2025-08-22 10:26:31',10,50),(5,'qweqwe','anhtuhanam1@gmail.com','6f17117771583caa251f5a5043b4696a4021bbb769a908ddd31e25a46ec8c67dc0e820892839f102190a88a75e467d83a72a5e5baf7714a033f38bfc28c3602a',0,0,'704b1420159f62ba785250c2519f407e','2025-06-19 08:10:49','2025-08-01 07:34:29',10,50),(6,'defghe','nothingisworthanything@gmail.com','e8615b33a800f1cd4de8a6b1b86d9d50646cac1ededfd90299ba7e722924ca1fd76beadbc998a197a300e83de5a0729cafb1ad05a662ab9e69a70ac5d3dfcfe4',0,0,'20ab42c39a51cec9c60f51e19d25c4b6','2025-07-05 13:42:02','2025-07-14 04:24:47',5,25),(7,'huhuhu','abcdefhuhuhu@gmail.com','aee789194a93f2d15c918bf5ea0803b1455d9c73bf890edfb1ef75a9a7ac9fc2e2013f0069fc363b77708dccc916804c70800f3d315825d570947da25a8c56f7',0,0,'4a9667c9194fc685b456ff202e2dc0d9','2025-07-30 08:19:23','2025-07-30 08:19:23',5,25),(8,'hohoho','abcdefhohoho@gmail.com','a35d80390f3aa3b8c5a25cda0393b2c57a6babc33493418ddf11ebfed21cc4beabe6e6b6c7566d11e8fa94ee2654c4cb3b02b2dda74b9fa436928f2d9d0d79d1',0,0,'8222348588c009fc0a2f275ef5e23c3a','2025-08-01 07:57:08','2025-08-01 07:57:38',5,25),(9,'phuoc','daiphuoc1497@gmail.com','b22475fc3d35f5217a3a2f7ea326f06da412f6a8cd3f265cf77806bc5e468ef0fd98fdfeac4c36c2ca974e119b56f3e56f27113def6f80ce0500bbecef30883d',0,0,'22228bc4db717ac77aae5026fd6a0e8d','2025-08-08 15:54:48','2025-08-08 16:03:51',5,25);
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
  CONSTRAINT `wishlists_ibfk_125` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_126` FOREIGN KEY (`songId`) REFERENCES `songs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (21,1,3),(22,1,4),(165,1,11),(167,1,12),(160,1,14),(33,1,17),(55,1,19),(196,1,21),(113,1,25),(153,1,27),(166,1,28),(169,1,30),(171,1,31),(191,1,32),(199,1,35),(198,1,36),(200,1,38),(207,1,39),(209,1,40),(108,3,20),(205,4,33),(203,4,35),(202,4,36),(211,4,38),(210,4,39),(70,5,13),(73,5,17),(72,5,19),(71,5,20),(69,5,25),(195,5,33),(148,6,24),(208,9,39);
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

-- Dump completed on 2025-08-23 15:18:45
