<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>
<%
Cookie c=new Cookie ("id", "신해철");
//Cookie c=new Cookie ("id", URLEncoder.encode("한글은 UTF-8로","UTF-8")); //
c.setMaxAge(365*24*60*60);
response.addCookie(c);
response.addCookie(new Cookie("pwd", "test1234"));
response.addCookie(new Cookie("age", "20"));
%>
<h3>쿠키설정	</h3>
<a href="02_getCookies.jsp"> 설정된 쿠키를 확인하려면</a> 
</body>
</html>