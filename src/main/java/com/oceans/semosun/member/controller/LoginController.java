package com.oceans.semosun.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	// 로그인 폼
	@RequestMapping("/login/login.do")
	public String login() {
		String page = "";
		
		return page="login/login";
	}
}
