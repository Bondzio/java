package text_to_speech;

import java.util.List;

import com.ibm.watson.developer_cloud.http.ServiceCall;
import com.ibm.watson.developer_cloud.text_to_speech.v1.TextToSpeech;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.Voice;

public class VoiceTest {
	public static void main(String[] args) {
		TextToSpeech service = new TextToSpeech("21de6d7b-21ba-4d7c-ac61-2121c7c3599e","XjJhaP65cNW4"); //By Constructor, it may be instanced as it looks.
		//service.setUsernameAndPassword("21de6d7b-21ba-4d7c-ac61-2121c7c3599e","XjJhaP65cNW4");
				
		ServiceCall call = service.getVoices();
		List<Voice> voices = (List<Voice>) call.execute();
		for (Voice voice : voices ) {
			System.out.println(voice.getName() + ":" + voice.getLanguage());
		}
	}
}
