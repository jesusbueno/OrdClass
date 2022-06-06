package es.uco.ordclass.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.business.Algorithm;
import es.uco.ordclass.business.Bibliography;
import es.uco.ordclass.business.Dataset;
import es.uco.ordclass.business.Researcher;
import es.uco.ordclass.business.Library;
import es.uco.ordclass.business.New;
import es.uco.ordclass.data.AlgorithmDAO;
import es.uco.ordclass.data.BibliographyDAO;
import es.uco.ordclass.data.DatasetDAO;
import es.uco.ordclass.data.LibraryDAO;
import es.uco.ordclass.data.NewDAO;
import es.uco.ordclass.data.ResearcherDAO;

/**
 * Se encarga de recibir la información acerca de un nuevo contenido, y llama a
 * los DAO para que estos inserten dicha información
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class AddContent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddContent() {
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

			Algorithm algorithm = new Algorithm();
			AlgorithmDAO adao = new AlgorithmDAO(urlBD, userBD, passBD, prop);

			algorithm = setAlgorithm(request);

			try {
				status = adao.addAlgorithm(algorithm);
			} catch (Exception e) {
				e.printStackTrace();
			}

			break;

		case "dataset":

			Dataset dataset = new Dataset();
			DatasetDAO dsdao = new DatasetDAO(urlBD, userBD, passBD, prop);

			dataset = setDataset(request);

			try {
				status = dsdao.addDataset(dataset);
			} catch (Exception e) {
				e.printStackTrace();
			}

			break;

		case "researcher":

			Researcher researcher = new Researcher();
			ResearcherDAO rdao = new ResearcherDAO(urlBD, userBD, passBD, prop);

			researcher = setResearcher(request);

			try {
				status = rdao.addResearcher(researcher);
			} catch (Exception e) {
				e.printStackTrace();
			}

			break;

		case "libraries":

			Library library = new Library();
			LibraryDAO ldao = new LibraryDAO(urlBD, userBD, passBD, prop);

			library = setLibrary(request);

			try {
				status = ldao.addLibraries(library);
			} catch (Exception e) {
				e.printStackTrace();
			}

			break;

		case "bibliography":

			Bibliography bibliography = new Bibliography();
			BibliographyDAO bdao = new BibliographyDAO(urlBD, userBD, passBD, prop);

			bibliography = setBibliography(request);

			try {
				status = bdao.addBibliography(bibliography);
			} catch (Exception e) {
				e.printStackTrace();
			}

			break;

		case "news":

			New new_ = new New();
			NewDAO ndao = new NewDAO(urlBD, userBD, passBD, prop);

			new_ = setNew(request);

			try {
				status = ndao.addNews(new_);
			} catch (Exception e) {
				e.printStackTrace();
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

	/**
	 * Función que recoge los parámetros de las vistas, y crea un objeto Algorithm
	 * 
	 * @param request
	 * @return Algorithm: Objeto Algorithm
	 */
	protected Algorithm setAlgorithm(HttpServletRequest request) {
		Algorithm algorithm = new Algorithm();
		algorithm.setAcronym(request.getParameter("al-acronym"));
		algorithm.setDescription(request.getParameter("al-description"));
		algorithm.setLink(request.getParameter("al-link"));
		algorithm.setMl_code(request.getParameter("al-matlab"));
		algorithm.setName(request.getParameter("al-name"));
		algorithm.setPublication(request.getParameter("al-publication"));
		algorithm.setPy_code(request.getParameter("al-python"));
		algorithm.setSource_code(request.getParameter("al-sourcecode"));
		algorithm.setType(request.getParameter("al-type"));
		algorithm.setYear(Integer.parseInt(request.getParameter("al-year")));

		return algorithm;
	}

	/**
	 * Función que recoge los parámetros de las vistas, y crea un objeto Dataset
	 * 
	 * @param request
	 * @return Dataset: Objeto Dataset
	 */
	protected Dataset setDataset(HttpServletRequest request) {
		Dataset dataset = new Dataset();

		dataset.setBest_accuracy(Integer.parseInt(request.getParameter("ds-bestaccuracy")));
		dataset.setBest_algorithm(request.getParameter("ds-bestalgorithm"));
		dataset.setClasses(Integer.parseInt(request.getParameter("ds-classes")));
		dataset.setData_source(request.getParameter("ds-datasource"));
		dataset.setDescription(request.getParameter("ds-description"));
		dataset.setDonor(request.getParameter("ds-donor"));
		dataset.setDownload(request.getParameter("ds-download"));
		dataset.setImages(request.getParameter("ds-images"));
		dataset.setLength(Integer.parseInt(request.getParameter("ds-length")));
		dataset.setName(request.getParameter("ds-name"));
		dataset.setTest_size(Integer.parseInt(request.getParameter("ds-testsize")));
		dataset.setTrain_size(Integer.parseInt(request.getParameter("ds-trainsize")));
		dataset.setType(request.getParameter("ds-type"));

		return dataset;
	}

	/**
	 * Función que recoge los parámetros de las vistas, y crea un objeto Researcher
	 * 
	 * @param request
	 * @return Researcher: Objeto Researcher
	 */
	protected Researcher setResearcher(HttpServletRequest request) {
		Researcher researcher = new Researcher();

		researcher.setCountry(request.getParameter("r-country"));
		researcher.setDescription(request.getParameter("r-description"));
		researcher.setEmail(request.getParameter("r-email"));
		researcher.setImage(request.getParameter("r-image"));
		researcher.setInstitution(request.getParameter("r-institution"));
		researcher.setLink(request.getParameter("r-links"));
		researcher.setName(request.getParameter("r-name"));
		researcher.setPhone(Integer.parseInt(request.getParameter("r-phone")));
		researcher.setProfession(request.getParameter("r-profession"));
		researcher.setSurname(request.getParameter("r-surname"));

		return researcher;
	}

	/**
	 * Función que recoge los parámetros de las vistas, y crea un objeto Library
	 * 
	 * @param request
	 * @return Library: Objeto Library
	 */
	protected Library setLibrary(HttpServletRequest request) {
		Library library = new Library();

		library.setAuthor(request.getParameter("l-author"));
		library.setDocumentation_link(request.getParameter("l-documentation"));
		library.setGithub_link(request.getParameter("l-github"));
		library.setLanguage(request.getParameter("l-language"));
		library.setName(request.getParameter("l-name"));

		return library;
	}

	/**
	 * Función que recoge los parámetros de las vistas, y crea un objeto
	 * Bibliography
	 * 
	 * @param request
	 * @return Bibliography: Objeto Bibliography
	 */
	protected Bibliography setBibliography(HttpServletRequest request) {
		Bibliography bibliography = new Bibliography();

		bibliography.setAuthor(request.getParameter("b-author"));
		bibliography.setBook(request.getParameter("b-book"));
		bibliography.setNumber(Integer.parseInt(request.getParameter("b-number")));
		bibliography.setPages(request.getParameter("b-pages"));
		bibliography.setTitle(request.getParameter("b-title"));
		bibliography.setVolume(Integer.parseInt(request.getParameter("b-volume")));
		bibliography.setYear(Integer.parseInt(request.getParameter("b-year")));

		return bibliography;
	}

	/**
	 * Función que recoge los parámetros de las vistas, y crea un objeto New
	 * 
	 * @param request
	 * @return New: Objeto New
	 */
	protected New setNew(HttpServletRequest request) {
		New new_ = new New();

		new_.setDescription(request.getParameter("n-description"));
		new_.setImage(request.getParameter("n-image"));
		new_.setLink(request.getParameter("n-link"));
		new_.setName(request.getParameter("n-name"));

		return new_;
	}

}
