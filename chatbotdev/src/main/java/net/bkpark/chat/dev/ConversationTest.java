package net.bkpark.chat.dev;

import java.util.Scanner;

import org.junit.Test;

import com.ibm.watson.developer_cloud.conversation.v1.Conversation;
import com.ibm.watson.developer_cloud.conversation.v1.model.Context;
import com.ibm.watson.developer_cloud.conversation.v1.model.InputData;
import com.ibm.watson.developer_cloud.conversation.v1.model.MessageOptions;
import com.ibm.watson.developer_cloud.conversation.v1.model.MessageResponse;

public class ConversationTest {

	private String username = "f82d27af-049d-4fed-964b-01fe5a2e72ad";
	private String password = "3oQ6RZdJbJWT";
	private String workspaceid = "ab447b9d-8f1a-457d-9006-24ae9d3fbedf";

	@Test
	public void testConversation() {

		Scanner sc = new Scanner(System.in);
		Conversation service = new Conversation(Conversation.VERSION_DATE_2017_05_26);
		service.setUsernameAndPassword(username, password);

		MessageResponse response = null;
		Context context = null;
		MessageOptions options = null;
		String msg="";
		StringBuffer watsonSay = null;

		while (true) {
			options = new MessageOptions.Builder()
				    .workspaceId(workspaceid)
				    .input(new InputData.Builder(msg).build())
				    .context(context)
				    .build();
			response=service.message(options).execute();
			System.out.println("Watson : ");
			 
			watsonSay = new StringBuffer();
			for (String text : response.getOutput().getText()) {
				watsonSay.append(text);
				watsonSay.append(" ");
			}
			System.out.println(watsonSay);
			System.out.println("I : ");
			msg=sc.nextLine();
			context=response.getContext();
		}

	}
}
