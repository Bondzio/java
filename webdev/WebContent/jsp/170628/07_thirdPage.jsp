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
	pageContext Attribute 	=<%= 	pageContext.getAttribute("name")	%><br>
	request Attribute 		=<%= 	request.getAttribute("name")		%><br>
	session Attribute		=<%=	session.getAttribute("name")		%><br>
	Application Attribute	=<%= 	application.getAttribute("name")	%><br>
</body>
</html>