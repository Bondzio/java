package java170420;

public class GoodDogTestDrive {
	public static void main(String[] args) {
		/* GoodDog one = new GoodDog();
		one.setSize(70);
		GoodDog two = new GoodDog();
		two.setSize(8); */
		
		GoodDog[] Puppy = new GoodDog[3];
		Puppy[0]= new GoodDog();
		Puppy[1]= new GoodDog();
		Puppy[2]= new GoodDog();
		
		Puppy[0].setSize(12);
		Puppy[1].setSize(2);
		Puppy[2].setSize(80);
		
		Puppy[0].bark();
		Puppy[1].bark();
		Puppy[2].bark();
		
		/* System.out.println("Dog one:" + one.getSize());
		System.out.println("Dog two:" + two.getSize());
		one.bark();
		two.bark(); */
	}
}
