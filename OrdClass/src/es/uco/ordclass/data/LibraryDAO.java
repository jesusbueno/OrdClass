package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Library;

/**
 * Clase DAO (Data Access Object) que se encarga de insertar, obtener o
 * modificar informaci�n sobre una librer�a en la Base de datos
 * 
 * @author Jes�s Bueno Ruiz
 *
 */
public class LibraryDAO extends DAO {

	/**
	 * Constructor de la clase LibraryDAO
	 * 
	 * @param url:           url de la base de datos
	 * @param user:          usuario de la base de datos
	 * @param password:      contrase�a de la base de datos
	 * @param sqlProperties: fichero de propiedades sql
	 */
	public LibraryDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	/**
	 * Funci�n que obtiene todos las librer�as de la base de datos
	 * 
	 * @return Array con las librer�as
	 */
	public ArrayList<Library> getLibraries() {

		ArrayList<Library> libraries = new ArrayList<Library>();
		libraries.clear();

		String sql = sqlProperties.getProperty("getLibraries");

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Library library = new Library();

				library.setAuthor(rs.getString("Author"));
				library.setId(rs.getInt("ID"));
				library.setLanguage(rs.getString("Language"));
				library.setGithub_link(rs.getString("Github_Link"));
				library.setDocumentation_link(rs.getString("Documentation_Link"));
				library.setName(rs.getString("Name"));

				libraries.add(library);
			}
		} catch (SQLException e) {
			System.out.println(e);
		}

		return libraries;
	}

	/**
	 * Funci�n que a�ade una librer�a a la base de datos
	 * 
	 * @param library: librer�a que se desea a�adir
	 * @return true si se a�ade, false si no se a�ade
	 */
	public boolean addLibraries(Library library) throws Exception {
		boolean result = true;

		String sql = sqlProperties.getProperty("addLibrary");
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, library.getName());
		ps.setString(2, library.getAuthor());
		ps.setString(3, library.getLanguage());
		ps.setString(4, library.getGithub_link());
		ps.setString(5, library.getDocumentation_link());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

	/**
	 * Funci�n que elimina una librer�a de la base de datos
	 * 
	 * @param id: id de la librer�a que se quiere eliminar
	 * @return true si se elimina, false si no se elimina
	 * 
	 */
	public boolean deleteLibrary(int id) throws Exception {

		boolean result = true;

		String sql = sqlProperties.getProperty("deleteLibrary");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

	/**
	 * Modifica una librer�a de la base de datos
	 * 
	 * @param library: librer�a con los datos ya modificados
	 * @return true si se modifica, false si no se modifica
	 * @throws Exception
	 */
	public boolean modifyLibraries(Library library) throws Exception {
		boolean result = true;

		String sql = sqlProperties.getProperty("modifyLibrary");
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, library.getName());
		ps.setString(2, library.getAuthor());
		ps.setString(3, library.getLanguage());
		ps.setString(4, library.getGithub_link());
		ps.setString(5, library.getDocumentation_link());
		ps.setInt(6, library.getId());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

}
