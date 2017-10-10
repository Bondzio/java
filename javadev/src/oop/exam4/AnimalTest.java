package oop.exam4;

public class AnimalTest {
	public static void main(String[] args) {
//		Animal animal = new Animal();
//		System.out.println(animal);

		// Sub-type의 Instance는 Super-type으로 참조가 가능함.
		Animal animal1 = new Animal(); //  묵시적 자동 형변환 ※ UpCasting 
		System.out.println(animal1);
		
		Animal animal2 = new Bird(); //  묵시적 자동 형변환
		System.out.println(animal2);  
		
		Animal animal3 = new Eagle(); //  묵시적 자동 형변환
		System.out.println(animal3);  
		
		Animal animal4 = new Condor(); //  묵시적 자동 형변환
		System.out.println(animal4);  
		
		// Bird bird1 =  new Animal(); // 이건 에러입니다. 업캐스팅  
//		Bird bird2 = (Bird) new Animal(); // bird가 animal에 없는 기능이 있을 때 실행하려고 하면 에러가 난다.   
		
		/*Bird bird = (Bird) animal1; // 실행시에 error 발생 ( RuntimeException  다운캐스팅) 
		System.out.println(bird);
		*/
	
		
		Animal eagle = new Eagle(); // Upcasting 괜찮다. 잘 작동함.  
//		Bird bird2 = (Bird) eagle; // Downcasting 가능 .원래 eagle이었기 때문에 
//		Eagle eagle2 =  (Eagle) eagle; // Downcasting 가능 .원래 eagle이었기 때문에
//		Condor Condor2 = (Condor) eagle; // Downcasting 불가 .원래 eagle이었기 때문에, Condor자식으로 부모 Eagle을 참조 할 없다. 

		// 업캐스팅 다운캐스팅은 상속관계에서만 가능
		Tiger tiger = (Tiger) eagle;
		System.out.println(tiger);
		
		
		
		/*Animal condor = new Condor();
//		Animal condor2 = new Condor();
		Eagle condor2 = (Condor) condor;
		System.out.println(condor2);
	}*/
	
/*자식 class instance 를 super type에서 참조하는 걸 upcasing 
이를 다시 downcasiting 하려면 반드시 원래 instance보다 같거나 높아야 한다.*/  
}
}