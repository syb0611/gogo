package com.gogo.withgo.dao;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.MapVo;

@Repository
public class MongoDao {

	@Autowired
	private MongoTemplate mongoTemplate;

	public List<MapVo> list() {
		return mongoTemplate.findAll(MapVo.class);
	}

	public void save(JSONObject o) {
		mongoTemplate.save(o);
	}

	public List<JSONObject> findAll() {
		return mongoTemplate.findAll(JSONObject.class);
	}

	public MapVo findOne(int b_no) {
		Query query = Query.query(Criteria.where("b_no").is(b_no));
		return mongoTemplate.findOne(query, MapVo.class);
	}
}

/*
 * public void find( int b_no){
 * 
 * mongoTemplate.find() }
 */
