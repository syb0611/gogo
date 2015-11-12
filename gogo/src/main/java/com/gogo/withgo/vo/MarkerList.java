package com.gogo.withgo.vo;

import java.util.HashMap;

import org.springframework.data.annotation.Id;

public class MarkerList extends HashMap<String, MapVo> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String key;
	private MapVo map;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public MapVo getMap() {
		return map;
	}

	public void setMap(MapVo map) {
		this.map = map;
	}
}
