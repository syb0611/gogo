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
import com.gogo.withgo.vo.CPageVo;
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
		
		//////////////
		int price = vo.getPrice();
		if(price<=3000) vo.setPricerange(1);
		else if(price<=5000) vo.setPricerange(2);
		else if(price<=8000) vo.setPricerange(3);
		else vo.setPricerange(4);
		
		///////////////
		
		int carno_seq = dao.write(vo);
		//System.out.println("seq : "+carno_seq);
		out.print(carno_seq);
		out.close();
	}
	
	@ResponseBody
	@RequestMapping("/writeMongo")
	public String writeMongo(@RequestBody List< Map<String, Object> > requestData){
		System.out.println(requestData);
		
		MapVo o = new MapVo();
		o.put( "adata", requestData);

		mdao.save( o );
		
		return "redirect:/carpool/list?category="+ct;
	}
	
	@RequestMapping("/read")
	public String read(@RequestParam("category") String category, @RequestParam("no") int carno, Model model){
		CarpoolMemberVo vo = dao.read(carno);
		model.addAttribute("vo", vo);
		return "carpool/carpoolR";
	}
	
//	@RequestMapping("/list")
//	public String list(@RequestParam("category") String category, HttpServletRequest request, Model model){
//		HttpSession session = request.getSession(false);
//		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
//		
//		int mno;
//		if(memberInfo == null){
//			mno = 0;
//		}else{
//			mno = memberInfo.getMno();
//		}
//		
//		List<CarpoolMemberVo> list = dao.carpoolList(category, mno);
//		model.addAttribute("list", list);
//		model.addAttribute("category", category);
//		
//		return "carpool/list";
//	}
	

	
	@RequestMapping("/list")
	public String list(@RequestParam("category") String category, @RequestParam(value="page", defaultValue="1") int page, HttpServletRequest request, Model model){
		HttpSession session = request.getSession(false);
		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
		
		int mno;
		if(memberInfo == null){
			mno = 0;
		}else{
			mno = memberInfo.getMno();
		}
		
		
		////////////////////
		int listTotal = dao.getTotal(category);
		CPageVo pvo = new CPageVo();
		pvo.setCategory(category);
		pvo.setMno(mno);
		pvo.setPage(listTotal, page);
		
		List<CarpoolMemberVo> list = dao.carpoolList(pvo);
//		List<CarpoolMemberVo> list = dao.carpoolList(category, mno);
		model.addAttribute("list", list);
		model.addAttribute("pvo", pvo);
		model.addAttribute("category", category);
		
		return "carpool/list";
	}
	
	
	
	
	@RequestMapping("/searchAll")
	public String searchAll(HttpServletRequest request, @RequestParam("departure") String departure, @RequestParam("arrival") String arrival, @RequestParam(value="page", defaultValue="1") int page, Model model){
		//CarpoolVo vo = new CarpoolVo(departure, arrival);
		CPageVo pvo = new CPageVo();///////////
		HttpSession session = request.getSession(false);
		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
		
		if(memberInfo == null){
		//	vo.setMno(0);
			pvo.setMno(0);
		}else{
		//	vo.setMno(memberInfo.getMno());
			pvo.setMno(memberInfo.getMno());
		}
		
		pvo.setDeparture(departure);
		pvo.setArrival(arrival);
		
		///////////////////////
		int listTotal = dao.searchAllTotal(departure, arrival);

		pvo.setPage(listTotal, page);
		
		List<CarpoolMemberVo> searchList = dao.searchAll(pvo);
		
		
		//List<CarpoolMemberVo> searchList = dao.searchAll(vo);
		model.addAttribute("searchList", searchList);
		
		model.addAttribute("pvo", pvo);
		//model.addAttribute("searchInput", vo);
		return "carpool/searchAllList";
	}
	
	@RequestMapping("/search")
	public String search(HttpServletRequest request, CarpoolVo vo, Model model){
		HttpSession session = request.getSession(false);
		MemberVo memberInfo = (MemberVo)session.getAttribute("memberInfo");
		
		if(memberInfo == null){
			vo.setMno(0);
		}else{
			vo.setMno(memberInfo.getMno());
		}
		
		String usertype = vo.getUsertype();
		int pricerange = vo.getPricerange();
		List<CarpoolMemberVo> searchList = null;
		
		if(usertype.equals("all")){ //분류(usertype) 전체
			if(pricerange == 0){ //금액 전체
				searchList = dao.search1(vo);
			}else{ //금액 범위 있는 경우
				searchList = dao.search2(vo);
			}	
		}else{ 
			if(pricerange == 0){ 
				searchList = dao.search3(vo);
			}else{ 
				searchList = dao.search4(vo);
			}	
		}
		
		model.addAttribute("carpoolvo", vo);
		//model.addAttribute("category", vo.getCategory());
		model.addAttribute("searchList", searchList);
		return "carpool/search";
	}
}
