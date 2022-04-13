-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: expedientes
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `expedientes`
--

DROP TABLE IF EXISTS `expedientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expedientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_expedient` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `tipo_expediente` varchar(255) DEFAULT NULL,
  `asunto` varchar(255) DEFAULT NULL,
  `proveedor` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `monto` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fecha_estado` date DEFAULT NULL,
  `solicitante` varchar(100) DEFAULT NULL,
  `contratacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_48134736-588c-4109-8eae-6feb2e893a37` (`user_id`),
  CONSTRAINT `FK_48134736-588c-4109-8eae-6feb2e893a37` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expedientes`
--

LOCK TABLES `expedientes` WRITE;
/*!40000 ALTER TABLE `expedientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `expedientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'juan@gmail.com','12345','asdass'),(2,'mili@gmail.com','12345','qw'),(3,'rodrigo@gmail.com','juanpedro','tussim'),(4,'mateo@gmail.com','12345','car'),(5,'lucas@gmail.com','12345','tas'),(6,'jccarrizo.jcc@gmail.com','$2a$10$eOd8OercEFG8rz4xQgeWl.jHYBYSzzYy7PpHuhCIIl4g2mdwQhdCu','Juan Cruz'),(7,'rodrigo.emenorsrl@gmail.com','$2a$10$qmxAXPL.oLL2OckTfJI9c.Gs0Eh1loEtQ0H/KeiO5BmBojshZtn8S','wtf'),(8,'turismo@gmail.com','$2a$10$km1N7X6YytyKV428F9K/6ugF3NXOXzGYruw2.6zt7AJKbbSRbyjcO','Turismo'),(9,'sorianoclaudia@hotmail.com','$2a$10$TR.IC9DCWnO5.oPKN/lKIemjHFjksiNGfkJOfKMspUeXeiSiBdNfm','dasdas'),(10,'dgayd.saf140@gmail.com','$2a$10$JzhgA5eFIpnC6sFeQNnsG.BQvz16zrR1Y3AEFV7BrxZWbcCIJuqaO','Turismo');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'expedientes'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-13 11:17:51
