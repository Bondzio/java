package basic.exception;

import java.io.FileWriter;
import java.io.IOException;

public class LoginFailException extends RuntimeException{
	public LoginFailException (String error_msg, MemberVO memberVO){
		super(error_msg);
//		Date today = new Date();
		// File f = new File("log.txt");
		try {
			FileWriter fw = new FileWriter("log.txt", true);
			fw.write("아래와 같은 로그인 시도가 있었음\n");
			fw.write(memberVO.toString() + "\n");
//		 	fw.write(today);
			fw.close();
		} 
			catch (IOException e) {
			e.printStackTrace();
		}		
	}
}
