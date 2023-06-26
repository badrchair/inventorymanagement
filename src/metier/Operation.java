package metier;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class Operation {

	private ArrayList<Inventaire> inventaires = new ArrayList<Inventaire>();

	public ArrayList<Inventaire> getInventaires() {
		return inventaires;
	}

	public void setInventaires(ArrayList<Inventaire> inventaires) {
		this.inventaires = inventaires;
	}
	
	public void add (Inventaire I) throws SQLException{
		try {
			//1
			Class.forName("com.mysql.jdbc.Driver");
			//2
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			//3
			PreparedStatement pr = cn.prepareStatement(" INSERT INTO  inventaire VALUES(NULL,?,?,?,?,?,?,?)");
			pr.setString(1, I.getI_nom());
			pr.setString(2, I.getI_prenom());
			pr.setString(3, I.getI_type());
			pr.setString(4, I.getEntite());
			pr.setString(5, I.getMarque());
			pr.setString(6, I.getMatricule());
			pr.setString(7, I.getService());
			//4
			pr.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void remove (String code_onep) throws SQLException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement(" DELETE FROM inventaire WHERE code_onep = ?");
			pr.setString(1,code_onep); 
			pr.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	 public ArrayList Find(String code_onep) throws SQLException{
		 ArrayList<Inventaire> Con = new ArrayList<Inventaire>();
		try{			
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement("select * from inventaire where code_onep=?");
			pr.setString(1,code_onep); 
				ResultSet rs = pr.executeQuery();
				while (rs.next()){
				Inventaire I = new Inventaire();
				I.setCode_onep(rs.getLong("code_onep"));
				I.setI_nom(rs.getString("I_nom"));
				I.setI_prenom(rs.getString("I_prenom"));
				I.setI_type(rs.getString("I_type"));
				I.setEntite(rs.getString("Entite"));
				I.setMarque(rs.getString("marque"));
				I.setMatricule(rs.getString("matricule"));
				I.setService(rs.getString("service"));
				Con.add(I);
			} 
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return Con;
	}
	 public ArrayList Search(String I_nom) throws SQLException{
		 ArrayList<Inventaire> Con = new ArrayList<Inventaire>();
		try{			
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement("select * from inventaire where I_nom=?");
			pr.setString(1,I_nom); 
				ResultSet rs = pr.executeQuery();
				while (rs.next()){
				Inventaire I = new Inventaire();
				I.setCode_onep(rs.getLong("code_onep"));
				I.setI_nom(rs.getString("I_nom"));
				I.setI_prenom(rs.getString("I_prenom"));
				I.setI_type(rs.getString("I_type"));
				I.setEntite(rs.getString("Entite"));
				I.setMarque(rs.getString("marque"));
				I.setMatricule(rs.getString("matricule"));
				I.setService(rs.getString("service"));
				Con.add(I);
			} 
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return Con;
	}
	
	public void update (String code_onep , Inventaire  I) throws SQLException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement("update inventaire set I_nom=?,I_prenom=?,I_type=?,entite=?,marque=?,matricule=?,service=? where code_onep=?");
			pr.setString(1, I.getI_nom());
			pr.setString(2, I.getI_prenom());
			pr.setString(3, I.getI_type());
			pr.setString(4, I.getEntite());
			pr.setString(5, I.getMarque());
			pr.setString(6, I.getMatricule());
			pr.setString(7, I.getService());
			pr.setString(8,code_onep); 
			pr.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public ArrayList getAll() throws SQLException{
		ArrayList<Inventaire> Inv = new ArrayList<Inventaire>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestiondestock","root","");
			PreparedStatement pr = cn.prepareStatement(" SELECT * FROM inventaire ");
			ResultSet rs = pr.executeQuery();
			while (rs.next()){
				Inventaire I = new 	Inventaire();
				I.setCode_onep(rs.getLong("code_onep"));
				I.setI_nom(rs.getString("I_nom"));
				I.setI_prenom(rs.getString("I_prenom"));
				I.setI_type(rs.getString("I_type"));
				I.setEntite(rs.getString("Entite"));
				I.setMarque(rs.getString("marque"));
				I.setMatricule(rs.getString("matricule"));
				I.setService(rs.getString("service"));
				Inv.add(I);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Inv;
	}
}
