package Unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdditionalServlet01")
public class AdditionalServlet01 extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("doGet ");
		String name = request.getParameter("name");
		out.println("Yes, I am " + name + ".Do not know");
		out.close();
	} // get 방식으로 요청하면 동작

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request.setCharacterEncoding("UTF-8");  // 한글이 깨지는 것을 막음
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("doPost ");
		String name = request.getParameter("name");
		out.println("Yes, I am " + name + ".Do not know 포기");
		out.close();
	} // post 방식으로 요청하면 동작 

}
