package web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Action;
import metier.consommable;
 
public class CdServlet extends HttpServlet  {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Action op = new Action ();
		if (req.getParameter("action2")!= null){
		try {
			op.remove((req.getParameter("code_onee")));
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		}else
			if( req.getParameter("action3")!= null){
				try {
					String S_nom = req.getParameter("S_nom");
					String S_quantite =req.getParameter("S_quantite"); 
					String S_marque =req.getParameter("S_marque");
					String S_modele = req.getParameter("S_modele");
				//	String S_longeur = req.getParameter("S_longeur");
				//	String S_debit = req.getParameter("S_debit");
					String S_capacite = req.getParameter("S_capacite");
					consommable i=new consommable(1L, S_nom,"CD",S_quantite, S_marque, S_modele,"##################","#################",S_capacite);
					op.update((req.getParameter("code_onee")), i);
				} catch (NumberFormatException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
		}
		}else
			if (req.getParameter("action5")!=null){ 
				try {
					op.Find(req.getParameter("code_onee"));
					if(req.getParameter("code_onee")!=null){
						ConsommableBeans cb = new ConsommableBeans();
						cb.setListe(op.getAll());
					}else{
						System.out.println("le consommable demand� est introuvable ");
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else{
		// R�cuperer les informations 
		String S_nom = req.getParameter("S_nom");
		String S_quantite =req.getParameter("S_quantite"); 
		String S_marque =req.getParameter("S_marque");
		String S_modele = req.getParameter("S_modele");
	//	String S_longeur = req.getParameter("S_longeur");
	//	String S_debit = req.getParameter("S_debit");
	    String S_capacite = req.getParameter("S_capacite");
			try {
				op.add(new consommable(1L, S_nom,"CD",S_quantite, S_marque, S_modele,"##################","#################",S_capacite));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		ConsommableBeans cb = new ConsommableBeans();
		try {
			cb.setListe(op.getAll());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		req.setAttribute("model5",cb);
		req.getRequestDispatcher("ChoixCons.jsp").forward(req,resp);

	}
}
