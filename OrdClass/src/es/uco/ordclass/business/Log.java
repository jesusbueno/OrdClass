package es.uco.ordclass.business;

import java.io.Serializable;
import java.sql.Date;

/**
 * Clase que almacena toda la informaci�n de un log
 * 
 * @author Jes�s Bueno Ruiz
 *
 */
public class Log implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
	private Date date;
	private String info;
	private String type;
	private int reference;

	/**
	 * Constructor vac�o de la clase Log
	 */
	public Log() {
	}

	/**
	 * Constructor de la clase Log
	 * 
	 * @param id: id del log
	 * @param date: fecha
	 * @param info: informaci�n
	 * @param type: tipo de log
	 * @param reference: referencia
	 */
	public Log(int id, Date date, String info, String type, int reference) {
		super();
		this.id = id;
		this.date = date;
		this.info = info;
		this.type = type;
		this.reference = reference;
	}

	/**
	 * Getters y setters de los par�metros de la clase Log
	 */
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
