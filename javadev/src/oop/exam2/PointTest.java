package oop.exam2;

public class PointTest {
	public static void main(String[] args) {		
		Point2D pt2 = new Point2D();
		pt2.setX(9999);
		pt2.setY(8888);
		pt2.print();
		
		Point3D pt3 = new Point3D();		
		pt3.setZ(7777);
		pt3.print();
	}	
}