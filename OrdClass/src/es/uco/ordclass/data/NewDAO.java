package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.New;

public class NewDAO extends DAO{

	public NewDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}
	
	public ArrayList<New> getNews(){
		ArrayList<New> news = new ArrayList<New>();
		news.clear();

		String sql = "SELECT * from new";

		try{
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				New new_ = new New();
				
				new_.setId(rs.getInt("ID"));
				new_.setDescription(rs.getString("Description"));
				new_.setImage(rs.getString("Image"));
				new_.setLink(rs.getString("Link"));
				new_.setName(rs.getString("Name"));

				news.add(new_);
			}
		}catch (SQLException e) {System.out.println(e);}

		return news;
	}


	public boolean addNews(New new_) throws Exception{
		boolean result = true;

		String sql = "insert into new(Name, Description, Link, Image) values(?, ?, ?, ?)";
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, new_.getName());
		ps.setString(2, new_.getDescription());
		ps.setString(3, new_.getLink());
		ps.setString(4, new_.getImage());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

	public boolean deleteNew(int id) throws Exception{
		
		boolean result = true;

		String sql = "DELETE FROM new WHERE ID=?";

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);

		if(ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

	public boolean modifyNews(New new_) throws Exception{
		boolean result = true;

		String sql = "UPDATE new SET Name=?, Description=?, Link=?, Image=? WHERE ID=?";
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, new_.getName());
		ps.setString(2, new_.getDescription());
		ps.setString(3, new_.getLink());
		ps.setString(4, new_.getImage());
		ps.setInt(5, new_.getId());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

}
