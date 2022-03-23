package es.uco.ordclass.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		switch(action) {
		case "Principal":
			response.sendRedirect("/OrdClass/Views/Home.jsp");
			break;
		
		case "Exit":
			response.sendRedirect("");
			break;
			
		case "Failure":
			response.sendRedirect("");
			break;
			
		default:
			throw new AssertionError();
			
		}
	}

}
