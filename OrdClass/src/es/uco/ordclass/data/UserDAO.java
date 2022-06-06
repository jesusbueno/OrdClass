package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.User;

/**
 * Clase DAO (Data Access Object) que se encarga de insertar, obtener o
 * modificar información sobre un usuario administrador en la Base de datos
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class UserDAO extends DAO {

	/**
	 * Constructor de la clase UserDAO
	 * 
	 * @param url:           url de la base de datos
	 * @param user:          usuario de la base de datos
	 * @param password:      contraseña de la base de datos
	 * @param sqlProperties: fichero de propiedades sql
	 */
	public UserDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	/**
	 * Función que obtiene los datos de un usuario concreto
	 * 
	 * @param email: email del usuario
	 * @return User: objeto de tipo User
	 */
	public User getUser(String email) {
		User user = new User();

		String sql = sqlProperties.getProperty("getUser");

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user.setEmail(rs.getString("Email"));
				user.setAdmin(rs.getInt("Admin"));
				user.setName(rs.getString("Name"));
				user.setPassword(rs.getString("Password"));
				user.setSurname(rs.getString("Surname"));
				user.setUsername(rs.getString("Username"));

			}

		} catch (SQLException e) {
			System.out.println(e);
		}

		return user;
	}

	/**
	 * Función que obtiene todos los usuarios de la base de datos
	 * 
	 * @return Array con los usuarios
	 */
	public ArrayList<User> getUsers() {

		ArrayList<User> user_list = new ArrayList<User>();

		String sql = sqlProperties.getProperty("getUsers");

		try {

			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();

				user.setEmail(rs.getString("Email"));
				user.setAdmin(rs.getInt("Admin"));
				user.setName(rs.getString("Name"));
				user.setPassword(rs.getString("Password"));
				user.setSurname(rs.getString("Surname"));
				user.setUsername(rs.getString("Username"));

				user_list.add(user);
			}

		} catch (SQLException e) {
			System.out.println(e);
		}

		return user_list;

	}

	/**
	 * Función que añade un usuario a la base de datos
	 * 
	 * @param user: usuario que se desea añadir
	 * @return true si se añade, false si no se añade
	 */
	public boolean addUser(User user) throws Exception {
		boolean result = true;

		if (getUser(user.getEmail()).getEmail() == null) {
			String sql = sqlProperties.getProperty("addUser");

			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, user.getName());
			ps.setString(2, user.getSurname());
			ps.setString(3, user.getUsername());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getPassword());
			ps.setInt(6, user.getAdmin());

			if (ps.executeUpdate() == 0) {
				result = false;
			}

			return result;
		}

		else {
			result = false;
		}

		return result;
	}

	/**
	 * Función que valida los datos de acceso de un usuario
	 * 
	 * @param email:    email del usuario
	 * @param password: contraseña del usuario
	 * @return User: objeto de tipo User
	 */
	public User validateUser(String email, String password) {
		User user = new User();
		String sql = sqlProperties.getProperty("validateUser");
		System.out.println("Hola que tal");
		try {
			Connection con = getConnection();

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user.setEmail(rs.getString("Email"));
				user.setAdmin(rs.getInt("Admin"));
				user.setName(rs.getString("Name"));
				user.setPassword(rs.getString("Password"));
				user.setSurname(rs.getString("Surname"));
				user.setUsername(rs.getString("Username"));

			}

		} catch (SQLException e) {
			System.out.println(e);
		}

		return user;
	}

}
