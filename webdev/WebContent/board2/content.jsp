<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	long no = Long.parseLong(request.getParameter("no"));
	BoardDAO boardDAO = BoardDAO.getInstance();
	BoardVO boardVO = boardDAO.getBoard(no);
 
%>
<!DOCTYPE html>
<html>
<head>
	<link rel= "stylesheet" type="text/css" href="board.css">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="shortcut icon" href="/favicon.ico" />
	<title>게시물 작성하기</title>
</head>

<body>
<jsp:include page="header.jsp"/>
<table>
	<caption>CONTENTS</caption>
<tr>
	<th>NO</th> 	<td><%=boardVO.getNo()%></td>
</tr>
<tr>
	<th>NAME</th> 			<td><%=boardVO.getName()%></td>
</tr>
<tr>
	<th>TITLE</th>				<td><%=boardVO.getTitle()%></td>
</tr>
<tr>
	<th>CONTENT</th>			<td><%=boardVO.getContent()%></td>
</tr>
<tr>
	<th>DATE</th>				<td><%=boardVO.getRegdate()%></td>
</tr>
<tr>
	<th>V</th>					<td><%=boardVO.getViewcount()%></td>
</tr>
</table><br/>
	<div align="center">
		<a href="list.jsp">LIST</a>
		<a href="update.jsp?no=<%=boardVO.getNo()%>">MODIFY</a>
		<a href="delete.jsp?no=<%=boardVO.getNo()%>">DELETE</a>
	</div>
</form>
</body>
</html>