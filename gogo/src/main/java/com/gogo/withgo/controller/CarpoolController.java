package com.gogo.withgo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gogo.withgo.dao.CarpoolDao;
import com.gogo.withgo.vo.CarpoolVo;
import com.gogo.withgo.vo.CarpoolMemberVo;

@Controller
@RequestMapping("/carpool")
public class CarpoolController {
	
	@Autowired
	private CarpoolDao dao;
	
//	@RequestMapping("/{category}/list")
//	public String list(@PathVariable("category") String category, Model model){
//		List<CarpoolVo> list = dao.list(category);
//		model.addAttribute("list", list);
//		model.addAttribute("category", category);
//		
//		return "carpool/list";
//	}
	
	@RequestMapping("/writeform")
	public String writeform(@RequestParam("category") String category, Model model){
		model.addAttribute("category", category);
		
		if(category.equals("taxi")){
			return "carpool/taxiF";
		}else if(category.equals("goshcool")){
			return "carpool/goschoolF";
		}else{
			return "carpool/carpoolF";
		}
	}
	
	@RequestMapping("/write")
	public String write(CarpoolVo vo){
		dao.write(vo);
		
		return "redirect:/carpool/"+vo.getCategory()+"/list";  
	}
	
	@RequestMapping("/list")
	public String list(@RequestParam("category") String category, Model model){
		List<CarpoolMemberVo> list = dao.carpoolList(category);
		model.addAttribute("list", list);
		model.addAttribute("category", category);
		
		return "carpool/list";
	}
	
	@RequestMapping("/read")
	public String read(@RequestParam("category") String category, @RequestParam("no") int carno, Model model){
		CarpoolMemberVo vo = dao.read(carno);
		model.addAttribute("vo", vo);
		return "carpool/carpoolR";
	}
}
