package web;

import java.util.ArrayList;

import metier.Compte;

public class CompteBeans {

	private Compte  cpt = new Compte();
	private ArrayList liste = new ArrayList<Compte>();
	public Compte getCompte() {
		return cpt;
	}
	public void setCompte(Compte cpt) {
		this.cpt = cpt;
	}
	public ArrayList<Compte> getListe() {
		return liste;
	}
	public void setListe(ArrayList arraylist) {
		this.liste = arraylist;
	}
	
}