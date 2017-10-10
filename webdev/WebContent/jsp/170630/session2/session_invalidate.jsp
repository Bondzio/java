<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
	/* session.removeAttribute("user_id");
	session.removeAttribute("user_name");
	session.removeAttribute("user_level"); 하나씩 잘 제거하지 않는다. */
	
	session.invalidate();
	response.sendRedirect("session_form.jsp");
	
%>
