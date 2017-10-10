import java.io.*;

public class Read_and_Print {
	public static void main(String[] args) {

		if (args.length != 1) {
			System.out.println("사용법 클래스명 파일명");
		} else {
			try {
				BufferedReader inputStream = new BufferedReader(new FileReader(args[0]));
				String s;
				int i=0;
				while ((s = inputStream.readLine()) != null) {
					System.out.println(s);
					i=i+1;
				}
				inputStream.close();
				System.out.println("라인수: "+i);
			} catch (IOException e) {
				System.err.println(e);
				System.exit(1);
			}
		}
	}
}
