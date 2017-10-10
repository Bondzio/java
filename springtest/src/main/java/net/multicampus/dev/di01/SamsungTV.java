package net.multicampus.dev.di01;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Component;
@Component
public class SamsungTV implements TV{
	
	@Inject
	@Resource(name="banana")
	private Speaker speaker;
			
/*	public Speaker getSpeaker() {
		return speaker;
	}
	public void setSpeaker(Speaker speaker) {
		this.speaker = speaker;
	}*/
	public void powerOn() {
		System.out.println("SamsungTV : tv를 켭니다.");
			
	}
	public void powerOff() {
		System.out.println("SamsungTV : tv를 끕니다.");
		
	}
	public void channelUp() {
		System.out.println("SamsungTV : 채널을 올립니다.");
		
	}
	public void channelDown() {
		System.out.println("SamsungTV : 채널을 내립니다.");
		
	}
	public void soundUp() {
		if (speaker==null) {
			System.out.println("SamsungTV : 소리를 키웁니다. ");	
		} else {
			speaker.soundUp();
		}
	}
	public void soundDown() {
		if (speaker==null) {
			System.out.println("SamsungTV : 소리를 낮춥니다. ");	
		} else {
			speaker.soundDown();
		}
	}
}