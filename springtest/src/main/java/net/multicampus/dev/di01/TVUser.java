package net.multicampus.dev.di01;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {
	public static void main(String[] args) {
		ApplicationContext context = new GenericXmlApplicationContext(TVUser.class, "beaninit.xml");
		
		TV tv = (TV) context.getBean("samsungTV");
		
		tv.powerOn();
		tv.powerOff();
		tv.channelUp();
		tv.channelDown();
		tv.soundUp();
		tv.soundDown();
		
	}
}
