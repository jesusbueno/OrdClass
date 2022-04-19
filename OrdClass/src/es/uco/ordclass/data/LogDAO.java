package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Log;

public class LogDAO extends DAO {

	public LogDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	public ArrayList<Log> getLogs() {

		ArrayList<Log> logs = new ArrayList<Log>();
		logs.clear();

		String sql = "SELECT * FROM logs ORDER BY Date desc";
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
		} catch (SQLException e) {System.out.println(e);}

		return logs;
	}
	
	public boolean addLog(Log log) throws Exception{
		boolean result = true;
		String sql="insert into logs(Date, Info, Type, Reference) values(?, ?, ?, ?)";
		
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
