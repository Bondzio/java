package basic.exam4;

public class ArrayTest3 {
	public static void main(String[] args) {
		//int               [열]
		//int           [행][열]
		//int       [표][행][열]
		//int [더미][표][행][열]
		
		int[][] score = 
		{
				{100,90,80,70},
				{ 90,80,70,60},
				{ 80,70,60,50}
		};
		
		System.out.println("국어\t영어\t수학\t철학\t총점\t평균");
				
		// int rowlen = score.length;
		for(int row=0; row < score.length; row++) { // rowlen 을 만들어 주면, 대용량 데이터를 다룰 때 score.length 보다 매번 찾아가야 되는 수고를 덜 수 있다.
			int sum=0;
			for (int col=0; col < score[row].length; col++){
				sum+=score[row][col];
				System.out.print(score[row][col] + "\t");
			}
			
			System.out.println(sum+"\t" + (sum / score[row].length));
		}		
	}
}
