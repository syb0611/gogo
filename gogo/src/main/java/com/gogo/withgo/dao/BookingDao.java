package com.gogo.withgo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.BookInfoVo;
import com.gogo.withgo.vo.BookingVo;
import com.gogo.withgo.vo.CPageVo;
import com.gogo.withgo.vo.CarpoolMemberVo;

@Repository
public class BookingDao {
	@Autowired
	private SqlSessionTemplate template;
	
	private static final String sql = "bookSQL";
	
	public int checkBooking(BookingVo vo){
		return template.selectOne(sql+".checkBooking", vo);
	}
	
	public int getLeftSeat(BookingVo vo){
		return template.selectOne(sql+".getLeftSeat", vo);
	}
	
	public void bookRequest(BookingVo vo){
		template.insert(sql+".bookRequest", vo);
		template.update(sql+".updateRequestNumUp", vo);
	}
	
//	public List<CarpoolMemberVo> bookingList1(int resmem){
//		return template.selectList(sql+".bookingList1", resmem);
//	}
	public List<CarpoolMemberVo> bookingList1(CPageVo pvo){
		return template.selectList(sql+".bookingList1", pvo);
	}
	
	
	
//	public List<BookInfoVo> bookingList2(int reqmem){
//		return template.selectList(sql+".bookingList2", reqmem);
//	}
	public List<BookInfoVo> bookingList2(CPageVo pvo){
		return template.selectList(sql+".bookingList2", pvo);
	}
	
	
	
	public int getRequestCnt(int mno){
		return template.selectOne(sql+".getRequestCnt", mno);
	}
	
	public void bookCancel(BookingVo vo){
		template.delete(sql+".cancel", vo);
		template.update(sql+".updateRequestNumDown", vo);
	}
	
	public List<BookInfoVo> getRequests(int carno){
		return template.selectList(sql+".getRequests", carno);
	}
	
	public void accept(BookingVo vo){
		template.update(sql+".accept", vo);
		template.update(sql+".bookedSeatUp", vo);
		template.update(sql+".requestNumDown", vo);
	}
	
	public void reject(BookingVo vo){
		template.update(sql+".reject", vo);
		template.update(sql+".requestNumDown", vo);
	}
	
	public int bookingTotal1(int mno){
		return template.selectOne(sql+".bookingTotal1", mno);
	}
	
	public int bookingTotal2(int mno){
		return template.selectOne(sql+".bookingTotal2", mno);
	}
}
