package kr.co.dbinv.eddy;

public class CoffeeDriveClass {
	public static void main(String[] args) {
		CoffeeMachine m1 = new CoffeeMachine();
		
		m1.setMenu("Americano");
		m1.button();
		System.out.println(m1.getMenu());
	}
}
