package com.gogo.withgo.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gogo.withgo.dao.MongoDao;
import com.gogo.withgo.vo.MarkerList;

@Controller
public class MapMongoController {
	
	@Autowired
	MongoDao dao;
	
	@RequestMapping(value = {"/map"})
	public String map() {
		return "map";
	}
	
	@ResponseBody
	@RequestMapping( "/markertest2" )
	public Object apiExample2() {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put( "result", "success" );
		map.put( "data", null );
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping( "/markertest" )
	public Object apiExample3( @RequestBody MarkerList list ) {
		System.out.println( list);
		dao.save(list);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put( "result", "success" );
		map.put( "data", list );
		
		return map;
	}
}