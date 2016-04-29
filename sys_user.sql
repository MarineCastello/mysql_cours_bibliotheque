-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sys
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mail_address` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (17,'Raquin','Guillaume','5 Allée Leopold Sedar Senghor 69007 Lyon','raquin.guillaume@gmail.com','06.31.60.81.37','1992-04-06'),(18,'Castello','Marine','654 Quartier Longeavoux 07220 Viviers','marine.castello@live.fr','06.98.01.78.62','1990-03-16'),(19,'Touati','Julien','175 Rue de la République 07400 Le Teil','touatij@live.fr','06.01.02.03.04','1990-11-21'),(20,'Jollivet','Julie','Quartier Saint Alban 07220 Viviers','jjardechoise@msn.com','06.01.01.02.02','1990-07-25'),(21,'Guillet','Aurélie','Montée de la Sablière 07400 Meysse','micheline07@hotmail.com','06.22.52.42.62','1990-06-26'),(22,'Marchard','Floriane','94 Rue de la République 074700 Cruas','floflo07@msn.com','06.78.73.78.63','1990-12-18'),(23,'Morfin','Célie','Rue Marcel Chamontin 07400 Le Teil','cece.morfin@gmail.com','06.89.65.32.68','1990-02-13'),(24,'Boutellaa','Mounira','Rue Marcel Pagnol 13840 Berre l\'étang','mouna.boutellaa@gmail.com','06.10.12.14.16','1991-01-20'),(25,'Di Martino','Nicolas','Rue qui monte 13011 Marseille','nico.dream@digi.net','06.89.10.87.94','1990-04-10'),(26,'Claudio','Floris','Avenue Vincent Gautier 13100 Beaurecueil','claudio.floris@gmail.com','06.15.95.46.33','1990-02-22'),(27,'Castello','Alain','654 Quartier Longeavoux 07220 Viviers','aca07@msn.com','06.85.09.32.23','1963-07-22'),(28,'Verret','Coleen','Résidence Le Vercors 26200 Montélimar','coleenv@hotmail.fr','06.15.95.46.33','2001-11-04'),(29,'Gautier','Julien','Rue des mouettes 83000 Toulon','jgautier1234@hotmail.fr','06.10.95.20.33','1988-06-15');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-29 15:11:46
