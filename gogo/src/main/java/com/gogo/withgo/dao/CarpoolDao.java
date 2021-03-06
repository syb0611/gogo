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
	
//	public List<BookmarkInfoVo> getBookMarks(int mno){
//		return template.selectList(sql+".getBookMarks", mno);
//	}
	public List<BookmarkInfoVo> getBookMarks(CPageVo pvo){
		return template.selectList(sql+".getBookMarks", pvo);
	}
	
	
	
	
	
	

	public List<CarpoolMemberVo> myRegCarpoolList(CPageVo pvo){
		return template.selectList(sql+".myRegCarpoolList", pvo);
	}
	

	public List<CarpoolMemberVo> searchAll(CPageVo pvo){	
		return template.selectList(sql+".searchAllList", pvo);
	}
	
	
	
	
	
//	public List<CarpoolMemberVo> search1(CarpoolVo vo){
//		return template.selectList(sql+".search1", vo);
//	}
	public List<CarpoolMemberVo> search1(CPageVo pvo){
		return template.selectList(sql+".search1", pvo);
	}

	public List<CarpoolMemberVo> search2(CPageVo pvo){
		return template.selectList(sql+".search2", pvo);
	}
	
	public List<CarpoolMemberVo> search3(CPageVo pvo){
		return template.selectList(sql+".search3", pvo);
	}
	
	public List<CarpoolMemberVo> search4(CPageVo pvo){
		return template.selectList(sql+".search4", pvo);
	}



	public int getTotal(String category){
		return template.selectOne(sql+".total", category);
	}

	public int searchAllTotal(String departure, String arrival){
		CarpoolVo vo = new CarpoolVo(departure, arrival);
		return template.selectOne(sql+".searchAllTotal", vo);
	}
	
	public int reglistTotal(int mno){
		return template.selectOne(sql+".reglistTotal", mno);
	}
	
	public int bookmarkTotal(int mno){
		return template.selectOne(sql+".bookmarkTotal", mno);
	}
	
	public int searchTotal1(CPageVo pvo){
		return template.selectOne(sql+".searchTotal1", pvo);
	}
	
	public int searchTotal2(CPageVo pvo){
		return template.selectOne(sql+".searchTotal2", pvo);
	}
	
	public int searchTotal3(CPageVo pvo){
		return template.selectOne(sql+".searchTotal3", pvo);
	}
	
	public int searchTotal4(CPageVo pvo){
		return template.selectOne(sql+".searchTotal4", pvo);
	}
}
