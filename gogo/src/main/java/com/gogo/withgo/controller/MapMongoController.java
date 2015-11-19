package com.gogo.withgo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gogo.withgo.dao.MongoDao;

@Controller
public class MapMongoController {

	@Autowired
	MongoDao dao;

	@RequestMapping(value = { "/map" })
	public String map() {
		return "map";
	}

	@ResponseBody
	@RequestMapping(value = "/markertest", method = RequestMethod.POST)
	public Object apiExample3( @RequestBody List< Map<String, Object> > requestData ) {
		//int b_no = 10;
		//MapVo jarray = new MapVo(requestData);
		System.out.println(requestData);
		Map<String, Object> map = new HashMap<String, Object>();
		
		JSONObject o = new JSONObject();
		o.put( "b_no", 10);
		o.put( "adata", requestData);

		//jarray.put(new JSONObject("{\"b_no\":"+b_no+"}"));
		dao.save( o );

		Map<String, Object> mapResult = new HashMap<String, Object>();
		mapResult.put( "result", "success" );
		mapResult.put( "data", null );

		return mapResult;
	}
}