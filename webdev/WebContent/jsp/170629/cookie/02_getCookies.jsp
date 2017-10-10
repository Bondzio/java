<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookies  &amp; Session</title>
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>
<h3> 클라이언트로부터 얻어온 Cookie </h3>

<%
	Cookie[]	cookies = request.getCookies();
	for (Cookie c:cookies){
		out.print(c.getName() + " : "+ c.getValue()+ "<br>");
	}




%>
	<a href="01_setCookies.jsp"> 쿠키 설정 </a>
	<a href="03_removeCookies.jsp"> 쿠키 삭제 </a>

</body>
</html>