package kr.co.dbinv.eddy;

public class MovieTestDrive {
public static void main(String[] args) {
	Movie one = new Movie();
	one.setTitle("Gone with the Stock");
	one.setGenre("Tragic");
	one.setRating(-2);
	System.out.println(one.getTitle());
	System.out.println(one.getGenre());
	System.out.println(one.getRating());
		
	Movie two = new Movie();
	two.setTitle("Lost in Cubicle Space");
	two.setGenre("comedy");
	two.setRating(5);
	two.playIt();
	System.out.println(two.getTitle());
	System.out.println(two.getGenre());
	System.out.println(two.getRating());
		
	Movie three = new Movie();
	three.setTitle("Byte Club");
	three.setGenre("Tragic but ultimately uplifting");
	three.setRating(127);
	System.out.println(three.getTitle());
	System.out.println(three.getGenre());
	System.out.println(three.getRating());
}
}
