package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Researcher;

public class ResearcherDAO extends DAO {

	protected ResearcherDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	public ArrayList<Researcher> getResearches() throws SQLException {

		ArrayList<Researcher> researches = new ArrayList<Researcher>();

		String sql = "SELECT * FROM researches";

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
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

		return researches;
	}

}
