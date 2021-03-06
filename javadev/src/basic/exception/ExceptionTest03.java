package basic.exception;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class ExceptionTest03 {
	public static void main(String[] args) {
		Scanner sc = new Scanner (System.in);
		System.out.print("ID : "); String user_id = sc.nextLine();
		System.out.print("PW : "); String user_pw = sc.nextLine();
		
		MemberVO userInfo = new MemberVO();
		userInfo.setUser_id(user_id);
		userInfo.setUser_pw(user_pw);
		
		try {
			userInfo = login(userInfo);
			System.out.println(userInfo.getUser_name() + "님이 로그인하셨습니다");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		  }
	}

	private static MemberVO login(MemberVO userInfo) throws Exception{
		Connection cn = null;
		Statement st = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT	user_name");
		sql.append(" FROM 	t_mem");
		sql.append(" WHERE 	user_id='"+userInfo.getUser_id()+"'"); // id를 '-- 로 줘버리면 이후 sql문장들이 전부 주석처리된다. 
		sql.append(" and user_pw='"+userInfo.getUser_pw()+"'"); // 왼쪽 공백을 줘야된다. 
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bigdata", "bigdata");
			st = cn.createStatement();
			rs = st.executeQuery(sql.toString());
			if (rs.next()) {
				userInfo.setUser_name(rs.getString("user_name"));
				return userInfo;
			} else  {
				throw new LoginFailException("아이디 혹은 비밀번호가 틀립니다.", userInfo); 
			}
				
		}  finally {
			if (rs != null) try {rs.close();} catch (Exception e){}
			if (st != null) try {st.close();} catch (Exception e){}
			if (cn != null) try {cn.close();} catch (Exception e){} 
		}
		
		/*if (userInfo.getUser_id().equals("multi") && 
			userInfo.getUser_pw().equals("fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe")){
				userInfo.setUser_name("비케이");
				return userInfo;
		} else {
			throw new LoginFailException("아이디 혹은 비밀번호가 틀립니다.", userInfo); 
		}		*/
	}
}