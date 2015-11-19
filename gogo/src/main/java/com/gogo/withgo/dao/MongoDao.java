package com.gogo.withgo.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.MapVo;

@Repository
public class MongoDao {
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	public List<MapVo> list(){
		return mongoTemplate.findAll(MapVo.class);
	}
	
	public void save( List< Map<String, Object> > requestData){
		mongoTemplate.save(requestData);
	}
}
