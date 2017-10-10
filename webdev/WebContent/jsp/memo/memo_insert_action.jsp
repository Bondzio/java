<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="memo.model.MemoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="memoVO" class="memo.model.MemoVO"/>
<jsp:setProperty name="memoVO" property="*"/>

<%
	Connection cn = null;
	PreparedStatement ps = null;

	StringBuffer sql = new StringBuffer();
	sql.append(" insert into t_memo(no, name, title, content)");
	sql.append(" values(seq_memo.nextval, ?, ?, ?)");
	boolean result=false; // result를 확인하기 위한 flag
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bigdata","bigdata");
		ps = cn.prepareStatement(sql.toString());
		ps.setString(1, memoVO.getName());
		ps.setString(2, memoVO.getTitle());
		ps.setString(3, memoVO.getContent());
		ps.executeUpdate(); // excutequery  + ResultSet는 select로 조회할 때 사용함. 
		result = true; // insert가 실패하면 수행이 여기까지 진행되지 않고 catch 로 빠짐
	}	catch (Exception e) {
			e.printStackTrace();
	}	finally { // 자원반납
			if(ps !=null) try{ps.close();} catch (Exception e){}
			if(cn !=null) try{cn.close();} catch (Exception e){}
		
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>
<% if(result) { %>
메모등록성공
<% } else { %>
메모등록실패
<% } %>
</body>
</html>