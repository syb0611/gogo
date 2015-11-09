package com.gogo.withgo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gogo.withgo.dao.MessageDao;
import com.gogo.withgo.vo.MemberVo;
import com.gogo.withgo.vo.MessageVo;

@Controller
@RequestMapping("/message")
public class MessageController {
	
	@Autowired
	private MessageDao dao;
	
	@RequestMapping("/form")
	public String form(@RequestParam("toname") String toname, Model model){
		model.addAttribute("toname", toname);
		
		return "message/msgform";
	}
	
	@RequestMapping("/send")
	public String send(MessageVo vo){
		dao.send(vo);
		
		return "redirect:/message/mymsg";  //쪽지보낸 후 쪽지함으로 이동 -> 이동 페이지 수정
	}
	
	@RequestMapping("/mymsg")
	public String mymsg(HttpServletRequest request, Model model){
		HttpSession session = request.getSession(false);
		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
		String nickname = memberInfo.getNickname();
			
		List<MessageVo> receiveMsgList = dao.getReceiveMsg(nickname);
		List<MessageVo> sendMsgList = dao.getSendMsg(nickname);
		
		model.addAttribute("receiveMsgList", receiveMsgList);
		model.addAttribute("sendMsgList", sendMsgList);

		return "message/mymsg";
	}
	
	@RequestMapping("/read/{type}/{msgno}")
	public String read(@PathVariable("type") String type, @PathVariable("msgno") int msgno, Model model){
		MessageVo vo = dao.read(msgno);
		model.addAttribute("vo", vo);
		
		if(type.equals("receive")){
			dao.check(msgno);
		}
		return "message/read";
	}
	
	@RequestMapping("/delete/{msgno}")
	public String delete(@PathVariable("msgno") int msgno){
		dao.delete(msgno);
		
		return "redirect:/message/mymsg";
	}
}
