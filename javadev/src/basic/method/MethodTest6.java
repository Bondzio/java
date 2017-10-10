package basic.method;

public class MethodTest6 {
	public static void main(String[] args) {
//		print(1);
//		print(2,3);		// method overloading
//		print(4,5,6,2342342,1,23,4,5,12,3,4,323,1,2,3,4,1);	
//		
//		/*String name="최충무";
//		print(name);
//		System.out.println(name);*/
		
		int[] lotto={1,2,3,4,5,6};
		for(int i:lotto) System.out.print(i + "\t");
		swapRandom(lotto);	
		System.out.println();
		for(int i:lotto) System.out.print(i + "\t");
		System.out.println();
		
		int a=0;
		int b=9;
		print(a,b);
		swapNumber(a,b);
		print(a,b);
		
		/*for(int q:lotto) System.out.print(lotto[q]+"\t");*/
		
	}

	private static void swapNumber(int a, int b) {
		int temp = a;
		a=b;
		b=temp;
		
	}

	private static void swapRandom(int[] lotto) {		
		int temp = lotto[0];		
		lotto[0] = lotto[5];
		lotto[5] = temp;		
	}
	
	private static void print(String name) {
		name = "박병규";
		
	}
/*
	private static void print(int i, int j, int k) {
		System.out.println(i + "\t" + j + "\t" + k);		
	}
	private static void print(int i, int j) {
		System.out.println(i + "\t" + j);
	}
	private static void print(int i) {
		System.out.println(i);
	}*/
	private static void print(int... i) { // 가변형 매개변수, 인자 
	/*	for(int j=0; j <i.length; j++)	{
			System.out.print(i[j]+"\t");
		}*/
		System.out.println();
		for(int j:i) System.out.print(j + "\t"); // : object type 혹은 배열 type i 는 배열 j에다가 i의 값을 i[0] 부터 순서대로 집어 넣는다. 
		System.out.println();
	}
}

