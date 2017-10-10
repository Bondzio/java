package Practice;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Database {
		Connection 			cn = null;
		PreparedStatement 	st = null;
		ResultSet 			rs = null;
		MemberVO userInfo = new MemberVO();
	
	public void init() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bigdata", "bigdata");
	}

	public void create (String user_id, String user_pw, String user_name) throws Exception {
		StringBuffer sql = new StringBuffer();
		sql.append(" insert table into t_mem");
		sql.append(" values (?, ?, ? ");
		st = cn.prepareStatement(sql.toString());
		st.setString(1, user_id);
		st.setString(2, user_pw);
		st.setString(3, user_name);
	}


	/*public void MemberVO login(MemberVO userInfo) throws Exception{
	
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT	user_name");
		sql.append(" FROM 	t_mem");
		sql.append(" WHERE 	user_id=?"); 
		sql.append(" and user_pw=?");
		
		st = cn.prepareStatement(sql.toString());
		st.setString(1, userInfo.getUser_id());
		st.setString(2, userInfo.getUser_pw());
		rs = st.executeQuery();
		
		if (rs.next()) {
				userInfo.setUser_name(rs.getString("user_name"));
				return userInfo;
			} else  {
				throw new RuntimeException("아이디 혹은 비밀번호가 틀립니다."); 
			}				 
		}				*/
	

public void disconnect() {
		if (rs != null) try {rs.close();} catch (Exception e){}
		if (st != null) try {st.close();} catch (Exception e){}
		if (cn != null) try {cn.close();} catch (Exception e){}		
	}
}