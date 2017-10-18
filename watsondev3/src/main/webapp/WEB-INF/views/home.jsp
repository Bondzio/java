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
			alert(param)
			$.ajax({
				url : "classifier",
				type : "POST",
				data : param,
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					if(data != null) {
						/* $('#out').text(data); */
						/* var items = [];
						 $.each( data, function( key, val ) {
						    items.push( "<li id=" + key + "'>" + val + "</li>" );
						 }); */
						  /* $.each( data, function( key, val ) {
							  document.getElementById(key).innerHTML = val;
						  } */
							a="<table class='table'><thead><tr><th>JOY</th><th>SADNESS</th><th>DISGUST</th><th>ANGER</th><th>FEAR</th></tr></thead><tbody><tr>";
							$.each( data, function( key, val ) {
							a = a + "<td>" + val + "</td>";
						});
						a=a+"</tr></table>";
						console.log(a); 
						document.getElementById("result").innerHTML = a; 						 
						/*   $( "<ul/>", {
						    "class": "my-new-list",
						    html: items.join( "" )
						  }).appendTo( "body" ); */
					} else{
						alert('data is null');
					}
				},
				error : function(request, status, error) {
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			})
		})
	})
</script>

</head>
<body>
<form name="classify_form" method="post">
	<div class="container">
		<div class="jumbotron" >
			<h2> Classfier of text tones and emotions </h2>
			<p> 텍스트를 읽고 감정을 분석합니다. 
				Sadness, Fear, Joy, Disgust, Joy			
			</p>
		</div>
	
		<div class="row">
			<div class="col-lg-12 col-sm-12">
			<textarea class="form-control col-sm-5" name="content" rows="10">
			Trump's latest travel ban order blocked
4 hours ago
 From the section US & Canada Share this with Facebook Share this with Twitter Share this with Messenger Share this with Email Share
Hanadi Al-Hai (R) welcomes her mother travelling from Jordan on a Yemeni passport in Los Angeles, California (June 29, 2017)Image copyrightREUTERS
Image caption
A woman (middle) travelling from Jordan on a Yemeni passport arrives in Los Angeles, California
US President Donald Trump's latest bid to impose travel restrictions on citizens from eight countries entering the US has suffered a court defeat.
A federal judge slapped a temporary restraining order on the open-ended ban before it could take effect this week.
The policy targets Iran, Libya, Syria, Yemen, Somalia, Chad and North Korea, as well as some Venezuelan officials.
Previous iterations of the ban targeted six Muslim-majority countries, but were checked by the Supreme Court.
The state of Hawaii sued in Honolulu to block Mr Trump's third travel ban, which was set to go into effect early on Wednesday.
It argued the president did not have the powers under federal immigration law to impose such restrictions.
US District Judge Derrick Watson, who blocked Mr Trump's last travel ban in March, issued the new restraining order.
			</textarea>
			</div>
		</div><br/>
			
		<div class="col-lg-2 col-sm-2">		
			<button type="button" class="btn btn-default btn-success btn-block"/>확인</button>
		</div>
		
		<div id="out">
		</div>
		<div id="result">
		</div>
		
	</div>
</form>
<li><a href="display">display voices</a><br/>
</body>
</html>