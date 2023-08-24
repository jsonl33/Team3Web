package com.team3web.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class LoginController {
	
	@RequestMapping(value = "/login" , method = RequestMethod.GET)
    public String login() {
		return "/user/login";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)	// �엫�떆�꽕�젙
	public String loginCheck(@RequestParam String id, @RequestParam String pw) {
		return "index";
	}
}
