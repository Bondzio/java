<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body bgcolor="yellow">
<h3> 관리자로 로그인 성공</h3>
NAME : <%=request.getParameter("name") %> <br>  
ID : <%=request.getParameter("userID") %> 
</body>
</html>