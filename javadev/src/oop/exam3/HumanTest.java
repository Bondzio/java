package oop.exam3;

public class HumanTest {
	public static void main(String[] args) {
		Human h = new Human();
		
		h.setName("이용빈");
		h.setGender(1);
		h.setYear(1987);
		h.setJob("BigData 분석가");
		h.setMarried(true);
		h.setWeight(70);
		h.setHeight(168);
		h.setHobby("서예");
		System.out.println(h);
		
		System.out.println();
		
		AnimalLover a = new AnimalLover();
		a.setName("이용빈");
		a.setGender(1);
		a.setYear(1991);
		a.setJob("AI 알고리즘 개발자");
		a.setMarried(true);
		a.setWeight(70);
		a.setHeight(180);
		a.setHobby("테니스");
		a.setAnimalType("호랑이");
		a.setAyear(1999);
		System.out.println(a);
		
	}
}
