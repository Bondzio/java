package oop.exam5;

public class Point3D extends Point2D{
	int z;

	@Override
	public String toString() {
		return "Point3D [z=" + z + ", x=" + x + ", y=" + y + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
}
