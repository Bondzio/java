package com.baseball;

public class Player {
	int height;
	int weight;
	Equipment e;

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

	public Equipment getE() {
		return e;
	}

	public void setE(Equipment e) {
		this.e = e;
	}

	public void Play() {
		e.wearEquip();
	}
}
