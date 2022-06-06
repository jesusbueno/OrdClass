package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

/**
 * Clase que se encarga de realizar la conexi�n con la base de datos
 * @author Jes�s Bueno Ruiz
 *
 */
public abstract class DAO {

	protected String url;
	protected String user;
	protected String password;
	protected Properties sqlProperties;

	/**
	 * Constructor de la clase DAO
	 * @param url: url de la base de datos
	 * @param user: usuario de la base de datos
	 * @param password: contrase�a de la base de datos
	 * @param sqlProperties: fichero de propiedades sql
	 */
	protected DAO(String url, String user, String password, Properties sqlProperties) {

		this.url = url;
		this.user = user;
		this.password = password;
		this.sqlProperties = sqlProperties;
	}

	
	/**
	 * Funci�n que establece la conexi�n con la base de datos
	 * @return Conection: conexi�n con la base de datos
	 */
	protected Connection getConnection() {

		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);

		} catch (Exception e) {
		}

		System.out.println(con + "has been connected.");
		return con;
		
	}
}
