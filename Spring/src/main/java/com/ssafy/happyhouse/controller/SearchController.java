package com.ssafy.happyhouse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@GetMapping("/house")
	public String search() {
		return "house/search";
	}
	
	@GetMapping("/index")
	public String index() {
		return "house/index";
	}
	
	
}
