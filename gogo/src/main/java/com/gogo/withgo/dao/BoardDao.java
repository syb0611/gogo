package com.gogo.withgo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.BoardVo;
import com.gogo.withgo.vo.PageVo;
import com.gogo.withgo.vo.ReplyVo;

@Repository
public class BoardDao {
	@Autowired
	private SqlSessionTemplate template;
	
	private static final String sql = "boardSQL";
	
	public void write(BoardVo vo){
		template.insert(sql+".write", vo);
	}
	
//	public List<BoardVo> list(String category){
//		return template.selectList(sql+".list", category);
//	}
	
	public BoardVo read(int bno){
		upHit(bno);
		return template.selectOne(sql+".read", bno);
	}
	
	public void upHit(int bno){
		template.update(sql+".uphit", bno);
	}
	
	public void delete(int bno){
		template.delete(sql+".delete", bno);
	}
	
	public void update(BoardVo vo){
		template.update(sql+".update", vo);
	}
	
	public List<BoardVo> getCategoryList(String category){
		return template.selectList(sql+".categoryList", category);
	}
	
	
	public int getTotal(String category){
		return template.selectOne(sql+".total", category);
	}
	
	public List<BoardVo> listPage(PageVo pvo){
		return template.selectList(sql+".listPage", pvo);
	}
	
	public void postReply(ReplyVo vo){
		template.insert(sql+".postReply", vo);
	}
}
