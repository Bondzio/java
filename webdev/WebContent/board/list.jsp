<%@page import="board.model.BoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        
 <%
 	long pg = 1;
 	
 	int pageSize=10;									//한페이지에 출력할 게시물수
	long startnum 	= (pg-1) * pageSize +1; 			// 출력페이지 시작번호
	long endnum		= pg * pageSize; 					// 출력페이지 끝번호
	long pageCount 	= 0 ;								// 전체 페이지 수
	long totalCount	= 0;								// 전체 게시물 수
	long blockSize 	= 10;
	long startPage 	= (pg -1) / blockSize * blockSize +1; // 페이지 블럭 시작 페이지 
	long endPage 	= (pg -1) / blockSize * blockSize + blockSize; // 페이지 블럭 마지막 페이지
	String select = null;	
	String search = null;
 	
 	
 	try{
 		search= request.getParameter("search"); 
		select= request.getParameter("select");
 	} catch (Exception e) {}
 	
	try{
 		pg= Long.parseLong(request.getParameter("pg")); // 값이 안 넘어오는 첫번째 페이지 pg=	1 로 처리된다. 에러가 나지 않고 넘어가게 한다.
 		
 	} catch (Exception e){}  	
 	
 	BoardDAO boardDAO = BoardDAO.getInstance();
 	totalCount = boardDAO.getTotalCount(); // 전체 게시물의 갯수를 얻어옴. 
 	List <BoardVO> list = boardDAO.getBoardList(startnum, endnum, select, search); 	 // 현재페이지에 출력한 게시물을 조회 
 	 	
	pageCount = totalCount / pageSize; // 정수나누기 정수는 정수. 
	if (totalCount % pageSize !=0) pageCount++; 		
	if (endPage > pageCount) endPage = pageCount;
 %>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel= "stylesheet" type="text/css" href="board.css">
	<link rel="shortcut icon" href="/favicon.ico" />
	<title>BOARD</title>	
</head>

<body>
<jsp:include page="header.jsp"/>
<div>
<table>
		<caption> </caption>
	<thead>
		<tr>
			<th>NO</th>
			<th>NAME</th>
			<th class="title">TITLE</th>
			<th>DATE</th>
			<th>VIEW</th>
		</tr>
	</thead>
	<tbody>
		<% for (BoardVO boardVO : list) {%>
			<tr>
				<td class="no"><%=boardVO.getNo() %>			</td>
				<td class="name"><%=boardVO.getName() %>			</td>
				<td class="title" onclick="location.href='content.jsp?no=<%=boardVO.getNo()%>'"><a href="content.jsp?no=<%=boardVO.getNo()%>"><%=boardVO.getTitle()%></a></td> <!--  글번호를 parameter로 전달해줌. --> 
				<td class="date"><%=boardVO.getRegdate() %>		</td>
				<td class="view"><%=boardVO.getViewcount()%>		</td>
			</tr><%
		}%>
		<tr>
			<td colspan="4" align="center">
			<% if(startPage ==1 ) { %>
				[PREV.]
			<% } else { %>
				<a href="list.jsp?pg=<%=startPage-1%>">[PREV.]</a>
			<%}%> 
				<%
				for(long p=startPage; p <= endPage;p++) {%>
					<% if (p==pg){%>
					<%=p %>
					<% } else { %> 
						<a href = "list.jsp?pg=<%=p%>"> <%=p%> </a><%
						} 
				} %>				
				<% if (endPage == pageCount) { %>
					[NEXT]
					<% } else { %>
					<a href="list.jsp?pg=<%=endPage+1%>">[NEXT]</a>
				<%}%> <a href="insert.jsp"><h4>WRITE</h4></a>
			 </td>
		</tr>
	</tbody>
</table>
</div>
<div align="center">
<form action="list.jsp" method="post">
	<select name="select">
		<option value="title" selected>TITLE </option>
		<option value="name">NAME </option>
		<option value="content">CONTENT </option>	
	</select>
	
	<input type="text" name="search">
	<input type="submit" value="SEARCH">
	 
</form>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>