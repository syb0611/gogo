package com.gogo.withgo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gogo.withgo.dao.CarpoolDao;
import com.gogo.withgo.vo.CarpoolVo;

@Controller
@RequestMapping("/carpool")
public class CarpoolController {
	
	@Autowired
	private CarpoolDao dao;
	
	@RequestMapping("/{category}/list")
	public String list(@PathVariable("category") String category, Model model){
		List<CarpoolVo> list = dao.list(category);
		model.addAttribute("list", list);
		model.addAttribute("category", category);
		
		return "carpool/list";
	}
	
	@RequestMapping("/{category}/writeform")
	public String writeform(@PathVariable("category") String category, Model model){
		model.addAttribute("category", category);
		
		return "carpool/writeform";
	}
	
	@RequestMapping("/write")
	public String write(CarpoolVo vo){
		dao.write(vo);
		
		return "redirect:/carpool/"+vo.getCategory()+"/list";  //read 페이지로 수정
	}
}
