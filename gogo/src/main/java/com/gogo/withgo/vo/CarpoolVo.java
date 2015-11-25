package com.gogo.withgo.vo;

import java.sql.Date;

public class CarpoolVo {
	private int carno;			
	private String category;	
	private int mno;		
	private String departure;	
	private String arrival;		
	private String stop1;
	private String stop2;
	private String stop3;
	private String usertype;  	//driver(타세요) or rider(태워주세요) or together(함께타요)
	private int seat;
	private int bookedseat;
	private String memo;		
	private String departuredate;			//Date?String?
	private int price;
	private int pricerange;/////////////////////////
	private int smoking;
	private int genderlimit;
	private int requestseat;
	
	public CarpoolVo() {}

	public CarpoolVo(int carno, String category, int mno, String departure, String arrival, String stop1, String stop2,
			String stop3, String usertype, int seat, int bookedseat, String memo, String departuredate,
			int price, int smoking, int genderlimit, int requestseat, int pricerange) {
		super();
		this.carno = carno;
		this.category = category;
		this.mno = mno;
		this.departure = departure;
		this.arrival = arrival;
		this.stop1 = stop1;
		this.stop2 = stop2;
		this.stop3 = stop3;
		this.usertype = usertype;
		this.seat = seat;
		this.bookedseat = bookedseat;
		this.memo = memo;
		this.departuredate = departuredate;
		this.price = price;
		this.smoking = smoking;
		this.genderlimit = genderlimit;
		this.requestseat = requestseat;
		this.pricerange = pricerange;
	}

	
	public int getPricerange() {
		return pricerange;
	}

	public void setPricerange(int pricerange) {
		this.pricerange = pricerange;
	}

	public int getRequestseat() {
		return requestseat;
	}

	public void setRequestseat(int requestseat) {
		this.requestseat = requestseat;
	}

	public int getBookedseat() {
		return bookedseat;
	}

	public void setBookedseat(int bookedseat) {
		this.bookedseat = bookedseat;
	}

	public int getGenderlimit() {
		return genderlimit;
	}

	public void setGenderlimit(int genderlimit) {
		this.genderlimit = genderlimit;
	}

	public int getCarno() {
		return carno;
	}

	public void setCarno(int carno) {
		this.carno = carno;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getDeparture() {
		return departure;
	}

	public void setDeparture(String departure) {
		this.departure = departure;
	}

	public String getArrival() {
		return arrival;
	}

	public void setArrival(String arrival) {
		this.arrival = arrival;
	}

	

	public String getStop1() {
		return stop1;
	}

	public void setStop1(String stop1) {
		this.stop1 = stop1;
	}

	public String getStop2() {
		return stop2;
	}

	public void setStop2(String stop2) {
		this.stop2 = stop2;
	}

	public String getStop3() {
		return stop3;
	}

	public void setStop3(String stop3) {
		this.stop3 = stop3;
	}


	public int getSmoking() {
		return smoking;
	}

	public void setSmoking(int smoking) {
		this.smoking = smoking;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getDeparturedate() {
		return departuredate;
	}

	public void setDeparturedate(String departuredate) {
		this.departuredate = departuredate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
}
