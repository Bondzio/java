package net.multicampus.dev.di01;

import org.springframework.stereotype.Component;

@Component("orange")
public class OrangeSpeaker implements Speaker {

	@Override
	public void soundUp() {
		System.out.println("오렌지스피커 : 소리를 키웁니다. ");
	}

	@Override
	public void soundDown() {
		System.out.println("오렌지스피커 : 소리를 낮춥니다. . ");

	}

}
