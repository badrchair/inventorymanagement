package web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.AjoutCompte;
import metier.Compte;
import metier.consommable;

public class CompteServlet extends HttpServlet  {
	 String test="ok";
	 String test1="ok";
	public String nom,nom1;
	public String prenom,prenom1;
	 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	AjoutCompte a = new AjoutCompte();
	if (req.getParameter("action10")!= null){
		String C_nom = req.getParameter("C_nom");
		String C_prenom =req.getParameter("C_prenom"); 
		String login =req.getParameter("login");
		String mdp =req.getParameter("mdp");
			try {
				Compte user =a.Find(login);
				if(user.getC_nom()==null){
				a.add(new Compte(1L, C_nom,C_prenom,login,mdp));
				}else{
					test="ok";
					req.setAttribute("test", test);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			req.getRequestDispatcher("CompteClient.jsp").forward(req,resp);
	}else{
		if(req.getParameter("action11")!= null ){
		String login = req.getParameter("login");
		String mdp = req.getParameter("mdp");
		HttpSession session = req.getSession();
	   
		Compte user = a.getUserByLogin(login,mdp);
		
		if(user.getC_nom() == null){
			test1="ok";
			req.setAttribute("test1", test1);
			req.getRequestDispatcher("CompteClient.jsp").forward(req,resp);

		}else{
			/*
			nom1=user.getC_nom();
			prenom1=user.getC_prenom();
			req.setAttribute("essay3",nom1);
			req.setAttribute("essay4",prenom1);
			System.out.println(nom1+"-"+prenom1);
			session.setAttribute("user",user);*/
			nom=user.getC_nom();
			prenom=user.getC_prenom();
			req.setAttribute("essay1",nom);
			req.setAttribute("essay2",prenom);
		//	resp.sendRedirect("clientlooged.jsp");
			this.getServletContext().getRequestDispatcher( "/InventairePerso.jsp" ).forward( req, resp );
			

			
		
			
		//	resp.sendRedirect("clientlooged.jsp");
		}
	}
}
}
	}