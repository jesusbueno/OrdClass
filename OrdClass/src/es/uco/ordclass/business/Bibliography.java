package es.uco.ordclass.business;

import java.io.Serializable;

/**
 * Clase que almacena toda la informaci�n de una entrada bibliogr�fica
 * 
 * @author Jes�s Bueno Ruiz
 *
 */
public class Bibliography implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
	private String author;
	private String title;
	private int year;
	private String book;
	private int volume;
	private int number;
	private String pages;

	/**
	 * Constructor vac�o de la clase Bibliography
	 */
	public Bibliography() {
	}

	/**
	 * Constructor de la clase Bibliography
	 * 
	 * @param id: id de la entrada
	 * @param author: autor
	 * @param title: t�tulo
	 * @param year: a�o
	 * @param book: libro
	 * @param volume: volumen
	 * @param number: n�mero
	 * @param pages: p�ginas
	 */
	public Bibliography(int id, String author, String title, int year, String book, int volume, int number,
			String pages) {
		super();
		this.id = id;
		this.author = author;
		this.title = title;
		this.year = year;
		this.book = book;
		this.volume = volume;
		this.number = number;
		this.pages = pages;
	}

	/**
	 * Getters y setters de los par�metros de la clase Bibliography
	 */
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getBook() {
		return book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public int getVolume() {
		return volume;
	}

	public void setVolume(int volume) {
		this.volume = volume;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getPages() {
		return pages;
	}

	public void setPages(String pages) {
		this.pages = pages;
	}

}
