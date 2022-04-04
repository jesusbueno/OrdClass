package es.uco.ordclass.business;

import java.io.Serializable;
import java.sql.Date;

public class Log implements Serializable{

	private static final long serialVersionUID = 1L;
	private int id;
	private Date date;
	private String info;
	private String type;
	private int reference;
	
	public Log() {}

	public Log(int id, Date date, String info, String type, int reference) {
		super();
		this.id= id;
		this.date = date;
		this.info = info;
		this.type = type;
		this.reference = reference;
	}
	
	//getters and setters

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getReference() {
		return reference;
	}

	public void setReference(int reference) {
		this.reference = reference;
	}
	
}
