package com.baseball;

public class PlayBall {
	public static void main(String[] args) {
		Player bk = new Player();
		Equipment e = new Ball();
		bk.setE(e);
		bk.Play();
	}
}
