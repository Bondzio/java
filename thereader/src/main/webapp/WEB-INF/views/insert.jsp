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
<form name="classify_form" method="post">
	<div class="container">	
		<div class="jumbotron" >
				<h2> The reader - Email 읽어주는 로봇 </h2>
				<p> email를 읽습니다. 분석합니다.</p>
		</div>
	</div>
	<div class="container">
		<div class="form-group row">
			<div class="col-xs-3">
	    		<label for="ex1">sender</label>
	    		<input class="form-control" id="ex1" type="text">
	  		</div>
	  		<div class="col-xs-2">
	    		<label for="ex2">date</label>
	    		<input class="form-control" id="ex2" type="text">
	  		</div>
		  	<div class="col-xs-7">
	    		<label for="ex3">subject</label>
		    	<input class="form-control" id="ex3" type="text">
	  		</div>
		</div>
		<div class="form-group row">
			<div class="col-xs-12">
				<label for="ex1">email contents</label>
				<textarea class="form-control col-sm-5" name="content" rows="10">
				Your email may be inserted herein.
			</textarea>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-8"></div>
			<div class="col-sm-2">		
					<a href="home"></a><button type="button" class="btn btn-default btn-success btn-block"/>HOME</button></a>
			</div>		
			<div class="col-sm-2">		
					<button type="button" class="btn btn-default btn-success btn-block"/>확인</button>
			</div>			
		</div>
	</div>
</form>
</body>
</html>