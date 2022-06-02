package es.uco.ordclass.servlet;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.business.User;
import es.uco.ordclass.data.LibraryDAO;
import es.uco.ordclass.data.UserDAO;


public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		//String urlBD = "jdbc:mysql://ordclass.zapto.org/ordclass";
		String urlBD = "jdbc:mysql://localhost/ordclass";
		String userBD = "java";
		String passBD = "1234";		
		Properties prop = new Properties();
		
		UserDAO udao = new UserDAO(urlBD, userBD, passBD, prop);
		
		User user = udao.validateUser(email, password);
		
		
		
		if(user.getEmail() == null) {
			response.sendRedirect("/OrdClass/Views/LoginUser.jsp");
		}
		
		else {
			session.setAttribute("user", user);
			response.sendRedirect("/OrdClass/LoadAdmin");
		}
	}

}
