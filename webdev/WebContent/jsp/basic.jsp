<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//request, response, out, session 을 내장 객체로 만들어버려서, 만들지 않아도 바로 사용할 수 있다.  
	for (int i=1; i<=5; i++) {
		//out.println(i + "<br/>"); 
		// html에서는 줄바꿈을 하려면 반드시 br이 들어가야 된다.
		out.print(i + "<br/>");
	}
%>
</body>
</html>