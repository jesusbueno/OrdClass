package es.uco.ordclass.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.business.Dataset;

/**
 * Recibe el id de un dataset en concreto y llama a los DAO para que estos se
 * encarguen de buscar dicha información. Una vez encontrada, redirigen a la
 * página donde se muestra la información
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class SearchDatasetInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchDatasetInfo() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		int dataset_id = Integer.valueOf(request.getParameter("id"));
		ArrayList<Dataset> datasets = (ArrayList<Dataset>) session.getAttribute("datasets");
		Dataset dataset = new Dataset();

		System.out.println(dataset_id);

		for (int i = 0; i < datasets.size(); i++) {
			if (datasets.get(i).getId() == dataset_id) {
				dataset = datasets.get(i);
			}
		}

		session.setAttribute("dataset", dataset);
		response.sendRedirect("/OrdClass/Views/DatasetDescription.jsp");
	}

}
