package es.uco.ordclass.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.business.Algorithm;

/**
 * Recibe el id de un log en concreto y llama a los DAO para que estos se
 * encarguen de buscar dicha información. Una vez encontrada, redirigen a la
 * página donde se muestra la información
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class SearchLog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchLog() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String reference = request.getParameter("reference");
		System.out.println(reference);
		String[] references = reference.split("-");

		int id = Integer.valueOf(references[1]);
		String type = references[0];

		switch (type) {

		case "null":
			response.sendRedirect("/OrdClass/Views/Home.jsp");
			break;

		case "Algorithm":
			response.sendRedirect("SearchAlgorithmInfo?id=" + id);
			break;

		case "Dataset":
			response.sendRedirect("SearchDatasetInfo?id=" + id);
			break;

		case "Researcher":
			response.sendRedirect("SearchResearcherInfo?id=" + id);
			break;

		case "Result":
			response.sendRedirect("/OrdClass/Views/Results.jsp");
			break;

		case "Algorithms":
			response.sendRedirect("/OrdClass/Views/Algorithms.jsp");
			break;

		case "Datasets":
			response.sendRedirect("/OrdClass/Views/Datasets.jsp");
			break;

		case "Researches":
			response.sendRedirect("/OrdClass/Views/Researches.jsp");
			break;

		case "Link":
			response.sendRedirect("/OrdClass/Views/Libraries.jsp");

		default:

			break;
		}
	}

}
