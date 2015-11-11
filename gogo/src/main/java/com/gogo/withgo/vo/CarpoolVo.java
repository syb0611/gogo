package com.gogo.withgo.vo;

import java.sql.Date;

public class CarpoolVo {
	private int carno;			
	private String category;	
	private int mno;		
	private String departure;	
	private String arrival;		
	private String stops;
	private String usertype;  	//driver(타세요) or rider(태워주세요) or together(함께타요)
	private int seat;  			
	private String memo;		
	private Date departuredate;			
	private int price;
	
	public CarpoolVo() {}

	public CarpoolVo(int carno, String category, int mno, String departure, String arrival, String stops,
			String usertype, int seat, String memo, Date departuredate, int price) {
		super();
		this.carno = carno;
		this.category = category;
		this.mno = mno;
		this.departure = departure;
		this.arrival = arrival;
		this.stops = stops;
		this.usertype = usertype;
		this.seat = seat;
		this.memo = memo;
		this.departuredate = departuredate;
		this.price = price;
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

	public String getStops() {
		return stops;
	}

	public void setStops(String stops) {
		this.stops = stops;
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

	public Date getDeparturedate() {
		return departuredate;
	}

	public void setDeparturedate(Date departuredate) {
		this.departuredate = departuredate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
}
