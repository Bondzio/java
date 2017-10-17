package com.bkpark.pilot.nlu;

import java.util.ArrayList;
import java.util.List;

import com.ibm.watson.developer_cloud.natural_language_understanding.v1.NaturalLanguageUnderstanding;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalysisResults;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalyzeOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.EmotionOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.Features;

public class NLUExample3 {
	 private static String username = "53d530da-ecad-413f-a057-c527405e6ce7";
	 private static String password = "83EwV4o8Xv7x";
	 private static String url="www.bbc.com/news/world-europe-41646142";
	 private static String text = "The US has called for \"calm\" after Iraqi government forces seized the northern city of Kirkuk and key installations from Kurdish control.\r\n" + 
	 		"State department spokeswoman Heather Nauert urged all parties to \"avoid further clashes\".\r\n" + 
	 		"Iraqi soldiers moved into Kirkuk three weeks after the Kurdistan Region held a controversial independence referendum.\r\n" + 
	 		"They are aiming to retake areas under Kurdish control since Islamic State militants swept through the region.\r\n" + 
	 		"Residents of Kurdish-controlled areas, including Kirkuk, overwhelmingly backed secession from Iraq in a vote on 25 September.\r\n" + 
	 		"While Kirkuk is outside Iraqi Kurdistan, Kurdish voters in the city were allowed to take part.\r\n" + 
	 		"Iraqi Prime Minister Haider al-Abadi had denounced the vote as unconstitutional. But the Kurdistan Regional Government (KRG) insisted it was legitimate.";
	
	public static void main(String[] args) {
		NaturalLanguageUnderstanding service = new NaturalLanguageUnderstanding(NaturalLanguageUnderstanding.VERSION_DATE_2017_02_27);
		service.setUsernameAndPassword(username, password);
		
		List<String> targets = new ArrayList<String>();
		targets.add("spain");
		targets.add("separatists");
		
		EmotionOptions emotions = new EmotionOptions.Builder().targets(targets).build();
		
		Features features = new Features.Builder().emotion(emotions).build();
		
		AnalyzeOptions parameters = new AnalyzeOptions.Builder().url(url).features(features).build();
		AnalysisResults response = service.analyze(parameters).execute();
		System.out.println(response);
		
	}
}
