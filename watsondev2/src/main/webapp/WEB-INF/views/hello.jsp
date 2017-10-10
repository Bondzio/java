<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
	<script src="<c:url value="/resources/js/jquery-3.2.1.js" />"> </script>
	<script src="stylesheet" href="<c:url value="/resources/js/bootstrap.min.js"/>"></script>


<script type="text/javascript">
	$(document).ready(function(){
		$('#speak').click(function(){
			$('#myaudio').stop();
			$('#myaudio').attr('src','/dev/Speaker?&' + $('#myform').serialize());					
			$('#myaudio').attr('autoplay', 'autoplay');					
		});
	});

</script>
</head>

<body>
	${msg} 
	<br/>
	<form id="myform" method="post">
		text2speech sample example
		<br/>
		<textarea rows="10" cols="40" name="statement"> 
			Watson TTS, speech to text service by AI algorithm.  
		</textarea><br/>
				
		<select name="voice">
			<c:forEach items="${voices}" var="voice">
				${voice.description} <br/>
				<option value="${voice.name}">${voice.name}</option>
			</c:forEach>
		</select>
		
		<input type="button" id="speak"	value="읽기" /><br/>
		<audio id="myaudio" controls preload="auto"/>
	</form>
</body>
</html>