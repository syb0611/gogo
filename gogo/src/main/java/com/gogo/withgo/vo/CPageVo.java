package com.gogo.withgo.vo;

public class CPageVo {
	private final int blocksize = 5;
	private final int pagerow = 5;
	
	private String category;
	private int mno;///////////////
	private String departure;/////////////
	private String arrival;////////////////
	
	private int listTotal;
	private int totalPage;
	private int curPage;
	private int topNum;
	private int bottomNum;
	
	private int curBlock;
	private int firstPage;
	private int lastPage;
	private int lastBlock;
	
	public CPageVo() {}

	public void setPage(int listTotal, int curPage){
		setListTotal(listTotal);
		setCurPage(curPage);
		
		setTotalPage();
		setTopNum();
		setBottomNum();
		setCurBlock();
		setFirstPage();
		setLastPage();
		setLastBlock();
	}

	public int getLastBlock() {
		return lastBlock;
	}

	public void setLastBlock() {
		this.lastBlock = (this.totalPage-1) / blocksize + 1;
	}

	public int getFirstPage() {
		return firstPage;
	}

	public void setFirstPage() {
		this.firstPage = blocksize * (curBlock - 1) + 1;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage() {
		this.lastPage = this.firstPage + blocksize - 1;
	}

	public int getCurBlock() {
		return curBlock;
	}

	public void setCurBlock() {
		this.curBlock = this.curPage / blocksize;
		if(this.curPage % blocksize != 0) curBlock+=1;
	}
	
	public int getListTotal() {
		return listTotal;
	}

	public void setListTotal(int listTotal) {
		this.listTotal = listTotal;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage() {
		this.totalPage = this.listTotal / pagerow;
		if(this.listTotal % pagerow != 0) totalPage+=1;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getTopNum() {
		return topNum;
	}

	public void setTopNum() {
		this.topNum = this.listTotal - (pagerow * (this.curPage-1));
	}

	public int getBottomNum() {
		return bottomNum;
	}

	public void setBottomNum() {
		this.bottomNum = this.topNum - pagerow + 1;
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
	
	
}
