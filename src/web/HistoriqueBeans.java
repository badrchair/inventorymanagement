package web;

import java.util.ArrayList;

import metier.Historique;

public class HistoriqueBeans {

	private Historique  his = new Historique();
	private ArrayList liste = new ArrayList<Historique>();
	public Historique getdem() {
		return his;
	}
	public void setdem(Historique his) {
		this.his = his;
	}
	public ArrayList<Historique> getListe() {
		return liste;
	}
	public void setListe(ArrayList arraylist) {
		this.liste = arraylist;
	}
	
}