package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.GameVO;
import model.PlayerVO;
import model.TeamVO;

public class DatabaseConnection {
	
	Connection cn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public void getConnection () throws SQLException, ClassNotFoundException{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		cn = DriverManager.getConnection("jdbc:oracle:thin:@70.12.50.65:1521:xe" , "bigdata", "bigdata");
	}
	
	public List<TeamVO> team(String team) throws ClassNotFoundException, SQLException {
		getConnection();
		StringBuffer sb = new StringBuffer();
		List<TeamVO> list = new ArrayList<>();
		// [intent_player|profile|Son Heung-Min]
		sb.append(" SELECT TEAM_NAME, LASTRESULT, TEAMRANKINGGROUP, TEAMCODE, GAINGOAL, GAMECOUNT, GAINPOINT, FOUL, LOST, WON, RANK, DRAWN, MANAGER, TEAM_NAME_KR ");
		sb.append(" FROM TB_TEAM ");
		sb.append(" WHERE TEAM_NAME = ? ");
		System.out.println("TEAMNAME = " + team);
		System.out.println("sb.toString : " + sb.toString());
		ps = cn.prepareStatement(sb.toString());
		
		ps.setString(1, team);
		rs = ps.executeQuery();
		while(rs.next()){
			TeamVO teamVO = new TeamVO();
			//String
			teamVO.setTeam_name(rs.getString("team_name"));
			teamVO.setTeam_name_kr(rs.getString("team_name_kr"));
			teamVO.setLastResult(rs.getString("lastResult"));
			teamVO.setTeamRankingGroup(rs.getString("TeamRankingGroup")); 
			teamVO.setTeamCode(rs.getString("TeamCode"));
			//long
			teamVO.setGameCount (rs.getLong("gameCount"));
			teamVO.setGainPoint (rs.getLong("gainPoint"));
			teamVO.setFoul      (rs.getLong("foul"));
			teamVO.setLost      (rs.getLong("lost"));
			teamVO.setGainGoal  (rs.getLong("gainGoal"));
			teamVO.setWon       (rs.getLong("won"));
			teamVO.setRank      (rs.getLong("rank"));
			teamVO.setDrawn     (rs.getLong("drawn"));
			teamVO.setManager     (rs.getString("manager"));
			list.add(teamVO);
		}
		return list;		
	}
	
	public List<PlayerVO> player(String player) throws SQLException, ClassNotFoundException {
		getConnection();
		
		StringBuffer sb = new StringBuffer();
		List<PlayerVO> list = new ArrayList<>();
		// [intent_player|profile|Son Heung-Min]
		sb.append(" SELECT PLAYER, GAME_COUNT, P_GOAL, P_ASSIST, TEAM, P_NO, POSITION, AGE, HEIGHT, WEIGHT, NATIONALITY ");
		sb.append(" FROM TB_PLAYER ");
		sb.append(" WHERE PLAYER = ? ");
		System.out.println("PLAYERNAME = " + player);
		System.out.println("sb.toString : " + sb.toString());
		ps = cn.prepareStatement(sb.toString());
		
		ps.setString(1, player);
		rs = ps.executeQuery();
		while(rs.next()){
			PlayerVO playerVO = new PlayerVO();
			playerVO.setPlayer(rs.getString("PLAYER"));
			playerVO.setGame_count(rs.getInt("GAME_COUNT"));
			playerVO.setP_goal(rs.getInt("P_GOAL"));
			playerVO.setP_assist(rs.getInt("P_ASSIST"));
			playerVO.setTeam(rs.getString("TEAM"));
			playerVO.setP_no(rs.getInt("P_NO"));
			playerVO.setPosition(rs.getString("POSITION"));
			playerVO.setAge(rs.getInt("AGE"));
			playerVO.setHeight(rs.getInt("Height"));
			playerVO.setWeight(rs.getInt("weight"));
			playerVO.setNationality(rs.getString("NATIONALITY"));
			list.add(playerVO);
		}
		return list;
	}
	public List<GameVO> game(String target, String intent_detail) throws ClassNotFoundException, SQLException {
		getConnection();
		StringBuffer sb = new StringBuffer();
		List<GameVO> list = new ArrayList<>();
		// [intent_player|profile|Son Heung-Min]
	    sb.append(" SELECT game_date,homeTeamName,awayTeamName,homeTeamScore,awayTeamScore,stadium");
		sb.append(" FROM tb_game");
		sb.append(" WHERE game_date BETWEEN to_date(?,'YYYY-MM-DD') AND to_date(?,'YYYY-MM-DD')+999");
		sb.append(" AND (homeTeamName = ? OR awayTeamName =?) ");
		System.out.println("GAMENAME = " + target);
		System.out.println("sb.toString : " + sb.toString());
		ps = cn.prepareStatement(sb.toString());

		String teamName = new GameVO().teamNameEnToKr(target);
		System.out.println("TeamName converted by teamNameEnToKr" +  teamName);
		ps.setString(1, "2017-01-01");
		ps.setString(2, intent_detail);
		ps.setString(3, teamName);
		ps.setString(4, teamName);
		rs = ps.executeQuery();
		while(rs.next()){
			GameVO gameVO = new GameVO();
			
			gameVO.setGame_date(rs.getDate("game_date"));
			gameVO.setHomeTeamName(rs.getString("homeTeamName"));
			gameVO.setAwayTeamName(rs.getString("awayTeamName"));
			gameVO.setHomeTeamScore(rs.getInt("homeTeamScore"));
			gameVO.setAwayTeamScore(rs.getInt("awayTeamScore"));
			/*private int homeTeamScore;
			private int awayTeamScore;
			private Date gameStartTime;*/
			gameVO.setStadium(rs.getString("Stadium"));
			
			list.add(gameVO);
		}
		for(GameVO gameVO : list) System.out.println("gameVO : "+ gameVO);
		return list;

	}
}
