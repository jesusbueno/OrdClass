package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Algorithm;

/**
 * Clase DAO (Data Access Object) que se encarga de insertar, obtener o
 * modificar información sobre un Algoritmo en la Base de datos
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class AlgorithmDAO extends DAO {

	/**
	 * Constructor de la clase AlgorithmDAO
	 * 
	 * @param url:           url de la base de datos
	 * @param user:          usuario de la base de datos
	 * @param password:      contraseña de la base de datos
	 * @param sqlProperties: fichero de propiedades sql
	 */
	public AlgorithmDAO(String url, String user, String password,
			Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	/**
	 * Función que obtiene todos los algoritmos de la base de datos
	 * 
	 * @return Array con los algoritmos
	 */
	public ArrayList<Algorithm> getAlgorithms() {

		ArrayList<Algorithm> algorithms = new ArrayList<Algorithm>();

		String sql = sqlProperties.getProperty("getAlgorithms");

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs;

			rs = ps.executeQuery();

			while (rs.next()) {
				Algorithm algorithm = new Algorithm();

				algorithm.setId(rs.getInt("ID"));
				algorithm.setAcronym(rs.getString("Acronym"));
				algorithm.setDescription(rs.getString("Description"));
				algorithm.setLink(rs.getString("Link"));
				algorithm.setMl_code(rs.getString("ML_Code"));
				algorithm.setName(rs.getString("Name"));
				algorithm.setPublication(rs.getString("Publication"));
				algorithm.setPy_code(rs.getString("Py_Code"));
				algorithm.setSource_code(rs.getString("Source_Code"));
				algorithm.setType(rs.getString("Type"));
				algorithm.setYear(rs.getInt("Year"));

				algorithms.add(algorithm);
				
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		
		return algorithms;
	}

	/**
	 * Función que añade un algoritmo a la base de datos
	 * 
	 * @param algorithm: algoritmo que se desea añadir
	 * @return true si se añade, false si no se añade
	 */
	public boolean addAlgorithm(Algorithm algorithm) throws Exception {
		boolean result = true;

		String sql = sqlProperties.getProperty("addAlgorithm");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, algorithm.getAcronym());
		ps.setString(2, algorithm.getName());
		ps.setString(3, algorithm.getType());
		ps.setInt(4, algorithm.getYear());
		ps.setString(5, algorithm.getPublication());
		ps.setString(6, algorithm.getDescription());
		ps.setString(7, algorithm.getSource_code());
		ps.setString(8, algorithm.getLink());
		ps.setString(9, algorithm.getMl_code());
		ps.setString(10, algorithm.getPy_code());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		System.out.println(con + "added a algorithm");
		return result;
	}

	/**
	 * Función que elimina un algoritmo de la base de datos
	 * 
	 * @param id: id del algoritmo que se quiere eliminar
	 * @return true si se elimina, false si no se elimina
	 * 
	 */
	public boolean deleteAlgorithm(int id) throws Exception {

		boolean result = true;

		String sql = sqlProperties.getProperty("deleteAlgorithm");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		System.out.println(con + "deleted the algorithm " + id);
		return result;
	}

	/**
	 * Modifica un algoritmo de la base de datos
	 * 
	 * @param algorithm: algoritmo con los datos ya modificados
	 * @return true si se modifica, false si no se modifica
	 * @throws Exception
	 */
	public boolean modifyAlgorithm(Algorithm algorithm) throws Exception {
		boolean result = true;

		String sql = sqlProperties.getProperty("modifyAlgorithm");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, algorithm.getAcronym());
		ps.setString(2, algorithm.getName());
		ps.setString(3, algorithm.getType());
		ps.setInt(4, algorithm.getYear());
		ps.setString(5, algorithm.getPublication());
		ps.setString(6, algorithm.getDescription());
		ps.setString(7, algorithm.getSource_code());
		ps.setString(8, algorithm.getLink());
		ps.setString(9, algorithm.getMl_code());
		ps.setString(10, algorithm.getPy_code());
		ps.setInt(11, algorithm.getId());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		System.out.println(con + "modified the algorithm " + algorithm.getId());
		return result;
	}

}
