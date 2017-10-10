package oop.exam3;

public class AnimalLover extends Human{
	private String animalType;
	private int ayear;
	
	@Override
	public String toString() {
		return super.toString() +  "\n" + 
					"키우는 동물은 " +  ayear + "년에 태어난 " + animalType + " 입니다";
	}

	public String getAnimalType() {
		return animalType;
	}

	public void setAnimalType(String animalType) {
		this.animalType = animalType;
	}

	public int getAyear() {
		return ayear;
	}

	public void setAyear(int ayear) {
		this.ayear = ayear;
	}	
	
}
