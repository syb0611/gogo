package com.gogo.withgo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.CarpoolVo;
import com.gogo.withgo.vo.PageVo;
import com.gogo.withgo.vo.BookmarkInfoVo;
import com.gogo.withgo.vo.BookmarkVo;
import com.gogo.withgo.vo.CPageVo;
import com.gogo.withgo.vo.CarpoolMemberVo;

@Repository
public class CarpoolDao {
	
	@Autowired
	private SqlSessionTemplate template;
	
	private static final String sql = "carpoolSQL"; 
	
	
	public int write(CarpoolVo vo){
		template.insert(sql+".write", vo);
		return vo.getCarno();   //insert한 현재 seq값 
	}
	
	
//	public List<CarpoolMemberVo> carpoolList(String category, int mno){
//		CarpoolMemberVo vo = new CarpoolMemberVo(category, mno);
//		return template.selectList(sql+".carpoolList", vo);
//	}
	public List<CarpoolMemberVo> carpoolList(CPageVo pvo){
		return template.selectList(sql+".carpoolList", pvo);
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
	
	public List<BookmarkInfoVo> getBookMarks(int mno){
		return template.selectList(sql+".getBookMarks", mno);
	}
	
	public List<CarpoolMemberVo> myRegCarpoolList(int mno){
		return template.selectList(sql+".myRegCarpoolList", mno);
	}
	
	public List<CarpoolMemberVo> searchAll(CarpoolVo vo){
		return template.selectList(sql+".searchAllList", vo);
	}
	
	
	public List<CarpoolMemberVo> search1(CarpoolVo vo){
		return template.selectList(sql+".search1", vo);
	}
	
	public List<CarpoolMemberVo> search2(CarpoolVo vo){
		return template.selectList(sql+".search2", vo);
	}
	
	public List<CarpoolMemberVo> search3(CarpoolVo vo){
		return template.selectList(sql+".search3", vo);
	}
	
	public List<CarpoolMemberVo> search4(CarpoolVo vo){
		return template.selectList(sql+".search4", vo);
	}



	public int getTotal(String category){
		return template.selectOne(sql+".total", category);
	}


}
