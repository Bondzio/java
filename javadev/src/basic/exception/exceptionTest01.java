package basic.exception;

public class exceptionTest01 {
	public static void main(String[] args) {
		String str = "nulㄴㅇㄹㄴㅇㄹl";
		
		
		try  {
			System.out.println(str.toString()); //throw new NullPointerException();
//			System.out.println(10/0);
			
		} catch(NullPointerException | NumberFormatException e){ // 서브 클래스가 위쪽으로 super class가 아래 쪽으로 온다. 
			System.out.println("개체 할당이 안되었음 ㅠㅠ");
		
		} catch (Exception e) {  // Exception e = new NullPointerException; (Upcasting)
			e.printStackTrace();
			
		} finally { // 예외에 걸리든 안 걸리든 무조건 수행하게 됨. 자원의 반납, 문자열전송시 플러시?   
			System.out.println("무조건 수행");
			
		}	
		System.out.println("종료");
				
	}
}
