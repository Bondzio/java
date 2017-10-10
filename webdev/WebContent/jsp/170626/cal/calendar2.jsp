<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> CALENDAR</title>
</head>
<body>
<!-- HTML 주석 -->	 <%-- 주석 노출이 안됨.   --%>
<% // scriptlet  //  <%@ - page directive
		
		int year		= 2017;
	 	int month		= 6;
	 	
		Calendar now = Calendar.getInstance();  // shift + f2 혹은 ctrl						
		now.set(year, month -1, 1);
	 	
		int lastDate	= now.getActualMaximum(Calendar.DATE);
		int week		= now.get(Calendar.DAY_OF_WEEK);	
%>
					

<%= year + "년   " + month + "월 " %>	
<%--  출력 <%안에 작성하면 자바 문법 --%>

<table>
<tr>
	<td>일</td>
	<td>월</td>
	<td>화</td>
	<td>수</td>
	<td>목</td>
	<td>금</td>
	<td>토</td>
</tr>
<tr>
<%
 		for (int d=1;d<week; d++){
 			out.println("<td></td>");
 		}
		
 		for(int i=1; i<=lastDate; i++, week++)
 		{
 			out.println("<td>" + i + "</td>");
 			if (week%7==0) out.println("</tr><tr>");
		}	
%>
</tr>
</table>
</body>
</html>