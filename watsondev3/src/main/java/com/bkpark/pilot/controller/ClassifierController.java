package com.bkpark.pilot.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ibm.watson.developer_cloud.natural_language_understanding.v1.NaturalLanguageUnderstanding;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalysisResults;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalyzeOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.EmotionOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.Features;

@RestController
public class ClassifierController {

	private static String username = "53d530da-ecad-413f-a057-c527405e6ce7";
	private static String password = "83EwV4o8Xv7x";
	
	@RequestMapping(value = "classifier", method = RequestMethod.POST)
	@ResponseBody
	public Map classify(@RequestBody String content) throws UnsupportedEncodingException {
		NaturalLanguageUnderstanding service = new NaturalLanguageUnderstanding(NaturalLanguageUnderstanding.VERSION_DATE_2017_02_27);
		service.setUsernameAndPassword(username, password);
		System.out.println(content);
				
		EmotionOptions emotions = new EmotionOptions.Builder().build();
		Features features = new Features.Builder().emotion(emotions).build();
		AnalyzeOptions parameters = new AnalyzeOptions.Builder().text(content).features(features).build();
		AnalysisResults response = service.analyze(parameters).execute();
		
		JSONParser parser = new JSONParser();
		 Map map = new HashMap();
		 try {

	            Object obj = parser.parse(response.toString());

	            JSONObject jsonObject = (JSONObject) obj;
	            System.out.println(jsonObject);

	            String name = (String) jsonObject.get("language");

	            JSONObject emotion =  (JSONObject) jsonObject.get("emotion");
	            JSONObject document =  (JSONObject) emotion.get("document");
	            JSONObject emotionGroup =  (JSONObject) document.get("emotion");
	            System.out.println("EMOTION GROUP");
	            System.out.println(emotionGroup);
	            
	            double joy =  (Double) emotionGroup.get("joy");
	            double sadness =  (Double) emotionGroup.get("sadness");
	            double disgust =  (Double) emotionGroup.get("disgust");
	            double anger =  (Double) emotionGroup.get("anger");
	            double fear =  (Double) emotionGroup.get("fear");
	            
	            System.out.println(joy);
	            System.out.println(sadness);
	            System.out.println(disgust);
	            System.out.println(anger);
	            System.out.println(fear);
	           
	            map.put("joy","joy\t" + joy);     
	            map.put("sadness","sadness\t" + sadness);
	            map.put("disgust", "disgust\t" + disgust);
	            map.put("anger","anger\t" + anger);
	            map.put("fear","fear\t" + fear);
	            

	        } catch (ParseException e) {
	            e.printStackTrace();
	        }
	
				
		return map;
	}
}
