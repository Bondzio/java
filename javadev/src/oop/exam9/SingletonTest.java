package oop.exam9;

public class SingletonTest {
	public static void main(String[] args) {
		Singleton s1 = Singleton.getInstance();		
		System.out.println(s1 + " 1:" + s1.hashCode());
		
		Singleton s2 = Singleton.getInstance();
		System.out.println(s2 + " 2:" + s2.hashCode());
		
		Singleton s3 = Singleton.singleton;
		System.out.println(s3 + " 3:" + s3.hashCode());
		
// hashcode가 다르면, 문자열을 제외하고는 무조건 다른 instance입니다. 
	}
}
