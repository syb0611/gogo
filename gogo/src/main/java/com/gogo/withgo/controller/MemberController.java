package com.gogo.withgo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gogo.withgo.dao.MemberDao;
import com.gogo.withgo.vo.MemberVo;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberDao dao;
	
	@Autowired
	private HttpSession session;   //////////////////////////////////
	
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
		
		/* ��ġ�ϴ� ȸ�� ������ ���� ��� */
		if(memberInfo == null){
			return "redirect:/member/loginform";
		}
		/* ��ġ�ϴ� ȸ���� �ִ� ��� */
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
}
