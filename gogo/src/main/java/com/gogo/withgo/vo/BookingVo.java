package com.gogo.withgo.vo;

import java.sql.Date;

public class BookingVo {
	private int bookno;
	private int carno;  
	private int mno;
	private int seatnum;
	private int status;
	private Date bdate;
	
	public BookingVo() {}

	public BookingVo(int bookno, int carno, int mno, int seatnum, int status, Date bdate) {
		super();
		this.bookno = bookno;
		this.carno = carno;
		this.mno = mno;
		this.seatnum = seatnum;
		this.status = status;
		this.bdate = bdate;
	}

	public int getBookno() {
		return bookno;
	}

	public void setBookno(int bookno) {
		this.bookno = bookno;
	}

	public int getCarno() {
		return carno;
	}

	public void setCarno(int carno) {
		this.carno = carno;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public int getSeatnum() {
		return seatnum;
	}

	public void setSeatnum(int seatnum) {
		this.seatnum = seatnum;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	
}
