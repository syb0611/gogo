package com.gogo.withgo.vo;

import java.sql.Date;

public class BookmarkVo {
	private int bmno;
	private int mno;
	private int carno;
	private Date bmdate;
	
	public BookmarkVo() {}

	public BookmarkVo(int bmno, int mno, int carno, Date bmdate) {
		super();
		this.bmno = bmno;
		this.mno = mno;
		this.carno = carno;
		this.bmdate = bmdate;
	}

	public int getBmno() {
		return bmno;
	}

	public void setBmno(int bmno) {
		this.bmno = bmno;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public int getCarno() {
		return carno;
	}

	public void setCarno(int carno) {
		this.carno = carno;
	}

	public Date getBmdate() {
		return bmdate;
	}

	public void setBmdate(Date bmdate) {
		this.bmdate = bmdate;
	}
	
}
