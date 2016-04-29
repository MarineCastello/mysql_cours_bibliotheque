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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id_book` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `restriction` int(11) DEFAULT NULL,
  `secondary_theme` varchar(45) DEFAULT NULL,
  `fk_id_language` int(11) NOT NULL,
  `fk_id_release_date` int(11) NOT NULL,
  `fk_id_list_editor` int(11) NOT NULL,
  `fk_id_theme` int(11) NOT NULL,
  PRIMARY KEY (`id_book`),
  KEY `id_language_idx` (`fk_id_language`),
  KEY `fk_id_list_editor_idx` (`fk_id_list_editor`),
  KEY `fk_id_release_date_idx` (`fk_id_release_date`),
  KEY `fk_id_theme_idx` (`fk_id_theme`),
  CONSTRAINT `fk_id_language` FOREIGN KEY (`fk_id_language`) REFERENCES `list_language` (`id_language`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_id_list_editor` FOREIGN KEY (`fk_id_list_editor`) REFERENCES `list_editor` (`id_list_editor`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_id_release_date` FOREIGN KEY (`fk_id_release_date`) REFERENCES `release_date` (`id_release_date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_id_theme` FOREIGN KEY (`fk_id_theme`) REFERENCES `list_theme` (`id_theme`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'La fille de Brooklyn',NULL,'Romance',1,1,1,1),(2,'Les carnets noirs',NULL,NULL,2,1,2,1),(3,'22/11/63',NULL,NULL,2,2,2,3),(4,'Dune',NULL,NULL,1,3,3,4),(5,'Guide de survie en territoire zombie',NULL,NULL,5,4,4,3),(6,'Docteur Sleep',NULL,NULL,1,5,4,3),(7,'Frankenstein',NULL,NULL,5,6,4,3),(8,'1984',NULL,NULL,2,7,5,4),(9,'Harry Potter à l\'école des sorciers',NULL,NULL,3,8,6,5),(10,'La ligne verte',NULL,NULL,4,9,4,6),(11,'La mariée était en blanc',NULL,NULL,4,5,2,6);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
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
