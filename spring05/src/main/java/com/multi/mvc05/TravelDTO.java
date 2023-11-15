package com.multi.mvc05;

public class TravelDTO {
	private String travel1;
	private String travel2;
	private String travel3;
	private String travel4;
	private String travel5;
	
	public String getTravel1() {
		return travel1;
	}
	public void setTravel1(String travel1) {
		this.travel1 = travel1;
	}
	public String getTravel2() {
		return travel2;
	}
	public void setTravel2(String travel2) {
		this.travel2 = travel2;
	}
	public String getTravel3() {
		return travel3;
	}
	public void setTravel3(String travel3) {
		this.travel3 = travel3;
	}
	public String getTravel4() {
		return travel4;
	}
	public void setTravel4(String travel4) {
		this.travel4 = travel4;
	}
	public String getTravel5() {
		return travel5;
	}
	public void setTravel5(String travel5) {
		this.travel5 = travel5;
	}
	@Override
	public String toString() {
		return "TravelDTO [travel1=" + travel1 + ", travel2=" + travel2 + ", travel3=" + travel3 + ", travel4="
				+ travel4 + ", travel5=" + travel5 + "]";
	}
	
}
