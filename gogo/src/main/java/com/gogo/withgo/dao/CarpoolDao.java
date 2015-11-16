package com.gogo.withgo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.CarpoolVo;
import com.gogo.withgo.vo.CarpoolMemberVo;

@Repository
public class CarpoolDao {
	
	@Autowired
	private SqlSessionTemplate template;
	
	private static final String sql = "carpoolSQL"; 
	
//	public List<CarpoolVo> list(String category){
//		return template.selectList(sql+".list", category);
//	}
	
	public void write(CarpoolVo vo){
		template.insert(sql+".write", vo);
	}
	
	
	public List<CarpoolMemberVo> carpoolList(String category){
		return template.selectList(sql+".carpoolList", category);
	}
	
	public CarpoolMemberVo read(int carno){
		return template.selectOne(sql+".read", carno);
	}
}
