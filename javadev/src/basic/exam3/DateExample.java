// Built on the 19th Jun 17'

package basic.exam3;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateExample {
	public static void main(String[] args) {
		Date now = new Date();
		String strNow1 = now.toString();
		System.out.println(strNow1);

		SimpleDateFormat sdf = new SimpleDateFormat
				("yyyy년 MM월 dd일 HH시 mm분 ss초"); // 대문자 M 을 사용, 소문자 m 은 minute 한다. 대문자 HH 24시간 기준, 소문자 12시간 기준
		String strNow2 = sdf.format(now);
		System.out.println(strNow2);
	}
}

// shift + f2 를 class위에서 누르면 자바 document
// Calendar 추상 클래스 - new로 만들어낼 수 없다. 추상클래스에는 추상 메소드가 있을 것이고, 이를 상속받아 설정해저야 된다. 