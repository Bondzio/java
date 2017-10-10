<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	long 	no			= Long.parseLong(request.getParameter ("no"));
 	String 	pwd 		= request.getParameter ("pwd");
 	 	
 	BoardVO boardVO	= new BoardVO();
 	boardVO.setNo(no);
 	boardVO.setPwd(pwd); 	
 	
 	BoardDAO boardDAO = BoardDAO.getInstance();
 	boolean result = boardDAO.deleteBoard(boardVO); 	
 %>
    
<!DOCTYPE html>
<html>
<head>
	<link rel= "stylesheet" type="text/css" href="board.css">
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>
<script type="text/javascript">
	<% if(result)	{%>
		alert('글 삭제 성공');
		location.href='list.jsp';	
	<%} else {%>  
		alert('비밀번호가 다릅니다. ');
		location.href='javascript:history.back();'; // 기존에 입력되어 있는 값들이 있다. 입력하기 좀 더 좋다.  
	<% } %>
</script>

</body>
</html>