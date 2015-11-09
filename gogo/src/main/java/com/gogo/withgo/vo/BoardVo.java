package com.gogo.withgo.vo;

import java.sql.Date;

public class BoardVo {
	private int bno;
	private String category;
	private String nickname;
	private String title;
	private String content;
	private Date wdate;
	private int hit;
	
	public BoardVo() {}

	public BoardVo(int bno, String category, String nickname, String title, String content, Date wdate, int hit) {
		super();
		this.bno = bno;
		this.category = category;
		this.nickname = nickname;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
		this.hit = hit;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
}
