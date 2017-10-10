package api;

public class StringTest4 {
	public static void main(String[] args) {
		String str = "쟁반노래방이 100분 토론 시청률을 뺏어갔지요";
		System.out.println(str.charAt(10));
		System.out.println(str.indexOf("쟁"));
		System.out.println(str.lastIndexOf("쟁"));
		System.out.println(str.length());
		System.out.println(str.replace("쟁반", "정글"));
		System.out.println("Jungle".toLowerCase());
		System.out.println("Jungle".toUpperCase());
		System.out.println(str.substring(2, 4));
		System.out.println(str.substring(2));
	}
}
