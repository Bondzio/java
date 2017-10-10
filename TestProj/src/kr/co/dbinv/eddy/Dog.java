package kr.co.dbinv.eddy;

class Dog {
	
	private int size = 1;
	private String breed;
	private String name;

	
	public int getSize() {
		return size;
	}


	public void setSize(int size) {
		if (size > 0) {
		this.size = size;
		} else {
			System.out.println("The size should be greater than zero");
		}
	}


	public String getBreed() {
		return breed;
	}


	public void setBreed(String breed) {
		this.breed = breed;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	void bark(){
		System.out.println("Ruff Ruff");
	}
}
