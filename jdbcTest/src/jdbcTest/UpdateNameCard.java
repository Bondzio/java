package jdbcTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateNameCard {
public static void main(String[] args) {
	
	Connection con = null;
	PreparedStatement pstmt = null;

	String query0 = "UPDATE NAMECARD SET NAME=?, COMPANY=? WHERE NO=?";
	
	try{
		con=OrclConnection.getConnection();
		pstmt=con.prepareStatement(query0);
		pstmt.setString(1,"KK");
		pstmt.setString(2,"KK INTERNATIONAL");
		pstmt.setInt(3,1);
		pstmt.executeUpdate();
		/* while (rs.next()){
			String empno = rs.getString(1);
			String ename = rs.getString(2);
			String job = rs.getString(3);
			String mgr = rs.getString(4);
			String hiredate = rs.getString(5);
			String sal = rs.getString(6);
			String comm = rs.getString(7);
			String deptno = rs.getString(8);
			System.out.println(empno+" : " +ename+" : " +job+" : " +mgr+" : " +hiredate+" : " +sal+" : " +comm+" : " +deptno);
		} */
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

