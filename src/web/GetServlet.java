package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String a;
	String b;
	if(req.getParameter("action66")!= null){
		a = req.getParameter("C_nom");
		b = req.getParameter("C_prenom");
		
		req.setAttribute("essay3",a);
		req.setAttribute("essay4",b);
		
		 this.getServletContext().getRequestDispatcher( "/ConsommablePerso.jsp" ).forward( req, resp );
	}
}
}