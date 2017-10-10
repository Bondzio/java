package basic.exam2;

public class Quiz92 {
	public static void main(String[] args) {
		int count = 0;
		for (int k = 1; k <= 3; k += 2) {
			for (int i = 1; i <= 9; i++) {
				{
					for (int j = 2 * k; j <= 5 * k; j++) {
						System.out.print(j + "*" + i + "=" + (j * i) + "\t");
						count++;
						if (count % 4 == 0)
							System.out.println();
					}
				}

			}
			System.out.println();
		}
	}
}

