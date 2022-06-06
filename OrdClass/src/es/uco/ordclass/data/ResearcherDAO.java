package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Researcher;

/**
 * Clase DAO (Data Access Object) que se encarga de insertar, obtener o
 * modificar información sobre un Investigador en la Base de datos
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class ResearcherDAO extends DAO {

	/**
	 * Constructor de la clase ResearcherDAO
	 * 
	 * @param url:           url de la base de datos
	 * @param user:          usuario de la base de datos
	 * @param password:      contraseña de la base de datos
	 * @param sqlProperties: fichero de propiedades sql
	 */
	public ResearcherDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	/**
	 * Función que obtiene todos los investigadores de la base de datos
	 * 
	 * @return Array con los investigadores
	 */
	public ArrayList<Researcher> getResearches() {

		ArrayList<Researcher> researches = new ArrayList<Researcher>();

		String sql = sqlProperties.getProperty("getResearchers");

		Connection con = getConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Researcher researcher = new Researcher();

				researcher.setCountry(rs.getString("Country"));
				researcher.setDescription(rs.getString("Description"));
				researcher.setEmail(rs.getString("Email"));
				researcher.setId(rs.getInt("ID"));
				researcher.setImage(rs.getString("Image"));
				researcher.setInstitution(rs.getString("Institution"));
				researcher.setLink(rs.getString("Link"));
				researcher.setName(rs.getString("Name"));
				researcher.setPhone(rs.getInt("Phone"));
				researcher.setProfession(rs.getString("Profession"));
				researcher.setSurname(rs.getString("Surname"));

				researches.add(researcher);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return researches;
	}

	/**
	 * Función que añade un investigador a la base de datos
	 * 
	 * @param researcher: investigador que se desea añadir
	 * @return true si se añade, false si no se añade
	 */
	public boolean addResearcher(Researcher researcher) throws Exception {
		boolean result = true;

		String sql = sqlProperties.getProperty("addResearcher");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, researcher.getName());
		ps.setString(2, researcher.getSurname());
		ps.setString(3, researcher.getInstitution());
		ps.setString(4, researcher.getCountry());
		ps.setString(5, researcher.getProfession());
		ps.setInt(6, researcher.getPhone());
		ps.setString(7, researcher.getLink());
		ps.setString(8, researcher.getEmail());
		ps.setString(9, researcher.getDescription());
		ps.setString(10, researcher.getImage());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;

	}

	/**
	 * Función que elimina un investigador de la base de datos
	 * 
	 * @param id: id del investigador que se quiere eliminar
	 * @return true si se elimina, false si no se elimina
	 * 
	 */
	public boolean deleteResearcher(int id) throws Exception {

		boolean result = true;

		String sql = sqlProperties.getProperty("deleteResearcher");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

	/**
	 * Modifica un investigador de la base de datos
	 * 
	 * @param researcher: investigador con los datos ya modificados
	 * @return true si se modifica, false si no se modifica
	 * @throws Exception
	 */
	public boolean modifyResearcher(Researcher researcher) throws Exception {
		boolean result = true;

		String sql = sqlProperties.getProperty("modifyResearcher");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, researcher.getName());
		ps.setString(2, researcher.getSurname());
		ps.setString(3, researcher.getInstitution());
		ps.setString(4, researcher.getCountry());
		ps.setString(5, researcher.getProfession());
		ps.setInt(6, researcher.getPhone());
		ps.setString(7, researcher.getLink());
		ps.setString(8, researcher.getEmail());
		ps.setString(9, researcher.getDescription());
		ps.setString(10, researcher.getImage());
		ps.setInt(11, researcher.getId());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;

	}

}
