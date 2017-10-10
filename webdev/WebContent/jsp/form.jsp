<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 소리질러</title>
</head>
<body>

<form action="process.jsp" method="post" style="display:none;">
	이름 : <input type="text" placeholder="YOUR NAME PLEASE" name="name" autofocus="autofocus"/> <br/>
	나이 : <input type="number" name="age" value="20"/>  <br/>	
<input type="submit" value="확인" />
</form>

<form action="want.jsp" method="post">
<select name="want" size="1">
	<option>으악</option>
	<option>우와</option>
	<option>크악</option>
	<option>악!</option>
	<option>콱!</option>
</select>

<br>
<input type="submit" value="소리질러" />
</form>



</body>
</html>