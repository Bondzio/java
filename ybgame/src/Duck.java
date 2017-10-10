import java.nio.file.StandardOpenOption;

public class Duck {
	int size;

	public Duck(){
		System.out.println("Quack Quack");
	}
	
	public Duck(int size) {
		System.out.println("Quack");
		this.size = size;
		System.out.println("Size is" + size);
	}
}
