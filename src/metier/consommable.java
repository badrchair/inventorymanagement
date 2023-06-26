package metier;

public class consommable {
	private long code_onee;
	private String S_nom,S_type,S_quantite,S_marque,S_modele,S_longeur,S_debit,S_capacite;
	public long getCode_onee() {
		return code_onee;
	}
	public void setCode_onee(long code_onee) {
		this.code_onee = code_onee;
	}
	public String getS_nom() {
		return S_nom;
	}
	public void setS_nom(String s_nom) {
		S_nom = s_nom;
	}
	
	public String getS_type() {
		return S_type;
	}
	public void setS_type(String s_type) {
		S_type = s_type;
	}
	
	public String getS_quantite() {
		return S_quantite;
	}
	public void setS_quantite(String s_quantite) {
		S_quantite = s_quantite;
	}
	
	public String getS_marque() {
		return S_marque;
	}
	public void setS_marque(String s_marque) {
		S_marque = s_marque;
	}
	public String getS_modele() {
		return S_modele;
	}
	public void setS_modele(String s_modele) {
		S_modele = s_modele;
	}
	public String getS_longeur() {
		return S_longeur;
	}
	public void setS_longeur(String s_longeur) {
		S_longeur = s_longeur;
	}
	public String getS_debit() {
		return S_debit;
	}
	public void setS_debit(String s_debit) {
		S_debit = s_debit;
	}
	public String getS_capacite() {
		return S_capacite;
	}
	public void setS_capacite(String s_capacite) {
		S_capacite = s_capacite;
	}
	public consommable(long code_onee, String s_nom,String s_type, String s_quantite, String s_marque,
			String s_modele, String s_longeur, String s_debit,String s_capacite) {
		super();
		this.code_onee = code_onee;
		this.S_nom = s_nom;
		this.S_type = s_type;
		this.S_quantite = s_quantite;
		this.S_marque = s_marque;
		this.S_modele = s_modele;
		this.S_longeur = s_longeur;
		this.S_debit = s_debit;
		this.S_capacite = s_capacite;
	}
	public consommable(String s_nom,String s_type, String s_quantite, String s_marque, String s_modele,
			String s_longeur, String s_debit, String s_capacite) {
		super();
		this.S_nom = s_nom;
		this.S_type = s_type;
		this.S_quantite = s_quantite;
		this.S_marque = s_marque;
		this.S_modele = s_modele;
		this.S_longeur = s_longeur;
		this.S_debit = s_debit;
		this.S_capacite = s_capacite;
	}
	public consommable() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return S_nom+"-"+S_type+"-"+S_quantite+"-"+S_longeur+"-"+S_debit+"-"+S_marque+"-"+S_modele+"-"+S_capacite+".";
	}
	public void Show(){
		System.out.println(toString());
	}

}