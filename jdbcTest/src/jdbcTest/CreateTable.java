package jdbcTest;

import java.sql.*;

public class CreateTable {
public static void main(String[] args) {
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String query0 = "DROP TABLE NAMECARD";
	String query1 = "CREATE TABLE NAMECARD ("+
			"NO NUMBER CONSTRAINT PK_NAMECARD PRIMARY KEY,"+
			"NAME VARCHAR2(20) NOT NULL, "+ 
			"MOBILE VARCHAR2(20) NOT NULL,"+
			"EMAIL VARCHAR2(40),"+
			"COMPANY VARCHAR2(60))";
	
	String query2 ="CREATE SEQUENCE SEQ_NAMECARD_NO " + "INCREMENT BY 1" + " START WITH 1"; 
	
	try{
		conn=OrclConnection.getConnection();
		stmt=conn.createStatement();
		stmt.executeQuery(query0);
		stmt.executeQuery(query1);
		stmt.executeQuery(query2);
		
		
		while (rs.next()){
			String empno = rs.getString(1);
			String ename = rs.getString(2);
			String job = rs.getString(3);
			String mgr = rs.getString(4);
			String hiredate = rs.getString(5);
			String sal = rs.getString(6);
			String comm = rs.getString(7);
			String deptno = rs.getString(8);
			System.out.println(empno+" : " +ename+" : " +job+" : " +mgr+" : " +hiredate+" : " +sal+" : " +comm+" : " +deptno);
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e){}
	}
}
}

