package test2;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;

public class JavaClientSocket {
	public static void main(String[] args) {
		try {
			Socket socket = new Socket("70.12.50.53", 8667);
			System.out.println("클라이언트 소켓 생성");
			ObjectOutputStream oos = new ObjectOutputStream(socket.getOutputStream());
			ObjectInputStream ois = new ObjectInputStream(socket.getInputStream());
			oos.writeObject("안녕하세요? 저는 클라이언트입니다 from BK. "); // 클라이언트에서 output으로 보낸 것이 서버에서 input으로 접수됨. 
			oos.flush();
			
			Object in = ois.readObject();
			System.out.println("A message from Server :" + in);
			
			socket.close();
			System.out.print("연결이 종료됩니다.");
			
		} catch (IOException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
