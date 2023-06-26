package metier;

public class Compte {
	private long num_compt;
	private String C_nom,C_prenom,login,mdp;
	public long getNum_compt() {
		return num_compt;
	}
	public void setNum_compt(long num_compt) {
		this.num_compt = num_compt;
	}
	public String getC_nom() {
		return C_nom;
	}
	public void setC_nom(String c_nom) {
		C_nom = c_nom;
	}
	public String getC_prenom() {
		return C_prenom;
	}
	public void setC_prenom(String c_prenom) {
		C_prenom = c_prenom;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public Compte(long num_compt, String c_nom, String c_prenom, String login, String mdp) {
		super();
		this.num_compt = num_compt;
		C_nom = c_nom;
		C_prenom = c_prenom;
		this.login = login;
		this.mdp = mdp;
	}
	public Compte(String c_nom, String c_prenom, String login, String mdp) {
		super();
		C_nom = c_nom;
		C_prenom = c_prenom;
		this.login = login;
		this.mdp = mdp;
	}
	public Compte() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Compte [num_compt=" + num_compt + ", C_nom=" + C_nom + ", C_prenom=" + C_prenom + ", login=" + login
				+ ", mdp=" + mdp + "]";
	}
	public void Show(){
		System.out.println(toString());
	}
}
