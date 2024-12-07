-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: hairsalonbooking
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `accountid` bigint NOT NULL AUTO_INCREMENT,
  `dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','BRANCH_MANAGER','CUSTOMER','STAFF','STYLIST') DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `level_id` bigint DEFAULT NULL,
  `salon_id` bigint DEFAULT NULL,
  `balance` int NOT NULL,
  PRIMARY KEY (`accountid`),
  UNIQUE KEY `UKgex1lmaqpg0ir5g1f5eftyaa1` (`username`),
  UNIQUE KEY `UKq0uja26qgu1atulenwup9rxyr` (`email`),
  UNIQUE KEY `UKdgdnj692f2g5ebicy1xyc2l3w` (`phone`),
  KEY `FKlepu2yr9phx3ina5b61vrxgoj` (`level_id`),
  KEY `FKr2gjkd8hecls4oc7k31vg9nu8` (`salon_id`),
  CONSTRAINT `FKlepu2yr9phx3ina5b61vrxgoj` FOREIGN KEY (`level_id`) REFERENCES `level` (`levelid`),
  CONSTRAINT `FKr2gjkd8hecls4oc7k31vg9nu8` FOREIGN KEY (`salon_id`) REFERENCES `salon_branch` (`salon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (8,'2004-12-01','manager1@gmail.com','Pham Quoc Tuan','male',NULL,_binary '\0','$2a$10$yfoswj.sXlgrq/6nBjkxmeCsAObL1EAbfw/jraKx2YkttkVZwDhsW','0908140317','BRANCH_MANAGER','manager1',NULL,1,0),(11,'2004-11-01','staff1@gmail.com','Nguyen Hoang Nha Truc123123','female',NULL,_binary '\0','$2a$10$w.zXsT7RQs91EEv4FMdpHebETk2sJkqUJy0IjUrUxlc32sqfHdLWG','0912345677','STAFF','staff1',NULL,1,0),(13,'2004-10-10','staff2@gmail.com','Nguyen Hoang Thien Truc','female',NULL,_binary '\0','$2a$10$JGdY6ecnXFub2sNoNzhRMeIIAPcI/w.3saLJYbEm9Beas9SrQlIfm','0911345677','STAFF','staff2',NULL,2,0),(14,'2004-10-10','manager2@gmail.com','Pham Phu Danh','male',NULL,_binary '\0','$2a$10$uFqWf.mrs4nFCscHH5igh.ioweNsGgqUhD/DffijBg8WCDSrU7Duq','0988888881','BRANCH_MANAGER','manager2',NULL,2,0),(15,'2000-07-17','stylist7@gmail.com','Nguyen Minh Quoc','female','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/14757_1_1-transformed.png?alt=media&token=da90942c-d37c-4a68-a69c-b7922c517af1',_binary '\0','$2a$10$MjsmywVf/gcQRbPWRpMxXePBpr.27Xn9tc51A2MUteuRT0gZHWfaW','0912345666','STYLIST','stylist7',2,1,0),(16,'2024-10-01','test@gmail.com','aaaaaaaaaaaaaaaaaaa','male',NULL,_binary '','$2a$10$nKwSXKjvAQ64WFygYXr5AecFO6P5GvzivENn.NUgO9gBesQKER8BO','0999999999','STAFF','aaa',NULL,1,0),(17,'2024-10-01','testManager@gmail.com','aaa','male',NULL,_binary '','$2a$10$2amuyFINfNur9wXD1/RDAuQSIUbc9Pi8wYc3PKR5BbQnbdDORYO52','0999999998','BRANCH_MANAGER','aaabbbb',NULL,1,0),(18,'2024-10-13','stylist8@gmail.com','stylist8','male','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/z5925367109089_9b1878a4420281565faa0b2863cf16cc11-transformed%20(1).png?alt=media&token=af5e1dfa-876e-43ef-a26e-9cf15ceec361',_binary '\0','$2a$10$MiUmvJhN1Brjn0itpWCtR.SdaFJ0P2ntbOLHpuB5WqNuqk8EkaVoK','0915339947','STYLIST','stylist8',2,2,0),(19,NULL,'admin1@gmail.com','admin',NULL,NULL,_binary '\0','$2a$10$29XUUZinSgY2oZmWqzxCveZ70KmYiVaDDcUL6RtB5ikOZhFA6X7l.','8463429388','ADMIN','admin1',NULL,NULL,0),(20,'2024-10-13','stylist9@gmail.com','stylist9','male','string',_binary '\0','$2a$10$w8q2jTbqax38X7WmdEdfQ.c5r2ucrIR5vqzuesiKy53ExULfGPBnG','8463333627','STYLIST','stylist9',1,1,0),(21,NULL,'trihcmse183799@fpt.edu.vn','Nguyen Thanh Danh',NULL,NULL,_binary '\0','$2a$10$oaVb1UNle.gugHqC/St2D.XC4K1jGyRu1tv7/mF6LxEPBsZWDDRde','0911111111','CUSTOMER','thanhdanh123',NULL,NULL,0),(22,NULL,'paavagl19@gmail.com','Huy Nguyễn',NULL,'https://lh3.googleusercontent.com/a/ACg8ocIHEmYRUIVdWwPfXwWw2LN3xYTvrcMWhUrTlgUSsZgwKZ6laA=s96-c',_binary '\0',NULL,NULL,'CUSTOMER','paavagl19@gmail.com',NULL,NULL,0),(23,NULL,'strinfg@gmail.com','string',NULL,NULL,_binary '\0','$2a$10$QRHP1qqLhfZB00w9CMjG6e2jZsr4GbEV.MGsD7FNI/XB3pIik7M0i','8401714728','CUSTOMER','string',NULL,NULL,0),(32,'2024-11-07','anhlong@gmail.com','Anh Long','Male','string',_binary '\0','$2a$10$DkTn8MoKt7JcDrASzTezseI68kb3zLLw6a1WW.FBk/paFysAwYNNi','0998026298','STYLIST','anhlong',2,1,0),(33,'2024-11-07','aloalo@gmail.com','aloalo','Male','string',_binary '\0','$2a$10$YliSbDXn9shqjl1Rq7iTJum26rRsIBa0nSqEFoLa6fjCTMuDC33pe','8491481738','STYLIST','ALO@GMAIL',2,1,0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` bigint NOT NULL AUTO_INCREMENT,
  `booking_day` date DEFAULT NULL,
  `status` enum('CANCELLED','COMPLETED','IN_PROGRESS','PENDING') DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `salon_id` bigint DEFAULT NULL,
  `slot_id` bigint DEFAULT NULL,
  `stylist_schedule_id` bigint DEFAULT NULL,
  `voucher_id` bigint DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `FK7hunottedmjhtdcvhv4sx6x4a` (`account_id`),
  KEY `FKfiyupru10psn2atyfvtii3bpa` (`salon_id`),
  KEY `FKmf21b3es5u32ktfv3ibpbtoba` (`slot_id`),
  KEY `FKkd7li9ypsidpt8jxrdnwuerc7` (`stylist_schedule_id`),
  KEY `FKbs6twtq6v6sobgvl1gt6v1lan` (`voucher_id`),
  CONSTRAINT `FK7hunottedmjhtdcvhv4sx6x4a` FOREIGN KEY (`account_id`) REFERENCES `account` (`accountid`),
  CONSTRAINT `FKbs6twtq6v6sobgvl1gt6v1lan` FOREIGN KEY (`voucher_id`) REFERENCES `voucher` (`voucher_id`),
  CONSTRAINT `FKfiyupru10psn2atyfvtii3bpa` FOREIGN KEY (`salon_id`) REFERENCES `salon_branch` (`salon_id`),
  CONSTRAINT `FKkd7li9ypsidpt8jxrdnwuerc7` FOREIGN KEY (`stylist_schedule_id`) REFERENCES `stylist_schedule` (`stylist_schedule_id`),
  CONSTRAINT `FKmf21b3es5u32ktfv3ibpbtoba` FOREIGN KEY (`slot_id`) REFERENCES `slot` (`slotid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'2024-10-15','COMPLETED',1,1,2,6,NULL),(2,'2024-10-15','COMPLETED',1,1,12,4,NULL),(3,'2024-10-15','COMPLETED',1,1,12,6,NULL),(4,'2024-10-15','COMPLETED',1,1,8,6,1),(5,'2024-10-15','PENDING',1,1,10,6,NULL),(10,'2024-10-16','PENDING',21,1,1,2,NULL),(11,'2024-10-16','PENDING',21,1,2,2,NULL),(12,'2024-10-16','PENDING',21,1,3,2,NULL),(13,'2024-10-16','PENDING',21,1,5,2,NULL),(14,'2024-10-16','IN_PROGRESS',1,1,8,19,NULL),(15,'2024-10-16','COMPLETED',1,1,1,1,2),(16,'2024-10-16','COMPLETED',1,1,3,1,2),(17,'2024-10-16','COMPLETED',1,1,7,1,2),(18,'2024-10-16','PENDING',22,1,7,3,NULL),(19,'2024-10-16','IN_PROGRESS',1,1,9,1,2),(20,'2024-10-18','IN_PROGRESS',1,1,1,10,NULL),(21,'2024-10-22','COMPLETED',1,1,1,25,NULL),(22,'2024-10-25','COMPLETED',1,1,1,26,1),(23,'2024-10-25','IN_PROGRESS',1,1,1,26,NULL),(32,'2024-11-08','PENDING',1,1,9,27,NULL),(33,'2024-11-11','PENDING',1,1,4,29,NULL),(34,'2024-11-12','PENDING',1,1,14,30,NULL),(35,'2024-11-15','PENDING',1,1,3,31,NULL),(36,'2024-11-15','PENDING',1,1,1,31,NULL),(37,'2024-11-20','PENDING',1,1,2,33,NULL),(38,'2024-11-20','PENDING',1,1,4,33,NULL),(39,'2024-11-20','PENDING',1,1,14,33,NULL),(40,'2024-11-21','PENDING',1,1,4,34,NULL),(41,'2024-11-21','PENDING',1,1,9,34,NULL),(42,'2024-11-22','PENDING',1,1,9,35,NULL);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_detail`
--

DROP TABLE IF EXISTS `booking_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_detail` (
  `booking_id` bigint NOT NULL,
  `service_id` bigint NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`booking_id`,`service_id`),
  KEY `FKsecpmqxq5joo7phent1ujtsyy` (`service_id`),
  CONSTRAINT `FK59941ondg9nwaifm2umnrduev` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  CONSTRAINT `FKsecpmqxq5joo7phent1ujtsyy` FOREIGN KEY (`service_id`) REFERENCES `salon_service` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_detail`
--

LOCK TABLES `booking_detail` WRITE;
/*!40000 ALTER TABLE `booking_detail` DISABLE KEYS */;
INSERT INTO `booking_detail` VALUES (1,1,NULL),(1,2,NULL),(1,4,NULL),(2,1,NULL),(2,2,NULL),(3,1,NULL),(3,2,NULL),(4,1,NULL),(4,2,NULL),(5,1,NULL),(5,2,NULL),(10,1,NULL),(11,1,NULL),(12,1,NULL),(13,1,NULL),(13,14,NULL),(14,1,NULL),(14,2,NULL),(15,1,NULL),(15,2,NULL),(16,1,NULL),(17,1,NULL),(17,2,NULL),(18,1,NULL),(18,2,NULL),(19,1,NULL),(19,2,NULL),(20,1,NULL),(20,2,NULL),(21,1,NULL),(22,1,NULL),(23,2,379000.00),(32,1,100000.00),(32,2,379000.00),(33,1,100000.00),(33,2,379000.00),(34,1,100000.00),(34,4,339000.00),(35,1,100000.00),(35,2,379000.00),(36,1,100000.00),(36,2,379000.00),(36,4,339000.00),(37,1,100000.00),(37,2,379000.00),(38,1,100000.00),(38,2,379000.00),(39,1,100000.00),(39,2,379000.00),(39,4,339000.00),(40,1,100000.00),(40,2,379000.00),(41,1,100000.00),(41,2,379000.00),(42,1,100000.00),(42,2,379000.00);
/*!40000 ALTER TABLE `booking_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collections` (
  `collection_id` bigint NOT NULL AUTO_INCREMENT,
  `collection_image` varchar(255) DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `service_id` bigint DEFAULT NULL,
  PRIMARY KEY (`collection_id`),
  KEY `FKg29ie4ssvs74v8beb8j262xmr` (`account_id`),
  KEY `FK2rrgsrnwvbdlhny6ck0k2t0jd` (`service_id`),
  CONSTRAINT `FK2rrgsrnwvbdlhny6ck0k2t0jd` FOREIGN KEY (`service_id`) REFERENCES `salon_service` (`service_id`),
  CONSTRAINT `FKg29ie4ssvs74v8beb8j262xmr` FOREIGN KEY (`account_id`) REFERENCES `account` (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (2,'string',NULL,16);
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `score` double NOT NULL,
  `account_id` bigint DEFAULT NULL,
  `booking_id` bigint DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  UNIQUE KEY `UK32cetrrxomtxj5ujwkyc6rscg` (`booking_id`),
  KEY `FKljoe4l0npa8nv5q24e4c1n1ik` (`account_id`),
  CONSTRAINT `FKa63vevie0kvm3aai9f0d226l3` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  CONSTRAINT `FKljoe4l0npa8nv5q24e4c1n1ik` FOREIGN KEY (`account_id`) REFERENCES `account` (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'good stylist','2024-10-14',10,1,1),(2,'super good','2024-10-15',10,1,2),(3,'bad','2024-10-15',2,1,3),(4,'string','2024-10-22',10,1,21),(5,'anh dep trai','2024-10-26',4,1,10);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgot_password`
--

DROP TABLE IF EXISTS `forgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forgot_password` (
  `fpid` bigint NOT NULL AUTO_INCREMENT,
  `expiration_time` datetime(6) NOT NULL,
  `otp` int NOT NULL,
  `account_accountid` bigint DEFAULT NULL,
  PRIMARY KEY (`fpid`),
  UNIQUE KEY `UKsbrc7rcri7730rn23tpwywvx6` (`account_accountid`),
  CONSTRAINT `FKtenanuf1gg0lu82to4eea698g` FOREIGN KEY (`account_accountid`) REFERENCES `account` (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgot_password`
--

LOCK TABLES `forgot_password` WRITE;
/*!40000 ALTER TABLE `forgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `forgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi`
--

DROP TABLE IF EXISTS `kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kpi` (
  `kip_id` bigint NOT NULL AUTO_INCREMENT,
  `bonus_percent` double NOT NULL,
  `performance_score` double NOT NULL,
  `revenue_from` double NOT NULL,
  `revenue_to` double NOT NULL,
  `level_id` bigint DEFAULT NULL,
  PRIMARY KEY (`kip_id`),
  KEY `FKro5sk5v8tdgctd8lnhaj33s23` (`level_id`),
  CONSTRAINT `FKro5sk5v8tdgctd8lnhaj33s23` FOREIGN KEY (`level_id`) REFERENCES `level` (`levelid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi`
--

LOCK TABLES `kpi` WRITE;
/*!40000 ALTER TABLE `kpi` DISABLE KEYS */;
INSERT INTO `kpi` VALUES (1,0.1,9,3000000,5000000,1),(2,0.2,9,5000001,10000000,1),(3,0.25,9,10000001,15000000,1),(4,0.3,9,15000001,999999999,1),(5,0.1,9,5000000,10000000,2),(6,0.2,9,10000001,20000000,2),(7,0.25,9,20000001,30000000,2),(8,0.3,9,30000000,999999999,2);
/*!40000 ALTER TABLE `kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level` (
  `levelid` bigint NOT NULL AUTO_INCREMENT,
  `levelname` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  PRIMARY KEY (`levelid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level`
--

LOCK TABLES `level` WRITE;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
INSERT INTO `level` VALUES (1,'assistan stylist',3000000),(2,'master stylist',10000000);
/*!40000 ALTER TABLE `level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` bigint NOT NULL AUTO_INCREMENT,
  `payment_amount` double NOT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `booking_id` bigint DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `UKku02qy6369hn9uhy3n7jk9v6e` (`booking_id`),
  CONSTRAINT `FKqewrl4xrv9eiad6eab3aoja65` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,818000,'2024-10-15','VNPAY-Banking','Completed','50911205',1),(2,479000,'2024-10-15','Tra tien mat','Completed',NULL,2),(4,479000,'2024-10-15','VNPAY-Banking','Completed','48363663',3),(5,383200,'2024-10-15','VNPAY-Banking','Completed','51193907',4),(7,40031100,'2024-10-16','VNPAY-Banking','Completed','46101433',15),(11,90000,'2024-10-16','VNPAY-Banking','Completed','79349921',16),(14,4031100,'2024-10-16','VNPAY-Banking','Completed','30679981',17),(15,4031100,'2024-10-16',NULL,'Pending','97940419',19),(16,4790000,'2024-10-18',NULL,'Pending','57148246',20),(19,4790000,'2024-10-19',NULL,'Pending',NULL,14),(21,20000000,'2024-10-22','Cash','Completed',NULL,21),(22,80000,'2024-10-29','VNPAY-Banking','Completed','62033060',22),(23,379000,'2024-10-29','VNPAY-Banking','Pending','93928266',23);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_record`
--

DROP TABLE IF EXISTS `salary_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_record` (
  `salary_record_id` bigint NOT NULL AUTO_INCREMENT,
  `bonus_salary` double NOT NULL,
  `month_and_year` varchar(255) DEFAULT NULL,
  `total_salary` double NOT NULL,
  `account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`salary_record_id`),
  KEY `FKguputgr0ilxrnui75wyf91c44` (`account_id`),
  CONSTRAINT `FKguputgr0ilxrnui75wyf91c44` FOREIGN KEY (`account_id`) REFERENCES `account` (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_record`
--

LOCK TABLES `salary_record` WRITE;
/*!40000 ALTER TABLE `salary_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salon_branch`
--

DROP TABLE IF EXISTS `salon_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salon_branch` (
  `salon_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `hotline` varchar(255) DEFAULT NULL,
  `is_delete` bit(1) NOT NULL,
  PRIMARY KEY (`salon_id`),
  UNIQUE KEY `UK9hxsb750q2fqgwqax2f63vmd6` (`hotline`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salon_branch`
--

LOCK TABLES `salon_branch` WRITE;
/*!40000 ALTER TABLE `salon_branch` DISABLE KEYS */;
INSERT INTO `salon_branch` VALUES (1,'68 Dinh Phong Phu, P. Tang Nhon Phu B, Quan 9, TP Thu Duc','0902177436',_binary '\0'),(2,'99 Le Van Viet, P. Tang Nhon Phu A, Quan 9, TP Thu Duc','0908139025',_binary '\0');
/*!40000 ALTER TABLE `salon_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salon_service`
--

DROP TABLE IF EXISTS `salon_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salon_service` (
  `service_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `duration` time(6) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_delete` bit(1) NOT NULL,
  `price` int NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `skill_id` bigint DEFAULT NULL,
  PRIMARY KEY (`service_id`),
  KEY `FKimjmftwjkpp3rsx25tgx4jhrw` (`skill_id`),
  CONSTRAINT `FKimjmftwjkpp3rsx25tgx4jhrw` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salon_service`
--

LOCK TABLES `salon_service` WRITE;
/*!40000 ALTER TABLE `salon_service` DISABLE KEYS */;
INSERT INTO `salon_service` VALUES (1,'<p>Hair cut super handsomeeee</p>','00:30:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/cd580f68cba172ff2bb0.jpg?alt=media&token=6a0e9aa5-cbfa-4f2e-a4e4-146b18124e88',_binary '\0',100000,'Hair cut',1),(2,'<p>Gently curl hair into neat shape</p>','01:00:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/curl%20basic.jpg?alt=media&token=57f79c28-8991-46ee-9518-ab2ad944297f',_binary '\0',379000,'Basic Standard Hair Crul',2),(4,'<p>Hair straightening</p>','00:30:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/du%E1%BB%97i%20t%E1%BA%A1o%20ph%E1%BB%93ng%20v%C3%A0o%20n%E1%BA%BFp%20eng.png?alt=media&token=06a4f5c8-fc26-49bd-a1cd-1115765924ae',_binary '\0',339000,'Basic Standard Hair straightening',3),(6,'<p>X2 youthfulness Italian vegan hair dye, absolutely safe</p>','01:30:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/Echo%20vegan%20gray%20coverage%20hair%20coloring.%20(1).png?alt=media&token=162f8e12-6aba-4d5a-a22c-0430f7d46ed0',_binary '\0',359000,'Standard silver coating',4),(7,'<p><span style=\"color: #3598db;\">Milano Fashion Coloring</span><br>High-quality color approved by the Ministry of Health, imported from Italy</p>','01:30:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/Milano%20fashion%20hair%20coloring.png?alt=media&token=3b8a0046-24c6-4ae4-8708-1458dbf1e27a',_binary '\0',459000,'Milano Fashion Dyeing',4),(9,'<p>Curly hair and slicked back, elegant style</p>','01:00:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/Side%20Swept-Quiff%20Perm.png?alt=media&token=06871a60-8c5f-4fb6-8dbe-a66f5e1f32d0',_binary '\0',498000,'Quiff Perm (Side Swept Hairstyle)',2),(10,'<p>Sidepart cut combined with loose wavy curls.</p>','00:30:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/Side%20Part-Tailor%20Perm.png?alt=media&token=f2391e09-2f46-4e7c-97a0-7860d45c799f',_binary '\0',698000,'Tailor Perm (Side Part Hairstyle)',2),(11,'<p>Fashionable bangs, 2 sides pressed neatly without fraying</p>','01:00:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/Ivy%20League-Fit%20Perm.png?alt=media&token=14f39b6f-a912-4f94-8909-9ddd15acc7f0',_binary '\0',528000,'Fit Perm (Ivy League Hairstyle)',2),(12,'<p>Process of using high-quality perming chemicals, adding nutrients to improve hair quality. Often trusted by KOLs and Celebs</p>','01:00:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/Layer-Grass%20Perm.png?alt=media&token=cdab567d-b634-4571-8080-5a9463e77399',_binary '\0',688000,'Grass Perm',2),(13,'<p>Characterized by extremely small wavy curls, creating volume for thin hair</p>','00:30:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/Ruffled%20Perm%20(1).png?alt=media&token=6607d8ec-cacb-4292-9339-594f3715d8f5',_binary '\0',758000,'Ruffed Perm',2),(14,'<p>Say goodbye to split ends, for a neat, youthful look</p>','01:30:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/one-side%20straightening.png?alt=media&token=42b4e15a-561e-4316-88b7-dd91265eff70',_binary '\0',149000,'One-side straightening',3),(15,'<p>Suitable for many face types, bringing an extremely masculine and cool appearance. Often used for cases of strong, flawless hair</p>','02:00:00.000000','https://firebasestorage.googleapis.com/v0/b/f-salon-51786.appspot.com/o/TIGHT%20CURLS%20-%20PERM.png?alt=media&token=be85c031-aadb-47a3-869f-8e7ae4369381',_binary '\0',599000,'Tight Curls Perm',2),(16,'cat toc','00:30:00.000000','string',_binary '\0',60000,'hair cut',1);
/*!40000 ALTER TABLE `salon_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift` (
  `shift_id` bigint NOT NULL AUTO_INCREMENT,
  `end_time` time(6) DEFAULT NULL,
  `limit_booking` int NOT NULL,
  `start_time` time(6) DEFAULT NULL,
  PRIMARY KEY (`shift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES (1,'12:59:00.000000',4,'08:00:00.000000'),(2,'17:59:00.000000',4,'13:00:00.000000'),(3,'23:00:00.000000',4,'18:00:00.000000');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `skill_id` bigint NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'Hair cutting'),(2,'Curling hair'),(3,'Hair straightening'),(4,'Hair dying');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slot`
--

DROP TABLE IF EXISTS `slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slot` (
  `slotid` bigint NOT NULL AUTO_INCREMENT,
  `deleted` bit(1) NOT NULL,
  `slottime` time(6) DEFAULT NULL,
  PRIMARY KEY (`slotid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slot`
--

LOCK TABLES `slot` WRITE;
/*!40000 ALTER TABLE `slot` DISABLE KEYS */;
INSERT INTO `slot` VALUES (1,_binary '\0','08:00:00.000000'),(2,_binary '\0','09:00:00.000000'),(3,_binary '\0','10:00:00.000000'),(4,_binary '\0','11:00:00.000000'),(5,_binary '\0','12:00:00.000000'),(6,_binary '\0','13:00:00.000000'),(7,_binary '\0','14:00:00.000000'),(8,_binary '\0','15:00:00.000000'),(9,_binary '\0','16:00:00.000000'),(10,_binary '\0','17:00:00.000000'),(11,_binary '\0','18:00:00.000000'),(12,_binary '\0','19:00:00.000000'),(13,_binary '\0','20:00:00.000000'),(14,_binary '\0','21:00:00.000000'),(15,_binary '\0','22:00:00.000000');
/*!40000 ALTER TABLE `slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specific_skill`
--

DROP TABLE IF EXISTS `specific_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specific_skill` (
  `account_id` bigint NOT NULL,
  `skill_id` bigint NOT NULL,
  PRIMARY KEY (`account_id`,`skill_id`),
  KEY `FKus6vd2a6rygkqvvb3m1n6fkn` (`skill_id`),
  CONSTRAINT `FK348bv8d1ggeq5shgggct8h6e0` FOREIGN KEY (`account_id`) REFERENCES `account` (`accountid`),
  CONSTRAINT `FKus6vd2a6rygkqvvb3m1n6fkn` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specific_skill`
--

LOCK TABLES `specific_skill` WRITE;
/*!40000 ALTER TABLE `specific_skill` DISABLE KEYS */;
INSERT INTO `specific_skill` VALUES (2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(15,1),(18,1),(20,1),(32,1),(33,1),(3,2),(4,2),(5,2),(6,2),(15,2),(18,2),(32,2),(33,2),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(15,3),(18,3),(20,3),(32,3),(33,3),(3,4),(4,4),(5,4),(6,4),(15,4),(18,4),(32,4),(33,4);
/*!40000 ALTER TABLE `specific_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specific_stylist_schedule`
--

DROP TABLE IF EXISTS `specific_stylist_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specific_stylist_schedule` (
  `shift_id` bigint NOT NULL,
  `stylist_schedule_id` bigint NOT NULL,
  PRIMARY KEY (`shift_id`,`stylist_schedule_id`),
  KEY `FKhhyxgjxups6e9dve5n4hejd6m` (`stylist_schedule_id`),
  CONSTRAINT `FKhhyxgjxups6e9dve5n4hejd6m` FOREIGN KEY (`stylist_schedule_id`) REFERENCES `stylist_schedule` (`stylist_schedule_id`),
  CONSTRAINT `FKngj61x5kwkw7je5kn3s6ifmvf` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specific_stylist_schedule`
--

LOCK TABLES `specific_stylist_schedule` WRITE;
/*!40000 ALTER TABLE `specific_stylist_schedule` DISABLE KEYS */;
INSERT INTO `specific_stylist_schedule` VALUES (1,1),(2,1),(3,1),(4,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(1,2),(2,2),(3,2),(4,2),(6,2),(7,2),(9,2),(10,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(1,3),(2,3),(4,3),(6,3),(7,3),(10,3),(12,3),(13,3),(14,3),(16,3),(18,3),(19,3),(20,3),(21,3),(1,27),(2,27),(2,28),(3,28),(1,29),(2,30),(3,30),(1,31),(2,31),(2,32),(3,32),(1,33),(3,33),(1,34),(2,34),(2,35);
/*!40000 ALTER TABLE `specific_stylist_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylist_schedule`
--

DROP TABLE IF EXISTS `stylist_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stylist_schedule` (
  `stylist_schedule_id` bigint NOT NULL AUTO_INCREMENT,
  `working_day` date DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`stylist_schedule_id`),
  KEY `FKhltcu8qdqga8dy7txkl3aqh6q` (`account_id`),
  CONSTRAINT `FKhltcu8qdqga8dy7txkl3aqh6q` FOREIGN KEY (`account_id`) REFERENCES `account` (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylist_schedule`
--

LOCK TABLES `stylist_schedule` WRITE;
/*!40000 ALTER TABLE `stylist_schedule` DISABLE KEYS */;
INSERT INTO `stylist_schedule` VALUES (1,'2024-10-16',3),(2,'2024-10-16',2),(3,'2024-10-16',4),(4,'2024-10-15',3),(6,'2024-10-15',4),(7,'2024-10-17',2),(8,'2024-10-17',4),(9,'2024-10-18',2),(10,'2024-10-18',3),(11,'2024-10-18',4),(12,'2024-10-19',2),(13,'2024-10-19',3),(14,'2024-10-19',4),(15,'2024-10-20',2),(16,'2024-10-20',3),(17,'2024-10-20',4),(18,'2024-10-15',2),(19,'2024-10-16',15),(20,'2024-10-16',5),(21,'2024-10-16',6),(22,'2024-10-18',2),(23,'2024-10-18',4),(24,'2024-10-22',4),(25,'2024-10-22',2),(26,'2024-10-25',2),(27,'2024-11-08',32),(28,'2024-11-10',33),(29,'2024-11-11',33),(30,'2024-11-12',33),(31,'2024-11-15',33),(32,'2024-11-13',33),(33,'2024-11-20',33),(34,'2024-11-21',33),(35,'2024-11-22',33);
/*!40000 ALTER TABLE `stylist_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transactions_id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `bank_code` varchar(255) DEFAULT NULL,
  `card_type` varchar(255) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_idvnpay` varchar(255) DEFAULT NULL,
  `from_id` bigint DEFAULT NULL,
  `payment_id` bigint DEFAULT NULL,
  `to_id` bigint DEFAULT NULL,
  PRIMARY KEY (`transactions_id`),
  KEY `FKlxxpjk23bvp2u5rdfrdu0p6ua` (`from_id`),
  KEY `FKek0wya9is9dogoj4kem55rx2p` (`payment_id`),
  KEY `FK5i3tyvdi8ksqny2rjiiwgajs2` (`to_id`),
  CONSTRAINT `FK5i3tyvdi8ksqny2rjiiwgajs2` FOREIGN KEY (`to_id`) REFERENCES `account` (`accountid`),
  CONSTRAINT `FKek0wya9is9dogoj4kem55rx2p` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  CONSTRAINT `FKlxxpjk23bvp2u5rdfrdu0p6ua` FOREIGN KEY (`from_id`) REFERENCES `account` (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,818000,'NCB','ATM','2024-10-15','50911205',1,1,19),(2,479000,'NCB','ATM','2024-10-15','48363663',1,4,19),(3,383200,'NCB','ATM','2024-10-15','51193907',1,5,19),(4,431100,'NCB','ATM','2024-10-16','46101433',1,7,19),(5,90000,'NCB','ATM','2024-10-16','79349921',1,11,19),(6,431100,'NCB','ATM','2024-10-16','30679981',1,14,19),(7,80000,'NCB','ATM','2024-10-29','62033060',1,22,19),(8,379000,'NCB','ATM','2024-10-29','85412787',1,23,19);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher` (
  `voucher_id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `discount_amount` double NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_delete` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`voucher_id`),
  UNIQUE KEY `UKpvh1lqheshnjoekevvwla03xn` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher` VALUES (1,'DS20',20,'2024-11-08',_binary '\0','Discount 20',5),(2,'DS10',10,'2024-11-08',_binary '\0','Discount 10',6),(3,'DS50',50,'2024-11-14',_binary '\0','super discount',10),(4,'DS6152',39,'2024-10-24',_binary '\0','string',46),(5,'DS7125',16,'2024-10-24',_binary '\0','string',11),(6,'DS2225',13,'2024-10-24',_binary '\0','string',6),(7,'DS7733',6,'2024-10-24',_binary '\0','string',51),(8,'DS3654',49,'2024-10-24',_binary '\0','string',52),(9,'DS3111',57,'2024-10-24',_binary '\0','string',76),(10,'DS2072',58,'2024-10-24',_binary '\0','string',8),(11,'DS7299',20,'2024-10-24',_binary '\0','string',90);
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-07  7:56:57
