package com.gogo.withgo.vo;

import java.sql.Date;

public class CarpoolMemberVo {
	private int carno;			
	private String category;	
	private int mno;		
	private String departure;	
	private String arrival;		
	private String stops;
	private String usertype;  
	private int seat;  			
	private String memo;		
	private Date departuredate;		
	private int price;
	private String email;
	private String pw;
	private String nickname;
	private String name;
	private String phone;
	private String birth;
	private int gender;
	private int hascar;
	private String image;
	private Date jdate;
	private String profile;
	private String auth;
	private int authphone;
	private int authemail;
	
	public CarpoolMemberVo() {}

	public CarpoolMemberVo(int carno, String category, int mno, String departure, String arrival, String stops,
			String usertype, int seat, String memo, Date departuredate, int price, String email, String pw, String nickname,
			String name, String phone, String birth, int gender, int hascar, String image, Date jdate, String profile,
			String auth, int authphone, int authemail) {
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
		this.email = email;
		this.pw = pw;
		this.nickname = nickname;
		this.name = name;
		this.phone = phone;
		this.birth = birth;
		this.gender = gender;
		this.hascar = hascar;
		this.image = image;
		this.jdate = jdate;
		this.profile = profile;
		this.auth = auth;
		this.authphone = authphone;
		this.authemail = authemail;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getHascar() {
		return hascar;
	}

	public void setHascar(int hascar) {
		this.hascar = hascar;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getJdate() {
		return jdate;
	}

	public void setJdate(Date jdate) {
		this.jdate = jdate;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public int getAuthphone() {
		return authphone;
	}

	public void setAuthphone(int authphone) {
		this.authphone = authphone;
	}

	public int getAuthemail() {
		return authemail;
	}

	public void setAuthemail(int authemail) {
		this.authemail = authemail;
	}
	
}