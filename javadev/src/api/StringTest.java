package api;

public class StringTest {
	public static void main(String[] args) {
		/*String str="실수한다고"; //문자열 instance가 heap 에 만들어진다. 
		str += "신을 용서하지";
		str += "마세요";*/
		
		StringBuffer str = new StringBuffer();
		printString(str);
		str.append("실수란 "); printString(str);
		str.append("신을 용서하는 "); printString(str);
		str.append("인간의 "); printString(str);	
		str.append("행위이다."); printString(str);
		System.out.println(str.toString());
	
	}

	private static void printString(StringBuffer str) {
		System.out.println(str.length() + " : " + str.capacity() + ":" + str);
		
	}
}
