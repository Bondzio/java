<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int count;
	int bad_ip_add;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%// 접속한 사람의 ip address를 뽑아준다. 0:0:0:0:0:0:0:1 %>
<%
	String addr = request.getRemoteAddr();
	if (addr.equals(bad_ip_add)){
		if ((++count)%2==0) { 
			out.println("당신이 불량 유저입니다 <br/>");
			out.println(count);
		}
	}
	else {
		out.println("당신의 address는" + addr +"<br/>");
		out.println(count);	
	}

%>
<%=request.getRemoteAddr()%>
</body>
</html>