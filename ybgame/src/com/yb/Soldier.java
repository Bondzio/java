package com.yb;

public class Soldier {
	int height;
	int weight;
	Weapon w; // has-a °ü°è

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public Weapon getW() {
		return w;
	}

	public void setW(Weapon w) {
		this.w = w;
	} 
	
	public void attack() {
		w.useWeapon();
	}
	
	
}
