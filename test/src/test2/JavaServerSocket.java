package test2;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class JavaServerSocket {
// 서버쪽과 클라이언트쪽에서는 사용하지 않는 port 하나를 이용해서 통신을 한다. 
	static final int SERVER_PORT = 8667;
	
	//port번호는 바뀌지 않으므로 static final로 지정을 할 경우가 많다. 
	public static void main(String[] args) {
			try {
				ServerSocket serverSocket = new ServerSocket(SERVER_PORT);
				System.out.println("A server socket has been created :" + SERVER_PORT);
				while(true) {
					Socket socket = serverSocket.accept(); // 응답하기 위한 대기 상태로 들어감.
					System.out.println("연결됨...");
					ObjectInputStream ois = new ObjectInputStream(socket.getInputStream()); // socket을 이용해서 입력용 stream하나, 출력용 stream 하나 를 열었다.
					ObjectOutputStream oos = new ObjectOutputStream(socket.getOutputStream()); // 중간과정은 모르겠고, 입력은 ois, 출력은 oos에 하면 된다. 
					Object in = ois.readObject();
					System.out.println(socket.getInetAddress() + "받은 메시지 : " + in);
					
					oos.writeObject("Hi there, I am Server");
					oos.flush();
					
					socket.close();
				}
			} catch (IOException | ClassNotFoundException e) {
				e.printStackTrace();
			}
	}
}