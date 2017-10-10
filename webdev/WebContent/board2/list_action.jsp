<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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

<%
	Connection		 	cn	= null;
	Statement 			ps	= null;
	ResultSet 			rs	= null; 
	
	boolean result = false;
	StringBuffer sql = new StringBuffer();
	sql.append(" select * from tb_board order by no desc");		 

	try {
		Class.forName("oracle.jdbc.OracleDriver");
		cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bigdata", "bigdata");
		ps = cn.createStatement();
		rs = ps.executeQuery(sql.toString());
		result=true; %>
		<table>
		<tr>
		<td> 번호</td>
		<td> 이름</td>
		<td> 제목</td>
		<td> 내용</td>
		<td> 날짜</td>
		<td> 조회수</td>
		</tr>
		<%
		while(rs.next()){%>	
					<tr>
					<td> 
						<%=rs.getLong("no")%> 
					</td> 
					<td> 
						<%=rs.getString("name")%>
					</td>
					<td>
						
						<%=rs.getString("title")%>
						
					</td>
					<td>
						<%=rs.getString("content")%>
					</td>
					<td>
						<%=rs.getString("regdate")%>
					</td>
					<td>
						<%=rs.getInt("viewcount")%>
					</td>				
					</tr>
					<%
					
		}%>
		</table><%
	} catch (Exception e){
		e.printStackTrace();		
	
	}finally { 
		if (ps !=null) try {ps.close();}catch(Exception e){}		
		if (cn !=null) try {cn.close();}catch(Exception e){}				
	}	
%>

</body>
</html>