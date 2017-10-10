<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="shortcut icon" href="../favicon.ico" />
	<script type="text/javascript" src="js/jquery-3.2.1.js">	</script>
	<script type="text/javascript">
	/* $(document).ready(); */
	/* $(); /* 현재 문서가 준비된 상태 dom = doucment of model */  
	
	//document가 ready가 되면 callback function 동작 
	$(function(){
		$('#btnText').click(function(){ //XMLhttprequest 가 jquery안에 구현되어 있다. 
			$('#rcvMsg').load('msg.txt');
		});	
		
		$('#btnJSP').click(function(){
			$('#rcvMsg').load('msg.jsp');
		});	
	});
	
	</script>
</head>
<body>
<input type="button" id="btnText" value="get text" />
<input type="button" id="btnJSP" value="get jsp" /> <!-- 프로그램도 로드할 수 있다. --> 
<div id="rcvMsg"></div>
</body>
</html>