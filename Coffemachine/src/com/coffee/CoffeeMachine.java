package com.coffee;

public class CoffeeMachine {
	int n=0;
	Coffee c;
	public int getN() {
		return n;
	}
	public void setN(int n) {
		this.n = n;
	}
	public Coffee getC() {
		return c;
	}
	public void setC(Coffee c) {
		this.c = c;
	}
	public void button(){
		c.giveMeOneShot();
	}
}