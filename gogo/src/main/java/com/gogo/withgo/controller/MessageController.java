package com.gogo.withgo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String form(@RequestParam("toname") String toname, @RequestParam("prevUrl") String prevUrl, Model model){
		model.addAttribute("toname", toname);
		model.addAttribute("prevUrl", prevUrl);
		
		return "message/msgform";
	}
	
	@RequestMapping("/send")
	public String send(@RequestParam("prevUrl") String prevUrl, MessageVo vo){
		dao.send(vo);
		
		return "redirect:"+prevUrl; 
	}
	
	@RequestMapping("/mymsg")
	public String mymsg(@RequestParam(value="type", defaultValue="1") String type, HttpServletRequest request, Model model){
		HttpSession session = request.getSession(false);
		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
		String nickname = memberInfo.getNickname();
		
		if(type.equals("1")){  //받은 쪽지함
			List<MessageVo> msgList = dao.getReceiveMsg(nickname);
			model.addAttribute("msgList", msgList);
		}else{  //보낸 쪽지함
			List<MessageVo> msgList = dao.getSendMsg(nickname);
			model.addAttribute("msgList", msgList);
		}

		model.addAttribute("type", type);
		return "message/mymsg";
	}
	
	@RequestMapping("/read")
	public String read(@RequestParam("type") String type, @RequestParam("msgno") int msgno, Model model){
		MessageVo vo = dao.read(msgno);
		model.addAttribute("vo", vo);
		model.addAttribute("type", type);
		
		if(type.equals("receive")){
			dao.check(msgno);
		}
		return "message/read";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("msgno") int msgno){
		dao.delete(msgno);
		
		return "redirect:/message/mymsg";
	}
}
