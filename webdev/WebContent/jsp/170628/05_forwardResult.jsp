<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String age=request.getParameter("age");
	String name = (String)request.getAttribute("name");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body bgcolor=pink>
forward방식으로 이동된 페이지 <br>
	나이 : <%=age %>
	이름 : <%=name %>


</body>
</html>