package anno;

public class Service {
	
	
	@PrintAnnotation
	public void method1(){
		System.out.println("실행내용1");
	}
	@PrintAnnotation("*") // value값이 넘어간다. 
	public void method2(){
		System.out.println("실행내용2");
	}
	@PrintAnnotation(value="#", number=5) 
	public void method3(){
		System.out.println("실행내용3");
	}
}