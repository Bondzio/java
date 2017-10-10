package crawling;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.json.simple.parser.ParseException;

import model.GameVO;

public class Driver_schedule {
	public static void main(String[] args) throws ParseException, ClassNotFoundException, SQLException {
		String rawData = null;
		//String urlstr = "http://sports.news.naver.com/wfootball/schedule/index.nhn?year=2017&month=08&category=epl";
		String year="2018";
		String month="05";
		String urlstr = "http://sports.news.naver.com/wfootball/schedule/index.nhn?year="+year+"&month="+month+"&category=epl";

		CrawlerSchedule crawer = new CrawlerSchedule();
		crawer.setUrlstr(urlstr);
		crawer.sofi_WebReader();
		rawData = crawer.getRawData();
			
		Sofi_JSONParser_Schedule parser = new Sofi_JSONParser_Schedule();
		List<GameVO> list = parser.do_parsing(rawData);
		
		
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO tb_game");
		sql.append(" VALUES (TO_DATE(?,'YYYY/MM/DD'),?,?,?,?,?)");
		
		Connection cn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		cn = DriverManager.getConnection("jdbc:oracle:thin:@70.12.50.65:1521:xe","bigdata","bigdata");
		ps = cn.prepareStatement(sql.toString());
		
		for(GameVO gameVO : list){
			ps.setString(1, gameVO.getGame_date());
			ps.setString(2, gameVO.getHomeTeamName());
			ps.setString(3, gameVO.getAwayTeamName());
			ps.setString(4, gameVO.getHomeTeamScore());
			ps.setString(5, gameVO.getAwayTeamScore());
			ps.setString(6, gameVO.getStadium());
			System.out.println(gameVO);
			rs = ps.executeQuery();
		}
		dbClose(rs, ps, cn);
	}
	private static void dbClose(ResultSet rs, PreparedStatement ps, Connection cn) {
		if (rs != null) try{rs.close();} catch(Exception e){}
		if (ps != null) try{ps.close();} catch(Exception e){}
		if (cn != null) try{cn.close();} catch(Exception e){}
	}

}