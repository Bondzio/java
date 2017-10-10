//가위바위보
package basic.exam2;
import java.util.Scanner;
public class Quiz6 {
	public static void main(String[] args) {
		String [] caption = {"가위","바위","보"}; // 강사님이 가르쳐준 간략화된 부분. 
		System.out.println("가위바위보 게임 -  1:가위, 2:바위, 3:보 ");
		
		Scanner sc = new Scanner(System.in);
		int my = sc.nextInt();
				
		int your = (int) (Math.random() * 3 + 1);

		System.out.println("컴퓨터의 선택 :" + caption[your-1]);
		System.out.println("당신  의 선택 :" + caption[my-1]);
		
/*			
// 당신(컴퓨터)의 초이스
		switch (your) {
		case 1:
			System.out.println("컴퓨터	 : 가위");
			break;
		case 2:
			System.out.println("컴퓨터	 : 바위");
			break;
		case 3:
			System.out.println("컴퓨터	 : 보");
			break;
		}

// 나의 초이스
		switch (my) {
		case 1:
			System.out.println("나 	: 가위");
			break;
		case 2:
			System.out.println("나 	: 바위");
			break;
		case 3:
			System.out.println("나	 : 보");
			break;
		}
*/
		
// 승부의 단계
		switch (my - your) {
		case -2: // 이김
		case 1: {
			System.out.println("당신의 승리");
				break;
			}
		
		case 0: // 비김
			System.out.println("무승부");
			break;
			
		case 2:
		case -1: // 짐
			System.out.println("컴퓨터의 승리");
			break;
		}
		sc.close();

// 이기는 경우
		if (my == 1 && your==3 ||
			my == 2 && your==1 ||
			my == 3 && your==2) 
			System.out.println("당신의 승리입니다.");
		else if (my == your) System.out.println("비겼습니다");
		else System.out.println("당신의 패배입니다");
		
	}
}


//my, your를 가지고 더해 봤더니 변별이 안된다. 빼봤더니 구분이 되더라. 
//(my-your +3)%3) = case 1 2 3 으로 간단해진다. 그러나 유지보수가 안된다. 