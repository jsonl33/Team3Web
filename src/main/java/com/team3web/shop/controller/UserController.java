package com.team3web.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// ����� ���� ��Ʈ�ѷ�

@Controller
public class UserController {
	
	@RequestMapping(value = "/register" , method = RequestMethod.GET)
    public String register() {
		return "/user/register";
	}
	
}
