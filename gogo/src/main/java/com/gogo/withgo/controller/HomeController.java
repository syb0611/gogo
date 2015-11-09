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
	@RequestMapping(value = {"dan"})
	public String dan() {
		return "dan";
	}
	@RequestMapping(value = {"jang"})
	public String jang() {
		return "jang";
	}
	@RequestMapping(value = {"taxi"})
	public String taxi() {
		return "taxi";
	}
	@RequestMapping(value = {"goschool"})
	public String goschool() {
		return "goschool";
	}
	@RequestMapping(value = {"community"})
	public String community() {
		return "community";
	}
	@RequestMapping(value = {"customer"})
	public String customer() {
		return "customer";
	}
	
}
