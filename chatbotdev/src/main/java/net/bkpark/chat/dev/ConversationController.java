package net.bkpark.chat.dev;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConversationController {

	
	@RequestMapping("/")
	/*@RequestMapping("chatbot")*/
	public String chatbot() {
		return "chatbot";
	} // view 이름이 지정되지 않았기 때문에 mapping 값을 찾아가게 되어 있음. 
	
}
