package net.bkpark.tone;

import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ToneAnalyserController {
	
	@RequestMapping(value="watson")
	public void watson(JSONObject obj) {
		System.out.println(obj);
		
	}
	
}
