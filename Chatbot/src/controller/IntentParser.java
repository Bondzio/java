package controller;

import java.sql.SQLException;
import java.util.List;
import java.util.StringTokenizer;

import model.GameVO;
import model.PlayerVO;
import model.TeamVO;

public class IntentParser {

	String intent = null;
	String intent_detail = null;
	String intent_fixture = null;
	String target = null;
		
	public void tokenParser(String returnedMessage){
		
		returnedMessage=returnedMessage.replace("[", "");
		returnedMessage=returnedMessage.replace("]", "");
		// [intent_player|profile|Son Heung-Min]
		StringTokenizer st = new StringTokenizer(returnedMessage, "|");  
		intent = st.nextToken();
	  	intent_detail = st.nextToken();
	  	target = st.nextToken();
	  	System.out.println("TOKENED INTENT :" + intent);
	  	System.out.println("TOKENED INTENT_DETAIL : "+ intent_detail);
	  	System.out.println("TOKENED PLAYER_NAME : "+ target); 
	}
	
	public String detailParser() throws ClassNotFoundException, SQLException{
		if (intent.equals("intent_team")) return detailParserTeam(); 
		if (intent.equals("intent_player")) return detailParserPlayer();
		return null; 
	}
	
	public String detailParserTeam() throws ClassNotFoundException, SQLException{
		List<TeamVO> list  = new DatabaseConnection().team(target);
		String team_name_kr =list.get(0).getTeam_name_kr(); 
		
		if (intent_detail.equals("lastResult")) return (team_name_kr + "팀의 최종전적은" + list.get(0).getLastResult());
		else if (intent_detail.equals("teamRankingGroup")) return (team_name_kr + "팀의 랭킹 그룹은 " + list.get(0).getTeamRankingGroup());
		else if (intent_detail.equals("teamCode")) return (team_name_kr + " 팀의 코드 " + list.get(0).getTeamCode());
		else if (intent_detail.equals("gainGoal")) return (team_name_kr + "팀의 득점은 " + list.get(0).getGainGoal());
		else if (intent_detail.equals("gameCount")) return (team_name_kr + "팀의 게임수는 " + list.get(0).getGameCount());
		else if (intent_detail.equals("gainPoint")) return (team_name_kr +  "팀의 승점은" + list.get(0).getGainPoint());
		else if (intent_detail.equals("foul")) return (team_name_kr + "의 파울 숫자는 " + list.get(0).getFoul());
		else if (intent_detail.equals("lost")) return (team_name_kr + "의 진 게임 숫자는 " + list.get(0).getLost());
		else if (intent_detail.equals("won")) return (team_name_kr + "의 이긴 게임 숫자는" + list.get(0).getWon());
		else if (intent_detail.equals("rank")) return (team_name_kr + "팀의 순위는" + list.get(0).getRank());
		else if (intent_detail.equals("drawn")) return (team_name_kr + "비긴 숫자는 " + list.get(0).getDrawn());
		else if (intent_detail.equals("Result")) return (team_name_kr + "의 이긴 게임 숫자는 " + list.get(0).getWon() + "승" + "이고 비긴 숫자는 " + list.get(0).getDrawn() + "무" + "이며 진 숫자는 " + list.get(0).getLost() + "패 입니다.");
		else if (intent_detail.equals("manager")) return (team_name_kr + "팀의 감독은 " + list.get(0).getManager());
		else return list.get(0).toString();
	}
	
	
	public String detailParserPlayer() throws ClassNotFoundException, SQLException{
		
		List<PlayerVO> list = new DatabaseConnection().player(target);
		if (intent_detail.equals("team")) return (target + "선수의 팀은 " + list.get(0).getTeam());
		else if (intent_detail.equals("nationality")) return (target + "선수의 국적은 " + list.get(0).getNationality());
		else if (intent_detail.equals("position")) return (target + "선수의 포지션은 " + list.get(0).getPosition());
		else if (intent_detail.equals("weight")) return (target + "선수의 몸무게는 " + list.get(0).getWeight());
		else if (intent_detail.equals("height")) return (target + "선수의 키는 " + list.get(0).getHeight());
		else if (intent_detail.equals("goals")) return (target + "선수의 득점은 " + list.get(0).getP_goal());
		else if (intent_detail.equals("assists")) return (target + "선수의 어시스트는 " + list.get(0).getP_assist());
		else if (intent_detail.equals("p_no")) return (target + "선수의 등번호는 " + list.get(0).getP_no());
		else if (intent_detail.equals("age")) return (target + "선수의 나이는 " + list.get(0).getAge());
		else return list.get(0).toString();
				
	}
	
	public String detailParserFixture() throws ClassNotFoundException, SQLException {
		
		List<GameVO> list = new DatabaseConnection().game(target, intent_detail);
		//if (intent_detail.equals("Game_date")) return(target + "경기 일정은 " + list.get(0).getGame_date() + list.get(0).getHomeTeamName() + list.get(0).getHomeTeamScore() + list.get(0).getAwayTeamName() + list.get(0).getAwayTeamScore() + list.get(0).getStadium());
		StringBuffer sb= new StringBuffer();
		for (GameVO  gameVO : list)
		{
			sb.append(gameVO+"<br />");			
		}
		return sb.toString();
		
		/*if (target.equals("Game_date")) return(target + "경기 일정은 " + list.get(0).getGame_date() + list.get(0).getHomeTeamName() + list.get(0).getHomeTeamScore() + list.get(0).getAwayTeamName() + list.get(0).getAwayTeamScore() + list.get(0).getStadium());
		else return list.get(0).toString();*/
	}
	
}
