// Built on the 19th Jun 17'

package basic.exam3;

import java.util.Calendar;
import java.util.Scanner;

public class CalendarPractice {
	public static void main(String[] args) {

		Calendar now = Calendar.getInstance();  // shift + f2 혹은 ctrl 
		Scanner sc = new Scanner(System.in); // 년, 월
		System.out.print("년도 : ");
		int year = sc.nextInt();
		System.out.print("월   : ");
		int month = sc.nextInt();
						
		now.set(year, month -1, 1);
		int lastDate = now.getActualMaximum(Calendar.DATE);
		int week= now.get(Calendar.DAY_OF_WEEK);		
							
		System.out.println(year + "년   " + month + "월 ");
		System.out.println("---------------------");
		System.out.println("일 월 화 수 목 금 토");
		System.out.println("---------------------");
		
		
		for (int d=1;d<week; d++){
			System.out.print("   ");
		}
		
		for(int i=1; i<=lastDate; i++, week++)
		{
			System.out.print( i<10 ? " "+ i + " " : i + " ");
			if (week%7==0) System.out.println();
		}	
				
	}
}
