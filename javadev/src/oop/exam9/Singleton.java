package oop.exam9;

public class Singleton {

	static Singleton singleton = null; // 자기 자신을 참조하는 static 변수를 만든다. static 으로 공유할수 있다. 
	private Singleton(){}; // 외부 instance생성 금지 
	
	static Singleton getInstance() { // Static으로 해 줘야 instance를 만들지 않고도 getInstance()를 실행 
		if (singleton == null) 
			singleton = new Singleton();
		return singleton;
	}
	
	@Override
	public String toString() {
		return "포기하면 편해!";
	}
}

/*
 1. 생성자를 private으로 만든다. 클래스 내부에서밖에 접근이 안됨.
 2. 자기 자신을 참조하는 공유 변수를 선언해두고 인스턴스를 생성 후 참조 
 3. 공유변수를 리턴하는 getter 를 만든다. 공유변수를 return 한다. 
 4. 오직 처음 한번만 instance를 만들게 하고 return 시킨다.
 5. 사용 수행하는 클래스에서 new 형태가 이날 클래스이름.getter메소드() 형태로 

*/