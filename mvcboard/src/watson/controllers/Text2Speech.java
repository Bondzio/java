package watson.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.watson.developer_cloud.http.ServiceCall;
import com.ibm.watson.developer_cloud.text_to_speech.v1.TextToSpeech;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.Voice;

import article.controllers.AbstractController;
import article.controllers.ModelAndView;

public class Text2Speech extends AbstractController{

	@Override
	public ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) {
		TextToSpeech service = new TextToSpeech("21de6d7b-21ba-4d7c-ac61-2121c7c3599e","XjJhaP65cNW4");
		ServiceCall call = service.getVoices();
		List<Voice> voices = (List<Voice>) call.execute();
		
		return new ModelAndView("/WEB-INF/views/text2speech/text2speech.jsp", 
				"voices", 
				voices);
	}
}
