<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> 설문조사 </title>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
</head>
<body>

<form action="02.research.jsp" method="get">
	이름 <input type="text" name="name"> <br/>
	성별 남자 <input type="radio" name="gender" value="male"> 여자 <input type="radio" name="gender" value="female"> <br/>  
	좋아하는 계절 : <br>
	봄 <input type="checkbox" name="season" value="spring">
	여름 <input type="checkbox" name="season" value="summer">
	가을 <input type="checkbox" name="season" value="autumn">
	겨울 <input type="checkbox" name="season" value="winter">
<br/><br/>
<input type="submit" value="나를말해봐"> 
</form>

</body>
</html>