package com.gogo.withgo.vo;

import java.sql.Date;

public class CarpoolVo {
	private int carno;			//īǮ�۹�ȣ
	private String category;	//�з�(�ܱ�/���)
	private int mno;			//�� ����� ȸ����ȣ
	private String departure;	//�����
	private String arrival;		//������
	private String usertype;  	//������(driver) or ž����(rider)
	private int seat;  			//�¼� ��
	private String memo;		//�߰�����
	private Date wdate;			//�ۼ���
	
	public CarpoolVo() {}

	public CarpoolVo(int carno, String category, int mno, String departure, String arrival, String usertype, int seat,
			String memo, Date wdate) {
		super();
		this.carno = carno;
		this.category = category;
		this.mno = mno;
		this.departure = departure;
		this.arrival = arrival;
		this.usertype = usertype;
		this.seat = seat;
		this.memo = memo;
		this.wdate = wdate;
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

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	
}
