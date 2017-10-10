package basic.method;

public class MethodTest10 {
	public static void main(String[] args) {
		int [] n= {23, 10, 70, 80, 60, 25, 99, 123, 155, -13};
		
		int max = maxNumber(n);
		int min = minNumber(n);
		System.out.println("The maximum value in the array is :" + max);
		System.out.println("The minimum value in the array is :" + min);
				

	}

	private static int minNumber(int[] n) {
		int min=n[0];
		for (int i=1;i<n.length;i++) if(min>n[i]) min=n[i];
		return min;
	}

	private static int maxNumber(int[] n) {
		int max=0;
		for (int i=0;i<n.length;i++) if(max<n[i]) max=n[i];		
		return max;
	}
}




// 5 4 3 2 1  1 행   i=1 j=5
// 5 4 3 2    2 행  
// 5 4 3 
// 5 4 
// 5
