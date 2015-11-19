package com.gogo.withgo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gogo.withgo.dao.MongoDao;

@Controller
public class MapMongoController {
	
	@Autowired
	MongoDao dao;
	
	@RequestMapping(value = {"/map"})
	public String map() {
		return "map";
	}
	
	@ResponseBody
	@RequestMapping( "/lonlat/markertest" )
	public Object apiExample3( @RequestBody List< Map<String, Object> > requestData ) {
		
		System.out.println( requestData );
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put( "result", "success" );
		map.put( "data", null );
		
		return map;
	}	
}