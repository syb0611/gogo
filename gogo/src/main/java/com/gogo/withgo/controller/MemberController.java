package com.gogo.withgo.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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

	@RequestMapping("/withdraw")
	public String withdraw(@RequestParam("email") String email){
		dao.withdraw(email);
		session.setAttribute("memberInfo", null);
		
		return "redirect:/home";
	}
	
	@RequestMapping("/pwChange")
	public String pwChange(HttpServletRequest request, MemberVo vo){
		HttpSession session = request.getSession(false);
		
		dao.pwChange(vo);
		MemberVo newVo = dao.getMemberByMno(vo.getMno());
		session.setAttribute("memberInfo", newVo);
		
		return "redirect:/mypage/password";
	}
	
	@RequestMapping("/updateProfile")
	public String updateProfile(HttpServletRequest request, MemberVo vo) throws MalformedURLException{
		//final String path = "C:/images/";
		final String path = "C:/Users/bitbit/git/gogo/gogo/src/main/webapp/resources/upload/";
		
		MultipartFile uploadFile = null;
		uploadFile = vo.getUploadfile();
		if(!uploadFile.isEmpty()){
			String filename = uploadFile.getOriginalFilename();
			String type = filename.substring(filename.lastIndexOf("."));
			String savename = filename+"_"+System.currentTimeMillis()+type;		
			vo.setImage(savename);
			
			File dir = new File(path);
			if(!dir.isDirectory()){
				dir.mkdir();
			}
			
			try{
				uploadFile.transferTo(new File(path+savename));
			}catch(Exception e){
				e.printStackTrace();
			}
		}else{
			vo.setImage("");
		}
		
			
		dao.updateMemberInfo(vo);
		MemberVo newVo = dao.getMemberByMno(vo.getMno());
		HttpSession session = request.getSession(false);
		session.setAttribute("memberInfo", newVo);
		
		

		return "redirect:/mypage/profile";
	}
	
	
}
