package conversation;

import java.util.List;
import java.util.Scanner;

import com.ibm.watson.developer_cloud.conversation.v1.ConversationService;
import com.ibm.watson.developer_cloud.conversation.v1.model.MessageRequest;
import com.ibm.watson.developer_cloud.conversation.v1.model.MessageResponse;

public class ConversationTest {
	public static void main(String[] args) {
		String url = "https://gateway.watsonplatform.net/conversation/api";
		String username = "1afc9786-2e87-45ed-bb47-f39498bfbca6";
		String password = "vrkVp5wNxPZE";
		String workspace_id = "8df28dd7-a731-44ed-abe4-6e30ff4789f5";

		Scanner sc = new Scanner(System.in);
		ConversationService service = new ConversationService(ConversationService.VERSION_DATE_2017_02_03);
		 service.setUsernameAndPassword(username, password);

		MessageRequest request = null;
		MessageResponse response = null;
		String msg = "";
		
		
		for(;;){
			request = new MessageRequest.Builder().inputText(msg).build();
			response = service.message(workspace_id, request).execute();
			
			List<String>  watsonsays = response.getText();
			// List<String>  watsonsays = response.getText().get( index를 넣을 수 있다);
			for(String say : watsonsays) {
				System.out.println("Watson : " + say);
			}
			System.out.print("I : "); msg = sc.nextLine();// buffer단위로 돌리면, 안에서 에러가 났을때 무한 루프가 돈다. 
		}
		 /*InputData input = new InputData.Builder("Hi").build();
		 MessageOptions options = new MessageOptions.Builder(workspaceId).input(input).build();*/
	}
}
