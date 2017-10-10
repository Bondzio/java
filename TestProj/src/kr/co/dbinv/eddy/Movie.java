package kr.co.dbinv.eddy;

class Movie {
	String title;
	String genre;
	int rating;
	
	void playIt(){
		System.out.println("Playing the movie");
		
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}
}
