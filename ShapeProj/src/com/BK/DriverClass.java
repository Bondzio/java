package com.BK;

public class DriverClass {

	public static void main(String[] args) {
		Shape s1 = new Circle();
		s1.rotate();
		s1.playsound();

		Shape s2 = new Amoeba();
		s2.rotate();
		s2.playsound();
		
		Amoeba a1;
		
		a1 = (Amoeba) s2;
		
		a1.sayHello();
	}

}
