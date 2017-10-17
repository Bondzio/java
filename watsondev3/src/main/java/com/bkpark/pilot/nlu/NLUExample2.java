package com.bkpark.pilot.nlu;

import com.ibm.watson.developer_cloud.natural_language_understanding.v1.NaturalLanguageUnderstanding;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalysisResults;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalyzeOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.ConceptsOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.EntitiesOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.Features;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.KeywordsOptions;

public class NLUExample2 {
	 private static String username = "53d530da-ecad-413f-a057-c527405e6ce7";
	 private static String password = "83EwV4o8Xv7x";
	 private static String url="www.yonhapnews.co.kr/bulletin/2017/10/17/0200000000AKR20171017097500004.HTML?input=1195m";
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
		
		ConceptsOptions concepts = new ConceptsOptions.Builder().limit(20).build();
		EntitiesOptions entitiesOptions = new EntitiesOptions.Builder().emotion(true).sentiment(true).limit(2).build();
		KeywordsOptions keywordsOptions = new KeywordsOptions.Builder().emotion(true).sentiment(true).limit(2).build();
		Features features = new Features.Builder().entities(entitiesOptions).keywords(keywordsOptions).build();
		AnalyzeOptions parameters = new AnalyzeOptions.Builder().text(text).features(features).build();
		
		AnalysisResults response = service.analyze(parameters).execute();
				
		System.out.println(response);
		
	}
}
