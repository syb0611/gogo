package com.gogo.withgo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.CarpoolVo;
import com.gogo.withgo.vo.BookmarkInfoVo;
import com.gogo.withgo.vo.BookmarkVo;
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
	
	
	public List<CarpoolMemberVo> carpoolList(String category, int mno){
		CarpoolMemberVo vo = new CarpoolMemberVo(category, mno);
		return template.selectList(sql+".carpoolList", vo);
	}
	
	public CarpoolMemberVo read(int carno){
		return template.selectOne(sql+".read", carno);
	}
	
	public void addBookMark(BookmarkVo vo){
		template.insert(sql+".addBookMark", vo);
	}
	
	public void delBookMark(BookmarkVo vo){
		template.delete(sql+".delBookMark", vo);
	}
	
//	public List<BookmarkInfoVo> getBookMarks(int mno){
//		return template.selectList(sql+".getBookMarks", mno);
//	}
	public List<BookmarkInfoVo> getBookMarks(int mno){
		  return template.selectList(sql+".getBookMarks", mno);
	}
}
