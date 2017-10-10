package basic.exception;

import java.util.InputMismatchException;
import java.util.Scanner;

public class ExceptionTest04 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("1-99 사이의 정수를 입력하세요");
		int n = -1;
		
		try {
			n = sc.nextInt();  // 지정된 값 이외에 범위나 문자가 들어가면 InputMismatchException 발생 
			if (!(1 <= n && n <= 99)) throw new InputMismatchException("잘못된 입력입니다");
			
			System.out.println("입력된 값은 " + n);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
