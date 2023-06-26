package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ChoixServlet  extends HttpServlet  {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	if(req.getParameter("action11")!= null){
		String a = "v";
		req.setAttribute( "testo", a);
		this.getServletContext().getRequestDispatcher( "/ChoixCons.jsp" ).forward( req, resp );
	}else
		if(req.getParameter("action12")!= null){
			String a = "v";
			req.setAttribute( "testo1", a);
			this.getServletContext().getRequestDispatcher( "/ChoixCons.jsp" ).forward( req, resp );
	}else
		if(req.getParameter("action13")!= null){
			String a = "v";
			req.setAttribute( "testo2", a);
			this.getServletContext().getRequestDispatcher( "/ChoixCons.jsp" ).forward( req, resp );
	}
		if(req.getParameter("action103")!=null){
			req.getRequestDispatcher("ConsommableSearch.jsp").forward(req,resp);
}
}
	}