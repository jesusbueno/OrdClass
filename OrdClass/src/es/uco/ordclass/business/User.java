package es.uco.ordclass.business;

import java.io.Serializable;

/**
 * Clase que almacena toda la información de un usuario administrador
 * @author Jesús Bueno Ruiz
 *
 */
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	private String email;
	private String name;
	private String surname;
	private String username;
	private String password;
	private int admin;

	/**
	 * Constructor vacío de la clase User
	 */
	public User() {
	}

	/**
	 * Constructor de la clase User
	 * 
	 * @param email: email de acceso
	 * @param name: nombre del administrador
	 * @param surname: apellidos del administrador
	 * @param username: nombre de usuario
	 * @param password: contraseña de acceso
	 * @param admin: indica si tiene privilegios de administrador
	 */
	public User(String email, String name, String surname, String username, String password, int admin) {
		super();
		this.email = email;
		this.name = name;
		this.surname = surname;
		this.username = username;
		this.password = password;
		this.admin = admin;
	}

	/**
	 * Getters y setters de los parámetros de la clase User
	 */
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

}
