<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String msg = (String)request.getAttribute("msg");
	String url = (String)request.getAttribute("url");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>
<script type="text/javascript">
	// 로그인을 하라고 하면서 하기 참조 (delivered from auth.java 
	//	request.setAttribute("msg", "먼저 로그인을 하셔야 합니다..");
	//	request.setAttribute("url", "/jsp/170630/session2/session_form.jsp");	
	
	
	alert('<%=msg%>');
	location.href='<%=url%>';
</script>
</body>
</html>