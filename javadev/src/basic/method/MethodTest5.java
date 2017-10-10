package basic.method;
import java.util.Scanner;

public class MethodTest5 {
	public static void main(String[] args) {
		System.out.println("가위바위보 게임 -  1:가위, 2:바위, 3:보 ");
		Scanner sc = new Scanner(System.in);
		int my = sc.nextInt();				
		int your = (int)(Math.random() * 3 + 1);				
			
		System.out.println("컴퓨터의 선택 :" + caption(your));						
		System.out.println("  당신의 선택 :" + caption(my));
				
		fight(your,my);			
	} // main()

	private static void fight(int your, int my) {	
		if (my == 1 && your==3 ||
				my == 2 && your==1 ||
				my == 3 && your==2) 
				System.out.println("당신의 승리입니다.");
		else if (my == your) System.out.println("비겼습니다");
		else System.out.println("당신의 패배입니다");			
	}

	private static String caption(int value) {
		switch (value) {
		case 1: return "가위";
		case 2: return "바위"; 
		case 3: return "보";	
		default : return "에러"; // 다 string type으로 넘어 가도록 해야된다. 
		}		
	} 
} 
