package com.gogo.withgo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gogo.withgo.dao.BoardDao;
import com.gogo.withgo.vo.BoardVo;
import com.gogo.withgo.vo.PageVo;
import com.gogo.withgo.vo.ReplyVo;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private BoardDao dao;
	
	@RequestMapping(value = {"/", "/home"})
	public String home() {
		return "home";
	}
	
	@RequestMapping("/customer")
	public String customer(Model model){
		List<BoardVo> list1 = dao.getCategoryList("notice");
		List<BoardVo> list2 = dao.getCategoryList("qna");
		List<BoardVo> list3 = dao.getCategoryList("inquiry");
		
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		
		return "board/customer";
	}	
	
	@RequestMapping("/customer/list")
	public String clist(@RequestParam("category") String category, @RequestParam(value="page", defaultValue="1") int page, Model model){
		int listTotal = dao.getTotal(category);
		PageVo pvo = new PageVo();
		pvo.setCategory(category);
		pvo.setPage(listTotal, page);

		List<BoardVo> list = dao.listPage(pvo);
		model.addAttribute("list", list);
		model.addAttribute("pvo", pvo);

		return "board/clist";
	}
	
	@RequestMapping("/customer/writeform")
	public String writeform(@RequestParam("category") String category, Model model){
		model.addAttribute("category", category);
		
		return "board/cwriteform";
	}
	
	@RequestMapping("/customer/write")
	public String write(BoardVo vo){
		dao.write(vo);
		
		return "redirect:/customer/list?category="+vo.getCategory();
	}

	@RequestMapping("/customer/read")
	public String read(@RequestParam("bno") int bno, Model model){
		BoardVo vo = dao.read(bno);
		model.addAttribute("vo", vo);
		
		List<ReplyVo> replyList = dao.loadReply(bno);
		model.addAttribute("replyList", replyList);
		
		return "board/cread";
	}
	
	@RequestMapping("/customer/delete/{category}/{bno}")
	public String delete(@PathVariable String category, @PathVariable int bno){
		dao.delete(bno);
		
		return "redirect:/customer/list?category="+category;
	}
	
	@RequestMapping("/customer/updateform")
	public String updateform(BoardVo vo, Model model){
		model.addAttribute("vo", vo);
		
		return "board/cupdateform";
	}
	
	@RequestMapping("/customer/update")
	public String update(BoardVo vo){
		dao.update(vo);
		
		return "redirect:/customer/read?bno="+vo.getBno(); 
	}
	
	@RequestMapping("/customer/postReply")
	public String postReply(ReplyVo vo, Model model){
		//vo -> nickname, category, bno, replytext
		dao.postReply(vo);
		model.addAttribute("bno", vo.getBno());  
		return "redirect:/customer/read";
	}
}
