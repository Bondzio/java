package com.n1books.pilot.nlu;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ibm.watson.developer_cloud.natural_language_understanding.v1.NaturalLanguageUnderstanding;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalysisResults;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalyzeOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.EmotionOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.EmotionScores;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.Features;

@Controller
public class NLUController {
	private static Logger logger = LoggerFactory.getLogger(NLUController.class);
	
	
	@Value("${nlu.username}")
	private  String username;
	
	@Value("${nlu.password}")
	private  String password;
	
	
/*	private  String username="f2e6fa89-7132-4bbb-a01e-4444acade02b";
	private  String password="EzU5tHFOORxb";
*/			
	
	
	@Autowired //@Inject
	// @Qualifier == @Resource(name="nLUServiceImpl")
	private NLUService nluService;
	

	@GetMapping("list")
	public void list(Model model) {
		List<EmotionVO> list = new ArrayList<EmotionVO>();
		list= nluService.getList();
		model.addAttribute("list", list); 
		
	}
		
	@ResponseBody
	@RequestMapping(
			value = "nluProcess",
			headers="accept=application/json;charset=UTF-8",
			produces= {MediaType.APPLICATION_JSON_UTF8_VALUE}
			)
	public String nluProcess(String statement ) {
		logger.info("statement:" + statement); // nluForm에서 data가 잘 넘어 오는지 확인용
		
		logger.info("username: " + username);
		logger.info("password: " + password);
		
		NaturalLanguageUnderstanding service =	new NaturalLanguageUnderstanding(NaturalLanguageUnderstanding.VERSION_DATE_2017_02_27);
		service.setUsernameAndPassword(username, password);

		
		
		EmotionOptions emotions = new EmotionOptions.Builder().build();
		Features features = new Features.Builder().emotion(emotions).build();
		AnalyzeOptions parameters = new AnalyzeOptions.Builder().text(statement).features(features).build();
		//AnalyzeOptions parameters = new AnalyzeOptions.Builder().url(url).features(features).build();
		AnalysisResults response = service.analyze(parameters).execute();
		
		EmotionScores er = response.getEmotion().getDocument().getEmotion();
		
		EmotionVO vo = new EmotionVO();
		vo.setStatement(statement);
		vo.setAnger(er.getAnger());
		vo.setDisgust(er.getDisgust());
		vo.setJoy(er.getJoy());
		vo.setSadness(er.getSadness());
		vo.setFear(er.getFear());
		
		nluService.insertEmotion(vo);
		
		logger.info("result:" + response.getEmotion());
		return response.toString();
	}
	
	@RequestMapping("nluForm")
	public void nluform() {}
}

