package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Log;

/**
 * Clase DAO (Data Access Object) que se encarga de insertar, obtener o
 * modificar información sobre un Log en la Base de datos
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class LogDAO extends DAO {

	/**
	 * Constructor de la clase LogDAO
	 * 
	 * @param url:           url de la base de datos
	 * @param user:          usuario de la base de datos
	 * @param password:      contraseña de la base de datos
	 * @param sqlProperties: fichero de propiedades sql
	 */
	public LogDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	/**
	 * Función que obtiene todos los logs de la base de datos
	 * 
	 * @return Array con los logs
	 */
	public ArrayList<Log> getLogs() {

		ArrayList<Log> logs = new ArrayList<Log>();
		logs.clear();

		String sql = sqlProperties.getProperty("getLogs");
		System.out.println("Hola");

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Log log = new Log();

				log.setDate(rs.getDate("Date"));
				log.setId(rs.getInt("ID"));
				log.setInfo(rs.getString("Info"));
				log.setType(rs.getString("Type"));
				log.setReference(rs.getInt("Reference"));

				logs.add(log);
			}
		} catch (SQLException e) {
			System.out.println(e);
		}

		return logs;
	}

	/**
	 * Función que añade un log a la base de datos
	 * 
	 * @param log: log que se desea añadir
	 * @return true si se añade, false si no se añade
	 */
	public boolean addLog(Log log) throws Exception {
		boolean result = true;
		String sql = sqlProperties.getProperty("addLog");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setDate(1, log.getDate());
		ps.setString(2, log.getInfo());
		ps.setString(3, log.getType());
		ps.setInt(4, log.getReference());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

}
