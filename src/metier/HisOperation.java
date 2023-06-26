package metier;


import metier.Historique;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

public class HisOperation {

	private ArrayList<Historique> historiques = new ArrayList<Historique>();

	public ArrayList<Historique> gethistoriques() {
		return historiques;
	}

	public void sethistoriques(ArrayList<Historique> historiques) {
		this.historiques = historiques;
	}
	
	public void add (Historique I) throws SQLException{
		try {
			//1
			Class.forName("com.mysql.jdbc.Driver");
			//2
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			//3
			PreparedStatement pr = cn.prepareStatement(" INSERT INTO  historique VALUES(NULL,?,?,?,?,?,?)");
			pr.setString(1, I.getS_nom());
			pr.setString(2, I.getS_quantitevoulue());
			pr.setString(3, I.getP_nom());
			pr.setString(4, I.getP_prenom());
			pr.setString(5, I.getCode_onee());
			pr.setString(6, I.getEtat());
			I.getNum_his_dem();
			//4
			pr.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void remove (String Num_his_dem) throws SQLException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement(" DELETE FROM demande WHERE num_his_dem = ?");
			pr.setString(1,Num_his_dem); 
			pr.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	 

	public ArrayList getAll() throws SQLException{
		ArrayList<Historique> his = new ArrayList<Historique>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement(" SELECT * FROM historique ");
			ResultSet rs = pr.executeQuery();
			while (rs.next()){
				Historique I = new Historique();
				I.setNum_his_dem(rs.getLong("Num_his_dem"));
				I.setS_nom(rs.getString("S_nom"));
				I.setS_quantitevoulue(rs.getString("S_quantitevoulue"));
				I.setP_nom(rs.getString("P_nom"));
				I.setP_prenom(rs.getString("P_prenom"));
				I.setCode_onee(rs.getString("Code_onee"));
				I.setEtat(rs.getString("Etat"));
				his.add(I);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return his;
	}

    public ArrayList Search(String S_nom) throws SQLException{
		 ArrayList<Historique> Con = new ArrayList<Historique>();
		try{			
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement("select * from historique where S_nom=?");
			pr.setString(1,S_nom); 
				ResultSet rs = pr.executeQuery();
				while (rs.next()){
				Historique s = new Historique();
				s.setNum_his_dem(rs.getLong("num_his_dem"));
				s.setS_nom(rs.getString("S_nom"));
				s.setS_quantitevoulue(rs.getString("S_quantitevoulue"));
				s.setP_nom(rs.getString("P_nom"));
				s.setP_prenom(rs.getString("P_prenom"));
				s.setCode_onee(rs.getString("code_onee"));
				s.setEtat(rs.getString("etat"));
				Con.add(s);
			} 
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return Con;
	} 

}


