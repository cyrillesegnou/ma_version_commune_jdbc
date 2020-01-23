-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: monopoly
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `monopoly`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `monopoly` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `monopoly`;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases` (
  `num` int NOT NULL,
  `classe` varchar(13) DEFAULT NULL,
  `nom` varchar(39) DEFAULT NULL,
  `montant` int DEFAULT NULL,
  `loyer` int DEFAULT NULL,
  `couleur` varchar(14) DEFAULT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES (1,'Depart','Départ',200,0,'aucune'),(2,'Rue','Boulevard de Belleville',60,6,'violet fonce'),(3,'Neutre','Caisse de communauté',0,0,'aucune'),(4,'Rue','Rue Lecourbe',60,6,'violet fonce'),(5,'Impots','Impots',500,0,'aucune'),(6,'Gare','Gare Montparnasse',500,50,'aucune'),(7,'Rue','Rue de Vaugirard',100,10,'bleu clair'),(8,'Neutre','Chance',0,0,'aucune'),(9,'Rue','Rue de Courcelles',100,10,'bleu clair'),(10,'Rue','Rue de la République',120,12,'bleu clair'),(11,'Neutre','Visite en Prison',0,0,'aucune'),(12,'Rue','Boulevard de la vilette',140,14,'violet clair'),(13,'Compagnie','Compagnie de distribution d\'électricité',250,25,'aucune'),(14,'Rue','Avenue de Neuilly',140,14,'violet clair'),(15,'Rue','Rue de Paradis',160,16,'violet clair'),(16,'Gare','Gare de lyon',500,50,'aucune'),(17,'Rue','Avenue Mozart',180,18,'orange'),(18,'Neutre','Caisse de Communaute',0,0,'aucune'),(19,'Rue','Boulevard Saint-Michel',180,18,'orange'),(20,'Rue','Place Pigalle',200,20,'orange'),(21,'Neutre','Parking',0,0,'aucune'),(22,'Rue','Avenue Matignon',220,22,'rouge'),(23,'Neutre','Chance',0,0,'aucune'),(24,'Rue','Boulevard Malesherbes',220,22,'rouge'),(25,'Rue','Avenue Henri-Martin',240,24,'rouge'),(26,'Gare','Gare du Nord',500,50,'aucune'),(27,'Rue','Faubourg Saint-Honoré',260,26,'jaune'),(28,'Rue','Place de la Bourse',260,26,'jaune'),(29,'Compagnie','Compagnie de Distribution des Eaux',250,25,'aucune'),(30,'Rue','Rue la Fayette',280,28,'jaune'),(31,'Neutre','Prison',0,0,'aucune'),(32,'Rue','Avenue de Breteuil',300,30,'vert'),(33,'Rue','Avenue Foch',300,30,'vert'),(34,'Neutre','Caisse de Communauté',0,0,'aucune'),(35,'Rue','Boulevard des Capucines',320,32,'vert'),(36,'Gare','Gare Saint-Lazare',500,50,'aucune'),(37,'Neutre','chance',0,0,'aucune'),(38,'Rue','Avenue des Champs Elysées',350,35,'bleu fonce'),(39,'TaxeLuxe','Taxe de luxe',500,0,'aucune'),(40,'Rue','Rue de la Paix',400,40,'bleu fonce');
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-21 12:11:50
