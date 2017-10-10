package basic.method;

public class MethodTest8 {
	public static void main(String[] args) {
		int a=10;  // a는 본 블럭에서만 유효하다 
		testFunction(a); // call by value, 값만 전달될 뿐 실제 a는 그대로 main(){} 안에서 유효하다
		System.out.println("a in main : " + a);
	}

	private static void testFunction(int a) { // 매개변수로 복제(!) 가 된다. 
		a++;
		System.out.println("a in testfunction : " + a);
	}
}
