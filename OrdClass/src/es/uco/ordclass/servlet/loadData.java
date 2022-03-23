package es.uco.ordclass.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.business.Log;
import es.uco.ordclass.data.LogDAO;


public class loadData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public loadData() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String urlBD = "jdbc:mysql://localhost:3306/ordclass";
		String userBD = "root";
		String passBD = "";
		
		Properties prop = new Properties();
		
		LogDAO log = new LogDAO(urlBD, userBD, passBD, prop);
		ArrayList<Log> logs = log.getLogs();
		
		for(int i=0; i< logs.size(); i++) {
			System.out.println(logs.get(i).getInfo());
		}
		
		session.setAttribute("logs", logs);
		
		response.sendRedirect("/OrdClass/Views/Home.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
