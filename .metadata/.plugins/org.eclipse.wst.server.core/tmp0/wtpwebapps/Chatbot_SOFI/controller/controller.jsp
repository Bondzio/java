<%@page import="java.net.URLEncoder"%>
<%@page import="parser.IntentParser"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="model.PlayerVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="controller.WatsonConnection"%>
<%@ page language="java" contentType="text/plain; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String msg=request.getParameter("msg");
	WatsonConnection wc = new WatsonConnection(); // Watson의 자연어 처리 부분. 
	String returnedMessage= wc.service(request, response, msg); // 자연어 처리가 된 이용자의 의도 return 
	
	try {
		IntentParser ip = new IntentParser();
		ip.tokenParser(returnedMessage);
		out.println(ip.detailParser());
		if (msg.contains("손흥민")) out.println("<img src='./resources/img/son.jpg' width='400px'>");
		if (msg.contains("루니")) out.println("<img src='./resources/img/rooney.jpg' width='400px'>");
		if (msg.contains("아자르")) out.println("<img src='./resources/img/ajar.jpg' width='400px'>");
		if (msg.contains("기성용")) out.println("<img src='./resources/img/ki.jpg' width='400px'>");
		
	} catch(Exception e)	{
		out.println("적당한 대답을 찾지 못했습니다. 다시 질문해주세요");
	}
	/* msg = URLEncoder.encode(msg, "UTF-8");
	response.sendRedirect("../controller/next.jsp?msg=" + msg + "&returnedmessage=" + returnedMessage); */
%>