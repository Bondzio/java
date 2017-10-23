package model;

public class GameVO {
	private String game_date;
	private String homeTeamName;
	private String awayTeamName;
	private String homeTeamScore;
	private String awayTeamScore;
	//private Date gameStartTime;
	private String stadium;
	
	public String getGame_date() {
		return game_date;
	}
	public void setGame_date(String game_date) {
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
	public String getHomeTeamScore() {
		return homeTeamScore;
	}
	public void setHomeTeamScore(String string) {
		this.homeTeamScore = string;
	}
	public String getAwayTeamScore() {
		return awayTeamScore;
	}
	public void setAwayTeamScore(String string) {
		this.awayTeamScore = string;
	}
//	public Date getGameStartTime() {
//		return gameStartTime;
//	}
//	public void setGameStartTime(Date gameStartTime) {
//		this.gameStartTime = gameStartTime;
//	}
	public String getStadium() {
		return stadium;
	}
	public void setStadium(String stadium) {
		this.stadium = stadium;
	}
	@Override
	public String toString() {
		return "경기 날짜 : " + game_date +"\n경기장(장소) : " + stadium+ "\n" 
				+ homeTeamName + "\t" + homeTeamScore+" : " +awayTeamScore+"\t"+ awayTeamName+"\n";
	}
}
