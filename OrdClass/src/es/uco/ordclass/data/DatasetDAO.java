package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Dataset;

/**
 * Clase DAO (Data Access Object) que se encarga de insertar, obtener o
 * modificar información sobre un Dataset en la Base de datos
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class DatasetDAO extends DAO {

	/**
	 * Constructor de la clase DatasetDAO
	 * 
	 * @param url:           url de la base de datos
	 * @param user:          usuario de la base de datos
	 * @param password:      contraseña de la base de datos
	 * @param sqlProperties: fichero de propiedades sql
	 */
	public DatasetDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}

	/**
	 * Función que obtiene todos los datasets de la base de datos
	 * 
	 * @return Array con los datasets
	 */
	public ArrayList<Dataset> getDatasets() {

		ArrayList<Dataset> datasets = new ArrayList<Dataset>();

		String sql = sqlProperties.getProperty("getDatasets");

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Dataset dataset = new Dataset();

				dataset.setId(rs.getInt("ID"));
				dataset.setBest_accuracy(rs.getInt("Best_Accuracy"));
				dataset.setBest_algorithm(rs.getString("Best_Algorithm"));
				dataset.setClasses(rs.getInt("Classes"));
				dataset.setDownload(rs.getString("Download"));
				dataset.setImages(rs.getString("Images"));
				dataset.setLength(rs.getInt("Length"));
				dataset.setName(rs.getString("Name"));
				dataset.setTest_size(rs.getInt("Test_Size"));
				dataset.setTrain_size(rs.getInt("Train_Size"));
				dataset.setType(rs.getString("Type"));
				dataset.setDescription(rs.getString("Description"));
				dataset.setDonor(rs.getString("Donor"));
				dataset.setData_source(rs.getString("Data_Source"));

				datasets.add(dataset);
			}

		} catch (SQLException e) {
			System.out.println(e);
		}

		return datasets;
	}

	/**
	 * Función que añade un dataset a la base de datos
	 * 
	 * @param dataset: dataset que se desea añadir
	 * @return true si se añade, false si no se añade
	 */
	public boolean addDataset(Dataset dataset) throws Exception {
		boolean result = true;

		String sql = sqlProperties.getProperty("addDataset");
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, dataset.getName());
		ps.setInt(2, dataset.getTrain_size());
		ps.setInt(3, dataset.getTest_size());
		ps.setInt(4, dataset.getLength());
		ps.setInt(5, dataset.getClasses());
		ps.setString(6, dataset.getType());
		ps.setString(7, dataset.getBest_algorithm());
		ps.setInt(8, dataset.getBest_accuracy());
		ps.setString(9, dataset.getImages());
		ps.setString(10, dataset.getDownload());
		ps.setString(11, dataset.getDescription());
		ps.setString(12, dataset.getDonor());
		ps.setString(13, dataset.getData_source());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;

	}

	/**
	 * Función que elimina un dataset de la base de datos
	 * 
	 * @param id: id del dataset que se quiere eliminar
	 * @return true si se elimina, false si no se elimina
	 * 
	 */
	public boolean deleteDataset(int id) throws Exception {

		boolean result = true;

		String sql = sqlProperties.getProperty("deleteDataset");

		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;
	}

	/**
	 * Modifica un dataset de la base de datos
	 * 
	 * @param dataset: dataset con los datos ya modificados
	 * @return true si se modifica, false si no se modifica
	 * @throws Exception
	 */
	public boolean modifyDataset(Dataset dataset) throws Exception {
		boolean result = true;

		String sql = sqlProperties.getProperty("modifyDataset");
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, dataset.getName());
		ps.setInt(2, dataset.getTrain_size());
		ps.setInt(3, dataset.getTest_size());
		ps.setInt(4, dataset.getLength());
		ps.setInt(5, dataset.getClasses());
		ps.setString(6, dataset.getType());
		ps.setString(7, dataset.getBest_algorithm());
		ps.setInt(8, dataset.getBest_accuracy());
		ps.setString(9, dataset.getImages());
		ps.setString(10, dataset.getDownload());
		ps.setString(11, dataset.getDescription());
		ps.setString(12, dataset.getDonor());
		ps.setString(13, dataset.getData_source());
		ps.setInt(14, dataset.getId());

		if (ps.executeUpdate() == 0) {
			result = false;
		}

		return result;

	}

}
