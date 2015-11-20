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
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardDao dao;
	
	@RequestMapping("/main")
	public String main(Model model){
		List<BoardVo> list1 = dao.getCategoryList("greeting");
		List<BoardVo> list2 = dao.getCategoryList("free");
		List<BoardVo> list3 = dao.getCategoryList("review");
		
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		
		return "board/main";
	} 
	
//	@RequestMapping("/list")
//	public String list(@RequestParam("category") String category, Model model){
//		List<BoardVo> list = dao.list(category);
//		
//		model.addAttribute("category", category);
//		model.addAttribute("list", list);
//		
//		return "board/list";
//	}
	
	@RequestMapping("/writeform")
	public String writeform(@RequestParam("category") String category, Model model){
		model.addAttribute("category", category);
		
		return "board/writeform";
	}
	
	@RequestMapping("/write")
	public String write(BoardVo vo){
		dao.write(vo);
		
		return "redirect:/board/list?category="+vo.getCategory();
	}

	@RequestMapping("/read")
	public String read(@RequestParam("bno") int bno, Model model){
		BoardVo vo = dao.read(bno);
		model.addAttribute("vo", vo);

		return "board/read";
	}
	
	@RequestMapping("/delete/{category}/{bno}")
	public String delete(@PathVariable String category, @PathVariable int bno){
		dao.delete(bno);
		
		return "redirect:/board/list?category="+category;
	}
	
	@RequestMapping("/updateform")
	public String updateform(BoardVo vo, Model model){
		model.addAttribute("vo", vo);
		
		return "board/updateform";
	}
	
	@RequestMapping("/update")
	public String update(BoardVo vo){
		dao.update(vo);
		
		return "redirect:/board/read?bno="+vo.getBno(); 
	}

	
	
	@RequestMapping("/list")
	public String list(@RequestParam("category") String category, @RequestParam(value="page", defaultValue="1") int page, Model model){
		int listTotal = dao.getTotal(category);
		PageVo pvo = new PageVo();
		pvo.setCategory(category);
		pvo.setPage(listTotal, page);

		List<BoardVo> list = dao.listPage(pvo);
		model.addAttribute("list", list);
		model.addAttribute("pvo", pvo);

		return "board/list";
	}
	
	
	@RequestMapping("/postReply")
	public String postReply(ReplyVo vo){
		//vo -> nickname, category, bno, replytext
		dao.postReply(vo);
		
		return "redirect:/";
	}
}
