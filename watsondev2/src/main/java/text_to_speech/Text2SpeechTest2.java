package text_to_speech;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Text2SpeechTest2 {

	public static void main(String[] args) throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext("text_to_speech/beaninit.xml");
		Text2SpeechService service = (Text2SpeechService) context.getBean("service"); 
		// as the return type being unknown, downcasting (Text2SpeechService) was given // 주입을 받아서 쓸 수 있다.  		
		//Text2SpeechService service = new Text2SpeechServiceImpl(); // upcasting
		System.out.println(service.getVoiceList());
	}

}
