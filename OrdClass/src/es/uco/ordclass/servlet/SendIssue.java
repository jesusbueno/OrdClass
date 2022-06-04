package es.uco.ordclass.servlet;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.business.Utils;


public class SendIssue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SendIssue() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//String urlBD = "jdbc:mysql://ordclass.zapto.org/ordclass";
		String urlBD = "jdbc:mysql://localhost/ordclass";
		String userBD = "java";
		String passBD = "1234";		
		Properties prop = new Properties();
		
		
		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String email = request.getParameter("email");
		String concept = request.getParameter("type");
		String receiver = request.getParameter("admins");
		String cuerpo = request.getParameter("cuerpo");
		
		
		if(concept.equals("beadmin")) {
			concept = "I want be admin.";
		}else {
			concept = "Another issue.";
		}
		
		String body = Utils.createBody(name, surname, email, concept, cuerpo);
		boolean status = Utils.sendEmail(concept, body, receiver);
		
		if (status == true){
			response.sendRedirect("/OrdClass/Views/Home.jsp");
		}else {
			response.sendRedirect("/OrdClass/Views/Results.jsp");
		}
	}

}
