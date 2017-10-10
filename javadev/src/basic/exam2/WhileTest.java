// Quiz 10: 박병규 ~ 100 : 박병규
// 1-1000까지 3의 배수의 합계를 구하세요

package basic.exam2;

public class WhileTest {
	public static void main(String[] args) {

		int i = 1;
		while (i <= 10) {
			System.out.println(i * 10 + ": 박병규");
			i++;
		}

		i = 1;
		int sum = 0;
		while (i <= 1000) {
			if (i % 3 == 0)	sum += i;
			i++;
		}
		
		System.out.println("\n1~1000까지의 3의 배수 합계는 :" + sum);
	}
}
