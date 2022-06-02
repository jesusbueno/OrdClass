package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.User;

public class UserDAO extends DAO {

	public UserDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	public User getUser(String email) {
		User user = new User();

		String sql = "SELECT * FROM user WHERE email = ?";
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user.setEmail(rs.getString("Email"));
				user.setAdmin(rs.getInt("Admin"));
				user.setName(rs.getString("Name"));
				user.setPassword(rs.getString("Password"));
				user.setSurname(rs.getString("Surname"));
				user.setUsername(rs.getString("Username"));

			}

		} catch (SQLException e) {
			System.out.println(e);
		}

		return user;
	}

	
	public ArrayList<User> getUsers() {

		ArrayList<User> user_list = new ArrayList<User>();

		String sql = "SELECT * FROM user";

		try {

			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();

				user.setEmail(rs.getString("Email"));
				user.setAdmin(rs.getInt("Admin"));
				user.setName(rs.getString("Name"));
				user.setPassword(rs.getString("Password"));
				user.setSurname(rs.getString("Surname"));
				user.setUsername(rs.getString("Username"));

				user_list.add(user);
			}

		} catch (SQLException e) {
			System.out.println(e);
		}
		
		return user_list;

	}
	
	
	public boolean addUser(User user) throws Exception {
		boolean result = true;
		
		if (getUser(user.getEmail()).getEmail() == null) {
			String sql = "insert into user(Name, Surname, Username, Email, Password, Admin) values (?, ?, ?, ?, ?, ?)";

			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, user.getName());
			ps.setString(2, user.getSurname());
			ps.setString(3, user.getUsername());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getPassword());
			ps.setInt(6, user.getAdmin());

			if (ps.executeUpdate() == 0) {
				result = false;
			}

			return result;
		}

		else {
			result = false;
		}
		
		
		return result;
	}

	
	public User validateUser(String email, String password) {
		User user = new User();
		String sql = "select * from user where Email=? and Password=?";
		System.out.println("Hola que tal");
		try {
			Connection con = getConnection();

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user.setEmail(rs.getString("Email"));
				user.setAdmin(rs.getInt("Admin"));
				user.setName(rs.getString("Name"));
				user.setPassword(rs.getString("Password"));
				user.setSurname(rs.getString("Surname"));
				user.setUsername(rs.getString("Username"));
				
			}

		} catch (SQLException e) {
			System.out.println(e);
		}
		
		return user;
	}

}
