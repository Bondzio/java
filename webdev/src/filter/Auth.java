package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Auth implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub, 자원을 열었으면 나중에 close 하기 위해 있다.
		System.out.println("Auth Filter Destroy() 수행중... ");		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("Auth Filter doFilter() 수행중...");
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		HttpSession session = request.getSession();
		String contextPath = request.getContextPath();		
		String action = request.getRequestURI();
		String result = action.substring(contextPath.length());
		
		
		
		if (!(action.equals("/jsp/170630/session2/session_form.jsp") || action.equals("/jsp/170630/session2/session_add.jsp"))) {
				if (session.getAttribute("user_id") == null)  {
					request.setAttribute("msg", "먼저 로그인을 하셔야 합니다..");
					request.setAttribute("url", "/jsp/170630/session2/session_form.jsp");			
					
					// result.jsp 로 이동 
					RequestDispatcher dispatcher = 	request.getRequestDispatcher("/jsp/170630/session2/result.jsp"); // 196page 참조 
					dispatcher.forward(request, response);
					
					// html 로 렌더링되는 내용에서 실행이 안되기를 원하는 아래부분 실행안되게 함.  
					return;
				}
		}
		// 다음 filter로 이동, 마지막 filter에는 이용자가 요청한 자원이 있음. 본 문장이 없으면, 흰 화면이 나오고 멈
		chain.doFilter(request, response);
		
	}

	@Override
	public void init(FilterConfig fc) throws ServletException {
		// TODO Auto-generated method stub 서버가 켜질때 처음 한번 수행하는 것, 
		// 그리고 계속 떠 있다.  요청에 들어 올때마다 처리할 게 있으면 dofilter에서 처리하게 된다.
		
		System.out.println("Auth Filter intit() 수행중...");
		
	}

}
