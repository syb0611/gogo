package com.gogo.withgo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gogo.withgo.dao.BookingDao;
import com.gogo.withgo.vo.BookInfoVo;
import com.gogo.withgo.vo.CarpoolMemberVo;
import com.gogo.withgo.vo.MemberVo;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	private BookingDao dao;
	
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
		int mno = memberInfo.getMno();

		if(type.equals("1")){	//받은 예약
			List<CarpoolMemberVo> booklist = dao.bookingList1(mno);	
			model.addAttribute("booklist", booklist);
		}else{	//한 예약
			List<BookInfoVo> booklist = dao.bookingList2(mno);
			model.addAttribute("booklist", booklist);
		}
		
		model.addAttribute("type", type);
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
