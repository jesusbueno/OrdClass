package es.uco.ordclass.business;

public class Algorithm {

	private String acronym;
	private String name;
	private String type;
	private int year;
	private String publication;
	private String description;
	private String source_code;
	private String link;
	private String ml_code;
	private String py_code;
	
	public Algorithm() {}

	public Algorithm(String acronym, String name, String type, int year, String publication, String description, String source_code, String link, String ml_code, String py_code) {
		super();
		this.acronym = acronym;
		this.name = name;
		this.type = type;
		this.year = year;
		this.publication = publication;
		this.description = description;
		this.source_code = source_code;
		this.link = link;
		this.ml_code = ml_code;
		this.py_code = py_code;
	}

	//getters and setters
	
	public String getAcronym() {
		return acronym;
	}

	public void setAcronym(String acronym) {
		this.acronym = acronym;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getPublication() {
		return publication;
	}

	public void setPublication(String publication) {
		this.publication = publication;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSource_code() {
		return source_code;
	}

	public void setSource_code(String source_code) {
		this.source_code = source_code;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getMl_code() {
		return ml_code;
	}

	public void setMl_code(String ml_code) {
		this.ml_code = ml_code;
	}

	public String getPy_code() {
		return py_code;
	}

	public void setPy_code(String py_code) {
		this.py_code = py_code;
	}
	
	
	
	
}
