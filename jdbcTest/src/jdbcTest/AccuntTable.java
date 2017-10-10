package jdbcTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccuntTable {
	public static void main(String[] args) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query0 = "create table account( accountno varchar2(3) primary key,  balance number,  constraint account_balance_ck check(balance between 0 and 3000))";
		String query1 = "insert into account values ('111', 3000)";
		String query2 = "insert into account values ('222', 2000)";
		try {
			con = OrclConnection.getConnection();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(query0);
			pstmt.executeQuery();
			pstmt = con.prepareStatement(query1);
			pstmt.executeQuery();
			pstmt = con.prepareStatement(query2);
			pstmt.executeQuery();
			/*
			 * rs = pstmt.executeQuery(); while (rs.next()) { String ename =
			 * rs.getString(1); String job = rs.getString(2); String deptno =
			 * rs.getString(3); String dname = rs.getString(4);
			 * System.out.println(ename + " : " + job + " : " + deptno + " : " +
			 * dname); }
			 */
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
				try {
					con.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
	}
}
