package com.gogo.withgo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MapMongoController {
	
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
	public Object apiExample3( @RequestBody ArrayList< Map<String, Object> > requestData ) {
		JSONArray jsons = new JSONArray();
		jsons.put(requestData);
		System.out.println( jsons.toString() );
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put( "result", "success" );
		map.put( "data", jsons );
		
		return map;
	}
}