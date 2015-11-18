package com.gogo.withgo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gogo.withgo.dao.BookingDao;
import com.gogo.withgo.vo.BookInfoVo;
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
	
	@RequestMapping("/getRequests")
	public void getRequest(HttpServletResponse response, @RequestParam("carno") int carno) throws IOException{
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		List<BookInfoVo> reqList = dao.getRequests(carno);
		
		out.println("<table>");
		for(int i=0; i<reqList.size(); i++){
			BookInfoVo vo = reqList.get(i);
			out.println("<tr>");
			out.println("<td style='width:10%; text-align: center'>");
			out.println("<img src='/withgo/resources/images/blankimage.png'>");
			out.println("</td>");
			out.println("<td style='width:25%; padding-left: 20px'>"+vo.getName()+"<br>");
			if(vo.getGender() == 1) out.print("남자");
			else if(vo.getGender() == 2) out.print("여자");
			out.println("</td>");
			out.println("<td style='width:20%;'>"+vo.getSeatnum()+"명</td>");
			out.println("<td style='text-align: right'>");
			out.println("<input type='button' class='btn btn-default btn-sm' value='수락' onclick='acc("+vo.getCarno()+","+vo.getReqmem()+")'>");
			out.println("<input type='button' class='btn btn-default btn-sm' value='거절' onclick='rej()'>");
			out.println("</td>");
			out.println("<td style='text-align: right; width:15%'>");
			out.println("<input type='button' class='btn btn-primary btn-sm' value='쪽지보내기'>");
			out.println("</td>");
			out.println("</tr>");
		}
		out.println("</table>");
		out.close();
	}
	
	@RequestMapping("/accept")
	public String acc(BookingVo vo){
		System.out.println(vo.getCarno());
		dao.accept(vo);
		return "redirect:/home";
	}
}
