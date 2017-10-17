package com.bkpark.pilot.controller;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class Test {
	public static void main(String[] args) {

		String a = "{ \"language\": \"en\", \"usage\": { \"features\": 1 }, \"emotion\": { \"document\": { \"emotion\": { \"anger\": 0.019641, \"disgust\": 0.002507, \"fear\": 0.006722, \"joy\": 0.427145, \"sadness\": 0.016158 } } } }";
		JSONParser parser = new JSONParser();
		 try {

	            Object obj = parser.parse(a);

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
	            

	        } catch (ParseException e) {
	            e.printStackTrace();
	        }
	}
}
