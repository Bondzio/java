package Unit01;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IamServlet") // plug in 형태로 프로그램만 꽂아넣으면 작동을 한다. 굉장히 많을 경우 하나씩 검색해서 전체 찾기가 어렵다. 
public class IamServlet extends HttpServlet {
	
	private void doProcess(HttpServletRequest request, HttpServletResponse response, String url) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);		
	} // service라는 method에서 필요한 요청을 처리. 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { // 별도 세팅이 없으면 get방식이 실행
		doProcess(request, response, "/WEB-INF/views/form.jsp"); // 보안성을 높이기 위함. 
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String iam =  request.getParameter("name");
		request.setAttribute("iam", iam);
		doProcess(request, response, "/WEB-INF/views/process.jsp");
	}

}
