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

$(document).ready(function(){
    $("button").click(function(){
        $("p").slideToggle();
    });
});
	
	
</script>

</head>
<body>


<div class="container">	
		 <div class="col-sm-2">
	 		<a href="./">
	 		<img src="./resources/img/title.png" class="img-rounded" style="width:100%">
	 		</a>
	 	</div>
	 	<div class="col-sm-10">
	 		<h2><right> A Bot Reading Emails</right> </h2>
			<h4> Reading emails, analyzing personalities, retreiving insights for you. </h4>
	 	</div>
</div>
</div>
<div class="container">
		<div class="row">
					<div class="col-sm-2">
						<h4>SENDER</h4>
					</div>
					<div class="col-sm-2">
						<h4>DATE</h4>
					</div>
					<div class="col-sm-3">
						<h4>SUBJECT</h4>
					</div>				
					<div class="col-sm-5">
						<h4>TEXT</h4>
					</div>
		</div>


	<c:forEach items="${list}" var="vo"> 
		<div class="row">
					<div class="col-sm-2"><p  name="sender">${vo.sender}</p></div>
					<div class="col-sm-2"><p  name="date">${vo.date}</p></div>
					<div class="col-sm-3"><p  name="subject">${vo.subject}</p></div>				
					<div class="form-group row">
					<div class="col-sm-5">
						<textarea class="form-control col-sm-6" id="text" name="text" rows="10">${vo.text}</textarea>
					</div>
					</div>
			</div><br/>
		</c:forEach>
</div>

<div class="container">		
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
	
		
<form name="classify_form" method="post">
</form>
<div id="result"></div>
</body>
</html>