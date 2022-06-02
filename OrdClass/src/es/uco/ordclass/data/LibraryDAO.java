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
				library.setGithub_link(rs.getString("Github_Link"));
				library.setDocumentation_link(rs.getString("Documentation_Link"));
				library.setName(rs.getString("Name"));

			
				libraries.add(library);
			}
		} catch (SQLException e) {System.out.println(e);}

		return libraries;
	}

	public boolean addLibraries(Library library) throws Exception{
		boolean result = true;

		String sql = "insert into library(Name, Author, Language, Github_Link, Documentation_Link) values(?, ?, ?, ?, ?)";
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, library.getName());
		ps.setString(2, library.getAuthor());
		ps.setString(3, library.getLanguage());
		ps.setString(4, library.getGithub_link());
		ps.setString(5, library.getDocumentation_link());

		if (ps.executeUpdate() == 0) {
			result = false;
		}
		
		return result;
	}

	public boolean deleteLibrary(int id) throws Exception{
		
		boolean result = true;

		String sql = "DELETE FROM library WHERE ID=?";

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);

		if(ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

	public boolean modifyLibraries(Library library) throws Exception{
		boolean result = true;

		String sql = "UPDATE library SET Name=?, Author=?, Language=?, Github_Link=?, Documentation_Link=? WHERE ID=?";
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, library.getName());
		ps.setString(2, library.getAuthor());
		ps.setString(3, library.getLanguage());
		ps.setString(4, library.getGithub_link());
		ps.setString(5, library.getDocumentation_link());
		ps.setInt(6, library.getId());

		if (ps.executeUpdate() == 0) {
			result = false;
		}
		
		return result;
	}

}
