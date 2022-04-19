package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Algorithm;

public class AlgorithmDAO extends DAO {

	public AlgorithmDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	public ArrayList<Algorithm> getAlgorithms() {

		ArrayList<Algorithm> algorithms = new ArrayList<Algorithm>();

		String sql = "SELECT * FROM algorithm ORDER BY Name";

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
	
	
	public boolean addAlgorithm(Algorithm algorithm) throws Exception {
		boolean result = true;
		
		String sql = "insert into algorithm(Acronym, Name, Type, Year, Publication, Description, Source_Code, Link, ML_Code, Py_Code) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
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
		
		return result;
	}
	

}
