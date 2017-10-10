package basic.exam2;

public class DoWhileTest {
	public static void main(String[] args) {

		int i, j;
		i = (int) (Math.random() * 6) + 1;
		System.out.println("i =" + i);
		
		do {
			j = (int) (Math.random() * 6) + 1;		
			System.out.println("j =" + j);
		}	while (i==j);
	}
}
