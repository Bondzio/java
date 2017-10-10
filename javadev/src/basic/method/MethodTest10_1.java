package basic.method;

public class MethodTest10_1 {
	public static void main(String[] args) {
		int[] n = { 23, 10, 70, 80, 60, 25,-1,-23,112,3353,12,563,1};
		print(n);
		maxNumber(n);
		print(n);
		
	}

	
	private static void print(int... n) {
		for(int i=0;i<n.length;i++) System.out.print( n[i] + "\t");
		System.out.println();
		
	}

	private static void maxNumber(int[] n) {
		for (int j=0;j<n.length;j++){
			int max=j;
			for (int i=j;i<n.length;i++) {
					if (n[max]<n[i]) max=i;
				}		
			swap (n, max, j);				
		}		
	}

	private static void swap(int[] n, int i, int j) {
		int temp;
		temp = n[i];
		n[i] = n[j];
		n[j] = temp;		
	}
}
