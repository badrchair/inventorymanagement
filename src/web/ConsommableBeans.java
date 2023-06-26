package web;

import java.util.ArrayList;

import metier.consommable;

public class ConsommableBeans {

	private consommable  consommabl = new consommable();
	private ArrayList liste = new ArrayList<consommable>();
	public consommable getconsommable() {
		return consommabl;
	}
	public void setconsommable(consommable consommabl) {
		this.consommabl = consommabl;
	}
	public ArrayList<consommable> getListe() {
		return liste;
	}
	public void setListe(ArrayList arraylist) {
		this.liste = arraylist;
	}
	
}
