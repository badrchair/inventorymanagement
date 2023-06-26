package metier;

public class Inventaire {

	private long code_onep;
	private String I_nom,I_prenom,I_type,entite,marque,matricule,service;
	public long getCode_onep() {
		return code_onep;
	}
	public void setCode_onep(long code_onep) {
		this.code_onep = code_onep;
	}
	public String getI_nom() {
		return I_nom;
	}
	public void setI_nom(String I_nom) {
		this.I_nom = I_nom;
	}
	
	public String getI_prenom() {
		return I_prenom;
	}
	public void setI_prenom(String I_prenom) {
		this.I_prenom = I_prenom;
	}
	
	public String getI_type() {
		return I_type;
	}
	public void setI_type(String I_type) {
		this.I_type = I_type;
	}
	public String getEntite() {
		return entite;
	}
	public void setEntite(String entite) {
		this.entite = entite;
	}
	public String getMarque() {
		return marque;
	}
	public void setMarque(String marque) {
		this.marque = marque;
	}
	public String getMatricule() {
		return matricule;
	}
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public Inventaire(String I_nom ,String I_prenom,String I_type ,String entite, String marque, String matricule, String service) {
		super();
		this.I_nom = I_nom;
		this.I_prenom = I_prenom;
		this.I_type = I_type;
		this.entite = entite;
		this.marque = marque;
		this.matricule = matricule;
		this.service = service;
	}
	public Inventaire() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Inventaire(long code_onep, String I_nom ,String I_prenom , String I_type, String entite, String marque, String matricule, String service) {
		super();
		this.code_onep = code_onep;
		this.I_nom = I_nom;
		this.I_prenom = I_prenom;
		this.I_type = I_type;
		this.entite = entite;
		this.marque = marque;
		this.matricule = matricule;
		this.service = service;
	} 
	@Override
	public String toString() {
		return  I_nom +" - "+I_prenom+" - "+I_type+" - "+ entite + " - "+ marque +" - "+matricule+" - "+service+" . " ;
	}
	public void Show(){
		System.out.println(toString());
	}
	
}
