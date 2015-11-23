package com.gogo.withgo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping(value = {"/", "/home"})
	public String home() {
		return "home";
	}
	
	@RequestMapping("customer")
	public String customer(){
		return "customer";
	}	
	
	
	
}
