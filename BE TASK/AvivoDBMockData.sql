CREATE DATABASE  IF NOT EXISTS `avivo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `avivo`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: avivo
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cardExpire` varchar(5) DEFAULT NULL,
  `cardNumber` varchar(255) DEFAULT NULL,
  `cardType` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userIdFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userIdFk` (`userIdFk`),
  CONSTRAINT `banks_ibfk_1` FOREIGN KEY (`userIdFk`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
INSERT INTO `banks` VALUES (1,'03/26','9289760655481815','Elo','CNY','YPUXISOBI7TTHPK2BR3HAIXL','2024-12-27 03:11:06','2024-12-27 03:11:06',1),(2,'02/27','6737807858721625','Elo','SEK','83IDT77FWYLCJVR8ISDACFH0','2024-12-27 03:11:06','2024-12-27 03:11:06',2),(3,'04/25','7795895470082859','Korean Express','SEK','90XYKT83LMM7AARZ8JN958JC','2024-12-27 03:11:06','2024-12-27 03:11:06',3),(4,'05/29','5005519846254763','Mastercard','INR','7N7ZH1PJ8Q4WU1K965HQQR27','2024-12-27 03:11:06','2024-12-27 03:11:06',4),(5,'03/26','5772950119588627','American Express','CAD','TAVHURD845KVBTB8W81AQXRY','2024-12-27 03:11:06','2024-12-27 03:11:06',5),(6,'05/28','6771923832947881','Diners Club International','BRL','V6H0O5OE3Q4JVKWDTYWZABMD','2024-12-27 03:11:06','2024-12-27 03:11:06',6),(7,'05/25','7344951706130140','JCB','EUR','49V4GVDVMP0MHIDD4VXMQ3A2','2024-12-27 03:11:06','2024-12-27 03:11:06',7),(8,'01/29','6412128967460199','Maestro','CNY','TS66YQ8R16OX7IJKLUONDQHP','2024-12-27 03:11:06','2024-12-27 03:11:06',8),(9,'02/25','7183482484317509','Visa','CAD','CW5U5KS23U7JYD22TVQL7SIH','2024-12-27 03:11:06','2024-12-27 03:11:06',9),(10,'05/27','6118714010128731','NPS','CNY','GBZRGDMKUOTO34HBCI7A986J','2024-12-27 03:11:06','2024-12-27 03:11:06',10);
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `department` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userIdFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userIdFk` (`userIdFk`),
  CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`userIdFk`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Engineering','Dooley, Kozey and Cronin','Sales Manager','2024-12-27 03:11:06','2024-12-27 03:11:06',1),(2,'Support','Spinka - Dickinson','Support Specialist','2024-12-27 03:11:06','2024-12-27 03:11:06',2),(3,'Research and Development','Schiller - Zieme','Accountant','2024-12-27 03:11:06','2024-12-27 03:11:06',3),(4,'Support','Pagac and Sons','Research Analyst','2024-12-27 03:11:06','2024-12-27 03:11:06',4),(5,'Human Resources','Graham - Gulgowski','Quality Assurance Engineer','2024-12-27 03:11:06','2024-12-27 03:11:06',5),(6,'Product Management','Pfannerstill Inc','Research Analyst','2024-12-27 03:11:06','2024-12-27 03:11:06',6),(7,'Engineering','Dickens - Beahan','Web Developer','2024-12-27 03:11:06','2024-12-27 03:11:06',7),(8,'Marketing','Nikolaus Inc','Chief Executive Officer','2024-12-27 03:11:06','2024-12-27 03:11:06',8),(9,'Support','Gorczany - Gottlieb','Legal Counsel','2024-12-27 03:11:06','2024-12-27 03:11:06',9),(10,'Marketing','Pollich - Hilpert','Chief Financial Officer','2024-12-27 03:11:06','2024-12-27 03:11:06',10);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_address`
--

DROP TABLE IF EXISTS `company_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `stateCode` varchar(10) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `companyIdFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companyIdFk` (`companyIdFk`),
  CONSTRAINT `company_address_ibfk_1` FOREIGN KEY (`companyIdFk`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_address`
--

LOCK TABLES `company_address` WRITE;
/*!40000 ALTER TABLE `company_address` DISABLE KEYS */;
INSERT INTO `company_address` VALUES (1,'263 Tenth Street','San Francisco','Wisconsin','WI','37657','United States',71.814525,-161.150263,'2024-12-27 03:11:06','2024-12-27 03:11:06',1),(2,'395 Main Street','Los Angeles','New Hampshire','NH','73442','United States',79.098326,-119.624845,'2024-12-27 03:11:06','2024-12-27 03:11:06',2),(3,'1896 Washington Street','Dallas','Nevada','NV','88511','United States',20.086743,-34.577107,'2024-12-27 03:11:06','2024-12-27 03:11:06',3),(4,'1622 Lincoln Street','Fort Worth','Pennsylvania','PA','27768','United States',54.911930,-79.498328,'2024-12-27 03:11:06','2024-12-27 03:11:06',4),(5,'1460 Sixth Street','San Antonio','Idaho','ID','21965','United States',44.346545,-26.944701,'2024-12-27 03:11:06','2024-12-27 03:11:06',5),(6,'425 Sixth Street','Indianapolis','Oklahoma','OK','74263','United States',74.986644,-132.916888,'2024-12-27 03:11:06','2024-12-27 03:11:06',6),(7,'996 Eighth Street','Washington','Kansas','KS','27858','United States',-75.462366,-128.025697,'2024-12-27 03:11:06','2024-12-27 03:11:06',7),(8,'930 Lincoln Street','Austin','Colorado','CO','47592','United States',87.970083,-42.769351,'2024-12-27 03:11:06','2024-12-27 03:11:06',8),(9,'1597 Oak Street','Chicago','Florida','FL','28100','United States',-67.452080,-23.209886,'2024-12-27 03:11:06','2024-12-27 03:11:06',9),(10,'1029 Adams Street','San Diego','Maryland','MD','63847','United States',-25.843393,-62.692681,'2024-12-27 03:11:06','2024-12-27 03:11:06',10);
/*!40000 ALTER TABLE `company_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crypto_details`
--

DROP TABLE IF EXISTS `crypto_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crypto_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coin` varchar(255) DEFAULT NULL,
  `wallet` varchar(255) DEFAULT NULL,
  `network` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userIdFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userIdFk` (`userIdFk`),
  CONSTRAINT `crypto_details_ibfk_1` FOREIGN KEY (`userIdFk`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crypto_details`
--

LOCK TABLES `crypto_details` WRITE;
/*!40000 ALTER TABLE `crypto_details` DISABLE KEYS */;
INSERT INTO `crypto_details` VALUES (1,'Bitcoin','0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a','Ethereum (ERC20)','2024-12-27 03:11:06','2024-12-27 03:11:06',1),(2,'Bitcoin','0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a','Ethereum (ERC20)','2024-12-27 03:11:06','2024-12-27 03:11:06',2),(3,'Bitcoin','0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a','Ethereum (ERC20)','2024-12-27 03:11:06','2024-12-27 03:11:06',3),(4,'Bitcoin','0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a','Ethereum (ERC20)','2024-12-27 03:11:06','2024-12-27 03:11:06',4),(5,'Bitcoin','0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a','Ethereum (ERC20)','2024-12-27 03:11:06','2024-12-27 03:11:06',5),(6,'Bitcoin','0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a','Ethereum (ERC20)','2024-12-27 03:11:06','2024-12-27 03:11:06',6),(7,'Bitcoin','0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a','Ethereum (ERC20)','2024-12-27 03:11:06','2024-12-27 03:11:06',7),(8,'Bitcoin','0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a','Ethereum (ERC20)','2024-12-27 03:11:06','2024-12-27 03:11:06',8),(9,'Bitcoin','0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a','Ethereum (ERC20)','2024-12-27 03:11:06','2024-12-27 03:11:06',9),(10,'Bitcoin','0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a','Ethereum (ERC20)','2024-12-27 03:11:06','2024-12-27 03:11:06',10);
/*!40000 ALTER TABLE `crypto_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hairs`
--

DROP TABLE IF EXISTS `hairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hairs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userIdFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userIdFk` (`userIdFk`),
  CONSTRAINT `hairs_ibfk_1` FOREIGN KEY (`userIdFk`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hairs`
--

LOCK TABLES `hairs` WRITE;
/*!40000 ALTER TABLE `hairs` DISABLE KEYS */;
INSERT INTO `hairs` VALUES (1,'Brown','Curly','2024-12-27 03:11:06','2024-12-27 03:11:06',1),(2,'Green','Straight','2024-12-27 03:11:06','2024-12-27 03:11:06',2),(3,'White','Wavy','2024-12-27 03:11:06','2024-12-27 03:11:06',3),(4,'Blonde','Straight','2024-12-27 03:11:06','2024-12-27 03:11:06',4),(5,'White','Straight','2024-12-27 03:11:06','2024-12-27 03:11:06',5),(6,'Gray','Curly','2024-12-27 03:11:06','2024-12-27 03:11:06',6),(7,'White','Straight','2024-12-27 03:11:06','2024-12-27 03:11:06',7),(8,'Red','Kinky','2024-12-27 03:11:06','2024-12-27 03:11:06',8),(9,'Purple','Curly','2024-12-27 03:11:06','2024-12-27 03:11:06',9),(10,'Blonde','Curly','2024-12-27 03:11:06','2024-12-27 03:11:06',10);
/*!40000 ALTER TABLE `hairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `stateCode` varchar(10) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userIdFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userIdFk` (`userIdFk`),
  CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`userIdFk`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES (1,'626 Main Street','Phoenix','Mississippi','MS','29112','United States',-77.162130,-92.084824,'2024-12-27 03:11:06','2024-12-27 03:11:06',1),(2,'385 Fifth Street','Houston','Alabama','AL','38807','United States',22.815468,115.608581,'2024-12-27 03:11:06','2024-12-27 03:11:06',2),(3,'1642 Ninth Street','Washington','Alabama','AL','32822','United States',45.289366,46.832664,'2024-12-27 03:11:06','2024-12-27 03:11:06',3),(4,'238 Jefferson Street','Seattle','Pennsylvania','PA','68354','United States',16.782513,-139.347230,'2024-12-27 03:11:06','2024-12-27 03:11:06',4),(5,'607 Fourth Street','Jacksonville','Colorado','CO','26593','United States',0.505589,-157.432810,'2024-12-27 03:11:06','2024-12-27 03:11:06',5),(6,'547 First Street','Fort Worth','Tennessee','TN','83843','United States',75.326270,-26.152850,'2024-12-27 03:11:06','2024-12-27 03:11:06',6),(7,'664 Maple Street','Indianapolis','Delaware','DE','86684','United States',35.289664,7.063255,'2024-12-27 03:11:06','2024-12-27 03:11:06',7),(8,'1197 First Street','Fort Worth','Rhode Island','RI','24771','United States',-81.194833,-87.948158,'2024-12-27 03:11:06','2024-12-27 03:11:06',8),(9,'466 Pine Street','San Antonio','Louisiana','LA','72360','United States',74.074918,-25.312703,'2024-12-27 03:11:06','2024-12-27 03:11:06',9),(10,'1964 Oak Street','New York','Utah','UT','89352','United States',41.331324,151.782727,'2024-12-27 03:11:06','2024-12-27 03:11:06',10);
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `maidenName` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` enum('male','female') NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthDate` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bloodGroup` varchar(5) DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `eyeColor` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `macAddress` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `ein` varchar(255) DEFAULT NULL,
  `ssn` varchar(255) DEFAULT NULL,
  `userAgent` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Emily','Johnson','Smith',28,'female','emily.johnson@x.dummyjson.com','+81 965-431-3024','emilys','emilyspass','1996-05-30 00:00:00','https://dummyjson.com/icon/emilys/128','O-',193.24,63.16,'Green','42.48.100.32','47:fa:41:18:ec:eb','University of Wisconsin--Madison','977-175','900-590-289','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36','admin','2024-12-27 03:11:06','2024-12-27 03:11:06'),(2,'Michael','Williams','',35,'male','michael.williams@x.dummyjson.com','+49 258-627-6644','michaelw','michaelwpass','1989-08-10 00:00:00','https://dummyjson.com/icon/michaelw/128','B+',186.22,76.32,'Red','12.13.116.142','79:15:78:99:60:aa','Ohio State University','912-602','108-953-962','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Edge/97.0.1072.76 Safari/537.36','admin','2024-12-27 03:11:06','2024-12-27 03:11:06'),(3,'Sophia','Brown','',42,'female','sophia.brown@x.dummyjson.com','+81 210-652-2785','sophiab','sophiabpass','1982-11-06 00:00:00','https://dummyjson.com/icon/sophiab/128','O-',177.72,52.60,'Hazel','214.225.51.195','12:a3:d3:6f:5c:5b','Pepperdine University','963-113','638-461-822','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36','admin','2024-12-27 03:11:06','2024-12-27 03:11:06'),(4,'James','Davis','',45,'male','james.davis@x.dummyjson.com','+49 614-958-9364','jamesd','jamesdpass','1979-05-04 00:00:00','https://dummyjson.com/icon/jamesd/128','AB+',193.31,62.10,'Amber','101.118.131.66','10:7d:df:1f:97:58','University of Southern California','904-810','116-951-314','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','admin','2024-12-27 03:11:06','2024-12-27 03:11:06'),(5,'Emma','Miller','Johnson',30,'female','emma.miller@x.dummyjson.com','+91 759-776-1614','emmaj','emmajpass','1994-06-13 00:00:00','https://dummyjson.com/icon/emmaj/128','AB-',192.80,63.62,'Green','224.126.22.183','32:b9:7e:8d:f5:e8','Northeastern University','403-505','526-210-885','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0','admin','2024-12-27 03:11:06','2024-12-27 03:11:06'),(6,'Olivia','Wilson','',22,'female','olivia.wilson@x.dummyjson.com','+91 607-295-6448','oliviaw','oliviawpass','2002-04-20 00:00:00','https://dummyjson.com/icon/oliviaw/128','B+',182.61,58.00,'Hazel','249.178.112.207','9c:7f:ea:34:18:19','University of North Carolina--Chapel Hill','921-709','836-772-168','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.3 Safari/605.1.15','moderator','2024-12-27 03:11:06','2024-12-27 03:11:06'),(7,'Alexander','Jones','',38,'male','alexander.jones@x.dummyjson.com','+61 260-824-4986','alexanderj','alexanderjpass','1986-10-20 05:30:00','https://dummyjson.com/icon/alexanderj/128','AB-',153.89,77.42,'Blue','166.204.84.32','d2:64:58:2d:1c:46','University of Illinois--Urbana-Champaign','638-127','722-993-925','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','moderator','2024-12-27 03:11:06','2024-12-27 03:11:06'),(8,'Ava','Taylor','',27,'female','ava.taylor@x.dummyjson.com','+1 458-853-7877','avat','avatpass','1997-08-25 00:00:00','https://dummyjson.com/icon/avat/128','AB-',168.47,57.08,'Hazel','150.73.197.233','8d:2e:c2:d6:e7:a8','University of Wisconsin--Madison','297-762','257-419-109','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36','moderator','2024-12-27 03:11:06','2024-12-27 03:11:06'),(9,'Ethan','Martinez','',33,'male','ethan.martinez@x.dummyjson.com','+92 933-608-5081','ethanm','ethanmpass','1991-02-12 00:00:00','https://dummyjson.com/icon/ethanm/128','AB+',159.19,68.81,'Hazel','63.191.127.71','59:e:9e:e3:29:da','Syracuse University','790-434','569-650-348','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','moderator','2024-12-27 03:11:06','2024-12-27 03:11:06'),(10,'Isabella','Anderson','Davis',31,'female','isabella.anderson@x.dummyjson.com','+49 770-658-4885','isabellad','isabelladpass','1993-06-10 00:00:00','https://dummyjson.com/icon/isabellad/128','A-',150.56,50.10,'Brown','114.9.114.205','b1:b0:d0:a2:82:80','California Institute of Technology (Caltech)','127-297','902-438-728','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36','moderator','2024-12-27 03:11:06','2024-12-27 03:11:06');
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

-- Dump completed on 2024-12-27 13:54:34
