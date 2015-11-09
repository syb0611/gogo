package com.gogo.withgo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MapMongoController {
	@RequestMapping(value = {"/map"})
	public String map() {
		return "map";
	}
	
}