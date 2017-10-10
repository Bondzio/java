<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
 	pageContext.setAttribute("name", "Page Mann");
	request.setAttribute("name", "request man");
	session.setAttribute("name", "session girl");
	application.setAttribute("name", "Application lady");
	
	
	System.out.println("firstPage.jsp");
	System.out.println("pageContext Attribute" + pageContext.getAttribute("name"));
	System.out.println("request Attribute" + request.getAttribute("name"));
	System.out.println("session Attribute"+	session.getAttribute("name"));
	System.out.println("Application Attribute"+ application.getAttribute("name"));
	
	request.getRequestDispatcher("07_secondPage.jsp").forward(request,response); 

%>




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