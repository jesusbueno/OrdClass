package es.uco.ordclass.business;

public class Dataset {
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
	
	public Dataset() {}

	public Dataset(int id, String name, int train_size, int test_size, int length, int classes, String type, String best_algorithm, int best_accuracy, String images, String download, String description) {
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
	}

	//Getters and setters
	
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
	

	
	
	
	
}
