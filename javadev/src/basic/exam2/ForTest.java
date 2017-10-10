// 1~1000까지 3의 배수의 합계를 구하세요
package basic.exam2;

public class ForTest {
	public static void main(String[] args) {
		int sum = 0;
		for (int i = 1; i <= 1000; i++) {
			if (i % 3 == 0)
				sum += i;
		}
		System.out.println(sum);
	}
}