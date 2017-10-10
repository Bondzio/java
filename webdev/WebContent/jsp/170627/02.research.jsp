<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String[] season = request.getParameterValues("season");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
</head>
<body>
<h1>설문조사결과</h1>

	이름 : <%=name %> <br/> 
	성별 : <%=gender %> <br/> 
	좋아하는 계절 : 
<% try{
	
		for (int i=0;i<season.length;i++)	{ 
			out.println(season[i]);
		}
	  	out.println("입니다");
	} 	catch(NullPointerException e) {
		out.println ("없습니다");
		}
	
%>

<a href = "javascript:history.go(-1)"> 다시 하기</a>

</body>
</html>