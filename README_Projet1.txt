Projet : BoVoyage_projet1.

Auteurs : Amal ABDELMAKSOUD
	  Cyrille SEGNOU

Objectifs : Modélisation, codage de la couche métier et mise en place des tests (sous JUnit 4) et des mocks.

Instructions pour compréhension et tests du programme représentant le projet 1 de BoVoyage.

le projet a été monté sous Eclipse version JDK_8.


	1.	Ouverture du fichier sur Eclipse.

		Après téléchargement du projet.zip:
	-	Extraire les fichiers dans un répertoire Workspace correspondant à l'IDE Eclipse.
	-	Se mettre sous l'interface JAVA dans Eclipse.
	-	Importer le dossier boVoyage_Projet1 (chemin dans Eclipse : File > Import > Existing Projects Workspace > Browse > dossier extrait "BoVoyage_projet1").  


	2.	Dans l'interface package explorer, déplier l'onglet au nom du projet. 3 sous dossiers doivent être visible (mise à part la JRE et JUnit4). 

		*sous dossier 1 : 

		Dans le sous dossiers src (Sources) 3 packages :
	-	fr.gtm.bovoyage_projet1.entité : possède les 5 classes présentant la couche du domaine (les classes: Client, Destination, Voyage, Voyageurs et Formule).

	-	fr.gtm.bovoyage_projet1.persistance : couche de persistance, elle est organisée en une classe DestinationMockDAO  implémentant l' « Interface » DestinationDAO, et une 			autre classe VoyageMockDAO implémentant l'« Interface » VoyageDAO. Cette couche simule une base de données.

	-	fr.gtm.bovoyage_projet1.service : représentant la couche métier elle possède une seule classe de service.

		Il y'a une inter visibilité entre ces différents packages du fait de l'import des classes et appel des méthodes.

		* sous dossier 2 : 

		Dans le sous dossier tests il y a 3 packages de test via JUnit 4 (des JUnit test case), correspondants respectivement aux différents packages et classe du sous dossier 		src. Toutes les classes y sont testées (les interface ne subissent pas de tests en java). 

		* sousdossier 3

		Les JavaDoc : documentation API en format HTML présent dans les code source Java. 


	3.	Le lancement des tests.

		Pour lancer les tests des classes se rendre dans le sous dossier test, déplier et sélectionner la classe à tester (la classe à tester correspond à «nomdelaclasse»Test). 
		Pour lancer le test d'une classe, se positionner sur la case de test correspondante (dans le package de test correspondant) et faire Run as > JUnit test.
		Un onglet s'ouvre à proximité de package explorer et donne d'étant des tests. 

