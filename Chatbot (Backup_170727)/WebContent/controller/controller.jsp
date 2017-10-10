<%@page import="controller.IntentParser"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="model.PlayerVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="controller.DatabaseConnection"%>
<%@page import="controller.WatsonConnection"%>
<%@ page language="java" contentType="text/plain; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String msg=request.getParameter("msg");
	WatsonConnection wc = new WatsonConnection();
	String returnedMessage= wc.service(request, response, msg);
	
	try {
		IntentParser ip = new IntentParser();
		ip.tokenParser(returnedMessage);
		out.println(ip.detailParser());
	} catch(Exception e)	{
		out.println("적당한 대답을 찾지 못했습니다. 다시 질문해주세요");
	}
			
	
%>