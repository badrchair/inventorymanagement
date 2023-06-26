package web;

import java.util.ArrayList;
import java.util.Vector;

import metier.Inventaire;

public class InventaireBeans {
	
	private Inventaire  inventaire = new Inventaire();
	private ArrayList liste = new ArrayList<Inventaire>();
	public Inventaire getInventaire() {
		return inventaire;
	}
	public void setInventaire(Inventaire inventaire) {
		this.inventaire = inventaire;
	}
	public ArrayList<Inventaire> getListe() {
		return liste;
	}
	public void setListe(ArrayList arraylist) {
		this.liste = arraylist;
	}
	
}
