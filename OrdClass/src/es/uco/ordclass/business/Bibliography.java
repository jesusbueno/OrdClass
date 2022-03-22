package es.uco.ordclass.business;

public class Bibliography {
	
	private int id;
	private String author;
	private String title;
	private int year;
	private String book;
	private int volume;
	private int number;
	private String pages;
	
	public Bibliography() {}

	public Bibliography(int id, String author, String title, int year, String book, int volume, int number, String pages) {
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
	
	//getters and setters

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
