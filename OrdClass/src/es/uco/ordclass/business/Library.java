package es.uco.ordclass.business;

import java.io.Serializable;

public class Library implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int id;
	private String name;
	private String author;
	private String language;
	private String link;
	
	public Library() {}

	public Library(int id, String name, String author, String language, String link) {
		super();
		this.id = id;
		this.name = name;
		this.author = author;
		this.language = language;
		this.link = link;
	}

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

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}
	
	

}
