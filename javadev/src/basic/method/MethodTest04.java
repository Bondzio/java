package basic.method;
import java.util.Scanner;

public class MethodTest04 {
	public static void main(String[] args) {
		System.out.println("가위바위보 게임 -  1:가위, 2:바위, 3:보 ");
		Scanner sc = new Scanner(System.in);
		int my = sc.nextInt();				
		int your = (int)(Math.random() * 3 + 1);				
			
		System.out.print("컴퓨터의 선택 :" );
		caption(your);
						
		System.out.print("  당신의 선택 :" );
		caption(my);
		
		fight(your,my);			
	} // main()

	private static void fight(int your, int my) {
		// TODO Auto-generated method stub
		if (my == 1 && your==3 ||
				my == 2 && your==1 ||
				my == 3 && your==2) 
				System.out.println("당신의 승리입니다.");
		else if (my == your) System.out.println("비겼습니다");
		else System.out.println("당신의 패배입니다");			
	}

	private static void caption(int value) {
		switch (value) {
		case 1:
			System.out.println("가위");			break;
		case 2:
			System.out.println("바위");			break;
		case 3:
			System.out.println("보");			break;
		default :
			System.out.println("에러");			break;			
		} // switch				
	} // caption ()
} // MethodTest4 class()
