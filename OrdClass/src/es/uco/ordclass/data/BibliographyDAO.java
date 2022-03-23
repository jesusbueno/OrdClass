package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Bibliography;

public class BibliographyDAO extends DAO{

	protected BibliographyDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}
	
	public ArrayList<Bibliography> getBibliography() throws SQLException {

		ArrayList<Bibliography> bibliography_list = new ArrayList<Bibliography>();

		String sql = "SELECT * FROM bibliography";

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			Bibliography bibliography = new Bibliography();
			
			bibliography.setAuthor(rs.getString("Author"));
			bibliography.setBook(rs.getString("Book"));
			bibliography.setId(rs.getInt("ID"));
			bibliography.setNumber(rs.getInt("Number"));
			bibliography.setPages(rs.getString("Pages"));
			bibliography.setTitle(rs.getString("Title"));
			bibliography.setVolume(rs.getInt("Volume"));
			bibliography.setYear(rs.getInt("Year"));

			bibliography_list.add(bibliography);
		}

		return bibliography_list;
	}

}
