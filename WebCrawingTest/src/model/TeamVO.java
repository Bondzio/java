package model;

public class TeamVO {

	private String teamName;
	private String lastResult;
	private String teamRankingGroup; 
	private String teamCode;
	private int gainGoal;
	private int gameCount;
	private int gainPoint;
	private int foul;
	private int lost;
	private int won;
	private String champsLeague;
	private int rank;
	private int drawn;
	
	public final String getTeamName() {
		return teamName;
	}
	public final void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public final String getLastResult() {
		return lastResult;
	}
	public final void setLastResult(String lastResult) {
		this.lastResult = lastResult;
	}
	public final String getTeamRankingGroup() {
		return teamRankingGroup;
	}
	public final void setTeamRankingGroup(String teamRankingGroup) {
		this.teamRankingGroup = teamRankingGroup;
	}
	public final int getGainGoal() {
		return gainGoal;
	}
	public final void setGainGoal(int gainGoal) {
		this.gainGoal = gainGoal;
	}
	public final int getGameCount() {
		return gameCount;
	}
	public final void setGameCount(int gameCount) {
		this.gameCount = gameCount;
	}
	public final int getGainPoint() {
		return gainPoint;
	}
	public final void setGainPoint(int gainPoint) {
		this.gainPoint = gainPoint;
	}
	public final String getTeamCode() {
		return teamCode;
	}
	public final void setTeamCode(String teamCode) {
		this.teamCode = teamCode;
	}
	public final int getFoul() {
		return foul;
	}
	public final void setFoul(int foul) {
		this.foul = foul;
	}
	public final int getLost() {
		return lost;
	}
	public final void setLost(int lost) {
		this.lost = lost;
	}
	public final int getWon() {
		return won;
	}
	public final void setWon(int won) {
		this.won = won;
	}
	public final String getChampsLeague() {
		return champsLeague;
	}
	public final void setChampsLeague(String champsLeague) {
		this.champsLeague = champsLeague;
	}
	public final int getRank() {
		return rank;
	}
	public final void setRank(int rank) {
		this.rank = rank;
	}
	public final int getDrawn() {
		return drawn;
	}
	public final void setDrawn(int drawn) {
		this.drawn = drawn;
	}
	@Override
	public String toString() {
		return "TeamVO [teamName=" + teamName + ", lastResult=" + lastResult + ", teamRankingGroup=" + teamRankingGroup
				+ ", gainGoal=" + gainGoal + ", gameCount=" + gameCount + ", gainPoint=" + gainPoint + ", teamCode="
				+ teamCode + ", foul=" + foul + ", lost=" + lost + ", won=" + won + ", champsLeague=" + champsLeague
				+ ", rank=" + rank + ", drawn=" + drawn + "]";
	}

	
	
}
