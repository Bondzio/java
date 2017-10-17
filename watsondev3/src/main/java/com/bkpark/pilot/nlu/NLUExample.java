package com.bkpark.pilot.nlu;

import com.ibm.watson.developer_cloud.natural_language_understanding.v1.NaturalLanguageUnderstanding;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalysisResults;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalyzeOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.ConceptsOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.Features;

public class NLUExample {
	 private static String username = "53d530da-ecad-413f-a057-c527405e6ce7";
	 private static String password = "83EwV4o8Xv7x";
	 private static String url="www.yonhapnews.co.kr/bulletin/2017/10/17/0200000000AKR20171017097500004.HTML?input=1195m";
	
	public static void main(String[] args) {
		NaturalLanguageUnderstanding service = new NaturalLanguageUnderstanding(NaturalLanguageUnderstanding.VERSION_DATE_2017_02_27);
		service.setUsernameAndPassword(username, password);
		
		ConceptsOptions concepts = new ConceptsOptions.Builder().limit(20).build();
		Features features = new Features.Builder().concepts(concepts).build();
		AnalyzeOptions parameters = new AnalyzeOptions.Builder().url(url).features(features).build();
		AnalysisResults response = service.analyze(parameters).execute();
				
		System.out.println(response);
		
	}
}
