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
<%= request.getParameter("name")%>
<%= request.getParameter("pwd")%>
	${param.name}
	${param.pwd}

	${param ["name"]}
	${param ["pwd"]}
</body>
</html>