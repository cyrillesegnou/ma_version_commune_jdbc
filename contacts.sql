-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: contacts
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
-- Current Database: `contacts`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `contacts` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `contacts`;

--
-- Table structure for table `adresses`
--

DROP TABLE IF EXISTS `adresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresses` (
  `pk` int NOT NULL AUTO_INCREMENT,
  `rue` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_postal` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pays` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FRANCE',
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresses`
--

LOCK TABLES `adresses` WRITE;
/*!40000 ALTER TABLE `adresses` DISABLE KEYS */;
INSERT INTO `adresses` VALUES (1,'962-511 Erat Av.','91171','Brive-la-Gaillarde','France'),(2,'375-9042 Natoque Rue','70385','Alençon','France'),(3,'219-880 Parturient Route','63280','Sarreguemines','France'),(4,'2300 Fringilla Ave','77604','Béthune','France'),(5,'CP 326, 5373 Rutrum Impasse','65385','Dole','France'),(6,'1576 Enim. Route','14689','Alençon','France'),(7,'CP 174, 2573 Felis Chemin','53185','Narbonne','France'),(8,'CP 215, 6850 Donec Chemin','94803','Rezé','France'),(9,'Appartement 171-8772 Sed Chemin','22173','Troyes','France'),(10,'6471 Eu Route','39238','Carcassonne','France'),(11,'Appartement 315-7742 Libero Rue','25032','Aurillac','France'),(12,'Appartement 328-8221 Ac, Ave','03526','Saint-Brieuc','France'),(13,'Appartement 963-9407 Amet Rd.','91047','Lisieux','France'),(14,'258-1053 Nec Route','97273','Cherbourg-Octeville','France'),(15,'Appartement 986-9801 Quis Avenue','26757','Sotteville-lès-Rouen','France'),(16,'189-6753 Enim. Rd.','22910','Ajaccio','France'),(17,'CP 810, 6331 Proin Av.','72333','Abbeville','France'),(18,'176-3958 Quis Avenue','51341','Lens','France'),(19,'5973 Malesuada Rue','38042','Saint-Malo','France'),(20,'7682 Enim. Rd.','23017','La Rochelle','France'),(21,'CP 769, 2229 Pharetra Avenue','68007','Évreux','France'),(22,'358-7145 Sed Rd.','11927','Rodez','France'),(23,'7846 Mi Rd.','94832','Boulogne-Billancourt','France'),(24,'Appartement 550-6298 Nam Route','81865','Abbeville','France'),(25,'CP 884, 819 Mauris Ave','85288','Créteil','France'),(26,'7314 Elit Rd.','67910','Bourges','France'),(27,'CP 678, 1720 At Route','24051','Chalon-sur-Saône','France'),(28,'Appartement 488-9543 Dui, Ave','20705','Niort','France'),(29,'8216 Sed Rd.','42046','Châteauroux','France'),(30,'CP 379, 615 Sed Rue','09631','Toulouse','France'),(31,'CP 564, 9633 Amet, Avenue','33808','Lanester','France'),(32,'2521 Feugiat Impasse','15352','Nevers','France'),(33,'315-2953 Sociosqu Ave','58195','Poitiers','France'),(34,'7780 Dui. Avenue','51778','Albi','France'),(35,'8081 Fusce Impasse','12151','Pau','France'),(36,'297-8905 Adipiscing Rd.','78290','Dieppe','France'),(37,'Appartement 361-1783 Molestie. Chemin','23345','Vichy','France'),(38,'CP 236, 3752 Morbi Impasse','25671','Saintes','France'),(39,'CP 615, 9334 Nisi Av.','64503','Rennes','France'),(40,'164-219 Fusce Av.','90510','Boulogne-Billancourt','France'),(41,'CP 347, 8677 Vestibulum, Route','11768','Nevers','France'),(42,'CP 865, 6699 Pellentesque. Rd.','09952','Colomiers','France'),(43,'CP 917, 7128 Diam Av.','92462','Ajaccio','France'),(44,'CP 484, 7433 Ipsum Avenue','33541','Saint-Brieuc','France'),(45,'Appartement 777-9691 Suscipit, Rue','41065','Amiens','France'),(46,'Appartement 808-6290 Sapien. Rue','35500','Issy-les-Moulineaux','France'),(47,'Appartement 832-4950 Suspendisse Impasse','16151','Quimper','France'),(48,'CP 101, 3662 Amet Route','06102','Brive-la-Gaillarde','France'),(49,'Appartement 840-6788 Eleifend Chemin','71080','Saint-Étienne-du-Rouvray','France'),(50,'Appartement 512-2921 Ultrices. Ave','73644','Épernay','France'),(51,'CP 410, 5018 Lorem Chemin','70404','Vichy','France'),(52,'CP 101, 1453 Fusce Chemin','93247','Saint-Étienne-du-Rouvray','France'),(53,'236-3815 Urna. Rue','75749','Tarbes','France'),(54,'Appartement 522-5742 Sed Avenue','21955','Niort','France'),(55,'578-9688 Placerat. Impasse','24714','Rezé','France'),(56,'663 Ipsum Rue','51494','Ajaccio','France'),(57,'283 Etiam Avenue','70592','Limoges','France'),(58,'CP 405, 6909 Parturient Av.','87673','Châtellerault','France'),(59,'Appartement 455-7743 Habitant Avenue','25506','Strasbourg','France'),(60,'1684 Duis Avenue','82486','Créteil','France'),(61,'962-7009 Enim Rd.','08400','Belfort','France'),(62,'CP 302, 9105 Aliquet. Rd.','31126','Gap','France'),(63,'733-9739 Mauris Ave','79060','Périgueux','France'),(64,'160-9086 Dolor Route','69684','Tours','France'),(65,'Appartement 594-5294 Quis Rue','84695','Nîmes','France'),(66,'836-172 Eget Avenue','56931','Toulouse','France'),(67,'CP 997, 4401 Tincidunt Rue','87093','Dole','France'),(68,'614-8227 Etiam Chemin','72329','Perpignan','France'),(69,'366-1098 Mollis. Chemin','00365','Paris','France'),(70,'6938 Amet, Chemin','41346','Clermont-Ferrand','France'),(71,'227-5843 A, Avenue','53920','Metz','France'),(72,'CP 872, 4703 Arcu Impasse','96664','Haguenau','France'),(73,'Appartement 765-8222 Dui. Chemin','35454','Aurillac','France'),(74,'Appartement 230-1641 Molestie Route','01500','Bègles','France'),(75,'CP 769, 3677 Dui Ave','70538','Montbéliard','France'),(76,'768-3787 In Avenue','91026','Saint-Quentin','France'),(77,'Appartement 174-6850 Vestibulum Av.','97631','Lanester','France'),(78,'CP 204, 9462 Mauris Impasse','76868','Dreux','France'),(79,'971-3747 Duis Av.','21724','Cholet','France'),(80,'433-6012 Aliquet Rue','60459','Béziers','France'),(81,'9802 Malesuada Ave','08557','Rouen','France'),(82,'Appartement 920-4733 Mi Rd.','23226','Biarritz','France'),(83,'CP 133, 5289 Et, Chemin','21585','Hérouville-Saint-Clair','France'),(84,'Appartement 392-1480 Lacus. Ave','38447','Dijon','France'),(85,'Appartement 144-7996 Ante. Chemin','03809','Créteil','France'),(86,'9388 Egestas. Impasse','87965','Saint-Louis','France'),(87,'Appartement 586-6910 Primis Route','89868','Laon','France'),(88,'CP 313, 6324 Aliquam Rd.','50372','Chartres','France'),(89,'CP 716, 5263 Nisl. Rd.','96610','Saumur','France'),(90,'CP 231, 7437 Non Av.','71285','Schiltigheim','France'),(91,'467-4839 Placerat Impasse','74140','Forbach','France'),(92,'CP 763, 9096 Non, Rd.','46751','Mâcon','France'),(93,'Appartement 484-9759 Elit, Route','32864','Châlons-en-Champagne','France'),(94,'Appartement 448-9551 Et Rue','24927','Le Grand-Quevilly','France'),(95,'131-3267 Velit Avenue','21863','Valenciennes','France'),(96,'CP 241, 2674 Tristique Rue','45710','Wattrelos','France'),(97,'Appartement 844-8604 Velit. Route','06620','Biarritz','France'),(98,'3279 Suscipit Impasse','44134','Châtellerault','France'),(99,'1484 Fusce Av.','97652','Arras','France'),(100,'7777 Eu, Chemin','47930','Évreux','France');
/*!40000 ALTER TABLE `adresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avatars`
--

DROP TABLE IF EXISTS `avatars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avatars` (
  `fk_personne` int NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatars`
--

LOCK TABLES `avatars` WRITE;
/*!40000 ALTER TABLE `avatars` DISABLE KEYS */;
INSERT INTO `avatars` VALUES (1,'lagaffe-gaston.jpg'),(37,'delarge-alexander.jpeg'),(26,'mcclane-john.jpeg'),(6,'beretto-antoine.jpeg'),(2,'blanc-sec-adele.jpeg'),(43,'napier-jack.jpeg'),(19,'salander-lisbeth.jpeg'),(5,'volfoni-paul.jpeg'),(29,'lando-matilda.jpeg');
/*!40000 ALTER TABLE `avatars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_adresses`
--

DROP TABLE IF EXISTS `contacts_adresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_adresses` (
  `fk_personne` int NOT NULL,
  `fk_adresse` int NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'perso'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_adresses`
--

LOCK TABLES `contacts_adresses` WRITE;
/*!40000 ALTER TABLE `contacts_adresses` DISABLE KEYS */;
INSERT INTO `contacts_adresses` VALUES (1,1,'perso'),(2,2,'perso'),(3,3,'perso'),(4,4,'perso'),(5,4,'perso'),(6,6,'perso');
/*!40000 ALTER TABLE `contacts_adresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnes`
--

DROP TABLE IF EXISTS `personnes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnes` (
  `pk` int NOT NULL AUTO_INCREMENT,
  `civilite` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnes`
--

LOCK TABLES `personnes` WRITE;
/*!40000 ALTER TABLE `personnes` DISABLE KEYS */;
INSERT INTO `personnes` VALUES (1,'M','Lagaffe','Gaston'),(2,'Mlle','Blanc-Sec','Adèle'),(3,'M','Naudin','Fernand'),(4,'M','Volfoni','Raoul'),(5,'M','Volfoni','Paul'),(6,'M','Beretto','Antoine'),(7,'M','Michalon','Léonard'),(8,'Mme','Michalon','Eglantine'),(9,'M','Pignon','François'),(10,'M','Leblanc','Juste'),(11,'Mlle','Sasseur','Marlène'),(12,'Mme','Brochant','Christine'),(14,'M','Cheval','Lucien'),(15,'Mlle','Blond','Louisette'),(16,'M','Milan','Ralf'),(17,'M','Perrin','François'),(18,'Mlle','Bens','Marie'),(19,'Mlle','Salander','Lisbeth'),(20,'Mlle','Croft','Lara'),(25,'Mlle','Starling','Clarice'),(26,'M','McCLane','John'),(28,'M','MacLeod','Conrad'),(29,'Mlle','Lando','Mathilda'),(30,'M','McFly','Martin'),(31,'Dr','Brown','Emmet'),(32,'M','Tannen','Biff'),(33,'M','Dallas','Korben'),(37,'M','DeLarge','Alexander'),(38,'M','Wayne','Bruce'),(39,'M','Gordon','James'),(40,'Mlle','Kathy','Kane'),(41,'Mlle','Betty','Kane'),(42,'M','Grayson','Dick'),(43,'M','Napier','Jack'),(47,'M','Dalton','Joe'),(50,'M','Dalton','William'),(51,'M','Pierre','Mortez'),(52,'M','Zadko','Preskovitch'),(53,'M','Morin','Bernard'),(54,'M','Dusse','Jean-Claude'),(55,'M','Deckard','Rick'),(56,'Mme','Rosen','Rachael'),(57,'M','Isodore','John R.'),(58,'Mme','Wyatt','Brenda J.'),(59,'M','Morales','Daniel'),(60,'M','Coutant-Kerbalec','Emilien'),(61,'Mme','Bertineau','Lilly'),(67,'M','Prunel','Léon'),(68,'M','De Mesmaeker','Aimé'),(69,'M','Labévue','Bertrand'),(70,'M','Boulier','Joseph'),(71,'Mme','Molaire','Mélanie'),(72,'M','Soutier','Jules'),(73,'Mme','Morin','Nathalie'),(74,'Mme','André','Gisèle'),(75,'M','Lespinasse','Robert'),(76,'Mme','Lekatariba Lamina-Tchaï Ekbat De Sebat','Leeloominaï'),(77,'M','Zorg','Jean-Baptiste Emanuel'),(78,'M','TOTO','TITI'),(79,'M','TOTO','TITI'),(80,'M','TOTO','TITI'),(81,'M','TOTO','TITI'),(82,'M','TOTO','TITI');
/*!40000 ALTER TABLE `personnes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surnoms`
--

DROP TABLE IF EXISTS `surnoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surnoms` (
  `surnom` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fk_personne` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surnoms`
--

LOCK TABLES `surnoms` WRITE;
/*!40000 ALTER TABLE `surnoms` DISABLE KEYS */;
INSERT INTO `surnoms` VALUES ('Marty',25),('Alex',29),('Batman',30),('Batwoman',32),('Batgirl',33),('Robin',34),('Joker',35),('Popeye',75),('Gigi',74),('Leeloo',76);
/*!40000 ALTER TABLE `surnoms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-21 12:06:44
