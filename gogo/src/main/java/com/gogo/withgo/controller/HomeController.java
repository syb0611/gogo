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
	
	/*@RequestMapping("dan")
	public String dan(){
		return "dan";
	}
	
	@RequestMapping("jang")
	public String jang(){
		return "jang";
	}
	
	@RequestMapping("goschool")
	public String goschool(){
		return "goschool";
	}
	
	@RequestMapping("taxi")
	public String taxi(){
		return "taxi";
	}
	
	@RequestMapping("community")
	public String community(){
		return "community";
	}*/
	
	@RequestMapping("customer")
	public String customer(){
		return "customer";
	}	
	
	
	@RequestMapping(value = {"carpoolF"})
	public String carpoolF() {
		return "carpool/carpoolF";
	}
	@RequestMapping(value = {"carpoolR"})
	public String carpoolR() {
		return "carpool/carpoolR";
	}
	@RequestMapping(value = {"goschoolF"})
	public String goschoolF() {
		return "carpool/goschoolF";
	}
	@RequestMapping(value = {"taxiF"})
	public String taxiF() {
		return "carpool/taxiF";
	}

	
}
