package es.uco.ordclass.data;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public abstract class DAO {

	//Conexión a la base de datos
	protected Connection DBConnection;
	
	//Clase properties
	protected Properties properties;

	public DAO(String dataBaseID, String user, String password, String propertiesPath) {
		try {
			properties = new Properties();
			ClassLoader classLoader = Thread.currentThread().getContextClassLoader();

			InputStream input = classLoader.getResourceAsStream(propertiesPath);

			properties.load(input);
		} catch (IOException e) {

			e.printStackTrace();
		}
	}

	//Establecer conexión
	public void Connect(String dataBaseID, String user, String password) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			DBConnection = DriverManager.getConnection(dataBaseID, user, password);

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}

	//Cerrar conexión
	public void closeConnection() {
		try {
			DBConnection.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

}
