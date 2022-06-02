package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Bibliography;

public class BibliographyDAO extends DAO{

	public BibliographyDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}
	
	public ArrayList<Bibliography> getBibliography(){

		ArrayList<Bibliography> bibliography_list = new ArrayList<Bibliography>();

		String sql = "SELECT * FROM bibliography";

		try {
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
		
		}catch (SQLException e) {
			e.printStackTrace();
		}

		return bibliography_list;
	}

	public boolean addBibliography(Bibliography bibliography) throws Exception{
		boolean result = true;

		String sql = "insert into bibliography(Author, Title, Year, Book, Volume, Number, Pages) values(?, ?, ?, ?, ?, ?, ?)";

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, bibliography.getAuthor());
		ps.setString(2, bibliography.getTitle());
		ps.setInt(3, bibliography.getYear());
		ps.setString(4, bibliography.getBook());
		ps.setInt(5, bibliography.getVolume());
		ps.setInt(6, bibliography.getNumber());
		ps.setString(7, bibliography.getPages());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}


	public boolean deleteBibliography(int id) throws Exception{
		
		boolean result = true;

		String sql = "DELETE FROM bibliography WHERE ID=?";

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);

		if(ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

	public boolean modifyBibliography(Bibliography bibliography) throws Exception{

		boolean result = true;

		String sql = "UPDATE bibliography SET Author=?, Title=?, Year=?, Book=?, Volume=?, Number=?, Pages=? WHERE ID=?";

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, bibliography.getAuthor());
		ps.setString(2, bibliography.getTitle());
		ps.setInt(3, bibliography.getYear());
		ps.setString(4, bibliography.getBook());
		ps.setInt(5, bibliography.getVolume());
		ps.setInt(6, bibliography.getNumber());
		ps.setString(7, bibliography.getPages());
		ps.setInt(8, bibliography.getId());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;


	}

}
