<%@page import="java.sql.DriverManager"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
</head>
<body>
<%
	Connection cn = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		//jdbc:mysql://umj64-004.cafe24.com:3306/n1cop
		cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/n1cop","n1cop","n1stu!maestro");
		out.println("연결성공");
	} catch(Exception e) {
		out.println(e.getMessage());
	} finally {
		if (cn != null) try{cn.close();}catch(Exception e){}
	}
%>
</body>
</html>