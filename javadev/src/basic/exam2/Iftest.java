package basic.exam2;

public class Iftest {
	public static void main(String[] args) {
		/*
		 * int n = 1;
		 * 
		 * if (n == 1) { System.out.println("남자"); } else if (n == 2) {
		 * System.out.println("여자"); } else { System.out.println("에러"); }
		 * System.out.println("종료");
		 */
// 
//		Scanner sc = new Scanner(System.in);
//		System.out.print("0~100 사이의 정수를 입력해주세요 : ");
//		int score = sc.nextInt();
//		
		int score = (int)(Math.random()*101); 
		System.out.print("점수는 :" + score +"\n" + "등급은 :");
		
		if (100 >= score && score>=0) {
			if (score >= 90) {
				System.out.print("A");
			} else if (score >= 80) {
				System.out.print("B");
			} else if (score >= 70) {
				System.out.print("C");
			} else if (score >= 60) {
				System.out.print("D");
			} else {
				System.out.print("F");
			}
		
//		System.out.println(
//			score >=90 ? "A" :
//			score >=80 ? "B" :
//			score >=70 ? "C" :
//			score >=60 ? "D" :
//			  			 "F");
	} else {System.out.print("잘못된 값을 입력했습니다.");}
}
}

