package com.gogo.withgo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gogo.withgo.dao.MemberDao;
import com.gogo.withgo.vo.MemberVo;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberDao dao;
	
	@Autowired
	private HttpSession session;  
	
	@RequestMapping("/loginform")
	public String loginform(){
		return "login";
	}
	
	@RequestMapping("/joinform")
	public String joinform(){
		return "join";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("email") String email, @RequestParam("pw") String pw){
		MemberVo memberInfo = dao.getMember(email, pw);
		
		if(memberInfo == null){
			return "redirect:/member/loginform";
		}
		else{
			session.setAttribute("memberInfo", memberInfo);
			return "redirect:/home";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(){
		session.setAttribute("memberInfo", null);
		return "redirect:/home";
	}
	
	@RequestMapping("/join")
	public String join(MemberVo vo){
		dao.join(vo);
		return "redirect:/member/loginform";
	}
	
	@RequestMapping("/emailCheck")
	public void emailCheck(@RequestParam("email") String email, HttpServletResponse response) throws IOException{
		PrintWriter out = response.getWriter();
		
		String checkEmail = dao.findEmail(email);
		if(checkEmail == null) out.print("false");
		else out.print("true");
		
		out.close();
	}
	
	@RequestMapping("/nicknameCheck")
	public void nicknameCheck(@RequestParam("nickname") String nickname, HttpServletResponse response) throws IOException{
		PrintWriter out = response.getWriter();
		
		String checkNickname = dao.findNickname(nickname);
		if(checkNickname == null) out.print("false");
		else out.print("true");
		
		out.close();
	}
}
