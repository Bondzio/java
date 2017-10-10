package basic.exam3;

import java.util.Calendar;

public class CalendarExmaple {
	public static void main(String[] args) {
		Calendar now = Calendar.getInstance(); // 라인을 실행하는 이 시간에 바로 날자로 만들어 준다.
												// getInstance안에 new가 ㅇㅆ고
												// calendar type으로 return
		/*
		 * public static Calendar getInstance() { return
		 * createCalendar(TimeZone.getDefault(),
		 * Locale.getDefault(Locale.Category.FORMAT)); }
		 */
//		now.set(2017,5,18); // 강제로 일자를 셋팅 월에 -1 주의
		now.set(Calendar.DATE, 1); 
//		now.add(Calendar.DATE, 5); // 날짜에 5일을 더해줌. 
		int year = now.get(Calendar.YEAR); /// YEAR라고 하는 상수가 이미 정해져 있다.
		int month = now.get(Calendar.MONTH) + 1; /// MONTH 정보는 반드시 +1을 해 줘야 된다.
		int date = now.get(Calendar.DATE); ///
		int week = now.get(Calendar.DAY_OF_WEEK);
		int day = now.get(Calendar.DAY_OF_MONTH);
		String strWeek = null;

		switch (week) {
		case Calendar.MONDAY:
			strWeek = "월";
			break;
		case Calendar.TUESDAY:
			strWeek = "화";
			break;
		case Calendar.WEDNESDAY:
			strWeek = "수";
			break;
		case Calendar.THURSDAY:
			strWeek = "목";
			break;
		case Calendar.FRIDAY:
			strWeek = "금";
			break;
		case Calendar.SATURDAY:
			strWeek = "토";
			break;
		default:
			strWeek = "일";
		}

		int amPM = now.get(Calendar.AM_PM);
		String strAmPm = null;
		if (amPM == Calendar.AM) {
			strAmPm = "오전";
		} else {
			strAmPm = "오후";
		}

		int hour = now.get(Calendar.HOUR);
		int minute = now.get(Calendar.MINUTE);
		int second = now.get(Calendar.SECOND);

		System.out.println("년도 : " + year);
		System.out.println("월   : " + month);
		System.out.println("일   : " + date);
		System.out.println("몇번째 요일 : " + week);
		System.out.println("요일 : " + strWeek);
		System.out.println("마지막날 : " + now.getActualMaximum(Calendar.DATE));
		
		// 년도와 일을 입력받고, 해당 년도와 월의 1일로 바꾼다. 그 1일의 요일을 알아내고, 마지막 날이 몇일까지인지 알아낼 수 있다. 
		// 7의 배수일때 엔터를 쳐준다. 달력알고리즘. 
		
/*		System.out.println(strAmPm);
		System.out.print("시 : " + hour+"시");
		System.out.print("분 : " + minute+"분");
		System.out.print("초 : " + second+"초");*/
		
		
		
	}

}
