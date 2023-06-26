package web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Reserver;
import metier.Demande;
import metier.Inventaire;
import metier.Operation;

public class ReserverServlet extends HttpServlet {
	private String test;
	private String x;
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Reserver op = new Reserver ();
		Operation cc = new Operation();
		if(req.getParameter("action55") != null){
			String S_quantite = req.getParameter("S_quantite");
			String Code_onee = req.getParameter("Code_onee");
			String S_nom = req.getParameter("S_nom");
			String S_quantitevoulue =req.getParameter("S_quantitevoulue"); 
			String P_nom =req.getParameter("P_nom");
			String P_prenom =req.getParameter("P_prenom");
			
			try {
				int a =Integer.parseInt(S_quantite.trim());
				int b =Integer.parseInt(S_quantitevoulue.trim());
				int c=a-b;
				if(c<0){
					test="ok";
					req.setAttribute("test1", test);
					req.getRequestDispatcher("ConsommablePerso.jsp").forward(req,resp);
				}
				if(c>=0){
				op.add(new Demande(1L,S_nom,S_quantitevoulue,P_nom,P_prenom,Code_onee.trim()));
				req.getRequestDispatcher("ConsommablePerso.jsp").forward(req,resp);
			}} catch (NumberFormatException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
		if(req.getParameter("action103") != null){
			req.getRequestDispatcher("ConsommableSearch.jsp").forward(req,resp);

		}
		if(req.getParameter("action8")!= null){
			x=req.getParameter("code_onep");
			req.getRequestDispatcher("InventaireModif.jsp").forward(req,resp);
		}
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
				cc.update((x), i);
			} catch (NumberFormatException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			req.getRequestDispatcher("InventaireGest.jsp").forward(req,resp);
	}
		if (req.getParameter("action1")!=null){
			
			req.getRequestDispatcher("InventaireSearch.jsp").forward(req,resp);
		}
  }
}
