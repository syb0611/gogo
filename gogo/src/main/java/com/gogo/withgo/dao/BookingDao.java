package com.gogo.withgo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.BookInfoVo;
import com.gogo.withgo.vo.BookingVo;
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
		template.update(sql+".updateRequestNum", vo);
	}
	
	public List<CarpoolMemberVo> bookingList1(int resmem){
		return template.selectList(sql+".bookingList1", resmem);
	}
	
	public List<BookInfoVo> bookingList2(int reqmem){
		return template.selectList(sql+".bookingList2", reqmem);
	}
}
