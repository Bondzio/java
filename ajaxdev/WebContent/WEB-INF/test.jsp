<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>
<script type="text/javascript">
var member = {
		name:'정대만',
		age:18,
		hobby:'농구'
} 
// 클래스가 아니라 인스턴스, 새로운 것이 나오면 오류검사를 하는게 아니라 새로운 것이 추가되었다고 생각한다. 그 덕에 이종간 통신이 편하다. 

	member.girlfriend = '한나';
	alert(member.name);
	alert(member.girlfriend);
</script>
</body>
</html>