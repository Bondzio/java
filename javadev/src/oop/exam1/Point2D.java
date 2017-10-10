package oop.exam1;

public class Point2D {
	int x=9999;  // private 이되면 접근이 안됨. 클래스 내부에서만 접근 가능 
	private int	y;
	
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	public void print() {
		System.out.println("x = " + getX()); // this.getX()) 
		System.out.println("y = " + getY()); // this.getX())		
	}
	
}
