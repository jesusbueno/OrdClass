package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Researcher;

public class ResearcherDAO extends DAO {

	public ResearcherDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	public ArrayList<Researcher> getResearches() {

		ArrayList<Researcher> researches = new ArrayList<Researcher>();

		String sql = "SELECT * FROM researches ORDER BY Surname";

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
	
	public boolean addResearcher(Researcher researcher) throws Exception{
		boolean result = true;
		
		String sql = "insert into researches(Name, Surname, Institution, Country, Profession, Phone, Link, Email, Description, Image) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
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

}
