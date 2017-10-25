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

</script>

</head>
<body>

<div class="container">	
<div class="row">
	<div class="col-sm-12">
 		<center><h1>The Bot Reading Emails </h1></center>
 	</div> 
	</div>
</div>




<div class="container">
	
	<div class="row">
	<div class="col-sm-2">
	</div>
	<div class="col-sm-8">
 		<img src="./resources/img/title.png" class="img-rounded" style="width:100%">
 	</div>
 	<div class="col-sm-2">
	</div>

	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-2">
			<h3>Listing Email</h3>
			<p  name="list">bbk0529@gmail.com</p>
		</div>
		<div class="col-sm-2">
			<a href="insert"><h3>Manual Input</h3>
			<p  name="insert">You may input manually to analyze</p></a>
		</div>
		<div class="col-sm-2">
			<h3>Summary</h3>
			<p  name="summary">Summary of Analyze</p>
		</div>
		<div class="col-sm-2">
			<h3>Detail</h3>
			<p  name="detail">Summary of Analyze</p>
		</div>
		<div class="col-sm-2"></div>
	</div>	
</div>

</body>
</html>