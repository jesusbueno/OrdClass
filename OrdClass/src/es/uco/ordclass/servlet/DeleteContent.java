package es.uco.ordclass.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.data.AlgorithmDAO;
import es.uco.ordclass.data.BibliographyDAO;
import es.uco.ordclass.data.DatasetDAO;
import es.uco.ordclass.data.LibraryDAO;
import es.uco.ordclass.data.NewDAO;
import es.uco.ordclass.data.ResearcherDAO;

/**
 * Se encarga de recibir la información acerca de un contenido, y llama a los
 * DAO para que estos eliminen dicha información
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class DeleteContent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteContent() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		String urlBD = getServletContext().getInitParameter("urlDB");
		String userBD = getServletContext().getInitParameter("userDB");
		String passBD = getServletContext().getInitParameter("passwordDB");

		// Obtener fichero sql.properties
		String sql = getServletContext().getInitParameter("sqlProperties");
		Properties prop = new Properties();
		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		InputStream input = classLoader.getResourceAsStream(sql);
		prop.load(input);

		String type = request.getParameter("type");
		boolean status = false;

		switch (type) {

		case "algorithm":
			String[] id_al = request.getParameterValues("al-deletes");
			AlgorithmDAO adao = new AlgorithmDAO(urlBD, userBD, passBD, prop);

			for (int i = 0; i < id_al.length; i++) {
				try {
					status = adao.deleteAlgorithm(Integer.parseInt(id_al[i]));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			break;

		case "dataset":
			String[] id_ds = request.getParameterValues("ds-deletes");
			DatasetDAO dsdao = new DatasetDAO(urlBD, userBD, passBD, prop);

			for (int i = 0; i < id_ds.length; i++) {
				try {
					status = dsdao.deleteDataset(Integer.parseInt(id_ds[i]));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			break;

		case "researcher":
			String[] id_r = request.getParameterValues("r-deletes");
			ResearcherDAO rdao = new ResearcherDAO(urlBD, userBD, passBD, prop);

			for (int i = 0; i < id_r.length; i++) {
				try {
					status = rdao.deleteResearcher(Integer.parseInt(id_r[i]));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			break;

		case "libraries":

			String[] id_l = request.getParameterValues("l-deletes");
			LibraryDAO ldao = new LibraryDAO(urlBD, userBD, passBD, prop);

			for (int i = 0; i < id_l.length; i++) {
				try {
					status = ldao.deleteLibrary(Integer.parseInt(id_l[i]));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			break;

		case "bibliography":

			String[] id_b = request.getParameterValues("b-deletes");
			BibliographyDAO bdao = new BibliographyDAO(urlBD, userBD, passBD, prop);

			for (int i = 0; i < id_b.length; i++) {
				try {
					status = bdao.deleteBibliography(Integer.parseInt(id_b[i]));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			break;

		case "news":

			String[] id_n = request.getParameterValues("n-deletes");
			NewDAO ndao = new NewDAO(urlBD, userBD, passBD, prop);

			for (int i = 0; i < id_n.length; i++) {
				try {
					status = ndao.deleteNew(Integer.parseInt(id_n[i]));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			break;

		default:

			break;
		}

		if (status == true) {
			response.sendRedirect("/OrdClass/Views/SuccessfulOperation.jsp");
		} else {
			response.sendRedirect("/OrdClass/Views/WrongOperation.jsp");
		}
	}

}
