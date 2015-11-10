package com.gogo.withgo.vo;

public class MapVo {
	private Double lon;
	private Double lat;
	public Double getLon() {
		return lon;
	}
	public void setLon(Double lon) {
		this.lon = lon;
	}
	public Double getLat() {
		return lat;
	}
	public void setLat(Double lat) {
		this.lat = lat;
	}
	@Override
	public String toString() {
		return "MapVo [lon=" + lon + ", lat=" + lat + "]";
	}
}
