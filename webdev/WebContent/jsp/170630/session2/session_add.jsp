<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* 	String user_id = request.getParameter("user_id").trim();
	String user_name = request.getParameter("user_name").trim();
	
	if (user_id.equals("") || user_name.equals("")) {
		
	}
 */
	session.setAttribute("user_id", request.getParameter("user_id"));
	session.setAttribute("user_name", request.getParameter("user_name"));
	session.setAttribute("user_level", request.getParameter("user_level"));
	response.sendRedirect("main.jsp");
%>