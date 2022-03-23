-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: telematica4c
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `pelis`
--

DROP TABLE IF EXISTS `pelis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelis`
--

LOCK TABLES `pelis` WRITE;
/*!40000 ALTER TABLE `pelis` DISABLE KEYS */;
INSERT INTO `pelis` VALUES (1,'Aguas Profundas','Un hombre permite que su esposa tenga relaciones con otras parejas para intentar salvar su matrimonio. Cuando los amantes de ella comienzan a desaparecer, él se convierte en el principal sospechoso.','2022-03-18'),(2,'Sin respiro','La vida de un policía corrupto se sale de control cuando recibe amenazas de un testigo misterioso de un accidente que buscó ocultar.','2022-02-25'),(3,'El estafador de Tinder','Él se hacía pasar por magnate con una vida de lujo y seducía a mujeres por Internet para robarles millones de dólares. Ahora, sus víctimas se han unido para vengarse juntas.','2022-02-02'),(4,'Scream 5','25 años después de que una racha de asesinatos brutales conmocionara a la tranquila ciudad de Woodsboro, un nuevo asesino imitador se ha puesto la máscara de Ghostface para resucitar secretos del pasado.','2022-02-22'),(11,'A travez de mi ventana','Hace mucho tiempo que Raquel está enamorada de su vecino, Ares, y lo observa en secreto sin atreverse a hablarle. ¿Conseguirá que se enamore de ella?','2022-02-04'),(14,'Jugar en Casa','Dos años después de ser suspendido, Sean Payton, entrenador de fútbol americano en la NFL, regresa a su ciudad natal y se encuentra con su hijo de 12 años entrenando a su equipo de fútbol americano, Pop Warner.','2022-01-28');
/*!40000 ALTER TABLE `pelis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'she','sergio_montano@ucol.mx','sheco'),(2,'shecoomontano','sergio_montano@ucol.mx','ae4b9071a22ea35e2d81042d3543f0ad'),(3,'shec','shecoomontano@gmail.com','5bc8c567a89112d5f408a8af4f17970d'),(4,'gohan','sergio_montano@ucol.mx','46397b2ffee58ba4d65f4691ba016425'),(5,'sherc','shecoomontano@gmail.com','16fcb1091f8a0cc70c96e2ff97fdd213'),(6,'shecooomon','she@ucol.mx','4b833a1681604f040d1854b59076a1a8'),(7,'webmasterziba','amaciasmaldonado@gmail.com','274883dcadb83028c76c3ccfadc7d9f4'),(8,'sergio_montano@ucol.mx','sergio_montano@ucol.mx','3bffa4ebdf4874e506c2b12405796aa5');
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

-- Dump completed on 2022-03-23 14:18:21
