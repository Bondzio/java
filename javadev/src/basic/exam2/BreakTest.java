package basic.exam2;

public class BreakTest {
	public static void main(String[] args) {
		int sum = 0;
		int i=1;
		START:
		while (true) {
			sum += i;
			if (sum >= 30 ) break START; // 내가 속한 첫번째 반복문의 블럭을 빠져나온다.
			i++;
		}
		System.out.println("1부터 " + i + "까지 정수의 합계는 " + sum);
	}
}
