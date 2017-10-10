package basic.exam4;

public class ArrayTest {
	public static void main(String[] args) {
		
// 방법 1
		int[] n = new int[] {100,90,70}; // array라는 class로 만들어 짐. 
			n[0]=100;
			n[1]=90;
			n[2]=70;

// 방법 2
/*		int[] n =  {100,90,70}; // array라는 class로 만들어 짐. 
			n[0]=100;
			n[1]=90;
			n[2]=70;
*/		
			
// 방법3
		/*	int[] n = new int[3] // array라는 class로 만들어 짐. 
			n[0]=100;
			n[1]=90;
			n[2]=70;
		*/	
		for(int i=0; i < n.length; i++) { //n.length = 배열의 개수
			System.out.println(n[i]);
		}
	}
}
