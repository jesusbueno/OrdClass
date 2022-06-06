package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.New;

/**
 * Clase DAO (Data Access Object) que se encarga de insertar, obtener o
 * modificar información sobre una noticia en la Base de datos
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class NewDAO extends DAO {

	/**
	 * Constructor de la clase NewDAO
	 * 
	 * @param url:           url de la base de datos
	 * @param user:          usuario de la base de datos
	 * @param password:      contraseña de la base de datos
	 * @param sqlProperties: fichero de propiedades sql
	 */
	public NewDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	/**
	 * Función que obtiene todos las noticias de la base de datos
	 * 
	 * @return Array con las noticias
	 */
	public ArrayList<New> getNews() {
		ArrayList<New> news = new ArrayList<New>();
		news.clear();

		String sql = sqlProperties.getProperty("getNews");

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				New new_ = new New();

				new_.setId(rs.getInt("ID"));
				new_.setDescription(rs.getString("Description"));
				new_.setImage(rs.getString("Image"));
				new_.setLink(rs.getString("Link"));
				new_.setName(rs.getString("Name"));

				news.add(new_);
			}
		} catch (SQLException e) {
			System.out.println(e);
		}

		return news;
	}

	/**
	 * Función que añade una noticia a la base de datos
	 * 
	 * @param new_: noticia que se desea añadir
	 * @return true si se añade, false si no se añade
	 */
	public boolean addNews(New new_) throws Exception {
		boolean result = true;

		String sql = sqlProperties.getProperty("addNews");
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

	/**
	 * Función que elimina una noticia de la base de datos
	 * 
	 * @param id: id de la noticia que se quiere eliminar
	 * @return true si se elimina, false si no se elimina
	 * 
	 */
	public boolean deleteNew(int id) throws Exception {

		boolean result = true;

		String sql = sqlProperties.getProperty("deleteNews");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

	/**
	 * Modifica una noticia de la base de datos
	 * 
	 * @param new_: noticia con los datos ya modificados
	 * @return true si se modifica, false si no se modifica
	 * @throws Exception
	 */
	public boolean modifyNews(New new_) throws Exception {
		boolean result = true;

		String sql = sqlProperties.getProperty("modifyNews");
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
