package basic.exam;

import java.util.Scanner;

public class ArithmeticTest {
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		int a;
		int b;
		System.out.print(" a: "); a = sc.nextInt();
		System.out.print(" b: "); b = sc.nextInt();
		
		
		/*a = 7;
		b = 4;*/

		System.out.println(a + "+" + b + "=" + (a + b));
		System.out.println(a + "-" + b + "=" + (a - b));
		System.out.println(a + "*" + b + "=" + (a * b));
		System.out.println(a + "/" + b + "=" + ((double)a / b)); // 정수 나누기 정수는 정수 이를 방지하려면 double type으로 강제 형변환
		System.out.println(a + "%" + b + "=" + (a % b));
				
		sc.close();
	}
}
