package com.oceans.semosun.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	// 화면을 보고 싶으면 이걸 만들어 두고 
	// http://localhost:8088/semosun/404.er 이런식으로 치면 나와요!
	@RequestMapping("/404.er")
	public String error404() {
		return "common/404";
	}
	
	// 회원
	@RequestMapping("/signUp.sg")
	public String signUp() {
		return "memberSign/signUp";
	}
	
	// 공지사항
	@RequestMapping("/noticeForm.nt")
	public String noticeForm() {
		return "notice/noticeForm";
	}
	
	
	// Admin Page
	@RequestMapping("/adminMain.am")
	public String adminMain() {
		return "admin/adminMain";
	}
	
	
}
