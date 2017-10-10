<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html>
<head>
<style>
	@import url('<c:url value="/resources/css/bubbles.css" />');
</style>
<script src="<c:url value="/resources/js/jquery-3.2.1.js" />"> </script>
<script type="text/javascript">

$(function(){
	
	$.post("controller.jsp",{msg:$('#msg').val()})
	.done(function(data) {
		$('#chatList').append('<p class="triangle-right left">' + data  + '</p>');
	});
	
	/* 
	$('#query').click(function(){
			$('#chatList').append('<p class="triangle-right right">' + $("#msg").val()  + '</p>');
			$.post("controller.jsp",{msg:$('#msg').val()})
			.done(function(data) {
				$('#chatList').append('<p class="triangle-right left">' + data  + '</p>');
			});
			$('#msg').val('');
	}); */
	
	  $("#msg").keypress(function (e) {
	        if (e.which == 13){
	        	if ($("#msg").val()=='') {
	        		alert('값을 입력하셔야됩니다.');
	        	} else {
	        	   	$('#chatList').append('<p class="triangle-right right">' + $("#msg").val()  + '</p>');
		        	
					$.post("controller.jsp",{msg:$('#msg').val()})
					.done(function(data) {
						$('#chatList').append('<p class="triangle-right left">' + data  + '</p>');
					});
					$('#msg').val('');
					$("#mydiv").scrollTop($("#mydiv")[0].scrollHeight);
	        	}
	        }
	    });
	
});
</script>
<meta charset="UTF-8">
<title> WATSON CONVERSATION TEST </title>
<link rel="shortcut icon" href="../favicon.ico" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="row" id="mydiv">
	
		<!-- <img src="../resources/img/banner.jpg" width="900px"> -->
		<div id="chatList"></div>
		<input type="text" size="40" id="msg" class="triangle-border center"> 
		<!-- <input type="button" id="query" value="query" > -->
	
</div>
</body>
</html>