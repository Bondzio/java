<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel= "stylesheet" type="text/css" href="board.css">
	<link rel="shortcut icon" href="/favicon.ico" />
	<title>DELETION</title>	
</head>
<body>

<form action="delete_action.jsp" method="post">
<table>	<caption>게시물 삭제</caption>	
<%	long no = Long.parseLong(request.getParameter("no"));%>
<tr><th>번호</th>
	<td><%=no%><input type="hidden" name="no" value="<%=no%>"/></td>
</tr>
<tr><th>비밀번호</th>
	<td><input type="password" name="pwd" />
		<div style="color:red">
		* 처음 글 등록시 입력했던 비밀번호를 재 입력하세요.
		</div> 
	</td>	
</tr>
</table>
<input type="submit" value="완료"> 
<a href="list.jsp"> RETURN </a>
</form>
</body>
</html>