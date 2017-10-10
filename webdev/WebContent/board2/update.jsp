<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%
	long no = Long.parseLong(request.getParameter("no"));
	BoardDAO boardDAO = BoardDAO.getInstance(); 
	BoardVO boardVO = boardDAO.getBoard(no); 		
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel= "stylesheet" type="text/css" href="board.css">
	<link rel="shortcut icon" href="/favicon.ico" />
	<title>게시물 수정</title>	
</head>
<body>
<jsp:include page="header.jsp"/>
<form action="update_action.jsp" method="post">
<table>
	<caption>게시물 수정</caption>
<tr>
	<th class="name">No</th>
	<td><%=boardVO.getNo() %><input type="hidden" name="no" value="<%=boardVO.getNo()%>"/></td> <!-- 수정하지 않는 값은 박스에 넣지 말고, 차라리 감춰놓아라 -->
</tr>
<tr>
	<th>Name</th>
	<td><input type="text" name="name" value="<%=boardVO.getName() %>"/></td>
</tr>
<tr>
	<th>Title</th>
	<td><input type="text" name="title" value="<%=boardVO.getTitle()%>"/></td>
</tr>
<tr>
	<th>Content</th>
	<td><textarea !cols="40" rows="5" name="content" ><%=boardVO.getContent()%></textarea></td>
</tr>
<tr>
	<th>Password</th>
	<td><input type="password" name="pwd" />
		<div style="color:red">
		* 처음 글 등록시 입력했던 비밀번호를 재 입력하세요.
		</div> 
	</td>	
</tr>
</table>
<input type="submit" value="Complete" /> 
<a href="list.jsp"> RETURN </a>
</form>
</body>
</html>