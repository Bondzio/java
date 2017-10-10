package basic.exam2;

import java.util.Scanner;

public class SwitchTest {
	public static void main(String[] args) {
		
		
		int score;
		
		Scanner sc = new Scanner(System.in);
		System.out.print("점수를 0~100 입력하세요");
		score = sc.nextInt();
				
		switch (score/10) {
		case 10:
		case 9 :
			System.out.println("A");
			break;
			
		case 8 :
			System.out.println("B");
			break;
		
		case 7 : 
			System.out.println("C");
			break;
			
		case 6 : 
			System.out.println("D");
			break;
			
		default:
			System.out.println("에러");
			break;
		}
	}
}
