package oop.exam8;

public class Car {

	String company = "몽구모터스";
	String model;
	String color;
	int maxSpeed;
	
	// Constructor
	Car() {
		
	}

	Car(String model) {
		this(model, "은색", 250);
	}

	Car(String model, String color) {
		this(model, color, 250);
	}

	Car(String model, String color, int maxSpeed) {
		this.model = model;
		this.color = color;
		this.maxSpeed = maxSpeed;
	}
	
	
}
