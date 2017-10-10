<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	String name		= request.getParameter ("name");
 	String content 	= request.getParameter ("content");
 	String pwd 		= request.getParameter ("pwd");
 	String title	= request.getParameter ("title");
 	
 	BoardVO boardVO	= new BoardVO();
 	boardVO.setName(name);
 	boardVO.setContent(content);
 	boardVO.setPwd(pwd);
 	boardVO.setTitle(title);
 	
 	BoardDAO boardDAO = BoardDAO.getInstance();
 	boolean result = boardDAO.insertBoard(boardVO);  // DB ACCESS MODULE을 분리해내서 간단해짐. 
  %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>

<%
	
%>

<script type="text/javascript">
<% if(result)	{%>
	alert('새 글이 잘 입력되었습니다.');
	location.href='list.jsp';	
<%} else {%>  
	alert('글이 잘 등록되지 않았습니다.');
	location.href='javascript:history.back();'; // 기존에 입력되어 있는 값들이 있다. 입력하기 좀 더 좋다.  
<% } %>
</script>

</body>
</html>