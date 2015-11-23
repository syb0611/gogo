package com.gogo.withgo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gogo.withgo.dao.CarpoolDao;
import com.gogo.withgo.dao.MongoDao;
import com.gogo.withgo.vo.CarpoolVo;
import com.gogo.withgo.vo.MapVo;
import com.gogo.withgo.vo.MemberVo;
import com.gogo.withgo.vo.CarpoolMemberVo;

@Controller
@RequestMapping("/carpool")
public class CarpoolController {
	
	@Autowired
	private CarpoolDao dao;
	
	@Autowired
	MongoDao mdao;
	
	private String ct = null;
	
	@RequestMapping("/writeform")
	public String writeform(@RequestParam("category") String category, Model model){
		model.addAttribute("category", category);
		
		if(category.equals("taxi")){
			return "carpool/taxiF";
		}else if(category.equals("goschool")){
			return "carpool/goschoolF";
		}else{
			return "carpool/carpoolF";
		}
	}
	
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public void write(CarpoolVo vo, HttpServletResponse response) throws IOException{
		ct = vo.getCategory();
		PrintWriter out = response.getWriter();
		int carno_seq = dao.write(vo);
		//System.out.println("seq : "+carno_seq);
		out.print(carno_seq);
		out.close();
	}
	
	@ResponseBody
	@RequestMapping("/writeMongo")
	public String writeMongo(@RequestBody List< Map<String, Object> > requestData){
		System.out.println(requestData);
		
		int a= 1;
		MapVo o = new MapVo();
		o.put( "b_no", a++);
		o.put( "adata", requestData);

		mdao.save( o );
		
		return "redirect:/carpool/list?category="+ct;
	}
	
	
	
	@RequestMapping("/list")
	public String list(@RequestParam("category") String category, HttpServletRequest request, Model model){
		HttpSession session = request.getSession(false);
		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
		
		int mno;
		if(memberInfo == null){
			mno = 0;
		}else{
			mno = memberInfo.getMno();
		}
		
		List<CarpoolMemberVo> list = dao.carpoolList(category, mno);
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
