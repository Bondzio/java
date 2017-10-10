package conversation;

import java.util.Calendar;
import java.util.Scanner;

public class ConversationScenario1 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("안녕하세요. 비케이치킨입니다. ");
		System.out.println("비케이오리지널, 비케이허니컴보, 비케이레드컴보가 있습니다.");
		System.out.print("어떤메뉴를 주문하시겠습니까? > ");
		String input = sc.nextLine().trim();
		
		System.out.print("음료또는 사이드 메뉴를 추가하시겠습니까? > ");
		input = sc.nextLine().trim();
		
		if(input.equals("예")) {
			System.out.print("추가 가능한 음료 및 사이드 메뉴는");
			System.out.print("콜라, 사이다, 맥주, 고구마튀김, 샐러드, 구운계란");
			System.out.println("입니다.");
			System.out.print("주문하실 품목을 알려주세요 > ");
			input = sc.nextLine().trim();
		}
		System.out.println("주소를 알려주세요 >");
		input = sc.nextLine().trim();
		Calendar c = Calendar.getInstance();
		c.add(Calendar.MINUTE, 30);
		System.out.println("도착 예상 시간은 " + c.get(Calendar.HOUR_OF_DAY) + "시 " + 
		c.get(Calendar.MINUTE) + "분 입니다." );
		sc.close();
				
		/*
		메인메뉴
			비케이오리지널
			비케이허니컴보
		 	비케이레드컴보
			
		서브메뉴
			콜라
			사이다
			맥주
			고구마튀김
			샐러드
			구운계란
			
		주소
		메시지출력
		
	 	*/
	}
}
