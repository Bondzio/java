<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
	<script src="<c:url value="/resources/js/jquery-3.2.1.js" />"> </script>
	<script src="stylesheet" href="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	
	
<title>Insert title here</title>

</head>
<body>
<div class="container">
<h2 class="text-center">게시물 리스트</h2>
<table class="table">
<thead>
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>작성일</th>
	<th>조회수</th>
</tr>
</thead>
<tbody>

<c:forEach items="${list}" var="vo">
<tr>
	<td>${vo.no}</td>
	<td><a href="detail?no=${vo.no}">${vo.title}</a></td>
	<td>${vo.name}</td>
	<td><fmt:formatDate value="${vo.regdate}" type="date"/></td>
	<td>${vo.viewcount}</td>
</tr>
</c:forEach>

<tr>
<td colspan="5" align="center"> ${pageNation.display} 
<%-- 	<c:choose>  
	<c:when test="${pageVO.startpage==1}">
		[PREV.]
	</c:when>
	<c:otherwise>
		<a href="list?pg=${pageVO.startpage-1}">[PREV.]</a>
	</c:otherwise>
	</c:choose>
	
	<c:forEach begin="${pageVO.startpage}" end="${pageVO.endpage}" var="i"> 
			<c:if test="${i==pageVO.pg}">
				${i}
			</c:if>
			
			<c:if test="${i!=pageVO.pg}">
				<a href="list?pg=${i}"> ${i} </a>
			</c:if>
	</c:forEach>
	
	<c:choose>  
	<c:when test="${pageVO.endpage==pageVO.pageCount}">
		[NEXT]		
	</c:when>
	<c:otherwise>
		<a href="list?pg=${pageVO.endpage+1}">[NEXT]</a>
		${pageVO.endpage}
		${pageVO.pageCount}
	</c:otherwise>
	</c:choose> --%>
</td>
</tr>
<tr>
<div class="row">
	<div class="col-sm-12 text-center" >
	<div style="display:inline-block;">
		<input type="button" value="글쓰기" onclick="insert" class="btn btn-default btn-block btn-primary">
	</div>
	</div>
</div>
</tr>
</tbody>
</table>
 
	<a href="insert">글쓰기</a><br/>

</div>
</body>
</html>