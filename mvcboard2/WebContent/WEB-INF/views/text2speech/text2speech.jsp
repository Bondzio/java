<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="<c:url value="/resources/js/jquery-3.2.1.js" /> "> </script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script><title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
<script type="text/javascript">
	$(document).ready(function(){
		$('#speak').click(function(){
			$('#myaudio').stop();
			$('#myaudio').attr('src','../Speaker?&' + $('#myform').serialize());					
			$('#myaudio').attr('autoplay', 'autoplay');					
		});
	});

</script>



</head>
<body>
<form id="myform" method="post">
<div class="container"> <!--  bootstrap에 있는 기본 container -->
	<div class="jumbotron">
		<h3>text2speech sample example</h3><br/>
		<p> 텍스트의 내용은 선택한 보이스의 언어와 일치해야합니다.
		혼합언어 (예: 영어 텍스트와 일본 여성음성)는 유효한 결과를 생성하지 않습니다.
		한글은 조만간 지원됩니다.</p>
	</div>
	
	<div class="row"> 
		<div class="col-lg-12 col-sm-12">
			<textarea rows="10" name="statement" class="form-control">
Watson TTS, speech to text service by AI algorithm.
Watson TTS, speech to text service by AI algorithm.  
Watson TTS, speech to text service by AI algorithm.
		</textarea>
		</div>		
	</div><br/>
	
	<div class="row">
		<div class="col-lg-10 col-sm-10">
			<select name="voice" class="form-control">
				<c:forEach items="${voices}" var="voice">
					<option value="${voice.name}">${voice.language} : ${voice.description}</option>
				</c:forEach>	
			</select>
		</div>
		
		<div class="col-lg-2 col-sm-2">
			<input type="button" id="speak"	value="읽기" 
			class="btn btn-default btn-success btn-block"/><br/>
		</div>
	</div>
</div>

<div class="container"> <!--  bootstrap에 있는 기본 container -->
	<div class="row">
		<div class="col-lg-12 col-sm-12">
			<audio id="myaudio" style="width:100%;" controls preload="auto"/>
		</div>
	</div>
</div>

<ul class="pager">
  <li><a href="#">Previous</a></li>
  <li><a href="#">Next</a></li>
</ul>

</form>
</body>
</html>