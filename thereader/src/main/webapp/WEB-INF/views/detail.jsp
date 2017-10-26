<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<c:url value=""/>" />
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#callwatson').click(function() {
			let text=$('#text').serialize();
			text = decodeURIComponent(text);
			watsonNLU(text);					
			
		})
	})
	
	
	function watsonNLU(text){
		$.ajax({
			url : "callWatson",
			type : "POST",
			data : text,
			success : function(data) {
				if(data != null) {
					console.log(data);
					a="<table class='table'><thead><tr>";
					$.each( data, function( key, val ) {
						$.each(val, function(key1, val1) {
							a +="<th>" + key1 + "</th>";							
						});
						a +="</tr></thead>";
						
						a +="<tbody><tr>";
						$.each(val, function(key1, val1) {
							a +="<td>" + val1 + "</td>";
						});						
					});					
					a+="</tr></tbody></table>";
					console.log(a); 
					document.getElementById("result").innerHTML = a; 						 
					} else{
					alert('data is null');
				}
			},
			error : function(request, status, error) {
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		})
		
		
	}
	
</script>

</head>
<body>

<div class="container">	
		<div class="col-sm-10">
	 		<h2> A Bot Reading Emails </h2>
			<h4> Reading emails, analyzing personalities, retreiving insights for you. </h4>
	 	</div>
	 	<div class="col-sm-2"><img src="./resources/img/title.png" class="img-rounded" style="width:100%"></div>
</div>
</div>
<div class="container">
	<div class="row">
	<div class="col-sm-1"></div>
	<div class="col-sm-10">
		<div class="row">
			<div class="col-sm-2">
				<h3>sender</h3>
				<p  name="sender">${vo.sender}</p>
			</div>
			<div class="col-sm-2">
				<h3>date</h3>
				<p  name="date">${vo.date}</p>
			</div>
			<div class="col-sm-8">
				<h3>subject</h3>
				<p  name="subject">${vo.subject}</p>
			</div>	
		</div>		
		<div class="row">
			<div class="col-sm-12">
				<h3>Text</h3>
			</div>
			<div class="form-group row">
			<div class="col-xs-12">
				<textarea class="form-control col-sm-5" id="text" name="text" rows="10">${vo.text}</textarea>
			</div>
		</div>
			
		</div>
		<div class="row">
			<div class="col-lg-5 col-sm-5"></div> 
			<div class="col-lg-2 col-sm-2">		
					<button type="button" class="btn btn-default"/ id="callwatson"> CALL WATSON</button></>
			</div>
			<div class="col-lg-5 col-sm-5"></div>
		</div>
		<div class="row">
				<div class="col-sm-10"></div>
				<div class="col-sm-1">		
						<a href="./"><button type="button" id="home" class="btn btn-default""/>HOME</button></a>
				</div>		
				<div class="col-sm-1">		
						<button id="submit" type="button" class="btn btn-default"/>확인</button>
				</div>			
		</div>
	</div>
	</div>
</div>	
	
		
<form name="classify_form" method="post">
</form>
<div id="result"></div>
</body>
</html>