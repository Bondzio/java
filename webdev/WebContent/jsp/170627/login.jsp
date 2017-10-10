<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
<script type="text/javascript">
function input_check(){
		console.log('input check 수행중');
		console.log('userid : ' + document.myform.id.value);
		console.log('userid : ' + document.myform.pwd.value);
		console.log('----------------------------------------');
		console.log('userid : ' + document.getElementById('userid').value);
		console.log('userid : ' + document.getElementById('userpw').value);

	var user_id=document.getElementById('userid').value;
	var user_pw=document.getElementById('userpw').value;
	if (user_id === '') {
		alert('아이디를 입력하세요');
		return;		
	}
	if (user_pw === '') {
		alert('비밀번호를 입력하세요');
		return;		
	}
	document.myform.submit();
}



</script>


</head>
<body>


<!-- <form action="testlogin.jsp" method="post">
		<label for="userid"> 아이디 </label> : <input type="text" name="id" id="userid" autofocus> <br/>
		PASSWORD : <input type="password" name="pwd">
		<input type="submit" value="로그인">

</form>
 -->

<form name="myform" action="testlogin.jsp" method="post">
		<label for="userid"> 아이디 </label> : <input type="text" name="id" id="userid" autofocus> <br/>
		PASSWORD : <input id="userpw" type="password" name="pwd">
		<input type="button" value="로그인" onclick="input_check()">

</form>




</body>
</html>