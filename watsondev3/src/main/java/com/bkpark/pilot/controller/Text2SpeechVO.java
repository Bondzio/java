package com.bkpark.pilot.controller;

import java.io.Serializable;

public class Text2SpeechVO implements Serializable {
	private double anger;
	private double disgust;
	private double fear;
	private double joy;
	private double sadness;
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	private String text;
	public double getAnger() {
		return anger;
	}
	public void setAnger(double anger) {
		this.anger = anger;
	}
	public double getDisgust() {
		return disgust;
	}
	public void setDisgust(double disgust) {
		this.disgust = disgust;
	}
	public double getFear() {
		return fear;
	}
	public void setFear(double fear) {
		this.fear = fear;
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
		return "Text2SpeechVO [anger=" + anger + ", disgust=" + disgust + ", fear=" + fear + ", joy=" + joy
				+ ", sadness=" + sadness + "]";
	}
	
}
