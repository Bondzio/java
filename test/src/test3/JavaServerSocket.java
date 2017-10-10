package test3;

import java.io.FileOutputStream;
import java.io.InputStream;
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
					//ObjectInputStream ois = new ObjectInputStream(socket.getInputStream()); // socket을 이용해서 입력용 stream하나, 출력용 stream 하나 를 열었다.
					InputStream ois = socket.getInputStream(); // socket을 이용해서 입력용 stream하나, 출력용 stream 하나 를 열었다.
					byte[] readBytes = new byte[1024];
					int readByteCount=-1;
					
					readByteCount = ois.read(readBytes);
					String fileName = new String(readBytes, 0, readByteCount, "UTF-8");
					fileName = fileName.trim();

					System.out.println(fileName + " 파일을 전송받고 있습니다.... ");
					String filePath ="C:/dev/upload/" + fileName; 
					FileOutputStream fos = new FileOutputStream(filePath);
					
					while((readByteCount = ois.read(readBytes)) != -1) {
						fos.write(readBytes, 0, readByteCount);
					}
					System.out.println("완료~@!");
					fos.close();
					ois.close();
					socket.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
}