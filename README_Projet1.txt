Projet : BoVoyage_projet1.

Auteurs : Amal ABDELMAKSOUD
	  Cyrille SEGNOU

Objectifs : Mod�lisation, codage de la couche m�tier et mise en place des tests (sous JUnit 4) et des mocks.

Instructions pour compr�hension et tests du programme repr�sentant le projet 1 de BoVoyage.

le projet a �t� mont� sous Eclipse version JDK_8.


	1.	Ouverture du fichier sur Eclipse.

		Apr�s t�l�chargement du projet.zip:
	-	Extraire les fichiers dans un r�pertoire Workspace correspondant � l'IDE Eclipse.
	-	Se mettre sous l'interface JAVA dans Eclipse.
	-	Importer le dossier boVoyage_Projet1 (chemin dans Eclipse : File > Import > Existing Projects Workspace > Browse > dossier extrait "BoVoyage_projet1").  


	2.	Dans l'interface package explorer, d�plier l'onglet au nom du projet. 3 sous dossiers doivent �tre visible (mise � part la JRE et JUnit4). 

		*sous dossier 1 : 

		Dans le sous dossiers src (Sources) 3 packages :
	-	fr.gtm.bovoyage_projet1.entit� : poss�de les 5 classes pr�sentant la couche du domaine (les classes: Client, Destination, Voyage, Voyageurs et Formule).

	-	fr.gtm.bovoyage_projet1.persistance : couche de persistance, elle est organis�e en une classe DestinationMockDAO  impl�mentant l' � Interface � DestinationDAO, et une 			autre classe VoyageMockDAO impl�mentant l'� Interface � VoyageDAO. Cette couche simule une base de donn�es.

	-	fr.gtm.bovoyage_projet1.service : repr�sentant la couche m�tier elle poss�de une seule classe de service.

		Il y'a une inter visibilit� entre ces diff�rents packages du fait de l'import des classes et appel des m�thodes.

		* sous dossier 2 : 

		Dans le sous dossier tests il y a 3 packages de test via JUnit 4 (des JUnit test case), correspondants respectivement aux diff�rents packages et classe du sous dossier 		src. Toutes les classes y sont test�es (les interface ne subissent pas de tests en java). 

		* sousdossier 3

		Les JavaDoc : documentation API en format HTML pr�sent dans les code source Java. 


	3.	Le lancement des tests.

		Pour lancer les tests des classes se rendre dans le sous dossier test, d�plier et s�lectionner la classe � tester (la classe � tester correspond � �nomdelaclasse�Test). 
		Pour lancer le test d'une classe, se positionner sur la case de test correspondante (dans le package de test correspondant) et faire Run as > JUnit test.
		Un onglet s'ouvre � proximit� de package explorer et donne d'�tant des tests. 

