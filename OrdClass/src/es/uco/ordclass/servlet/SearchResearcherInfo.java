package es.uco.ordclass.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.business.Dataset;
import es.uco.ordclass.business.Researcher;


public class SearchResearcherInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SearchResearcherInfo() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int researcher_id = Integer.valueOf(request.getParameter("id"));
		ArrayList<Researcher> researches = (ArrayList<Researcher>) session.getAttribute("researches");
		Researcher researcher = new Researcher();
		
		System.out.println(researcher_id);
		
		for(int i=0; i<researches.size(); i++) {
			if (researches.get(i).getId() == researcher_id) {
				researcher = researches.get(i);
			}
		}
		
		session.setAttribute("researcher", researcher);
		response.sendRedirect("/OrdClass/Views/ResearcherProfile.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
