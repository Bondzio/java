package api;

class Point2D {} // 묵시적으로 object라는 class를 상속받음. 




public class ObjectTest {
	public static void main(String[] args) {
		Point2D pt = new Point2D();
		System.out.println(pt.getClass());
		System.out.println(pt.hashCode());
		System.out.println(pt.toString());
	}
}
