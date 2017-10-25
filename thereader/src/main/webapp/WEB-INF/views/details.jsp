<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<!-- meta 정보의 http-equiv content-type text/html 등이 지정되지 않을 경우
문자열의 ?가 쿼리스트링에서 특수문자로 변경 -->
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
		$('button').click(function() {
			let param = $('form').serialize();
			param = decodeURIComponent(param);
			watsonNLU(param);			
		})
	})
	
	
	function watsonNLU(param){
		$.ajax({
			url : "classifier",
			type : "POST",
			data : param,
			contentType : "application/json; charset=UTF-8",
			success : function(data) {
				if(data != null) {
						a="<table class='table'><thead><tr><th>JOY</th><th>SADNESS</th><th>DISGUST</th><th>ANGER</th><th>FEAR</th></tr></thead><tbody><tr>";
						$.each( data, function( key, val ) {
						a = a + "<td>" + val + "</td>";
					});
					a=a+"</tr></table>";
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
<div class="jumbotron" >
		<h2> The reader - Email 읽어주는 로봇 </h2>
		<p> email를 읽고 감정을 분석합니다. 
			Sadness, Fear, Joy, Disgust, Joy			
		</p>
</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-sm-2">
			<h3>sender</h3>
			<p  name="sender">bbk0529@gmail.com</p>
		</div>
		<div class="col-sm-2">
			<h3>date</h3>
			<p  name="date">2017.10.25</p>
		</div>
		<div class="col-sm-8">
			<h3>subject</h3>
			<p  name="subject">It's been prepared for a test before starting.</p>
		</div>	
	</div>		
	<div class="row">
		<div class="col-sm-12">
			<h3>Text</h3>
			<p  name="text">Summary of email will be shown here. </p>
		</div>
	</div>
	<div class="row">
	<div class="col-lg-2 col-sm-2">		
			<center><button type="button" class="btn btn-default btn-success btn-block"/>확인</button></center>
	</div>
	</div>
</div>	
	
		
<form name="classify_form" method="post">
</form>
<div class="container">
	<div class="row">
				<div class="col-lg-12 col-sm-12">
					<a href="insert"><H3>Manually Insert</H3></a>
				</div>
				<div class="col-lg-12 col-sm-12">
					<a href="list"><H3>Listing Email</H3></a>
				</div>
				<div class="col-lg-12 col-sm-12">
					<a href="summary"><H3>Summary of Analyzed Emails</H3></a>
				</div>
				<div class="col-lg-12 col-sm-12">
					<a href="summary"><H3>Summary of Analyzed Emails</H3></a>
				</div>
	</div>
</div>
</body>
</html>