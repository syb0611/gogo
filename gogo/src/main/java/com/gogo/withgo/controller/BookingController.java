package com.gogo.withgo.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gogo.withgo.dao.BookingDao;
import com.gogo.withgo.vo.BookingVo;

@Controller
@RequestMapping("/booking")
public class BookingController {
	
	@Autowired
	private BookingDao dao;
	
	@RequestMapping("/bookRequest")
	public void bookRequest(BookingVo vo, HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		int booked = dao.checkBooking(vo); //예약되었는지 확인
		if(booked != 0){
			out.print("alreadyBooked");
		}else{
			int leftSeat = dao.getLeftSeat(vo);
			if(leftSeat == 0){ //좌석 마감
				out.print("noMoreSeat");
			}else if(vo.getSeatnum() > leftSeat){ //좌석 부족
				out.print("over");
			}else{ //예약 가능
				dao.bookRequest(vo);  //예약요청
				out.print("success");
			}
		}
		out.close();
	}
	
	@RequestMapping("/cancel")
	public String bookCancel(@RequestParam("type") String type, BookingVo vo, Model model){
		dao.bookCancel(vo);
		
		model.addAttribute("type", type);
		return "redirect:/mypage/booking/";
	}
}
