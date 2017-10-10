package jdbcTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TableJoin {
public static void main(String[] args) {
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String query0 = "SELECT ENAME,JOB,D.DEPTNO,DNAME FROM EMP E, DEPT D WHERE E.DEPTNO=D.DEPTNO AND D.LOC='DALLAS'";
	
	try{
		con=OrclConnection.getConnection();
		pstmt=con.prepareStatement(query0);
		rs=pstmt.executeQuery();
		while (rs.next()){
			String ename = rs.getString(1);
			String job = rs.getString(2);
			String deptno = rs.getString(3);
			String dname = rs.getString(4);
			System.out.println(ename+" : " +job+" : " +deptno+" : " +dname);
		} 
	}
	catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			pstmt.close();
			con.close();
		} catch (SQLException e){}
	}
}
}

