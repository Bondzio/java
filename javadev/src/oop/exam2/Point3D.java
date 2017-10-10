package oop.exam2;

public class Point3D extends Point2D {

	private int z; 

	public int getZ() { // int z만 선언해주고 마우스 가져다대면 option 중 하나로 get/ set 를 만들 수 있음
		return z;
	}

	public void setZ(int z) {
		this.z = z;
	}
	
	@Override
	public void print() { // pr 이라고 치고 ctrl+ space
		super.print();
		System.out.println("z : "+ z);
		super.x=2;
		super.y=3;
	}
	
}

