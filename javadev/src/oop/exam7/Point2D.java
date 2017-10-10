package oop.exam7;

public class Point2D {
	int x;
	int y;
	
	public Point2D() {
		this(1,1); // 생성자 오버로딩 (Overloading), 이미 만들어져 있는 point2D의 생성자를 활용한다.
		System.out.println("Point2D()"); // 순서가 바뀌면 안된다. 생성자에서 생성자 호출할때는 먼저 호출해야 된다. 
	}	
	public Point2D(int x, int y) {
		this.x = x;
		this.y = y;
		System.out.println("Point2D(x,y)");
	}	
}
