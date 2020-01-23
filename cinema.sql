-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: cinema
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
-- Current Database: `cinema`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cinema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `cinema`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `pk_categorie` int NOT NULL AUTO_INCREMENT,
  `categorie` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pk_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'science-fiction'),(2,'comédie');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_acteur`
--

DROP TABLE IF EXISTS `film_acteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_acteur` (
  `fk_film` int NOT NULL,
  `fk_acteur` int NOT NULL,
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_acteur`
--

LOCK TABLES `film_acteur` WRITE;
/*!40000 ALTER TABLE `film_acteur` DISABLE KEYS */;
INSERT INTO `film_acteur` VALUES (1,1,'Dr David Browman'),(1,2,'Dr Franck Poole'),(1,3,'Dr Heywood R. Floyd'),(2,4,'Rick Deckard'),(2,5,'Roy Batty'),(2,6,'Rachel'),(16,33,'Jeff Lebowski (alias le Duc)'),(16,34,'Walter Sobchak'),(16,35,'Maude Lebowski'),(15,36,'Allegra Geller'),(15,37,'Ted Pikhul'),(15,38,'Kiri Vinokur'),(15,39,'Gas'),(24,40,'Fernand Naudin'),(24,41,'Raoul Volfoni'),(24,42,'Maître Folace'),(24,43,'Patricia'),(24,44,'Antoine Delafoy'),(24,45,'Paul Volfoni');
/*!40000 ALTER TABLE `film_acteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `titre` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_sortie` date DEFAULT NULL,
  `duree` int DEFAULT NULL,
  `pk_film` int NOT NULL AUTO_INCREMENT,
  `prixht` double DEFAULT '12.1',
  `vignette` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_categorie` int DEFAULT '0',
  `fk_realisateur` int DEFAULT NULL,
  PRIMARY KEY (`pk_film`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES ('2001, l\'Odyssée de l\'espace','1968-04-03',156,1,12.1,'2001_odyssee_espace.jpg',1,46),('Blade Runner','1982-06-25',117,2,12.1,'blade_runner_1982.jpg',1,47),('The Big Lebowski','1998-01-18',117,16,12.1,'the_big_lebowski.jpg',2,48),('eXistenZ','1999-04-14',96,23,15,'existenz.jpg',1,49),('Les Tontons flingueurs','1963-10-04',105,24,15,'les_tontons_flingueurs.jpg',2,50);
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnes`
--

DROP TABLE IF EXISTS `personnes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnes` (
  `pk_personne` int NOT NULL AUTO_INCREMENT,
  `civilite` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `date_deces` date DEFAULT NULL,
  PRIMARY KEY (`pk_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnes`
--

LOCK TABLES `personnes` WRITE;
/*!40000 ALTER TABLE `personnes` DISABLE KEYS */;
INSERT INTO `personnes` VALUES (1,'M','Dullea','Keir','1936-05-30',NULL),(2,'M','Lockwood','Gary','1937-02-21',NULL),(3,'M','Sylvester','William','1922-01-31','1995-01-25'),(4,'M','Ford','Harrison','1942-07-13',NULL),(5,'M','Hauer','Rutger','1944-01-23','2019-07-19'),(6,'Mme','Young','Sean','1959-11-20',NULL),(33,'M','Bridges','Jeff','1949-12-04',NULL),(34,'M','Goodman','John','1952-06-20',NULL),(35,'Mme','Moore','Juianne','1960-12-03',NULL),(36,'Mme','Jason Leigh','Jennifer','1962-02-05',NULL),(37,'M','Law','Jude','1972-12-29',NULL),(38,'M','Holm Cuthbert','Ian','1931-09-12',NULL),(39,'M','James Dafoe','William','1955-07-22',NULL),(40,'M','Ventura','Lino','1919-07-14','1987-10-22'),(41,'M','Blier','Bernard','1916-01-11','1989-03-29'),(42,'M','Blanche','Francis','1921-07-20','1974-07-06'),(43,'Mme','Sinjen','Sabine','1924-08-18','1995-05-18'),(44,'M','Rich','Claude','1929-02-08','2017-07-20'),(45,'M','Lefèvre','Jean','1919-10-03','2004-07-09'),(46,'M','Kubrick','Stanley','1928-07-26','1999-03-07'),(47,'M','Scott','Ridley','1937-11-30',NULL),(48,'M','Cohen','Joël','1963-08-23',NULL),(49,'M','Cronenberg','David','1943-03-15',NULL),(50,'M','Lautner','George','1926-01-24','2013-11-22');
/*!40000 ALTER TABLE `personnes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumes`
--

DROP TABLE IF EXISTS `resumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resumes` (
  `fk_film` int NOT NULL,
  `resume` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Résumés des films';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumes`
--

LOCK TABLES `resumes` WRITE;
/*!40000 ALTER TABLE `resumes` DISABLE KEYS */;
INSERT INTO `resumes` VALUES (1,'Le film retrace, à travers différentes époques, le rôle joué par une intelligence inconnue dans l\'évolution de l\'humanité. Il s\'ouvre sur le générique avec Ainsi parlait Zarathoustra de Richard Strauss, puis arrive un écran noir de quelques minutes, sur fond de Atmosphères par György Ligeti.\n\nL\'aube de l\'humanité. À la merci des prédateurs, chassée de son point d\'eau par un groupe rival, une tribu d\'australopithèques est sur le point de disparaître. Mais un matin, ils découvrent un imposant monolithe parallélépipédique de couleur noire devant la caverne qui leur sert d\'abri. Peu après l\'avoir touché, ils ont soudain l\'idée de se servir d\'os comme armes et apprennent à tuer du gibier. Ce premier acte de violence est suivi par une attaque pour la reprise du point d\'eau, qui réussit par le meurtre du chef du groupe rival. Cette séquence s\'achève par le raccord sous forme de match cut (resté célèbre) associant le jet de l\'os tournoyant en l\'air à la procession d\'un satellite – raccourci fulgurant du progrès technique de l\'humanité de la préhistoire jusqu\'à l\'ère de l\'exploration spatiale.\n\nDes vaisseaux dans l\'espace. En 1999, le Dr Heywood Floyd, un scientifique américain, se rend sur la Lune pour enquêter sur une extraordinaire découverte gardée secrète : les équipes de la base de Clavius ont relevé dans le cratère de Tycho une forte anomalie magnétique, conduisant à l\'excavation d\'un monolithe noir de forme parallélépipédique, source de cette perturbation. Celui-ci, manifestement d\'origine extraterrestre, aurait été volontairement enfoui dans le sous-sol lunaire quatre millions d\'années plus tôt, comme si les mystérieux extraterrestres se trouvant au départ de l\'évolution des australopithèques vers l\'intelligence humaine, avaient attendu que la technologie permette aux humains de voyager dans l\'espace. Peu après que le Dr Floyd a touché le monolithe, celui-ci émet une puissante onde radioélectrique en direction de Jupiter.\n\nLa mission Jupiter, 18 mois plus tard. En 2001, le vaisseau Discovery One (Explorateur Un dans la version française) fait route vers Jupiter. Son équipage est composé de deux astronautes, David Bowman et Frank Poole, de trois scientifiques maintenus en hibernation, et de HAL 9000 (CARL dans la version française), un ordinateur de bord doté d\'une intelligence artificielle. Un jour, après une série de questions énigmatiques et insistantes au sujet du but de la mission, HAL signale à Bowman qu\'un élément du système de communication externe est sur le point de tomber en panne ; Bowman et Poole vont inspecter cet élément, manœuvre périlleuse, mais ne trouvent aucune anomalie. L\'ordinateur étant réputé infaillible, ils s\'inquiètent alors des conséquences de cette découverte sur le bon déroulement de leur mission. S\'enfermant dans une capsule destinée aux sorties extravéhiculaires en pensant échapper à la surveillance de HAL, ils décident de le déconnecter pour parer à tout incident ultérieur. Mais HAL parvient à suivre la conversation en lisant sur leurs lèvres ; interprétant leurs propos comme une menace pour son intégrité, et s\'estimant en outre indispensable à la mission, l\'ordinateur entreprend alors de se débarrasser de ses partenaires humains. Lors d\'une nouvelle sortie de Poole, il prend le contrôle de sa capsule et le projette au loin dans l\'espace. Il profite ensuite de l\'absence de Bowman, parti à son secours à bord d\'une autre capsule, pour désactiver les caissons d\'hibernation des scientifiques, les condamnant à mort. Lorsque Bowman revient avec le corps de Poole, HAL lui refuse l\'accès au Discovery One, lui expliquant qu\'il met en péril la mission. Bowman lui réplique qu\'il compte entrer par un accès de secours, mais HAL lui indique que sans casque — parti en hâte, Bowman l\'a oublié — la chose est impossible. Conscient du risque, Bowman ouvre l\'écoutille, utilise le système d\'éjection de sa capsule pour se propulser dans le vaisseau et rétablit la pressurisation, échappant de peu à l\'hypoxie. Il se dirige alors vers le « centre nerveux » de HAL et désactive un à un ses blocs mémoires. Il découvre ainsi un message pré-enregistré du Dr Floyd, qui devait être diffusé à la fin du voyage, relatant l\'épisode lunaire (les astronautes étaient maintenus dans l\'ignorance de ce contexte, contrairement à HAL) et précise que la mystérieuse onde radioélectrique était pointée vers Jupiter.\n\nChambre de style Louis XVI où se voit vieillir prématurément Bowman dans son lit.\nJupiter et au-delà de l\'infini. Arrivé près de Jupiter, où se trouve un gigantesque monolithe noir en orbite autour de la planète, similaire en aspect et proportions à celui découvert sur la Lune, Bowman quitte le Discovery One à bord d\'une capsule pour aller l\'observer. Il est alors aspiré dans une sorte de tunnel coloré et, terrifié, voyage à très grande vitesse à travers l\'espace, découvrant d\'étranges phénomènes cosmiques et des paysages extraterrestres aux couleurs stupéfiantes. Et puis soudain, il se retrouve dans une suite d\'hôtel de style Louis XVI, où tout semble factice mais conçu pour son confort, et où il se voit vieillir prématurément, sans qu\'aucun indice ne lui permette de comprendre ce qui lui arrive1. Alité et mourant, il voit apparaître devant lui un nouveau monolithe noir, qu\'il tente de toucher. Il renaît alors sous la forme d’un fœtus entouré d\'un globe de lumière, puis est téléporté dans l\'espace, près de la Terre. Toutes les interprétations sont possibles comme l\'a souligné Kubrick, mais l\'une d\'elles est qu\'après l\'évolution décisive « à l\'aube de l\'humanité » des australopithèques, il s\'agisse là de l\'évolution suivante de l\'humanité, désormais capable d\'exister et de se déplacer dans l\'espace infini.'),(2,'Six réplicants du modèle Nexus-6, génération extrêmement perfectionnée mais d\'une durée de vie limitée à quatre ans (pour éviter qu\'ils ne s\'humanisent), détournent un vaisseau spatial, dont ils massacrent l\'équipage et les passagers, avant de regagner la Terre. Ils essayent de s\'infiltrer dans la Tyrell Corporation mais deux d\'entre eux meurent lors de la tentative et les autres disparaissent. Plus tard, Dave Holden, un blade runner, fait passer le test de Voight-Kampff à Leon Kowalski, un nouvel employé de la Tyrell Corporation. Mal à l\'aise, Leon, qui est un des réplicants impliqués dans l\'affaire, lui tire dessus.\n\nGaff, un policier amateur d\'origami, contacte alors Rick Deckard, un ancien blade runner qui a quitté le service. Il le conduit à Bryant, l\'ancien supérieur de Deckard. Bryant informe Deckard de la situation et lui montre la vidéo où Leon tire sur Holden. Le chef des blade runner fixe la mission de Deckard : retrouver et éliminer Leon, Zhora, Pris et Roy Batty (le chef du groupe), les quatre réplicants disparus.\n\nDeckard se rend à la Tyrell Corporation pour y rencontrer Eldon Tyrell, le créateur des réplicants, afin d\'obtenir des informations sur les Nexus-6. Tyrell lui demande de faire passer le test de Voight-Kampff à Rachel, son assistante. À l\'issue d\'une longue série de questions, Deckard détermine que Rachel est un réplicant. Tyrell explique ensuite qu\'elle ne le sait pas car on lui a implanté de faux souvenirs, ceux de sa nièce, qui lui fournissent une « mémoire émotionnelle ». Pendant ce temps, Leon et Roy vont à la rencontre de Hannibal Chew, le scientifique qui conçoit les yeux des androïdes. Ils cherchent quelqu\'un qui serait capable d\'allonger leur durée de vie et Chew leur indique le nom de J. F. Sebastian, un généticien très proche de Tyrell.\n\nRachel rend visite à Deckard afin qu\'il lui confirme, ou non, ses soupçons sur son véritable statut. Il lui dit la vérité. De son côté, Pris gagne la confiance de Sebastian en se faisant passer pour une sans-abri. Il la recueille dans l\'immense immeuble entièrement vide dans lequel il vit en compagnie de ses créations robotiquesn 2.\n\nPlus tard Deckard fouille l\'appartement de Leon où il trouve une photo de Zhora et une écaille de serpent artificieln 3. Ces indices le conduisent au club de striptease de Taffey Lewis où travaille Zhora. Elle découvre aisément les intentions du policier, ce qui entraîne une course-poursuite dans les rues de Los Angeles, au terme de laquelle Deckard « retire » Zhora. Bryant le félicite mais l\'informe qu\'il doit désormais également « retirer » Rachel, qui a disparu de la Tyrell Corporation. Cette nouvelle attriste Deckard, qui a des sentiments pour elle. Il remarque Rachel dans la foule, mais il est attaqué et désarmé par Leon. Le réplicant est sur le point de tuer Deckard lorsque Rachel lui tire une balle dans la tête avec l\'arme de Deckard. Ce dernier accompagne Rachel chez lui et lui promet qu\'il ne la pourchassera pas. C\'est à ce moment que Rachel conseille à Deckard de faire le test sur lui-même (un nouvel indice quant à la possible nature de Deckard, qui vient s\'ajouter aux nombreuses allusions qui laissent à croire qu\'il pourrait être un réplicant1).\n\nAu même moment, Roy rejoint Pris chez Sebastian et sympathise avec lui. En effet ce dernier a une espérance de vie limitée car il souffre d\'un vieillissement accéléré (dit « syndrome de Mathusalem »). Ainsi liés d\'amitié, tous deux s\'introduisent à la Tyrell Corporation et utilisent une partie d\'échecs opposant Sebastian à Tyrell comme prétexte pour cette intrusion. Le chef des réplicants conseille un mouvement à son prétendu ami, ce qui a pour effet de lui faire remporter la partie. Roy demande ensuite à son créateur de rectifier le caractère génétique qui limite sa durée de vie, mais Tyrell lui explique que c\'est impossible. Tyrell cherche ensuite à flatter l\'ego de Roy en vantant ses accomplissements mais le réplicant l\'assassine et tue ensuite Sebastian.\n\nDeckard, informé des évènements, se rend chez Sebastian où il est attaqué par Pris. Il parvient à la tuer mais Roy arrive peu après. Le réplicant, sentant sa vie arriver à son terme et rendu furieux par la mort de sa petite amie, donne la chasse à Deckard. Il lui laisse cependant une chance de lui échapper après lui avoir tout de même cassé plusieurs doigts. Deckard s\'enfuit par le toit mais rate un saut et s\'accroche au rebord du toit. Au moment où il lâche prise, Roy le sauve. Le réplicant meurt après avoir livré à Deckard ses dernières pensées. Gaff survient ensuite et rappelle à Deckard que Rachel doit, elle aussi, mourir. Deckard retourne à son appartement où il trouve Rachel endormie. Ils quittent les lieux et Deckard trouve alors un origami représentant une licorne (une licorne étant apparue lors d\'un rêve de Deckard cela signifierait que Gaff connaissait ce rêve et donc que Deckard pourrait être un réplicant), signe que Gaff est déjà passé mais qu\'il a laissé Rachel en vie. Dans la version director\'s cut du film, la dernière image est celle des portes de l\'ascenseur se refermant derrière Deckard et Rachel, alors que la première version les montre ensuite tous les deux en voiture dans la campagne, sous un ciel bleu.'),(3,'Présenté par un narrateur (Sam Elliott) comme un fainéant vivant dans le comté de Los Angeles, Jeffrey Lebowski, dit « le Duc » (Jeff Bridges), passe son temps à jouer au bowling avec ses amis Walter Sobchak (John Goodman) et Donny (Steve Buscemi). Un soir, en rentrant chez lui, il est attendu par deux voyous qui le somment de rendre l\'argent que sa femme doit à Jackie Treehorn, et l\'un d\'eux urine sur son tapis juste avant qu\'ils ne se rendent compte qu\'ils ont fait erreur sur la personne, l\'ayant confondu avec un autre Jeffrey Lebowski. Poussé par son ami Walter, le Duc se rend chez son homonyme, un millionnaire paraplégique (David Huddleston), afin d\'obtenir une compensation pour son tapis, qui lui est refusée. Le Duc quitte alors la résidence du millionnaire en volant un tapis, et rencontre Bunny Lebowski (Tara Reid), sa jeune épouse nymphomane.\n\nQuelques jours après, le Duc est contacté par Brandt (Philip Seymour Hoffman), l\'assistant du « Big » Lebowski, et apprend que Bunny a été enlevée. Il se voit chargé de servir d\'intermédiaire pour livrer la rançon d\'un million de dollars demandée par ses ravisseurs car il pourra confirmer si ceux-ci sont les mêmes que les voyous qui l\'ont agressé. Un peu plus tard, deux autres hommes entrent chez le Duc, l\'assomment et volent son nouveau tapis. Les ravisseurs appellent le soir même pour procéder à l\'échange et le Duc s\'y rend en compagnie de Walter, qui lui propose de garder le million pour eux en donnant aux ravisseurs une mallette remplie de linge sale servant de leurre. Mais le plan ne se déroule pas du tout comme prévu et les ravisseurs partent avec la fausse mallette sans que Walter puisse en attraper un pour lui faire avouer où Bunny est détenue. Plus tard dans la nuit, la voiture du Duc, contenant toujours la vraie mallette, est volée.\n\nLe lendemain, le Duc reçoit un appel de Maude Lebowski (Julianne Moore), fille du millionnaire, qui lui révèle que c\'est elle qui a envoyé des hommes de main reprendre son tapis et qui demande à le rencontrer. Le Duc se rend chez elle et tous deux tombent d\'accord sur le fait qu\'ils pensent que Bunny a elle-même organisé son enlèvement. Maude le charge alors de récupérer le million que son père semble avoir détourné. Mais, à son retour, le Duc est attendu par son homonyme, qui lui tend une enveloppe, envoyée par les ravisseurs, contenant un orteil (présumé être celui de Bunny) et lui donne une dernière chance de conclure l\'échange avec eux. Plus tard, la police prévient le Duc que sa voiture a été retrouvée mais, au même moment, trois « nihilistes » allemands, qui reconnaissent être les ravisseurs, s\'introduisent chez lui et le menacent de mutilation si le million ne leur est pas versé très vite. Le Duc retourne chez Maude pour l\'informer des événements et celle-ci identifie les nihilistes, qui sont des amis de Bunny. Le Duc retrouve ensuite sa voiture, mais la mallette n\'y est plus. En fouillant, il découvre un devoir de classe d\'un adolescent. Accompagné par Walter et Donny, il rend visite au jeune homme, qui refuse d\'avouer quoi que ce soit malgré les tentatives d\'intimidation de Walter.\n\nLe Duc est ensuite invité à Malibu chez Jackie Treehorn (Ben Gazzara), qui l\'interroge sur ce qu\'il sait de l\'enlèvement de Bunny et lui offre une généreuse commission s\'il l\'aide à récupérer le million, avant de le droguer et de le remettre aux autorités. Expulsé de Malibu par la police, le Duc est accueilli en rentrant chez lui par Maude, qui le séduit et fait l\'amour avec lui. Maude lui révèle ensuite qu\'elle cherche à avoir un enfant dont le père ne tiendra pas à s\'occuper et que son père (le « Big Lebowski ») ne possède en réalité aucune fortune, car Maude a hérité de tout l\'argent de sa mère et laisse simplement son père s\'occuper d\'une œuvre de charité. Le Duc comprend alors que lorsque son homonyme a appris l\'enlèvement de Bunny, il a saisi cette occasion pour réaliser un détournement de fonds et lui a donné une mallette vide, voyant dans le Duc quelqu\'un qu\'il pourrait facilement duper.\n\nLe Duc et Walter partent demander des comptes au Big Lebowski et découvrent que Bunny, qui était simplement partie en voyage sans prévenir personne, vient de rentrer. Après une explication houleuse avec le Big Lebowski, qui reconnaît avoir manipulé le Duc, ils considèrent que l\'affaire est close. Cependant, dans la soirée, en sortant du bowling avec Donny, ils sont confrontés aux trois nihilistes, qui ont mis le feu à la voiture du Duc. Il s\'avère que ces derniers, après la disparition de leur amie Bunny, avaient fait croire à son enlèvement dans l\'unique but de demander une rançon à son mari. Demandant au Duc où est l\'argent, lui et Walter leur révèlent que toute l\'affaire n\'était qu\'une supercherie, et les nihilistes leur demandent alors de leur donner tout l\'argent qu\'ils ont sur eux. Walter refuse et met à lui tout seul les trois nihilistes hors de combat, mais pendant ce temps Donny fait une attaque cardiaque et meurt. Après avoir dispersé les cendres de Donny sur une falaise au bord de l\'océan, le Duc et Walter partent jouer au bowling et le narrateur conclut l\'histoire, laissant à penser que Maude est enceinte d\'un petit Lebowski.'),(4,'Dans un futur proche, les joueurs de jeux vidéo sont reliés à un monde virtuel grâce à une console appelée pod, amphibien génétiquement modifié qui se connecte au système nerveux du joueur au travers d\'un bioport, un trou percé à la base du dos du joueur. La démonstration du tout dernier jeu d\'Allegra Geller (Jennifer Jason Leigh) tourne au cauchemar par l\'intervention d\'un groupe de Réalistes, fanatiques opposés à la « technologisation » de l\'être humain ; il ne s\'agit plus de vivre une aventure, mais d\'y survivre…'),(24,'Dans ce film, le personnage récurrent de la trilogie d\'Albert Simonin, Max le Menteur, devient Fernand Naudin, un ex-truand reconverti dans le négoce de matériel agricole à Montauban. Le film s\'ouvre sur son départ en pleine nuit pour Paris et donne tout de suite le ton : pastiche des films noirs américains, l\'humour sculpte l\'ensemble des dialogues. La petite vie tranquille de Fernand va basculer lorsque son ami d\'enfance, Louis, dit le Mexicain, un gangster notoire de retour à Paris, l\'appelle à son chevet.\nCelui-ci, mourant, confie à Fernand avant de s\'éteindre la gestion de ses « affaires » ainsi que l\'éducation de sa petite Patricia, au mécontentement de ses troupes et sous la neutralité bienveillante de Maître Folace, son notaire, qui ne s\'émeut pas trop de la querelle de succession à venir, pas plus que Jean, l\'ancien cambrioleur reconverti en majordome du Mexicain. Fernand Naudin doit affronter les frères Volfoni — Raoul et Paul — qui ont des visées sur les affaires du Mexicain, parmi lesquelles un tripot clandestin, une distillerie tout aussi clandestine et une maison close... D\'autres « vilains » vont se révéler être très intéressés par la succession, dont Théo et son ami Tomate. Pour se défendre contre ce petit monde, Fernand pourra compter sur Pascal, fidèle « première gâchette » du Mexicain.');
/*!40000 ALTER TABLE `resumes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-20 11:09:10
