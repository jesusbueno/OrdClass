package es.uco.ordclass.business;

import java.io.Serializable;

/**
 * Clase que almacena toda la información de un dataset
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class Dataset implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private int train_size;
	private int test_size;
	private int length;
	private int classes;
	private String type;
	private String best_algorithm;
	private int best_accuracy;
	private String images;
	private String download;
	private String description;
	private String donor;
	private String data_source;

	/**
	 * Constructor vacío de la clase Dataset
	 */
	public Dataset() {
	}

	/**
	 * Constructor de la clase Dataset
	 * 
	 * @param id: id del dataset
	 * @param name: nombre del dataset
	 * @param train_size: tamaño de entrenamiento
	 * @param test_size: tamaño de test
	 * @param length: longitud
	 * @param classes: número de clases
	 * @param type: tipo de dataset
	 * @param best_algorithm: mejor algoritmo
	 * @param best_accuracy: mejor precisión
	 * @param images: enlace de imagen
	 * @param download: link de descarga
	 * @param description: descripción del dataset
	 * @param donor: donante
	 * @param data_source: código fuente
	 */
	public Dataset(int id, String name, int train_size, int test_size, int length, int classes, String type,
			String best_algorithm, int best_accuracy, String images, String download, String description, String donor,
			String data_source) {
		super();
		this.id = id;
		this.name = name;
		this.train_size = train_size;
		this.test_size = test_size;
		this.length = length;
		this.classes = classes;
		this.type = type;
		this.best_algorithm = best_algorithm;
		this.best_accuracy = best_accuracy;
		this.images = images;
		this.download = download;
		this.description = description;
		this.donor = donor;
		this.data_source = data_source;
	}

	/**
	 * Getters y setters de los parámetros de la clase Dataset
	 */
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTrain_size() {
		return train_size;
	}

	public void setTrain_size(int train_size) {
		this.train_size = train_size;
	}

	public int getTest_size() {
		return test_size;
	}

	public void setTest_size(int test_size) {
		this.test_size = test_size;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getClasses() {
		return classes;
	}

	public void setClasses(int classes) {
		this.classes = classes;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBest_algorithm() {
		return best_algorithm;
	}

	public void setBest_algorithm(String best_algorithm) {
		this.best_algorithm = best_algorithm;
	}

	public int getBest_accuracy() {
		return best_accuracy;
	}

	public void setBest_accuracy(int best_accuracy) {
		this.best_accuracy = best_accuracy;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getDownload() {
		return download;
	}

	public void setDownload(String download) {
		this.download = download;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDonor() {
		return donor;
	}

	public void setDonor(String donor) {
		this.donor = donor;
	}

	public String getData_source() {
		return data_source;
	}

	public void setData_source(String data_source) {
		this.data_source = data_source;
	}

}
