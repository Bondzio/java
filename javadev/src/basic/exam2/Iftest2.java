package basic.exam2;

import java.util.Scanner;

public class Iftest2 {
	public static void main(String[] args) {
		/*
		 * int n = 1;
		 * 
		 * if (n == 1) { System.out.println("남자"); } else if (n == 2) {
		 * System.out.println("여자"); } else { System.out.println("에러"); }
		 * System.out.println("종료");
		 */

		Scanner sc = new Scanner(System.in);
		System.out.print("0~100 사이의 정수를 입력해주세요 : ");
		int score = sc.nextInt();

		if (score >= 90) {
			System.out.println("A");
		} else if (score >= 80) {
			System.out.println("B");
		} else if (score >= 70) {
			System.out.println("C");
		} else if (score >= 60) {
			System.out.println("D");
		} else {
			{
				System.out.println("F");
			}

		}
	}
}
