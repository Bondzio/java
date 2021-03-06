<%@page import="controller.WatsonConnection"%>
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
	$('#chatList').append('<p class="triangle-right left">' + '소피입니다. 팀과 선수와 관련된 질문을 해 주세요. ' + '</p>');
	/*  $.post("controller.jsp",{msg:$('#msg').val()})
	.done(function(data) {
		$('#chatList').append('<p class="triangle-right left">' + '소피입니다. 팀과 선수와 관련된 질문을 해 주세요. ' + '</p>');
	});  */
		
	$("#msg").keypress(function (e) {
	        if (e.which == 13){
	        	$('#chatList').scrollTop($('#chatList').prop('scrollHeight'));
	        	document.body.scrollTop = document.body.scrollHeight;
	        	if ($("#msg").val()=='') {
	        		alert('값을 입력하셔야됩니다.');
	        	} else {
	        	   	$('#chatList').append('<p class="triangle-right right">' + $("#msg").val()  + '</p>');
		        	
					$.post("controller.jsp",{msg:$('#msg').val()})
					.done(function(data) {
						$('#chatList').append('<p class="triangle-right left">' + data  + '</p>');
						
					});
					$('#msg').val('');
					document.body.scrollTop = document.body.scrollHeight;
					

					/* $.post("imagecrawer.jsp",{player:'손흥민'})
					.done(function(data) {
						$('#chatList').append('<img src='+ data + '/>');
					}); */
					
					
	        	}
	        }
	    });
	
});
</script>
<meta charset="UTF-8">
<title> WATSON CONVERSATION </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
	<div class="jumbotron">
	    <h1>Sports Oriented Friendly Intelligence</h1>
	      <p>The Premier League is an English professional league for men's association football clubs. 
	    At the top of the English football league system, it is the country's primary football competition.</p> 
	</div>
	</div>
	<div class="row" style="background-image:url('../resources/img/banner.jpg');">
			<div class="col-sm-1" style="background-color:rgba(70,70,70,0.7);height:700px"></div>
			<div class="col-sm-1" style="background-color:rgba(80,80,80,0.7);height:700px"></div>
			<div id="chatList" class="col-sm-10" style="background-color:rgba(100,100,100,0.7);height:700px;overflow:auto;);"></div>
	
		<div class="col-sm-12" style="background-color:rgba(10,10,10,0.9);">
				<input type="text" id="msg" class="triangle-border center" !autofocus> 
		</div>
	</div>
		<div class="row">
	
	</div>
</div>
</body>
</html>