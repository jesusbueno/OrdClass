package es.uco.ordclass.business;

import java.io.Serializable;

/**
 * Clase que almacena toda la informaci�n sobre un algoritmo.
 *	@author Jes�s Bueno Ruiz
 */
public class Algorithm implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
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

	/**
	 * Constructor vac�o de la clase Algorithm
	 */
	public Algorithm() {
	}

	/**
	 * Constructor de la clase Algorithm
	 * @param id: id del algoritmo
	 * @param acronym: acr�nimo del algoritmo
	 * @param name: nombre del algoritmo
	 * @param type: tipo del algoritmo
	 * @param year: a�o de publicaci�n del algoritmo
	 * @param publication: publicaci�n del algoritmo
	 * @param description: descripci�n del algoritmo
	 * @param source_code: c�digo fuente del algoritmo
	 * @param link: link del algoritmo
	 * @param ml_code: c�digo MATLAB del algoritmo
	 * @param py_code: c�digo Python del algoritmo
	 */
	public Algorithm(int id, String acronym, String name, String type, int year, String publication, String description,
			String source_code, String link, String ml_code, String py_code) {
		super();
		this.id = id;
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

	/**
	 * Getters y setters de los par�metros de la clase Algorithm
	 */
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
