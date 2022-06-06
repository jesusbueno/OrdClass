package es.uco.ordclass.business;

import java.io.Serializable;

/**
 * Clase que almacena toda la información de una librería
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class Library implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;
	private String name;
	private String author;
	private String language;
	private String github_link;
	private String documentation_link;

	/**
	 * Constructor vacío de la clase Library
	 */
	public Library() {
	}

	/**
	 * Constructor de la clase Library
	 * 
	 * @param id: id de la librería
	 * @param name: nombre de la librería
	 * @param author: autor de la librería
	 * @param language: lenguaje de la librería
	 * @param github_link: link de GitHub
	 * @param documentation_link: link de la documentación
	 */
	public Library(int id, String name, String author, String language, String github_link, String documentation_link) {
		super();
		this.id = id;
		this.name = name;
		this.author = author;
		this.language = language;
		this.github_link = github_link;
		this.documentation_link = documentation_link;
	}

	/**
	 * Getters y setters de los parámetros de la clase Library
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

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getGithub_link() {
		return github_link;
	}

	public void setGithub_link(String github_link) {
		this.github_link = github_link;
	}

	public String getDocumentation_link() {
		return documentation_link;
	}

	public void setDocumentation_link(String documentation_link) {
		this.documentation_link = documentation_link;
	}

}
