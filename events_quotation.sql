CREATE DATABASE  IF NOT EXISTS `events` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `events`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: events
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `quotation`
--

DROP TABLE IF EXISTS `quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotation` (
  `QID` int NOT NULL AUTO_INCREMENT,
  `ClientName` varchar(50) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `Venue` varchar(45) NOT NULL,
  `SpecialReq` varchar(100) NOT NULL,
  `Qdate` date NOT NULL,
  `EventType` varchar(30) NOT NULL,
  PRIMARY KEY (`QID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation`
--

LOCK TABLES `quotation` WRITE;
/*!40000 ALTER TABLE `quotation` DISABLE KEYS */;
INSERT INTO `quotation` VALUES (1,'Thamindu Vimansha','adadad','thaminduvd@gmail.com','2023-11-03','Colombo 07','Dietary restrictions - Vegetarian','2023-10-26','Birthday'),(2,'yasas ratnayake','xd','dulmikaratnayake@gmail.com','2024-03-14','Gampaha','Balloon decorations','2023-10-26','Gender Reveal'),(3,'Thihansi Gunawardena ','x','thihansig@gmail.com','2023-11-11','Kottawa','Audio-visual equipment','2023-10-26','Cooperate Event'),(4,'Suhansi Wijetunge','0716534895','susi@gmail.com','2026-07-22','Matara','Pink deco','2023-10-25','Birthday'),(5,'Dinara Dulakshi','0715468942','dinzy@gmail.com','2023-11-03','Colombo','Welcome drink - orange','2023-10-25','Baby Shower'),(8,'yasas ratnayake','kkkkkk','dulmikaratnayake@gmail.com','2023-10-30','kkkkkkkk','kjjnkkk','2023-10-26','Birthday');
/*!40000 ALTER TABLE `quotation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27  0:17:17
