package basic.enumeration;

import java.util.Calendar;

public class EnumWeekExample {
	public static void main(String[] args) {
		Week today = null;
		
		Calendar cal = Calendar.getInstance();
		int week = cal.get(Calendar.DAY_OF_WEEK);
		
		switch(week){
		case 1 :
			today = Week.SUNDAY; break;
		case 2 :
			today = Week.MONDAY; break;
		case 3 :
			today = Week.TUESDAY; break;
		case 4 :
			today = Week.WEDNESDAY; break;
		case 5 :
			today = Week.THURSDAY; break;
		case 6 :
			today = Week.FRIDAY; break;
		case 7 :
			today = Week.SATURDAY; break;		
		}
		
		System.out.println("오늘 요일 : " + today);
		System.out.println(today.ordinal());
		System.out.println(today.compareTo(Week.WEDNESDAY)); // 차를 만들어 줌 
		
		
		Week [] weeks = Week.values();
		for (Week w : weeks) System.out.println(w); 
		
		if(today== Week.SUNDAY || today==Week.THURSDAY) {
			System.out.println(today + "에는 떡잠을 잡니다");
		} else {
			System.out.println("평소에는 그냥 잠을 잡니다. ");
		}
	}
}
