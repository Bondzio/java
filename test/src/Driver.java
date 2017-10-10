import java.io.*;

public class Driver {
	public static void main(String[] args) {
		if (args.length != 1) {
			System.out.println("���� �ȳ� - JAVA Driver ���ϸ�.txt �� �Է��ϼ���");
		} else {
			try {
				String s;
				int i = 0;
				BufferedReader in = new BufferedReader(new 

FileReader(args[0]));
				while ((s = in.readLine()) != null) {
					System.out.println(s);
					i++;
				}
				in.close();
				System.out.println("Number of lines is "+i);
			} catch (IOException e) {
				System.err.println(e);
				System.exit(1);
			}
		}
	}

}