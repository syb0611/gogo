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
	@RequestMapping(value = {"carpoolF"})
	public String dan() {
		return "carpool/carpoolF";
	}
	@RequestMapping(value = {"carpoolR"})
	public String jang() {
		return "carpool/carpoolR";
	}
	@RequestMapping(value = {"goschoolF"})
	public String taxi() {
		return "carpool/goschoolF";
	}
	@RequestMapping(value = {"taxiF"})
	public String goschool() {
		return "carpool/taxiF";
	}

	
}
