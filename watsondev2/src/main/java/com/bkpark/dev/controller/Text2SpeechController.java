package com.bkpark.dev.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.watson.developer_cloud.text_to_speech.v1.TextToSpeech;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.AudioFormat;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.Voice;

@Controller // 웹서버가 처음 켜질때 인식해서 bean을 생성해놓는다. 
public class Text2SpeechController {

	@RequestMapping("hello")
	public ModelAndView hello() {
		return new ModelAndView("hello","msg", "Hello MVC");
	}
	
	@RequestMapping("display")
	public ModelAndView display_voice() {
		TextToSpeech service = new TextToSpeech("eff925c7-a600-4580-85f1-fb5e47722215", "BfLLXHTwIV8Z");
		List<Voice> voices = service.getVoices().execute();
		return new ModelAndView("hello", "voices", voices);
	}
	
	@RequestMapping("test")
	public ModelAndView test_voice() {
		return new ModelAndView("test", "test", "testtest");
	}
	
	@RequestMapping("Speaker")
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String statement = request.getParameter("statement");
		String voice = request.getParameter("voice");*/
		
		String statement = "hello";
		String voice = "es-US_SofiaVoice";

		response.setContentType("application/octet-stream");
		response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode("voice.ogg", "UTF-8"));

		TextToSpeech service = new TextToSpeech("21de6d7b-21ba-4d7c-ac61-2121c7c3599e","XjJhaP65cNW4"); //By Constructor, it may be instanced as it looks.
		InputStream is = service.synthesize(statement, new Voice(voice, null, null), AudioFormat.OGG).execute();
		OutputStream os = response.getOutputStream();
			  
		byte[] buffer = new byte[1024];
		int length;
		while ((length = is.read(buffer)) > 0) {
		   os.write(buffer, 0, length);
		}		  
		os.close();
		is.close();
		
	  }
}
