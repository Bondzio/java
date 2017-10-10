package basic.exam;

public class Arithmetic6Test2 {
	public static void main(String[] args) {
		int i = 5;
		int t = i++; 	// i = t;
						// i = i + 1;
		
		System.out.println("i= " + i);
		System.out.println("t= " + t);
		
		
		i = 5;
		t = i--; 	// i = t;
						// i = i + 1;
		
		System.out.println("i= " + i);
		System.out.println("t= " + t);
	}
}
