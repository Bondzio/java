
<%@page import="controller.CrawlerImage"%>
<%@ page language="java" contentType="text/plain; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String player=request.getParameter("player");
	String url = "https://www.google.co.kr/search?q=" + player +"&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjEkJvAwqbVAhXEEpQKHVXcCaQQ_AUICigB&biw=1527&bih=858";		
	String rawData = null; 
	
	CrawlerImage crawler = new CrawlerImage();
	crawler.setUrlstr(url);
	crawler.sofi_WebReader();
	rawData = crawler.getRawData();

%>