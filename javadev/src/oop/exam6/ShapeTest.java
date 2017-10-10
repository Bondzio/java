package oop.exam6;

public class ShapeTest {
	public static void main(String[] args) {
	
		printArea(new Circle()); // Class 
		printArea(new Triangle());
		printArea(new Rectangle());
	}
	
	private static void printArea(Shape s) { // Shape s = new Circle() upcasting 관계로 값이 넘어오기 때문에, 하나로 처리 가능하다. 
		s.area();
		if (s instanceof Circle ){ //circle type으로 downcasting 이 될 수 있는지
			Circle c= (Circle)s;
			System.out.println("반지름이 " + c.r + "인 원의 넓이는 " + c.res);
		} else if (s instanceof Rectangle){
			Rectangle r =(Rectangle)s;
			System.out.println("밑변이 " + r.w + "높이가 "+r.h + "인 사각형의 넓이는 " + r.res);
		} else if (s instanceof Triangle) {
			Triangle t =(Triangle)s;
			System.out.println("밑변이 " + t.w + "높이가 "+ t.h + "인 삼각형의 넓이는 " + t.res);
		}
	}
}