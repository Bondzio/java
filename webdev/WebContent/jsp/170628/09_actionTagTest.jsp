<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String userID=request.getParameter("userID");
String userPwd=request.getParameter("userPwd");
String loginCheck=request.getParameter("loginCheck");

if(loginCheck.equals("user")){
%>	
<jsp:forward page="09_userMain.jsp">
	<jsp:param value="전고객"	name="userName"/>
</jsp:forward>
<% } else {%>

<jsp:forward page="09_managerMain.jsp">
	<jsp:param value="성관리" name="UserName"/>
 </jsp:forward>
<% }%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>

</body>
</html>