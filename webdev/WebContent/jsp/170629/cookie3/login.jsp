<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String saved_id ="";	
Cookie[] cookies = request.getCookies();
if (cookies!=null){
	for (Cookie c : cookies){
		if (c.getName().equals("user_id")){
			saved_id = c.getValue();
		}
	}
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookies &amp; Session </title>
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>
<form action="login_action.jsp" method="post">
<table>
<caption>로그인 </caption>
<tr>
	<th>아이디</th>
	<td>
		<input type="text" name="user_id" value="<%=saved_id!=null?saved_id:""%>"/>	
	</td>
</tr>

<tr>
	<th>비밀번호</th>
	<td><input type="password" name="user_pw" /></td>
</tr>
<tr>
<td></td>
<td>
	<input type="checkbox" name="save_id"/> 아이디저장
</td>
</tr>

<tr>
	<td	colspan="2"	align="center">
		<input type="submit"	value="COMPLETE">
	</td>
</tr>
</table>
</form>




</body>
</html>