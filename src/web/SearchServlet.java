package web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Action;
import metier.consommable;

public class SearchServlet  extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Action ac = new Action ();
		ArrayList<consommable> b = null ;
		if (req.getParameter("action5")!= null){
			try {
				b = ac.Search(req.getParameter("S_nom"));

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		ConsommableBeans cb = new ConsommableBeans();
		cb.setListe(b);
		req.setAttribute("model3",cb);
		req.getRequestDispatcher("ConsommableSearch.jsp").forward(req,resp);
	}
}
