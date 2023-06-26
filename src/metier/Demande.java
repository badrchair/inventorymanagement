package metier;

public class Demande {
	private long Num_dem;
	private String S_nom;
	private String S_quantitevoulue ;
	private String P_nom;
	private String P_prenom;
	private String Code_onee;
	@Override
	public String toString() {
		return "Demande [Num_dem=" + Num_dem + ", S_nom=" + S_nom + ", S_quantitevoulue=" + S_quantitevoulue
				+ ", P_nom=" + P_nom + ", P_prenom=" + P_prenom + Code_onee +"]";
	}
	public Demande(String s_nom, String s_quantitevoulue, String p_nom, String p_prenom, String code_onee ) {
		super();
		S_nom = s_nom;
		S_quantitevoulue = s_quantitevoulue;
		P_nom = p_nom;
		P_prenom = p_prenom;
		Code_onee = code_onee;
	}
	public Demande() {
		super();
	}
	public Demande(long Num_dem, String s_nom, String s_quantitevoulue, String p_nom, String p_prenom, String code_onee ) {
		super();
		this.Num_dem = Num_dem;
		S_nom = s_nom;
		S_quantitevoulue = s_quantitevoulue;
		P_nom = p_nom;
		P_prenom = p_prenom;
	    Code_onee= code_onee;
	}
	public long getNum_dem() {
		return Num_dem;
	}
	public void setNum_dem(long Num_dem) {
		this.Num_dem = Num_dem;
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
	
	
	public void Show(){
		System.out.println(toString());
	}

}
