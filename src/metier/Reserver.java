package metier;

import metier.consommable;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

public class Reserver {

	private ArrayList<Demande> demandes = new ArrayList<Demande>();
	private String ss;

	public ArrayList<Demande> getdemandes() {
		return demandes;
	}

	public void setdemandes(ArrayList<Demande> demandes) {
		this.demandes = demandes;
	}
	
	public void add (Demande I) throws SQLException{
		try {
			//1
			Class.forName("com.mysql.jdbc.Driver");
			//2
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			//3
			PreparedStatement pr = cn.prepareStatement(" INSERT INTO  demande VALUES(NULL,?,?,?,?,?)");
			pr.setString(1, I.getS_nom());
			pr.setString(2, I.getS_quantitevoulue());
			pr.setString(3, I.getP_nom());
			pr.setString(4, I.getP_prenom());
			pr.setString(5, I.getCode_onee());
			I.getNum_dem();
			//4
			pr.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void remove (String Num_dem) throws SQLException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement(" DELETE FROM demande WHERE num_dem = ?");
			pr.setString(1,Num_dem); 
			pr.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		public void delete (String a) throws SQLException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement(" DELETE FROM demande WHERE code_onee = ?");
			pr.setString(1,a); 
			pr.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	public void update (Long Code_onee , consommable c) throws SQLException{
			try {
				Class.forName("com.mysql.jdbc.Driver");
				java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
				PreparedStatement pr = cn.prepareStatement("update consommable set S_quantite=? where code_onee=?");
				pr.setString(1, c.getS_quantite());
				pr.setLong(2,Code_onee); 
				pr.execute();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}  
	

	public ArrayList getAll() throws SQLException{
		ArrayList<Demande> dem = new ArrayList<Demande>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement(" SELECT * FROM demande ");
			ResultSet rs = pr.executeQuery();
			while (rs.next()){
				Demande I = new Demande();
				I.setNum_dem(rs.getLong("Num_dem"));
				I.setS_nom(rs.getString("S_nom"));
				I.setS_quantitevoulue(rs.getString("S_quantitevoulue"));
				I.setP_nom(rs.getString("P_nom"));
				I.setP_prenom(rs.getString("P_prenom"));
				I.setCode_onee(rs.getString("Code_onee"));
				dem.add(I);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dem;
	}
	 	 public String Find(String Code_onee) throws SQLException{
	 		 String ss = null;
		 try{			
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement("select S_quantite from consommable where code_onee=?");
			pr.setString(1,Code_onee);
		
				ResultSet rs = pr.executeQuery();
				while(rs.next()){
				ss=rs.getString("S_quantite");
				
			} 
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
      return ss;
     
	}
	 	 
	 	public void update (String code_onep , int  I) throws SQLException{
			try {
				Class.forName("com.mysql.jdbc.Driver");
				java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
				PreparedStatement pr = cn.prepareStatement("update consommable set S_quantite=? where code_onee=?");
				pr.setLong(1, I);
				pr.setString(2,code_onep); 
				pr.execute();
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

}


