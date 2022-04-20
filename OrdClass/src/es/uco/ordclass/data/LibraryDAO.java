package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Library;

public class LibraryDAO extends DAO{

	public LibraryDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}
	
	public ArrayList<Library> getLibraries(){
		
		ArrayList<Library> libraries = new ArrayList<Library>();
		libraries.clear();

		String sql = "SELECT * FROM library";

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Library library = new Library();

				library.setAuthor(rs.getString("Author"));
				library.setId(rs.getInt("ID"));
				library.setLanguage(rs.getString("Language"));
				library.setLink(rs.getString("Link"));
				library.setName(rs.getString("Name"));

			
				libraries.add(library);
			}
		} catch (SQLException e) {System.out.println(e);}

		return libraries;
	}

}
