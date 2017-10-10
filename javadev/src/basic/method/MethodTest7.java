package basic.method;

public class MethodTest7 {
	public static void main(String[] args) {
//		for (String a : args) {
//			System.out.println("args[ ] : " + a);
			
		for (int i=0;i <args.length;i++) {
				System.out.println("args[" + i + "]: " + args[i]);
		}
	}
}
