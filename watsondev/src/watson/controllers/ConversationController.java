package watson.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.watson.developer_cloud.conversation.v1.ConversationService;
import com.ibm.watson.developer_cloud.conversation.v1.model.MessageRequest;
import com.ibm.watson.developer_cloud.conversation.v1.model.MessageResponse;

import main.controllers.AbstractController;
import main.controllers.ModelAndView;

public class ConversationController extends AbstractController {

	@Override
	public ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) {
		
			String url = "https://gateway.watsonplatform.net/conversation/api";
			String username = "1afc9786-2e87-45ed-bb47-f39498bfbca6";
			String password = "vrkVp5wNxPZE";
			String workspace_id = "8df28dd7-a731-44ed-abe4-6e30ff4789f5";

			ConversationService service = new ConversationService(ConversationService.VERSION_DATE_2017_02_03);
			 service.setUsernameAndPassword(username, password);

			MessageRequest mrequest = null;
			MessageResponse mresponse = null;
			String isay = request.getParameter("isay");
		
			mrequest = new MessageRequest.Builder().inputText(isay).build();
			mresponse = service.message(workspace_id, mrequest).execute();
			System.out.println(mresponse.getText().get(0));
			List<String>  watsonsays = mresponse.getText();
			return new ModelAndView(
					"/WEB-INF/views/watsonsay.jsp", 
					"watsonsays", watsonsays);
		}
	}
