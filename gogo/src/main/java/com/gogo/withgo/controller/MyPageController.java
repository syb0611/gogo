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
import com.gogo.withgo.dao.CarpoolDao;
import com.gogo.withgo.vo.BookInfoVo;
import com.gogo.withgo.vo.BookmarkInfoVo;
import com.gogo.withgo.vo.BookmarkVo;
import com.gogo.withgo.vo.CPageVo;
import com.gogo.withgo.vo.CarpoolMemberVo;
import com.gogo.withgo.vo.MemberVo;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	private BookingDao bdao;
	
	@Autowired
	private CarpoolDao cdao;
	
	@RequestMapping(value={"/profile"})	
	public String main(){
		return "myinfo/profile";
	}
	
	@RequestMapping("/password")	
	public String password(){
		return "myinfo/password";
	}
	
//	@RequestMapping("/booking")
//	public String booking(HttpServletRequest request, @RequestParam(value="type", defaultValue="1") String type, Model model){
//		HttpSession session = request.getSession(false);
//		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
//		
//		if(memberInfo == null){
//			return "redirect:/";
//		}
//		
//		int mno = memberInfo.getMno();
//
//		int requestCnt = bdao.getRequestCnt(mno);
//		model.addAttribute("requestCnt", requestCnt);
//		
//		if(type.equals("1")){	//받은 예약
//			List<CarpoolMemberVo> booklist = bdao.bookingList1(mno);	
//			model.addAttribute("booklist", booklist);
//		}else{	//한 예약
//			List<BookInfoVo> booklist = bdao.bookingList2(mno);
//			model.addAttribute("booklist", booklist);
//		}
//		
//		model.addAttribute("type", type);
//		return "myinfo/booking";
//	}
	@RequestMapping("/booking")
	public String booking(HttpServletRequest request, @RequestParam(value="type", defaultValue="1") String type, @RequestParam(value="page", defaultValue="1") int page, Model model){
		HttpSession session = request.getSession(false);
		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
		
		if(memberInfo == null){
			return "redirect:/";
		}
		
		int mno = memberInfo.getMno();

		int requestCnt = bdao.getRequestCnt(mno);
		model.addAttribute("requestCnt", requestCnt);
		
		CPageVo pvo = new CPageVo();
		pvo.setMno(mno);
		
		if(type.equals("1")){	//받은 예약
			int bookingTotal1 = bdao.bookingTotal1(mno);
			pvo.setPage(bookingTotal1, page);
			
			List<CarpoolMemberVo> booklist = bdao.bookingList1(pvo);	
			//List<CarpoolMemberVo> booklist = bdao.bookingList1(mno);	
			model.addAttribute("booklist", booklist);
		}else{	//한 예약
			int bookingTotal2 = bdao.bookingTotal2(mno);
			pvo.setPage(bookingTotal2, page);
			
			List<BookInfoVo> booklist = bdao.bookingList2(pvo);
			model.addAttribute("booklist", booklist);
		}
	
		model.addAttribute("pvo", pvo);
		model.addAttribute("type", type);
		return "myinfo/booking";
	}
	
	
	
	
	
	
	@RequestMapping("/reglist")
	public String reglist(HttpServletRequest request, @RequestParam(value="type", defaultValue="1") int type, @RequestParam(value="page", defaultValue="1") int page, Model model){
		HttpSession session = request.getSession(false);
		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
		if(memberInfo == null){
			return "redirect:/";
		}
		
		int mno = memberInfo.getMno();
		
		int reglistTotal = cdao.reglistTotal(mno);
		CPageVo pvo = new CPageVo();
		pvo.setPage(reglistTotal, page);
		pvo.setMno(mno);
		
		if(type == 1){	//내가 쓴 카풀 글
			List<CarpoolMemberVo> myRegList = cdao.myRegCarpoolList(pvo);
			
			model.addAttribute("myRegList", myRegList);
			model.addAttribute("pvo", pvo);
		}else if(type == 2){  //내가 쓴 커뮤니티 글
			
		}else if(type == 3){  //내가 쓴 댓글
			
		}
		
		return "myinfo/reglist";
	}
	
	

	@RequestMapping("/bookmark")
	public String bookmark(HttpServletRequest request, @RequestParam(value="page", defaultValue="1") int page, Model model){
		HttpSession session = request.getSession(false);
		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
		
		if(memberInfo == null){
			return "redirect:/";
		}
		
		int mno = memberInfo.getMno();
		
		int bookmarkTotal = cdao.bookmarkTotal(mno);
		CPageVo pvo = new CPageVo();
		pvo.setMno(mno);
		pvo.setPage(bookmarkTotal, page);
		List<BookmarkInfoVo> bmList = cdao.getBookMarks(pvo);

		model.addAttribute("bmList", bmList);
		model.addAttribute("pvo", pvo);
		
		return "myinfo/bookmark";
	}
	
	@RequestMapping("/withdraw")
	public String withdraw(){
		return "myinfo/withdraw";
	}
	
	
	
	@RequestMapping("/addBookMark")
	public void addBookMark(BookmarkVo vo){
		cdao.addBookMark(vo);
	}
	
	@RequestMapping("/delBookMark")
	public void delBookMark(BookmarkVo vo){
		cdao.delBookMark(vo);
	}
	
	
}
