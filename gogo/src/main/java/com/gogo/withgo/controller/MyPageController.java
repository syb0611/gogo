package com.gogo.withgo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gogo.withgo.dao.BookingDao;
import com.gogo.withgo.vo.BookInfoVo;
import com.gogo.withgo.vo.MemberVo;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@RequestMapping(value={"/","/profile"})	
	public String main(){
		return "myinfo/profile";
	}
	
	@RequestMapping("/password")	
	public String password(){
		return "myinfo/password";
	}
	
	@RequestMapping("/booking")
	public String booking(HttpServletRequest request, @RequestParam(value="type", defaultValue="1") String type, Model model){
		HttpSession session = request.getSession(false);
		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
		System.out.println("aaaaaaaaaa");
		int mno = memberInfo.getMno();
		System.out.println("bbbbbbbbbbbbbb");
				
		BookingDao dao = new BookingDao();
				
		if(type.equals("1")){
			dao.bookingList1(mno);
		}else{
			//dao.bookingList2(mno);
		}
		
//		BookingDao dao = new BookingDao();
//		List<BookInfoVo> booklist = null;
//		
//		//받은 예약
//		if(type.equals("1")){
//			//dao.bookingList1(mno);
//			dao.bookingList2(mno);
//		}
//		//한 예약
//		else if(type.equals("2")){
//			dao.bookingList2(mno);
//		}
//		
//		model.addAttribute("booklist", booklist);
		return "myinfo/booking";
	}
	
	@RequestMapping("/reglist")
	public String reglist(){
		return "myinfo/reglist";
	}
	
	@RequestMapping("/bookmark")
	public String bookmark(){
		return "myinfo/bookmark";
	}
	
	@RequestMapping("/withdraw")
	public String withdraw(){
		return "myinfo/withdraw";
	}
	
	
	
	
	
	
}
