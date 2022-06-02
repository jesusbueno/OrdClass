package es.uco.ordclass.business;

import java.io.Serializable;

public class New implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String name;
	private String description;
	private String link;
	private String image;
	
	public New() {}

	public New(int id, String name, String description, String link, String image) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.link = link;
		this.image = image;
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
