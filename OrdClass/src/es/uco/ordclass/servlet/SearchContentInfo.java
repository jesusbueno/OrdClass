package es.uco.ordclass.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.business.Algorithm;
import es.uco.ordclass.business.Bibliography;
import es.uco.ordclass.business.Dataset;
import es.uco.ordclass.business.Library;
import es.uco.ordclass.business.New;
import es.uco.ordclass.business.Researcher;


public class SearchContentInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearchContentInfo() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int id = Integer.valueOf(request.getParameter("id"));
		String type = request.getParameter("type");

		session.setAttribute("type", type);

		switch(type){
			case "algorithm":
				ArrayList<Algorithm> algorithms = (ArrayList<Algorithm>) session.getAttribute("algorithms");
				Algorithm algorithm = new Algorithm();
		
				for(int i=0; i<algorithms.size(); i++) {
					if (algorithms.get(i).getId() == id) {
						algorithm = algorithms.get(i);
					}
				}
		
				session.setAttribute("algorithm", algorithm);
				session.setAttribute("id", algorithm.getId());

				break;

			case "dataset":
				ArrayList<Dataset> datasets = (ArrayList<Dataset>) session.getAttribute("datasets");
				Dataset dataset = new Dataset();
	
				for(int i=0; i<datasets.size(); i++) {
					if (datasets.get(i).getId() == id) {
						dataset = datasets.get(i);
					}
				}
	
			session.setAttribute("dataset", dataset);
			session.setAttribute("id", dataset.getId());

			break;

			case "researcher":
				
				ArrayList<Researcher> researches = (ArrayList<Researcher>) session.getAttribute("researches");
				Researcher researcher = new Researcher();

				for(int i=0; i<researches.size(); i++) {
					if (researches.get(i).getId() == id) {
						researcher = researches.get(i);
					}
				}

				session.setAttribute("researcher", researcher);
				session.setAttribute("id", researcher.getId());

				break;

			case "library":

				ArrayList<Library> libraries = (ArrayList<Library>) session.getAttribute("libraries");
				Library library = new Library();

				for(int i=0; i<libraries.size(); i++) {
					if (libraries.get(i).getId() == id) {
						library = libraries.get(i);
					}
				}

				session.setAttribute("library", library);
				session.setAttribute("id", library.getId());

				break;

			case "bibliography":

				ArrayList<Bibliography> bibliographies = (ArrayList<Bibliography>) session.getAttribute("bibliographies");
				Bibliography bibliography= new Bibliography();

				for(int i=0; i<bibliographies.size(); i++) {
					if (bibliographies.get(i).getId() == id) {
						bibliography = bibliographies.get(i);
					}
				}

				session.setAttribute("bibliography", bibliography);
				session.setAttribute("id", bibliography.getId());

				break;

			case "new":

				ArrayList<New> news = (ArrayList<New>) session.getAttribute("news");
				New new_= new New();

				for(int i=0; i<news.size(); i++) {
					if (news.get(i).getId() == id) {
						new_ = news.get(i);
					}
				}

				session.setAttribute("new", new_);
				session.setAttribute("id", new_.getId());

				break;

			default:
				
				break;
		}
		
		response.sendRedirect("/OrdClass/Views/ModifySpecificContent.jsp");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
