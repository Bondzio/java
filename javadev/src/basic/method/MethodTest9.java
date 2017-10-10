package basic.method;

public class MethodTest9 {
	public static void main(String[] args) {
		int[] n={100,200};

		swapFunction(n); // call by reference : 참조에 의한 호출
		
		for(int a:n) {
			System.out.println(a+" ");
		}
	}

	private static void swapFunction(int[] n) {
		int temp;
		temp = n[0];
		n[0]=n[1];
		n[1]=temp;
		
	}
}
