package web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Operation;
import metier.Inventaire;

public class FindServlet extends HttpServlet{

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Operation ac = new Operation ();
		ArrayList<Inventaire> a = null ;
		ArrayList<Inventaire> b = null ;
		if (req.getParameter("action6")!= null){
			try {
				b = ac.Search(req.getParameter("I_nom"));

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		InventaireBeans sf = new InventaireBeans();
		sf.setListe(b);
		req.setAttribute("model4",sf);
		req.getRequestDispatcher("InventaireSearch.jsp").forward(req,resp);
	}
}

