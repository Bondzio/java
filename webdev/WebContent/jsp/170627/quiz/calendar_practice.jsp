<!-- 아직 끝나지 않았음.  -->  

<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int year=0;
	int month=0;
	int max_date=0;
	int date=0;
	Calendar today = Calendar.getInstance();
	year = today.get(Calendar.YEAR);
	month = today.get(Calendar.MONTH);
	date =  today.getMaximum(Calendar.DATE);
	int week = today.get(Calendar.DAY_OF_WEEK);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>


<table>
<tr>
for(int i=1;i<=week;i++) <td></td>
for (int i=1;i<=date;i++)
	<td>
	if (i==0)
%>


</tr>

</table>




</body>
</html>