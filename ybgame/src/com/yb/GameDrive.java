package com.yb;

public class GameDrive {

	public static void main(String[] args) {
		Soldier s = new Soldier();

		Sword sw = new Sword();
		s.setW(sw);
		s.attack();
		
		Gun g = new Gun();
		s.setW(g);
		s.attack();
	}

}


