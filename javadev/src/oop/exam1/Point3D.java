package oop.exam1;

public class Point3D extends Point2D {
	private int z;

	public int getZ() {
		return z;
	}

	public void setZ(int z) {
		this.z = z;
	}
	
	@Override // metatag , compiler 나 jvm에 정보를 제공함.지금은 없어도 된다. 
	public void print() { // method 오버라이딩 overriding, 기존 기능 무시하고 내가 재정의
		super.print(); // x,y를 출력하게 함.  super = 내가 상속받은 class, 상속받은 기능이 있는데 그걸 다 쳐줄필요 없다 
		System.out.println("z = " + getZ()); 
		System.out.println(super.x);
	}
}
