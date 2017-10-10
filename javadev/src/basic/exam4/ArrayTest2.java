// 배열 에 값을 할당하지 않았을 때 값  

package basic.exam4;

public class ArrayTest2 {

	public static void main(String[] args) {
		boolean[] b = new boolean[1];
		System.out.println(b[0]); // boolean , false 가 있다. 
		
		char [] c = new char[1];
		System.out.println(c[0]); // char 에는 공백이 있다. 
				
		
		int[] i = new int[1];
		System.out.println(i[0]); // integer 에는 기본값 0
		
		short[] s = new short[1];
		System.out.println(s[0]); // short 기본값  0
		
		long[] l = new long[1];
		System.out.println(l[0]); // long 기본값  0
		
		long[] b2 = new long[1];
		System.out.println(b2[0]); // byte 기본값  0
		
		/*int i2;
		System.out.println(i2); // 기본 자료형은 출력이 안됨 vs 배열자료형은 기본값 0 
*/		
		
		double[] d = new double[1];
		System.out.println(d[0] + " "+ d ); // 해시 코드값 [D@15db9742
		
		float[] f = new float[1];
		System.out.println(f[0]);
		
		
	}	
}
