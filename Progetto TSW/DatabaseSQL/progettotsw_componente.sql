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
-- Table structure for table `componente`
--

DROP TABLE IF EXISTS `componente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `componente` (
  `IDOrdine` varchar(10) NOT NULL,
  `EmailCliente` varchar(320) NOT NULL,
  `IDProdotto` varchar(10) NOT NULL,
  `quantità` int NOT NULL,
  PRIMARY KEY (`IDOrdine`,`EmailCliente`,`IDProdotto`),
  KEY `IDProdotto` (`IDProdotto`),
  KEY `componente_ibfk_1` (`EmailCliente`),
  CONSTRAINT `componente_ibfk_1` FOREIGN KEY (`EmailCliente`) REFERENCES `ordine` (`EmailCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `componente_ibfk_2` FOREIGN KEY (`IDOrdine`) REFERENCES `ordine` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `componente_ibfk_3` FOREIGN KEY (`IDProdotto`) REFERENCES `prodotto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componente`
--

LOCK TABLES `componente` WRITE;
/*!40000 ALTER TABLE `componente` DISABLE KEYS */;
INSERT INTO `componente` VALUES ('0e2cd066-','raffaele@gmail.com','1',2),('10e32be9-','raffaele@gmail.com','5',1),('111f8494-','raffaele@gmail.com','13',1),('2c3cecfc-','raffaele@gmail.com','1',3),('2c604cf8-','raffaele@gmail.com','5',1),('3d524587-','luca@gmail.com','2',2),('4c93bfa0-','raffaele@gmail.com','26',2),('4e1d4349-','raffaele@gmail.com','1',1),('4e1d4349-','raffaele@gmail.com','4',1),('50a72358-','raffaele@gmail.com','2',1),('5484e064-','raffaele@gmail.com','1',1),('5484e064-','raffaele@gmail.com','5',1),('67ae0e52-','gaetano@gmail.com','1',2),('6bea5853-','luca@gmail.com','1',3),('72b786ec-','luca@gmail.com','1',2),('75c7f003-','luca@gmail.com','1',1),('75c7f003-','luca@gmail.com','2',1),('765df22a-','salvatore@gmail.com','1',1),('7b50e909-','raffaele@gmail.com','1',1),('7b50e909-','raffaele@gmail.com','4',1),('7d29bd09-','luca@gmail.com','1',1),('7d29bd09-','luca@gmail.com','4',2),('87d72466-','luca@gmail.com','7',1),('8884cb85-','raffaele@gmail.com','1',1),('893a9a98-','luca@gmail.com','1',2),('8b18a066-','luca@gmail.com','1',1),('8d2756a1-','luca@gmail.com','18',1),('94c63315-','raffaele@gmail.com','23',1),('b6489b4d-','raffaele@gmail.com','1',2),('b6489b4d-','raffaele@gmail.com','9',1),('c0f5e9a2-','raffaele@gmail.com','1',2),('c5f4ad15-','luca@gmail.com','2',2),('c5f4ad15-','luca@gmail.com','4',1),('c71aee16-','luca@gmail.com','10',2),('c8697985-','raffaele@gmail.com','4',1),('cd39410f-','raffaele@gmail.com','1',3),('cd39410f-','raffaele@gmail.com','2',1),('cf5f3db1-','raffaele@gmail.com','10',6),('dcde164c-','luca@gmail.com','1',2),('dce503f3-','raffaele@gmail.com','10',2),('e69463ab-','raffaele@gmail.com','1',1),('ed3e06c3-','luca@gmail.com','4',2),('f14205e9-','luca@gmail.com','1',1);
/*!40000 ALTER TABLE `componente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-26 16:49:11
