package com.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.service.MainService;

@Controller
@RequestMapping("/*.do")
public class MainController {
	
//	@Autowired
//	private MainService service;
	
	//메인 뷰 : GET, /main/main
	@RequestMapping(value="/main.do", method= RequestMethod.GET)
	public String main_view() { return "/main/main_view"; }
}
