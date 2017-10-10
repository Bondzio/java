package test3;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.Socket;

public class JavaClientSocket {
	public static void main(String[] args) {
		try {
			Socket socket = new Socket("70.12.50.52", 8667);
			System.out.println("클라이언트 소켓 생성");
			//ObjectOutputStream oos = new ObjectOutputStream(socket.getOutputStream());
			OutputStream oos = socket.getOutputStream();
			
			//파일 지정
			//String filePath = "C:/dev/data/departments.xlsx";
			String filePath = "C:/dev/upload/suzy.gif";
			File file = new File(filePath);
			String fileName = file.getName();
			
			//파일이름 전송
			byte[] bytes = fileName.getBytes("UTF-8");
			oos.write(bytes);
			
			//보조기억장치에서읽음. 
			System.out.println(filePath + " 경로를 읽습니다");
			System.out.println(fileName + " 파일을 전송합니다");
			FileInputStream fis = new FileInputStream(file);
			int readByteCount;
			byte[] readBytes = new byte[1024];
			
			//서버로 전송
			while((readByteCount = fis.read(readBytes)) != -1) {
				oos.write(readBytes, 0, readByteCount);
			}
			oos.flush(); //아주 약간 남아 있는거 FLUSH 
			
			System.out.print("파일보내기완료.");
			oos.close();
			socket.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}