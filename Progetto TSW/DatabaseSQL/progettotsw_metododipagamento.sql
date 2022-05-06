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
-- Table structure for table `metododipagamento`
--

DROP TABLE IF EXISTS `metododipagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metododipagamento` (
  `numeroCarta` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `EmailCliente` varchar(320) NOT NULL,
  PRIMARY KEY (`EmailCliente`,`numeroCarta`),
  CONSTRAINT `metododipagamento_ibfk_1` FOREIGN KEY (`EmailCliente`) REFERENCES `cliente` (`IndirizzoEmail`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metododipagamento`
--

LOCK TABLES `metododipagamento` WRITE;
/*!40000 ALTER TABLE `metododipagamento` DISABLE KEYS */;
INSERT INTO `metododipagamento` VALUES ('4456789945764432','MasterCard','gaetano@gmail.com'),('5567334789064432','MasterCard','giovanni@gmail.com'),('3547980014335112','Visa','luca@gmail.com'),('4456122599077841','MasterCard','luca@gmail.com'),('5673451208674467','American Express','raffaele@gmail.com'),('8970010376933345','MasterCard','raffaele@gmail.com'),('2234690221459903','Visa','salvatore@gmail.com'),('3345776599002111','MasterCard','salvatore@gmail.com');
/*!40000 ALTER TABLE `metododipagamento` ENABLE KEYS */;
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
