CREATE DATABASE  IF NOT EXISTS `progettotsw` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `progettotsw`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: progettotsw
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `ordine`
--

DROP TABLE IF EXISTS `ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine` (
  `ID` varchar(10) NOT NULL,
  `EmailCliente` varchar(320) NOT NULL,
  `dataOrdine` date NOT NULL,
  `costo` double(7,5) NOT NULL,
  PRIMARY KEY (`ID`,`EmailCliente`),
  KEY `ordine_ibfk_1` (`EmailCliente`),
  CONSTRAINT `ordine_ibfk_1` FOREIGN KEY (`EmailCliente`) REFERENCES `cliente` (`IndirizzoEmail`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine`
--

LOCK TABLES `ordine` WRITE;
/*!40000 ALTER TABLE `ordine` DISABLE KEYS */;
INSERT INTO `ordine` VALUES ('0e2cd066-','raffaele@gmail.com','2020-07-20',20.00000),('10e32be9-','raffaele@gmail.com','2020-07-15',10.00000),('111f8494-','raffaele@gmail.com','2020-07-26',12.00000),('2c3cecfc-','raffaele@gmail.com','2020-07-26',15.00000),('2c604cf8-','raffaele@gmail.com','2020-07-16',15.00000),('3d524587-','luca@gmail.com','2020-07-15',45.00000),('4c93bfa0-','raffaele@gmail.com','2020-07-24',24.00000),('4e1d4349-','raffaele@gmail.com','2020-07-20',20.00000),('50a72358-','raffaele@gmail.com','2020-07-21',20.00000),('5484e064-','raffaele@gmail.com','2020-07-20',20.00000),('67ae0e52-','gaetano@gmail.com','2020-07-24',15.00000),('6bea5853-','luca@gmail.com','2020-07-14',34.00000),('72b786ec-','luca@gmail.com','2020-07-23',14.98000),('75c7f003-','luca@gmail.com','2020-07-14',34.00000),('765df22a-','salvatore@gmail.com','2020-07-26',5.00000),('7b50e909-','raffaele@gmail.com','2020-07-20',20.00000),('7d29bd09-','luca@gmail.com','2020-07-20',50.00000),('87d72466-','luca@gmail.com','2020-07-23',70.00000),('8884cb85-','raffaele@gmail.com','2020-07-20',10.00000),('893a9a98-','luca@gmail.com','2020-07-14',24.00000),('8b18a066-','luca@gmail.com','2020-07-26',10.00000),('8d2756a1-','luca@gmail.com','2020-07-23',10.00000),('94c63315-','raffaele@gmail.com','2020-07-26',11.00000),('b6489b4d-','raffaele@gmail.com','2020-07-21',27.00000),('c0f5e9a2-','raffaele@gmail.com','2020-07-26',15.00000),('c5f4ad15-','luca@gmail.com','2020-07-14',40.00000),('c71aee16-','luca@gmail.com','2020-07-21',21.00000),('c8697985-','raffaele@gmail.com','2020-07-21',25.00000),('cd39410f-','raffaele@gmail.com','2020-07-15',50.00000),('cf5f3db1-','raffaele@gmail.com','2020-07-21',53.00000),('dcde164c-','luca@gmail.com','2020-07-26',10.00000),('dce503f3-','raffaele@gmail.com','2020-07-21',21.00000),('e69463ab-','raffaele@gmail.com','2020-07-23',5.00000),('ed3e06c3-','luca@gmail.com','2020-07-14',45.00000),('f14205e9-','luca@gmail.com','2020-07-14',15.00000);
/*!40000 ALTER TABLE `ordine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-26 16:49:12
