import java.io.*;

public class Read_and_Print {
	public static void main(String[] args) {

		if (args.length != 1) {
			System.out.println("���� Ŭ������ ���ϸ�");
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
				System.out.println("���μ�: "+i);
			} catch (IOException e) {
				System.err.println(e);
				System.exit(1);
			}
		}
	}
}
