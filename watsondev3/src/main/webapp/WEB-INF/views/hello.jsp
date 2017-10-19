<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
<script src="<c:url value="/resources/js/jquery-3.2.1.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
</head>
<body>
${msg}<br/>
<hr/>
<table class='table'>
	<thead><tr><th>JOY</th><th>SADNESS</th><th>DISGUST</th><th>ANGER</th><th>FEAR</th></tr></thead>
	<tbody>	
<c:forEach items="${list}" var="vo">
		<tr>
			<td>${vo.joy}</td>
			<td>${vo.sadness}</td>
			<td>${vo.disgust}</td>
			<td>${vo.anger}</td>
			<td>${vo.fear}</td>
		</tr>	
</c:forEach>
</tbody>
</table>
</body>
</html>