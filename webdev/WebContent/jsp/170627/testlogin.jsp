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
String id = request.getParameter("id"); 
String pwd = request.getParameter("pwd");
if (id.equals("bbk0529") &&
		pwd.equals("1234")) {
			response.sendRedirect("main.jsp?id=" + URLEncoder.encode(id, "UTF-8"));
	} else	{ %>
		<script> 
			setTimeout(5000);
			alert('아이디 비밀번호가 맞지않습니다');
			javascript:history.back();
		</script>
<%
		// response.sendRedirect("login.jsp");
	} 
%>
</body>
</html>