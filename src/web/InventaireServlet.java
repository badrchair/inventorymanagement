package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Operation;
import metier.consommable;
import metier.Inventaire; 

public class InventaireServlet extends HttpServlet {
	private String x;
	 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Operation op = new Operation ();
		if (req.getParameter("action")!= null){
		try {
			op.remove((req.getParameter("code_onep")));
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}else 
			if(req.getParameter("action8")!= null){
				x=req.getParameter("code_onep");
				req.getRequestDispatcher("InventaireModif.jsp").forward(req,resp);
			}else
				
			if( req.getParameter("action4")!= null){
				try {
					String I_nom = req.getParameter("I_nom");
					String I_prenom = req.getParameter("I_prenom");
					String I_type =req.getParameter("I_type"); 
					String entite =req.getParameter("entite");
					String marque =req.getParameter("marque");
					String matricule = req.getParameter("matricule");
					String service = req.getParameter("service");
					Inventaire i=new Inventaire(1L,I_nom,I_prenom,I_type,entite,marque,matricule,service);
				//	op.update((req.getParameter("code_onep")), i);
					op.update((x), i);
				} catch (NumberFormatException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

		}else{
		// Récuperer les informations 
		String I_nom = req.getParameter("I_nom");
		String I_prenom = req.getParameter("I_prenom");
		String I_type =req.getParameter("I_type"); 
		String entite =req.getParameter("entite");
		String marque =req.getParameter("marque");
		String matricule = req.getParameter("matricule");
		String service = req.getParameter("service");
			try {
				op.add(new Inventaire(1L, I_nom,I_prenom,I_type, entite, marque, matricule, service));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		InventaireBeans ib = new InventaireBeans();
		try {
			ib.setListe(op.getAll());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		req.setAttribute("model",ib);
		req.getRequestDispatcher("InventaireGest.jsp").forward(req,resp);
}
}