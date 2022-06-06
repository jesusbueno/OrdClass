package es.uco.ordclass.servlet;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.business.Utils;

/**
 * Recibe información sobre una sugerencia y se encarga de llamar a los DAO para
 * que envíen dicha sugerencia a algún administrador
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class SendIssue extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SendIssue() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String email = request.getParameter("email");
		String concept = request.getParameter("type");
		String receiver = request.getParameter("admins");
		String cuerpo = request.getParameter("cuerpo");

		if (concept.equals("beadmin")) {
			concept = "I want be admin.";
		} else {
			concept = "Another issue.";
		}

		String body = Utils.createBody(name, surname, email, concept, cuerpo);
		boolean status = Utils.sendEmail(concept, body, receiver);

		if (status == true) {
			response.sendRedirect("/OrdClass/Views/Home.jsp");
		} else {
			response.sendRedirect("/OrdClass/Views/Results.jsp");
		}
	}

}
