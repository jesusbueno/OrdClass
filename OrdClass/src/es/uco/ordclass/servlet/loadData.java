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

import es.uco.ordclass.business.Algorithm;
import es.uco.ordclass.business.Dataset;
import es.uco.ordclass.business.Log;
import es.uco.ordclass.business.Researcher;
import es.uco.ordclass.data.AlgorithmDAO;
import es.uco.ordclass.data.DatasetDAO;
import es.uco.ordclass.data.LogDAO;
import es.uco.ordclass.data.ResearcherDAO;


public class loadData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public loadData() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(3600);
		
		String urlBD = "jdbc:mysql://localhost:3306/ordclass";
		String userBD = "root";
		String passBD = "";
		
		Properties prop = new Properties();
		
		LogDAO log = new LogDAO(urlBD, userBD, passBD, prop);
		DatasetDAO dataset = new DatasetDAO(urlBD, userBD, passBD, prop);
		AlgorithmDAO algorithm = new AlgorithmDAO(urlBD, userBD, passBD, prop);
		ResearcherDAO researcher = new ResearcherDAO(urlBD, userBD, passBD, prop);
		
		ArrayList<Log> logs = log.getLogs();
		ArrayList<Dataset> datasets = dataset.getDatasets();
		ArrayList<Algorithm> algorithms = algorithm.getAlgorithms();
		ArrayList<Researcher> researches = researcher.getResearches();
		
		
		session.setAttribute("logs", logs);
		session.setAttribute("datasets", datasets);
		session.setAttribute("algorithms", algorithms);
		session.setAttribute("researches", researches);
		
		response.sendRedirect("/OrdClass/Views/Home.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}