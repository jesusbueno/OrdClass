package es.uco.ordclass.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.business.Algorithm;
import es.uco.ordclass.business.Dataset;


public class SearchAlgorithmInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearchAlgorithmInfo() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int al_id = Integer.valueOf(request.getParameter("id"));
		ArrayList<Algorithm> algorithms = (ArrayList<Algorithm>) session.getAttribute("algorithms");
		Algorithm algorithm = new Algorithm();
		
		System.out.println(al_id);
		
		for(int i=0; i<algorithms.size(); i++) {
			if (algorithms.get(i).getId() == al_id) {
				algorithm = algorithms.get(i);
			}
		}
		
		session.setAttribute("algorithm", algorithm);
		response.sendRedirect("/OrdClass/Views/AlgorithmDescription.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
