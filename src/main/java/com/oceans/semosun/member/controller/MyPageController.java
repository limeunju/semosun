package com.oceans.semosun.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oceans.semosun.member.model.service.MemberService;
import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.teacher.model.service.TeacherInsertService;
import com.oceans.semosun.teacher.model.vo.Teacher;


@Controller
public class MyPageController {

	@Autowired
	TeacherInsertService teacherService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 마이페이지 메인
	@RequestMapping("/myPage/myPageProfile.do")
	public String memberView(Member member, HttpSession session, Model model) {
		member = (Member)session.getAttribute("member");
		//회원정보 조회 창에서는 회원정보가 필요함으로 meber session.getAttribute
		
		
		System.out.println("회원 정보 확인 창 : "+member);
		model.addAttribute("member", member);
		
		return "myPage/myPageProfile";
	}
}
