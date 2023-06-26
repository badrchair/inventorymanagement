package metier;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

public class Action {

	private ArrayList<consommable> consommables = new ArrayList<consommable>();

	public ArrayList<consommable> getconsommables() {
		return consommables;
	}

	public void setconsommables(ArrayList<consommable> consommables) {
		this.consommables = consommables;
	}
	
	public void add (consommable I) throws SQLException{
		try {
			//1
			Class.forName("com.mysql.jdbc.Driver");
			//2
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			//3
			PreparedStatement pr = cn.prepareStatement(" INSERT INTO  consommable VALUES(NULL,?,?,?,?,?,?,?,?)");
			pr.setString(1, I.getS_nom());
			pr.setString(2, I.getS_type());
			pr.setString(3, I.getS_quantite());
			pr.setString(4, I.getS_marque());
			pr.setString(5, I.getS_modele());
			pr.setString(6, I.getS_longeur());
			pr.setString(7, I.getS_debit());
			pr.setString(8, I.getS_capacite());
			I.getCode_onee();
			//4
			pr.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void remove (String code_onee) throws SQLException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement(" DELETE FROM consommable WHERE code_onee = ?");
			pr.setString(1,code_onee); 
			pr.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	 public ArrayList Find(String code_onee) throws SQLException{
		 ArrayList<consommable> Con = new ArrayList<consommable>();
		 try{			
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement("select * from consommable where code_onee=?");
			pr.setString(1,code_onee);
		
				ResultSet rs = pr.executeQuery();
				while(rs.next()){
				consommable c = new consommable();
				c.setCode_onee(rs.getLong("code_onee"));
				c.setCode_onee(rs.getLong("S_type"));
				c.setS_nom(rs.getString("S_nom"));
				c.setS_quantite(rs.getString("S_quantite"));
				c.setS_marque(rs.getString("S_marque"));
				c.setS_modele(rs.getString("S_modele"));
				c.setS_longeur(rs.getString("S_longeur"));
				c.setS_debit(rs.getString("S_debit"));
				c.setS_capacite(rs.getString("S_capacite"));
				Con.add(c);
				
			} 
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return Con;
	}
    
    	 public ArrayList Search(String S_nom) throws SQLException{
		 ArrayList<consommable> Con = new ArrayList<consommable>();
		try{			
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement("select * from consommable where S_nom=?");
			pr.setString(1,S_nom); 
				ResultSet rs = pr.executeQuery();
				while (rs.next()){
				consommable s = new consommable();
				s.setCode_onee(rs.getLong("code_onee"));
				s.setS_nom(rs.getString("S_nom"));
				s.setS_quantite(rs.getString("S_quantite"));
				s.setS_marque(rs.getString("S_marque"));
				s.setS_modele(rs.getString("S_modele"));
				s.setS_longeur(rs.getString("S_longeur"));
				s.setS_debit(rs.getString("S_debit"));
				s.setS_capacite(rs.getString("S_capacite"));
				Con.add(s);
			} 
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return Con;
	} 
		public void update (String code_onee , consommable I) throws SQLException{
			try {
				Class.forName("com.mysql.jdbc.Driver");
				java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
				PreparedStatement pr = cn.prepareStatement("update consommable set S_nom=?,S_quantite=?,s_marque=?,s_modele=?,s_longeur=?,s_debit=?, s_capacite=? where code_onee=?");
				pr.setString(1, I.getS_nom());
				pr.setString(2, I.getS_quantite());
				pr.setString(3, I.getS_marque());
				pr.setString(4, I.getS_modele());
				pr.setString(5, I.getS_longeur());
				pr.setString(6, I.getS_debit());
				pr.setString(7, I.getS_capacite());
				pr.setString(8,code_onee); 
				
				pr.execute();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}  
	
	public ArrayList getAll() throws SQLException{
		ArrayList<consommable> Con = new ArrayList<consommable>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement(" SELECT * FROM consommable ");
			ResultSet rs = pr.executeQuery();
			while (rs.next()){
				consommable I = new consommable();
				I.setCode_onee(rs.getLong("code_onee"));
				I.setS_type(rs.getString("S_type"));
				I.setS_nom(rs.getString("S_nom"));
				I.setS_quantite(rs.getString("S_quantite"));
				I.setS_marque(rs.getString("S_marque"));
				I.setS_modele(rs.getString("S_modele"));
				I.setS_longeur(rs.getString("S_longeur"));
				I.setS_debit(rs.getString("S_debit"));
				I.setS_capacite(rs.getString("S_capacite"));
				Con.add(I);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Con;
	}
}

