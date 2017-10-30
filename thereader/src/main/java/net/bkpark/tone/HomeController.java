package net.bkpark.tone;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.watson.developer_cloud.personality_insights.v3.PersonalityInsights;
import com.ibm.watson.developer_cloud.personality_insights.v3.model.Profile;
import com.ibm.watson.developer_cloud.personality_insights.v3.model.ProfileOptions;
import com.ibm.watson.developer_cloud.personality_insights.v3.model.Trait;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private NLPService nlpService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "home";
	}
	
	@RequestMapping("chatbot")
	public void chatbot() {	}

	
	@RequestMapping("list")
	public void list(Model model){
		List<EmailVO> list = new ArrayList<EmailVO>();		
		String [] sender; 
		Date [] emaildate;				
		list=nlpService.getList();
		sender=nlpService.getSender();
		emaildate=nlpService.getemaildate();				
		model.addAttribute("list", list); 
		model.addAttribute("sender", sender);
		model.addAttribute("emaildate", emaildate);
	}

	@RequestMapping("detail")
	public ModelAndView detail(int no) {
		EmailVO vo = nlpService.detail(no); 
		return new ModelAndView("detail", "vo", vo);
	}

	
	@RequestMapping("insert") 
	public void insert() {	
	}
	
	
	@RequestMapping("insertEmail")
	@ResponseBody
	public void insertEmail(EmailVO vo) {	
		vo.setWordcount(nlpService.wordCount(vo.text));
		nlpService.insertEmail(vo);
		
	}
	
	@RequestMapping("searchdata")
	public void searchData(Model model, String keyword) {
		System.out.println(keyword);
		List<EmailVO> list = new ArrayList<EmailVO>();		
		String [] sender; 
		Date [] emaildate;			
		list=nlpService.searchData(keyword);
		sender=nlpService.getSender();
		emaildate=nlpService.getemaildate();				
		model.addAttribute("list", list); 
		model.addAttribute("sender", sender);
		model.addAttribute("emaildate", emaildate);
	}
	
	@RequestMapping("multidetail")
	public String multidetail(Model model, String param) {
		String pk[] = param.split(",");
		
		List <EmailVO> list = new ArrayList<EmailVO>();
		for (String a : pk) {
			list.add(nlpService.detail(Integer.parseInt(a)));
		}
		System.out.println(list.toString());
		model.addAttribute("list", list);
		return "multidetail";
	}
	
	
	@RequestMapping("callWatson")
	@ResponseBody
	public List<Trait> callWatson(String text) {	
		System.out.println("text : " + text);
		PersonalityInsights service = new PersonalityInsights("2016-10-19");
		service.setUsernameAndPassword("2f162f68-251f-47ba-af6f-8d0c50373425", "vWjm7tOnp6Au");
		ProfileOptions options = new ProfileOptions.Builder().text(text).build();
		Profile profile = service.getProfile(options).execute();
		return profile.getPersonality();
	}
	
}
