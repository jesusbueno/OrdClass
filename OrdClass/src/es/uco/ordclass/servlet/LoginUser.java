package es.uco.ordclass.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import es.uco.ordclass.business.User;
import es.uco.ordclass.data.LibraryDAO;
import es.uco.ordclass.data.UserDAO;

/**
 * Se encarga de recibir la información acerca del inicio de sesión de un
 * usuario, y llama a los DAO para que estos verifiquen dicha información. Si es
 * correcta, redirige a la página principal del administrador
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginUser() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		String urlBD = getServletContext().getInitParameter("urlDB");
		String userBD = getServletContext().getInitParameter("userDB");
		String passBD = getServletContext().getInitParameter("passwordDB");

		// Obtener fichero sql.properties
		String sql = getServletContext().getInitParameter("sqlProperties");
		Properties prop = new Properties();
		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		InputStream input = classLoader.getResourceAsStream(sql);
		prop.load(input);

		UserDAO udao = new UserDAO(urlBD, userBD, passBD, prop);

		User user = udao.validateUser(email, password);

		if (user.getEmail() == null) {
			response.sendRedirect("/OrdClass/Views/LoginUser.jsp");
		}

		else {
			session.setAttribute("user", user);
			response.sendRedirect("/OrdClass/LoadAdmin");
		}
	}

}
