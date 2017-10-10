package api;

public class StringTest2 {
	public static void main(String[] args) {
		String str1 = "안녕하세요";
		String str2 = "안녕하세요";
		
		if (str1 == str2) {
			System.out.println("같다");
		} else {
			System.out.println("다르다");
		}
		if (str1.equals(str2)) {
			System.out.println("같다");
		} else {
			System.out.println("다르다");
		}

		String str3 = new String("안녕하세요");  
		String str4 = new String("안녕하세요");   //인스턴스가 새로 만들어 진다. 
		
		/*System.out.println(str1==str2);
		System.out.println(str2==str3);
		System.out.println(str3==str4);*/
		
		if (str3 == str4) {
			System.out.println("같다");
		} else {
			System.out.println("다르다");
		}
		
		if (str3.equals(str4)) {
			System.out.println("같다");
		} else {
			System.out.println("다르다");
		}
			
	}
}
