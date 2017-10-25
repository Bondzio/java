package net.bkpark.tone;

import java.io.Serializable;

public class EmotionVO implements Serializable {
	int no;
	String statement;
	double anger, fear,	disgust, joy, sadness;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getStatement() {
		return statement;
	}
	public void setStatement(String statement) {
		this.statement = statement;
	}
	public double getAnger() {
		return anger;
	}
	public void setAnger(double anger) {
		this.anger = anger;
	}
	public double getFear() {
		return fear;
	}
	public void setFear(double fear) {
		this.fear = fear;
	}
	public double getDisgust() {
		return disgust;
	}
	public void setDisgust(double disgust) {
		this.disgust = disgust;
	}
	public double getJoy() {
		return joy;
	}
	public void setJoy(double joy) {
		this.joy = joy;
	}
	public double getSadness() {
		return sadness;
	}
	public void setSadness(double sadness) {
		this.sadness = sadness;
	}
	@Override
	public String toString() {
		return "EmotionVO [no=" + no + ", statement=" + statement + ", anger=" + anger + ", fear=" + fear + ", disgust="
				+ disgust + ", joy=" + joy + ", sadness=" + sadness + "]";
	}
	
	
	
}
