<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String msg = request.getParameter("msg");
msg = URLDecoder.decode(msg, "UTF-8");

out.println("Inputted Message : " + msg); 
out.println("Requested Message : " + request.getParameter("returnedMessage")); 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
	<script src="<c:url value="/resources/js/jquery-3.2.1.js" />"> </script>
	<script src="stylesheet" href="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</head>
<body>



</body>
</html>