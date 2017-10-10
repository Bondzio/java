<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta charset="UTF-8">
<link rel="stylesheet" href="board.css">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
</head>
<body>
<jsp:include page="header.jsp"/>
<form action="insert_action.jsp" method="post">
<table>
	<caption>게시물 입력</caption>
<tr>
	<th>Name</th>
	<td><input type="text" name="name" /></td>
</tr>
<tr>
	<th>Title</th>
	<td><input type="text" name="title" /></td>
</tr>
<tr>
	<th>Content</th>
	<td><textarea cols="40" rows="5" name="content"></textarea></td>
</tr>
<tr>
	<th>Pass</th>
	<td><input type="password" name="pwd" /></td>
</tr>
<tr>
	<td>
	<input type="submit" value="완료"/> 
	</td>
	<td align="right"> <a href="list.jsp">  RETURN  </a>
	</td>
</tr>
</table>

</form>





</body>
</html>