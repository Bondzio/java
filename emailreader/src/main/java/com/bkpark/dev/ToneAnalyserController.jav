package com.bkpark.dev;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.ibm.watson.developer_cloud.tone_analyzer.v3.ToneAnalyzer;
import com.ibm.watson.developer_cloud.tone_analyzer.v3.model.ElementTone;
import com.ibm.watson.developer_cloud.tone_analyzer.v3.model.ToneAnalysis;
import com.ibm.watson.developer_cloud.tone_analyzer.v3.model.ToneOptions;

@RestController
public class ToneAnalyserController {
	
	private static Logger logger = LoggerFactory.getLogger(ToneAnalyserController.class);
	
	@RequestMapping(value="watsontone")
	public ElementTone watsontone(String json_data) {
	
		final String VERSION_DATE = "2016-05-19";
		ToneAnalyzer service = new ToneAnalyzer(VERSION_DATE);
		service.setUsernameAndPassword("7b50d7bc-8f4e-4c7d-8b4a-3f92224d0206", "vfIiOxqX1737");
		JsonParser jParser = new JsonParser();
		JsonObject jObject = (JsonObject) jParser.parse(json_data);
		ToneOptions options = new ToneOptions.Builder().build();
		ToneAnalysis tone = service.getTone(jObject.get("text").getAsString(), options).execute();
		System.out.println(tone.getDocumentTone());
		return tone.getDocumentTone();
		
	}
	
}
