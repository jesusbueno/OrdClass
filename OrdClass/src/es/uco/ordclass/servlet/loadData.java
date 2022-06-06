package es.uco.ordclass.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import es.uco.ordclass.business.Algorithm;
import es.uco.ordclass.business.Bibliography;
import es.uco.ordclass.business.Dataset;
import es.uco.ordclass.business.Library;
import es.uco.ordclass.business.Log;
import es.uco.ordclass.business.New;
import es.uco.ordclass.business.Researcher;
import es.uco.ordclass.business.User;
import es.uco.ordclass.data.AlgorithmDAO;
import es.uco.ordclass.data.BibliographyDAO;
import es.uco.ordclass.data.DatasetDAO;
import es.uco.ordclass.data.LibraryDAO;
import es.uco.ordclass.data.LogDAO;
import es.uco.ordclass.data.NewDAO;
import es.uco.ordclass.data.ResearcherDAO;
import es.uco.ordclass.data.UserDAO;

/**
 * Se encarga de obtener toda la información de la base de datos a través de los
 * DAO, y redirecciona a la página principal
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class loadData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public loadData() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(3600);

		String urlBD = getServletContext().getInitParameter("urlDB");
		String userBD = getServletContext().getInitParameter("userDB");
		String passBD = getServletContext().getInitParameter("passwordDB");

		// Obtener fichero sql.properties
		String sql = getServletContext().getInitParameter("sqlProperties");
		Properties prop = new Properties();
		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		InputStream input = classLoader.getResourceAsStream(sql);
		prop.load(input);

		// Genera los DAOS para obtener información de la base de datos
		UserDAO userdao = new UserDAO(urlBD, userBD, passBD, prop);
		LogDAO log = new LogDAO(urlBD, userBD, passBD, prop);
		DatasetDAO dataset = new DatasetDAO(urlBD, userBD, passBD, prop);
		AlgorithmDAO algorithm = new AlgorithmDAO(urlBD, userBD, passBD, prop);
		ResearcherDAO researcher = new ResearcherDAO(urlBD, userBD, passBD, prop);
		LibraryDAO library = new LibraryDAO(urlBD, userBD, passBD, prop);
		BibliographyDAO bibliography = new BibliographyDAO(urlBD, userBD, passBD, prop);
		NewDAO new_ = new NewDAO(urlBD, userBD, passBD, prop);

		// Obtiene la información a partir de los DAO
		ArrayList<User> users = userdao.getUsers();
		ArrayList<Log> logs = log.getLogs();
		ArrayList<Dataset> datasets = dataset.getDatasets();
		ArrayList<Algorithm> algorithms = algorithm.getAlgorithms();
		ArrayList<Researcher> researches = researcher.getResearches();
		ArrayList<Library> libraries = library.getLibraries();
		ArrayList<Bibliography> bibliographies = bibliography.getBibliography();
		ArrayList<New> news = new_.getNews();

		// Crea atributos de sesión para poder visualizarlos en distintas vistas
		session.setAttribute("logs", logs);
		session.setAttribute("datasets", datasets);
		session.setAttribute("algorithms", algorithms);
		session.setAttribute("researches", researches);
		session.setAttribute("libraries", libraries);
		session.setAttribute("bibliographies", bibliographies);
		session.setAttribute("news", news);
		session.setAttribute("users", users);
		session.setAttribute("user", null);

		response.sendRedirect("/OrdClass/Views/Home.jsp");
	}

}
