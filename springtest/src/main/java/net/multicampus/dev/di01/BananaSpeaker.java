package net.multicampus.dev.di01;

import org.springframework.stereotype.Component;

@Component("banana")
public class BananaSpeaker implements Speaker {

	@Override
	public void soundUp() {
		System.out.println("바나나스피커 소리를 키웁니다. ");
	}

	@Override
	public void soundDown() {
		System.out.println("바나나스피커 소리를 낮춥니다. . ");

	}

}
