package model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class GameVO {
	private Date game_date;
	private String homeTeamName;
	private String awayTeamName;
	private int homeTeamScore;
	private int awayTeamScore;
	private Date gameStartTime;
	private String stadium;
	
	
	public String teamNameEnToKr(String enName){
	Map<String, String> teamConverter = new HashMap<>();
	teamConverter.put("Chelsea","첼시");
	teamConverter.put("Tottenham Hotspur",  "토트넘");
	teamConverter.put("Manchester City",  "맨시티");
	teamConverter.put("Liverpool", "리버풀");
	teamConverter.put("Arsenal",  "아스널");
	teamConverter.put("Manchester United",  "맨유");
	teamConverter.put("Everton",  "에버턴");
	teamConverter.put("Southampton",  "사우샘프턴");
	teamConverter.put("Bournemouth",  "본머스");
	teamConverter.put("West Bromwich Alb",  "웨스트 브로미치 알비온");
	teamConverter.put("West Ham United",  "웨스트햄 유나이티드");
	teamConverter.put("Leicester City",  "레스터 시티");
	teamConverter.put("Stoke City",  "스토크시티");
	teamConverter.put("Crystal Palace",  "크리스탈 팰리스");
	teamConverter.put("Swansea City",  "스완지");
	teamConverter.put("Burnley",  "번리");
	teamConverter.put("Watford",  "왓포드");
	teamConverter.put("Hull City",  "헐시티");
	teamConverter.put("Middlesbrough", "미들즈브러");
	teamConverter.put("Sunderland",  "선덜랜드");
	
	return teamConverter.get(enName);
	}
	
	public Date getGame_date() {
		return game_date;
	}
	public void setGame_date(Date game_date) {
		this.game_date = game_date;
	}
	public String getHomeTeamName() {
		return homeTeamName;
	}
	public void setHomeTeamName(String homeTeamName) {
		this.homeTeamName = homeTeamName;
	}
	public String getAwayTeamName() {
		return awayTeamName;
	}
	public void setAwayTeamName(String awayTeamName) {
		this.awayTeamName = awayTeamName;
	}
	public int getHomeTeamScore() {
		return homeTeamScore;
	}
	public void setHomeTeamScore(int homeTeamScore) {
		this.homeTeamScore = homeTeamScore;
	}
	public int getAwayTeamScore() {
		return awayTeamScore;
	}
	public void setAwayTeamScore(int awayTeamScore) {
		this.awayTeamScore = awayTeamScore;
	}
	public Date getGameStartTime() {
		return gameStartTime;
	}
	public void setGameStartTime(Date gameStartTime) {
		this.gameStartTime = gameStartTime;
	}
	public String getStadium() {
		return stadium;
	}
	public void setStadium(String stadium) {
		this.stadium = stadium;
	}
	@Override
	public String toString() {
		return "경기 날짜 : " + game_date + "\n 홈팀 : " + homeTeamName + "\n 어웨이팀 : " + awayTeamName
				+ "\n 점수  " + homeTeamScore + " : " + awayTeamScore + "<br /> " + "\n 경기장(장소) : " + stadium;
	}
}
