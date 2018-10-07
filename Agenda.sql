-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: agenda
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas` (
  `con_id_contacto` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del contacto',
  `con_lugar` varchar(30) NOT NULL COMMENT 'nombre del lugar',
  `con_hora` varchar(30) NOT NULL COMMENT 'hora de la cita',
  `con_descripcion` varchar(40) NOT NULL COMMENT 'descripcion de la cita',
  PRIMARY KEY (`con_id_contacto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='tabla con las citas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,'Cuatro Parques','4:00 pm','Organizar despedida'),(4,'Biblioteca de la Universidad','2:00 pm','Estudiar para física'),(8,'Casa Juana','9:00 pm','Despedida'),(12,'Odontologia','11:00 am','Profilaxis');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del contacto',
  `con_nombre` varchar(30) NOT NULL COMMENT 'nombre del contacto',
  `con_apellido` varchar(30) NOT NULL COMMENT 'apellido del contacto',
  `con_telefono_domicilio` varchar(15) NOT NULL COMMENT 'telefono de la casa',
  `con_telefono_oficina` varchar(15) NOT NULL COMMENT 'telefono trabajo',
  `con_celular` varchar(20) NOT NULL COMMENT 'celular personal',
  `con_correo` varchar(150) NOT NULL COMMENT 'email personal',
  `con_direccion_residencia` varchar(150) NOT NULL COMMENT 'direccion de residencia',
  `con_direccion_trabajo` varchar(150) NOT NULL COMMENT 'direccion de trabajo',
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='tabla con los nombres de conocidos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'Julian Felipe ','Olaya Torres','12345','12345','3202882648','julianfelipeotxd@outlook.es','cra 182 # 30 -98','trans 3 # 45 -7'),(2,'Nicolas Ricardo ','Valderrama Solano','5678','5678','3143155135','expectropatrom@gmail.com','cra 82 # 30 -98','trans 6 # 45 -7'),(3,'Camilo Andrés ','Caiman Urquijo','4610589','567814564','3005931246','caimanc08@gmail.com','cra 42 # 10 -3','trans 4 # 30 -11'),(4,'Kevin ','Garcia Cuellar','13741','13741','3103048275','kevingarcia.cuellar94@gmail.com','cra 65 # 10 -3','trans 8 # 30 -11'),(5,'Humberto ','Rodriguez Rueda','564654','564654','3138040642','Alexh.2401@hotmail.com','cra 23 # 10 -3','trans 987 # 30 -11'),(6,'Diego','Bermudez','564346454554','564346454554','3173881033','diegobermu1003@gmail.com','cra 73 # 20 -13','trans 984 # 540 -12'),(7,'Johan','Rincón amaya','457747565','457747565','3007879469','johanrimen.a@hotmail.com','cra 14 # 20 -13','trans 97 # 540 -12'),(8,'Vivian','Peña Hurtado','386122','386122','3114612307','pavipehu1@gmail.com','cra 23 # 20 -13','trans 94 # 540 -12'),(9,'Nicolas','Gutierrez Morales','4974320','4974320','3106010259','ndgutierrezm@udistrital.edu.co','cra 3 # 20 -13','trans 4 # 540 -12'),(10,'Jose','Diaz Aguilar','4610710','4610710','3143364257','nikolazbotwe@hotmail.com','cra 2 # 2 -13','trans 54 # 540 -12'),(11,'Cristhian','Yara Pardo','5701252','5701252','3204231096','cmyarap@correo.udistrital.edu.co','cra 43 # 20 -13','trans 23 # 540 -12'),(12,'Juan Felipe','Herrera Poveda','8285065','8285065','3188419339','jfherrerap@correo.udistrital.edu.co','cra 26 # 20 -13','trans 56 # 40 -12'),(13,'Fabian Enrique','Leon','4516130','4516130','320764916','feleonj@correo.udistrital.edu.co','cra 65 # 20 -13','trans 89 # 540 -12'),(14,'Esteban','Norata Triana','2517629','2517629','3193398046','jenoratot@correo.udistrital.edu.co','cra 5 # 20 -13','trans 9 # 540 -12'),(15,'Ivan Santiago','Chauta Gaviria','228735','228735','3506632164','Santiagochauta@gmail.com','cra 6 # 20 -13','trans 8 # 40 -12'),(16,'Kevin','Forero Guaitero','4178898','4178898','3204178898','Kevinandresforero@hotmail.com','cra 95 # 20 -13','trans 92 # 540 -12'),(17,'Kevin Duvan','Bernal Ortiz','7782636','7782636','313224833','kevinduvanbernalortiz@gmail.com','cra 12 # 20 -13','trans 35 # 54 -12'),(18,'Laider Chaverra','Correa','7367012','7367012','3205366740','laidorre14@gmail.com','cra 6 # 20 -13','trans 2 # 540 -12'),(19,'Manuel','Bojaca Jaime','2981148','2981148','324333497','manuel.bojaca@outlook.com','cra 5 # 20 -13','trans 89 # 10 -12');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-04  7:42:55
