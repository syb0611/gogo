package com.gogo.withgo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;

import com.gogo.withgo.vo.MapVo;

public class MongoDao {

	private MongoTemplate mongoTemplate;
	
	@Autowired
	public void setMongoTemplate(MongoTemplate mongoTemplate){
		this.mongoTemplate = mongoTemplate;
	}
	
	public List<MapVo> list(){
		return mongoTemplate.findAll(MapVo.class);
	}
}
