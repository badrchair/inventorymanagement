package metier;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AjoutCompte {

	private ArrayList<Compte> cpt = new ArrayList<Compte>();
	public ArrayList<Compte> getCpt() {
		return cpt;
	}

	public void setcpt(ArrayList<Compte> cpt) {
		this.cpt = cpt;
	}
	public void add (Compte I) throws SQLException{
		try {
			//1
			Class.forName("com.mysql.jdbc.Driver");
			//2
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			//3
			PreparedStatement pr = cn.prepareStatement(" INSERT INTO  compte VALUES(NULL,?,?,?,?)");
			pr.setString(1, I.getC_nom());
			pr.setString(2, I.getC_prenom());
			pr.setString(3, I.getLogin());
			pr.setString(4, I.getMdp());
			I.getNum_compt();
			//4
			pr.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	 public Compte Find(String login) throws SQLException{
		 Compte user = new Compte();
		try{			
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement("select * from compte where login=?");
			pr.setString(1,login); 
			ResultSet rs = pr.executeQuery();
			while(rs.next()){
				user.setC_nom(rs.getString("C_nom"));
			}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return user;
	}
	    public Compte getUserByLogin(String login, String mdp) {
		Compte user = new Compte();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement ps = cn.prepareStatement("SELECT * FROM Compte WHERE login LIKE ? AND mdp LIKE ?");
			ps.setString(1, login);
			ps.setString(2, mdp);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				user.setC_nom(rs.getString("C_nom"));
				user.setC_prenom(rs.getString("C_prenom"));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return user;
	}

}
