<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html>
<head>
<style>
	div.say {
		position:absolute;
		top:100px;
		left:650px;
		font-size:20px;		
		z-index:5;}
	
	div.img
		{
		position:absolute;
		z-index:4;}
</style>


</head>
<body>
<%-- 	<div class="say"> <%=request.getAttribute("iam") %> </div>
	<div class="img"><img src="/img/iam.jpg"></div> 
 --%>

<img src="/img/iam.jpg">
${iam} 


</body>
</html> 
