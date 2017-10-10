//QUIZ 8 반복문을 사용

package basic.exam2;

public class Quiz8 {
	public static void main(String[] args) {
		for (int i = 1; i <= 5; i++) {
			for (int j = 5; j>=i; j--) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		
		for (int i = 1; i <= 5; i++) {
			for (int j = 1; j <= 6-i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		

		for (int i = 1; i <= 5; i++) {
			for (int j = 1; j <=5; j++) {
				if (i <=j) System.out.print("*");
				else System.out.print(" ");
			}
			System.out.println();
		}
	}
}


//***** 1행은 1,2,3,4,5열까지 * 을 출력
//**** 	2행은 1,2,3,4열까지 * 을 출력 
//***	3행은 1,2,3열까지 * 을 출력
//**	4행은 1,2열까지 * 을 출력
//*		5행은 1열까지 * 을 출력

//행 + 열 <= 6
// i + j <=6 열과 행을 더했을 때 6보다 작거나 같으면 출력


//***** 1행은 1,2,3,4,5 열까지 * 을 출력
// **** 2행은   2,3,4,5 열까지 * 을 출력 
//  ***	3행은     3,4,5 열까지 * 을 출력
//   **	4행은       4,5 열까지 * 을 출력
//    *	5행은         5 열까지 * 을 출력

// 행 <=  열
// i <=  j 

