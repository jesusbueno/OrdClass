package es.uco.ordclass.business;

import java.io.Serializable;

/**
 * Clase que almacena toda la información de un investigador
 * @author Jesús Bueno Ruiz
 *
 */
public class Researcher implements Serializable{

	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private String surname;
	private String institution;
	private String country;
	private String profession;
	private int phone;
	private String link;
	private String email;
	private String description;
	private String image;
	
	/**
	 * Constructor vacío de la clase Researcher
	 */
	public Researcher() {}

	/**
	 * Constructor de la clase Researcher
	 * @param id: id del investigador
	 * @param name: nombre del investigador
	 * @param surname: apellidos del investigador
	 * @param institution: institución
	 * @param country: país del investigador
	 * @param profession: profesión
	 * @param phone: teléfono de contacto
	 * @param link: link del investigador
	 * @param email: email del investigador
	 * @param description: descripción del investigador
	 * @param image: link de imagen
	 */
	public Researcher(int id, String name, String surname, String institution, String country, String profession, int phone, String link, String email, String description, String image) {
		super();
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.institution = institution;
		this.country = country;
		this.profession = profession;
		this.phone = phone;
		this.link = link;
		this.email = email;
		this.description = description;
		this.image = image;
	}

	
	/**
	 * Getters y setters de los parámetros de la clase Researcher
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

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getInstitution() {
		return institution;
	}

	public void setInstitution(String institution) {
		this.institution = institution;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
		
}
