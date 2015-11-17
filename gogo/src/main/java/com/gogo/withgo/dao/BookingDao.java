package com.gogo.withgo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.BookInfoVo;
import com.gogo.withgo.vo.BookingVo;

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
	}
	
	public void bookingList1(int reqmem){
		List<BookingVo> list = template.selectList(sql+".bookingList1", reqmem);
		//System.out.println(list.get(0).getSeatnum());
	}
	
	public void bookingList2(int reqmem){
		List<BookInfoVo> list =  template.selectList(sql+".bookingList2", reqmem);
		System.out.println(list.get(0).getArrival());
	}
}
