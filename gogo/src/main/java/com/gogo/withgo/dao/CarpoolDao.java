package com.gogo.withgo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.CarpoolVo;

@Repository
public class CarpoolDao {
	
	@Autowired
	private SqlSessionTemplate template;
	
	private static final String sql = "carpoolSQL"; 
	
	public List<CarpoolVo> list(String category){
		return template.selectList(sql+".list", category);
	}
	
	public void write(CarpoolVo vo){
		template.insert(sql+".write", vo);
	}
}
