package fr.gtm.monopoly;

public class MainMonopoly {

	public static void main(String[] args) {
		Monopoly monopoly = new Monopoly();
			
		Pion p1 = new Pion("avion");
		Pion p2 = new Pion("bateau");
		Pion p3 = new Pion("chapeau");
		
		Joueur j1 = new Joueur("Gaston");
		Joueur j2 = new Joueur("Lucien");
		Joueur j3 = new Joueur("Max");
		
		j1.setPion(p1);
		j2.setPion(p2);
		j3.setPion(p3);
		
		p1.setJoueur(j1);
		p2.setJoueur(j2);
		p3.setJoueur(j3);
		
		monopoly.add(j1,j2,j3);
		monopoly.demarrer();
		System.out.println();
		System.out.println("Tatataaa - le vainqueur est : "+monopoly.getVainqueur());
	}

}
