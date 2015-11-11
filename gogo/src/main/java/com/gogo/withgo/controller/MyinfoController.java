package com.gogo.withgo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MyinfoController {
	
	@RequestMapping(value={"/","/profile"})	
	public String main(){
		return "myinfo/profile";
	}
	
	@RequestMapping("/password")	
	public String password(){
		return "myinfo/password";
	}
	
	@RequestMapping("/booking")
	public String booking(){
		return "myinfo/booking";
	}
	
	@RequestMapping("/reglist")
	public String reglist(){
		return "myinfo/reglist";
	}
	
	@RequestMapping("/bookmark")
	public String bookmark(){
		return "myinfo/bookmark";
	}
	
	@RequestMapping("/withdraw")
	public String withdraw(){
		return "myinfo/withdraw";
	}
}
