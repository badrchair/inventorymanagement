package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class  Adminlog extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	     String test="ok";
	    public  Adminlog() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.getRequestDispatcher("admin.jsp").forward(request,response);
		}

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String login=request.getParameter("login");
			String pas=request.getParameter("pas");
			if(login.equals("admin") && pas.equals("admin")){
				
				test=null;
				request.setAttribute("test", test);
				request.getRequestDispatcher("adminlooged.jsp").forward(request,response);
			}else {
				test="ok";
				request.setAttribute("test", test);
				request.getRequestDispatcher("admin.jsp").forward(request,response);
			}
		}

	}


