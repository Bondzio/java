package com.coffee;

public class TestCoffeeMachine {
	public static void main(String[] args) {
		CoffeeMachine N = new CoffeeMachine();
		
		Coffee t = new Coffee();
		N.setC(t);
		N.button();
		
		Americano a = new Americano();
		N.setC(a);
		N.button();	
		
		Espresso b = new Espresso();
		N.setC(b);
		N.button();
		
		FlatWhite c = new FlatWhite();
		N.setC(c);
		N.button();
	}
}
