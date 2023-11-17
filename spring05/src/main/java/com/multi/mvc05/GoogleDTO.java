package com.multi.mvc05;

public class GoogleDTO {
	private String hobby;
	private int hour;
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public int getHour() {
		return hour;
	}
	public void setHour(int hour) {
		this.hour = hour;
	}
	@Override
	public String toString() {
		return "GoogleDTO [hobby=" + hobby + ", hour=" + hour + "]";
	}
	
}
