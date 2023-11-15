package com.multi.mvc05;

public class ComputerVO {
	private String com;
	private int price1;
	private String mouse;
	private int price2;
	
	
	public String getCom() {
		return com;
	}


	public void setCom(String com) {
		this.com = com;
	}


	public int getPrice1() {
		return price1;
	}


	public void setPrice1(int price1) {
		this.price1 = price1;
	}


	public String getMouse() {
		return mouse;
	}


	public void setMouse(String mouse) {
		this.mouse = mouse;
	}


	public int getPrice2() {
		return price2;
	}


	public void setPrice2(int price2) {
		this.price2 = price2;
	}


	@Override
	public String toString() {
		return "ComputerDTO [com=" + com + ", price1=" + price1 + ", mouse=" + mouse + ", price2=" + price2 + "]";
	}
	
}
