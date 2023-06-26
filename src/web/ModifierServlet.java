package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Action;

public class ModifierServlet extends HttpServlet {
	private String b;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Action op = new Action ();
		String a =req.getParameter("S_type");
		if (req.getParameter("action3")!= null){
			if(a.equals(" Tonner ") ){
				 b = req.getParameter("code_onee");
				req.getRequestDispatcher("TonnerModif.jsp").forward(req,resp);
			}else{
				if(a.equals(" Cable ")){
					 b = req.getParameter("code_onee");
					req.getRequestDispatcher("CableModif.jsp").forward(req,resp);
				}else{
					 b = req.getParameter("code_onee");
					req.getRequestDispatcher("CdModif.jsp").forward(req,resp);
				}
			}
			
		}
		
	}
}
