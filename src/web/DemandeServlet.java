package web;
import metier.Action;
import java.io.IOException;
import java.sql.SQLException;

import metier.Reserver;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Demande;
import metier.HisOperation;
import metier.Historique;
public class DemandeServlet extends HttpServlet  {
	private String test;
	

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Reserver res = new Reserver();
		HisOperation op = new HisOperation() ;
		Action ac = new Action();
		if(req.getParameter("action20")!= null){
			String a =req.getParameter("Code_onee");
			String Num_dem =req.getParameter("Num_dem");
			String b =req.getParameter("S_quantitevoulue");
			String m = req.getParameter("P_nom");
			String n = req.getParameter("P_prenom");
			String s = req.getParameter("S_nom");
			try {
			String g = res.Find(a.trim());
			int h = Integer.parseInt(g.trim()) -Integer.parseInt(b.trim());
			System.out.println(h);
			if(h>0){
			op.add(new Historique(1L,s.trim(),b.trim(),m.trim(),n.trim(),a.trim(),"Accepté"));
			res.update(a, h);
			res.remove(Num_dem);
			}
			if(h==0){
				op.add(new Historique(1L,s.trim(),b.trim(),m.trim(),n.trim(),a.trim(),"Accepté"));
				res.remove(Num_dem);
				res.delete(a.trim());
				ac.remove(a.trim());
			}if(h<0){
			//	op.add(new Historique(1L, s,b,m,n,a,"accepté"));
				test="ok";
				req.setAttribute("test1", test);
	
			}} catch (SQLException e) {
		// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else
		if(req.getParameter("action30")!= null){
			String Num_dem1 =req.getParameter("Num_dem1");
			String a =req.getParameter("Code_onee1");
			String b =req.getParameter("S_quantitevoulue1");
			String m = req.getParameter("P_nom1");
			String n = req.getParameter("P_prenom1");
			String s = req.getParameter("S_nom1");
			
			try {
				op.add(new Historique(1L, s,b,m,n,a,"Refusé"));
				res.remove((req.getParameter("Num_dem1")));
			} catch (NumberFormatException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		req.getRequestDispatcher("Demande.jsp").forward(req,resp);
	}
}
