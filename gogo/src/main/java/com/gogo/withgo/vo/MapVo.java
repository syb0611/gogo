package com.gogo.withgo.vo;

import org.json.JSONObject;

public class MapVo extends JSONObject{
	
	private String name;
	private double value;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	public MapVo(String name, double value){
		this.name = name;
		this.value = value;
	}
	
}
