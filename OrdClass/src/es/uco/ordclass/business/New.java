package es.uco.ordclass.business;

import java.io.Serializable;

/**
 * Clase que almacena toda la información de una noticia
 * 
 * @author Jesús Bueno Ruiz
 *
 */
public class New implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;
	private String name;
	private String description;
	private String link;
	private String image;

	/**
	 * Constructor vacío de la clase New
	 */
	public New() {
	}

	/**
	 * Constructor de la clase New
	 * 
	 * @param id: id de la noticia
	 * @param name: nombre de la noticia
	 * @param description: descripción de la noticia
	 * @param link: link de la noticia
	 * @param image: link de imagen
	 */
	public New(int id, String name, String description, String link, String image) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.link = link;
		this.image = image;
	}

	/**
	 * Getters y setters de los parámetros de la clase New
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	};

}
