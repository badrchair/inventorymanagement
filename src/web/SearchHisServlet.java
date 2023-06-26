package web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.HisOperation;
import metier.Historique;

public class SearchHisServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HisOperation ac = new HisOperation ();
		ArrayList<Historique> b = null ;
		
		if (req.getParameter("action5")!= null){
			try {
				b = ac.Search(req.getParameter("S_nom"));

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		HistoriqueBeans cb = new HistoriqueBeans();
		cb.setListe(b);
		req.setAttribute("model70",cb);
		req.getRequestDispatcher("HistoriqueConsult.jsp").forward(req,resp);

}}
