package com.multi.test100;

public class CarVO {
	private int id;
	private String email;
	private String car;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCar() {
		return car;
	}
	public void setCar(String car) {
		this.car = car;
	}
	@Override
	public String toString() {
		return "CarVO [id=" + id + ", email=" + email + ", car=" + car + "]";
	}
	
}
