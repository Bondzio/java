package basic.method;
public class MethodTest02 {
	
	public static void main(String[] args) {
			print("yongbin"); // 실매개변수
			print("heenam");
			print("hyojin");
	}

	private static void print(String name) { //형식매개변수 behavior 타입 및 개수를 반드시 일치시켜야함.
		System.out.println("***************");
		System.out.println("*HELLO " + name + "*" );
		System.out.println("***************");	
	}
}
