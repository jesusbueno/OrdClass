package es.uco.ordclass.business;

import java.io.Serializable;

public class User implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String email;
	private String name;
	private String surname;
	private String username;
	private String password;
	private int admin;
	
	public User() {}


	public User(String email, String name, String surname, String username, String password, int admin) {
		super();
		this.email = email;
		this.name = name;
		this.surname = surname;
		this.username = username;
		this.password = password;
		this.admin = admin;
	}



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
