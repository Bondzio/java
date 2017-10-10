<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
<script>



</script>


</head>
<body>
<a href="cookie_form.jsp">쿠키생성</a>
<hr>

[<a href="cookie_delete_id.jsp">아뒤 삭제</a>] 
[<a href="cookie_delete_name.jsp">이름 삭제</a>]
[<a href="cookie_delete_level.jsp">레벨 삭제</a>]
[<a href="cookie_delete_all.jsp">전체 삭제</a>]


[생성쿠키리스트] <br/>
<%
Cookie[]	cookies = request.getCookies();
if(cookies !=null){
	for (Cookie c : cookies){
		if(!c.getName().equals("JSESSIONID")) {
		out.println("쿠키이름: " + c.getName() + "<br/>");
		out.println("쿠키값  : " + URLDecoder.decode(c.getValue(), "UTF-8") + "<br/>");
		out.println("<hr/>");
		}
	}
}
%>
</body>
</html>