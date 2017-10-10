package oop.exam5;

public class PointTest {
	public static void main(String[] args) {
		Point2D up = new Point3D(); // 업캐스팅, 자동형변환, 참조가 가능해진다. 
		up.x = 100;
		up.y = 200;
		// up.z = 300; 안된다.  새롭게 만들어진것은 안된다. 
	
		Point3D dn = (Point3D) up; // 다운캐스팅 downcasting 
		dn.x = 1000;
		dn.y = 2000;
		dn.z = 3000;
		System.out.println(dn);
		
		System.out.println(up.x);
	}
}
