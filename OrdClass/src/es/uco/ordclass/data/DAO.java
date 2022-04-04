package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public abstract class DAO {

	protected String url;
	protected String user;
	protected String password;
	protected Properties sqlProperties;

	protected DAO(String url, String user, String password, Properties sqlProperties) {

		this.url = url;
		this.user = user;
		this.password = password;
		this.sqlProperties = sqlProperties;
	}

	
	protected Connection getConnection() {

		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);

		} catch (Exception e) {
		}

		System.out.println(con + "se ha conectado.");
		return con;
		
	}
}
