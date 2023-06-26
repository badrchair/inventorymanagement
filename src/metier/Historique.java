package metier;

public class Historique {
	private long Num_his_dem;
	private String S_nom;
	private String S_quantitevoulue ;
	private String P_nom;
	private String P_prenom;
	private String Code_onee;
	private String Etat;
	public long getNum_his_dem() {
		return Num_his_dem;
	}
	public void setNum_his_dem(long num_his_dem) {
		Num_his_dem = num_his_dem;
	}
	public String getS_nom() {
		return S_nom;
	}
	public void setS_nom(String s_nom) {
		S_nom = s_nom;
	}
	public String getS_quantitevoulue() {
		return S_quantitevoulue;
	}
	public void setS_quantitevoulue(String s_quantitevoulue) {
		S_quantitevoulue = s_quantitevoulue;
	}
	public String getP_nom() {
		return P_nom;
	}
	public void setP_nom(String p_nom) {
		P_nom = p_nom;
	}
	public String getP_prenom() {
		return P_prenom;
	}
	public void setP_prenom(String p_prenom) {
		P_prenom = p_prenom;
	}
	public String getCode_onee() {
		return Code_onee;
	}
	public void setCode_onee(String code_onee) {
		Code_onee = code_onee;
	}
	public String getEtat() {
		return Etat;
	}
	public void setEtat(String etat) {
		Etat = etat;
	}
	public Historique(long num_his_dem, String s_nom, String s_quantitevoulue, String p_nom, String p_prenom,
			String code_onee, String etat) {
		super();
		Num_his_dem = num_his_dem;
		S_nom = s_nom;
		S_quantitevoulue = s_quantitevoulue;
		P_nom = p_nom;
		P_prenom = p_prenom;
		Code_onee = code_onee;
		Etat = etat;
	}
	public Historique(String s_nom, String s_quantitevoulue, String p_nom, String p_prenom, String code_onee,
			String etat) {
		super();
		S_nom = s_nom;
		S_quantitevoulue = s_quantitevoulue;
		P_nom = p_nom;
		P_prenom = p_prenom;
		Code_onee = code_onee;
		Etat = etat;
	}
	public Historique() {
		super();
	}
	@Override
	public String toString() {
		return "Historique [Num_his_dem=" + Num_his_dem + ", S_nom=" + S_nom + ", S_quantitevoulue=" + S_quantitevoulue
				+ ", P_nom=" + P_nom + ", P_prenom=" + P_prenom + ", Code_onee=" + Code_onee + ", Etat=" + Etat + "]";
	}
	public void Show(){
		System.out.println(toString());
	}
}