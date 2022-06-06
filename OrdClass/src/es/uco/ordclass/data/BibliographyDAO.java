package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Bibliography;

/**
 * Clase DAO (Data Access Object) que se encarga de insertar, obtener o
 * modificar informaci�n sobre una entrada bibliogr�fica en la Base de datos
 * 
 * @author Jes�s Bueno Ruiz
 *
 */
public class BibliographyDAO extends DAO {

	/**
	 * Constructor de la clase BibliographyDAO
	 * 
	 * @param url:           url de la base de datos
	 * @param user:          usuario de la base de datos
	 * @param password:      contrase�a de la base de datos
	 * @param sqlProperties: fichero de propiedades sql
	 */
	public BibliographyDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	/**
	 * Funci�n que obtiene todos las entradas bibliogr�ficas de la base de datos
	 * 
	 * @return Array con las entradas bibliogr�ficas
	 */
	public ArrayList<Bibliography> getBibliography() {

		ArrayList<Bibliography> bibliography_list = new ArrayList<Bibliography>();

		String sql = sqlProperties.getProperty("getBibliographies");

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Bibliography bibliography = new Bibliography();

				bibliography.setAuthor(rs.getString("Author"));
				bibliography.setBook(rs.getString("Book"));
				bibliography.setId(rs.getInt("ID"));
				bibliography.setNumber(rs.getInt("Number"));
				bibliography.setPages(rs.getString("Pages"));
				bibliography.setTitle(rs.getString("Title"));
				bibliography.setVolume(rs.getInt("Volume"));
				bibliography.setYear(rs.getInt("Year"));

				bibliography_list.add(bibliography);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return bibliography_list;
	}

	/**
	 * Funci�n que a�ade una entrada bibliogr�fica a la base de datos
	 * 
	 * @param bibliography: entrada bibliogr�fica que se desea a�adir
	 * @return true si se a�ade, false si no se a�ade
	 */
	public boolean addBibliography(Bibliography bibliography) throws Exception {
		boolean result = true;

		String sql = sqlProperties.getProperty("addBibliography");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, bibliography.getAuthor());
		ps.setString(2, bibliography.getTitle());
		ps.setInt(3, bibliography.getYear());
		ps.setString(4, bibliography.getBook());
		ps.setInt(5, bibliography.getVolume());
		ps.setInt(6, bibliography.getNumber());
		ps.setString(7, bibliography.getPages());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

	/**
	 * Funci�n que elimina una entrada bibliogr�fica de la base de datos
	 * 
	 * @param id: id de la entrada bibliogr�fica que se quiere eliminar
	 * @return true si se elimina, false si no se elimina
	 * 
	 */
	public boolean deleteBibliography(int id) throws Exception {

		boolean result = true;

		String sql = sqlProperties.getProperty("deleteBibliography");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

	/**
	 * Modifica una entrada bibliogr�fica de la base de datos
	 * 
	 * @param bibliography: entrada bibliogr�fica con los datos ya modificados
	 * @return true si se modifica, false si no se modifica
	 * @throws Exception
	 */
	public boolean modifyBibliography(Bibliography bibliography) throws Exception {

		boolean result = true;

		String sql = sqlProperties.getProperty("modifyBibliography");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, bibliography.getAuthor());
		ps.setString(2, bibliography.getTitle());
		ps.setInt(3, bibliography.getYear());
		ps.setString(4, bibliography.getBook());
		ps.setInt(5, bibliography.getVolume());
		ps.setInt(6, bibliography.getNumber());
		ps.setString(7, bibliography.getPages());
		ps.setInt(8, bibliography.getId());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;

	}

}
