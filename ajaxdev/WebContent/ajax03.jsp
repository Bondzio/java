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
		$('#btnText').click(function(){
		//method chain 
			$.get('msg.txt') // get이나 post 가 수행된이후 
			 .done(function(data){ // method chain
				 alert(data);
			 });
		});
		
		$('#btnJsp').click(function(){
			//method chain 
				$.post('iam.jsp',{name:$('#name').val()}) // data를 넘긴다는 것. load를 해도 되는데, 전달을 한것. querystring jsp?name=정대만&age=18						
				 .done(function(data){ // method chain
					 alert(data);
				 });
			});	
	});
	
</script>
</head>
<body>
<input type="button" id="btnText" value="get text" />
<hr/>
<input type="text" 	id="name"/>
<input type="button" id="btnJsp" value="get jsp" /> <!-- 프로그램도 로드할 수 있다. --> 
<div id="rcvMsg"></div>
</body>
</html>