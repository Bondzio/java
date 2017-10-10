package text_to_speech;

import java.util.List;

import org.springframework.stereotype.Component;

import com.ibm.watson.developer_cloud.text_to_speech.v1.TextToSpeech;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.Voice;

@Component("service") // Text2SpeechServiceImpl을 미리 instance화 시켜 놓겠다. Text2SpeechServiceImpl text2SpeechServiceImpl = new ... 로 만들어져 있다. 
public class Text2SpeechServiceImpl extends TextToSpeech implements Text2SpeechService {

	public Text2SpeechServiceImpl() {
		setUsernameAndPassword("eff925c7-a600-4580-85f1-fb5e47722215", "BfLLXHTwIV8Z");
		// constructor. once a instance made, the authentification is proceed
		// automatically.
	}

	public List<Voice> getVoiceList() throws Exception {
		return getVoices().execute();
	}
}
