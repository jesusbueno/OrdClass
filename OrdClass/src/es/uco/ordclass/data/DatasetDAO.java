package es.uco.ordclass.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import es.uco.ordclass.business.Dataset;

public class DatasetDAO extends DAO{

	public DatasetDAO(String url, String user, String password, Properties sqlProperties) {
		super(url, user, password, sqlProperties);
	}
	
	public ArrayList<Dataset> getDatasets() throws SQLException{
		
		ArrayList<Dataset> datasets = new ArrayList<Dataset>();
		
		String sql = "SELECT * FROM datasets";
		
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
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
			
			datasets.add(dataset);
		}
		
		return datasets;
	}

	
	
	

		
}
