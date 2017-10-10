<%@page import="controller.WatsonConnection"%>
<%@ page language="java" contentType="text/plain; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String msg=request.getParameter("msg");
	WatsonConnection wc = new WatsonConnection();
	String returnedMessage= wc.service(request, response, msg);
	if (returnedMessage=="[]") returnedMessage = "적절한 답을 찾을 수가 없습니다.";
	out.println(returnedMessage);
%>