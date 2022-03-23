package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Algorithm;

public class AlgorithmDAO extends DAO {

	protected AlgorithmDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}
	
	public ArrayList<Algorithm> getAlgorithms() throws SQLException{
		
		ArrayList<Algorithm> algorithms = new ArrayList<Algorithm>();
		
		String sql = "SELECT * FROM algorithm";
		
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			Algorithm algorithm = new Algorithm();
			
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
		
		return algorithms;
	}

}
