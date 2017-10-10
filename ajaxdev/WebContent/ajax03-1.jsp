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
		$('#btnJsp').click(function(){
			console.log('step 1');
			$.ajax({
				method:'GET',
				url:   'iam.jsp',
				data:   { name:$('#name').val()   }
			})
			.done(function(data){
				alert(data);
				$('#rcvMsg').text(data);
			});
		});
	});
	
	
</script>
</head>
<body>
<input type="text" 	id="name"/>
<input type="button" id="btnJsp" value="get jsp" /> <!-- 프로그램도 로드할 수 있다. --> 
<div id="rcvMsg"></div>
</body>
</html>