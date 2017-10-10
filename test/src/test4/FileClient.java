package test4;
// [클라이언트 프로그램]
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.Socket;

public class FileClient {
	public static void main(String[] args) throws Exception {
			// 소켓과 출력스트림을 생성하는 코드 작성
			Socket socket = new Socket("70.12.50.52", 5005); 
			OutputStream oos = socket.getOutputStream();
			
			String filePath ="C:/James_Gosling.jpg";
			File file = new File(filePath);
			String fileName=file.getName();
			
			// 파일 이름이 저장된 바이트를 보내는 코드 작성
			byte[] bytes = fileName.getBytes("UTF-8");
			oos.write(bytes);
			
			System.out.println("[파일 보내기 시작] " + fileName);
			
			// 파일 데이터를 100 바이트씩 보내는 코드 작성
			FileInputStream fis = new FileInputStream(file);
			int readByteCount;
			byte[] readBytes = new byte[100];
			
			while((readByteCount = fis.read(readBytes)) != -1) {
				oos.write(readBytes, 0, readByteCount);
			}
			oos.flush(); 
			System.out.print("파일보내기완료.");
			oos.close();
			socket.close();
		
	}
}