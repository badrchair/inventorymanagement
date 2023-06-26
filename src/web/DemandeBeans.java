package web;

import java.util.ArrayList;

import metier.Demande;

public class DemandeBeans {

	private Demande  dem = new Demande();
	private ArrayList liste = new ArrayList<Demande>();
	public Demande getdem() {
		return dem;
	}
	public void setdem(Demande dem) {
		this.dem = dem;
	}
	public ArrayList<Demande> getListe() {
		return liste;
	}
	public void setListe(ArrayList arraylist) {
		this.liste = arraylist;
	}
	
}