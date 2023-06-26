package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogeedServlet extends HttpServlet  {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getParameter("action1") != null){
			req.getRequestDispatcher("HistoriqueConsult.jsp").forward(req,resp);
		}
		if(req.getParameter("action2") != null){
			req.getRequestDispatcher("Demande.jsp").forward(req,resp);
		}
		if(req.getParameter("action3") != null){
			req.getRequestDispatcher("InventaireGest.jsp").forward(req,resp);
		}
		if(req.getParameter("action4") != null){
			req.getRequestDispatcher("ChoixCons.jsp").forward(req,resp);
		}
}
}