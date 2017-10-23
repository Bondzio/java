package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 * Servlet implementation class KeyboardController
 */
@WebServlet("/keyboard")
public class KeyboardController extends BaseController {

	@Override
	protected String webServlet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JSONObject jo = new JSONObject();
		jo.put("type", "buttons");
		
		JSONArray list = new JSONArray();
		list.add("choice1");
		list.add("choice2");
		list.add("choice3");
		jo.put("buttons", list);
		
		
		request.setAttribute("data", jo.toString());
		return "json";
	}
}
