<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
<%-- <%	if(session.getAttribute("user_id") == null) { %>
	<script type="text/javascript">
	alert('먼저 로그인을 하세요');
	location.href='session_form.jsp';
	</script>				
<% 
	return; //아래 부분이 확실히 실행되지 않게 하려고 return 을 찍어 버리는 게 좋다. 
}%> --%>
</head>
<body>
<a href="imsi.jsp"> 임시페이지로 </a>

<%-- <%
out.print("있는 내용이 위에서 location.href 로 걸러주더라도나올 수 있습니다");  
%>
 --%>

<h1> 세션테스트 중입니다....</h1>
현재 
<%=session.getAttribute("user_id") %>
(<%=session.getAttribute("user_name") %>,
<%=session.getAttribute("user_level") %>)
회원님이 접속중입니다 <br/>
<a href="session_invalidate.jsp">로그아웃</a>
</body>
</html>