package com.oceans.semosun.qna.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.oceans.semosun.common.util.Utils;
import com.oceans.semosun.member.exception.MemberException;
import com.oceans.semosun.member.model.service.MemberService;
import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.notice.model.vo.Notice;
import com.oceans.semosun.qna.model.service.qnaService;
import com.oceans.semosun.qna.model.vo.Qna;
import com.oceans.semosun.teacher.model.vo.Teacher;

@Controller
public class QnaController {
	@Autowired
	qnaService qnaService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("/qnaList.do")
	public String selectQnaList(
			@RequestParam(value="cPage", 
			required = false, 
			defaultValue="1") int cPage,
			Model model, HttpSession session) {
		
		int numPerPage = 10;
		
		List<Map<String, String>> list = qnaService.selectList(cPage, numPerPage);
		System.out.println("ㄴㅁㅇㄹㄴㅁㅇㄹㄴㅇㅁㄹ" + list);
		int totalContents = qnaService.selectTotalContents();
		
		String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, "qnaList.do");
		
		System.out.println("페이지 바" + pageBar);
		
		model.addAttribute("list", list).addAttribute("totalContents", totalContents)
				.addAttribute("numPerPage", numPerPage).addAttribute("pageBar", pageBar);
	
		System.out.println("mooooodellelelelel" + model);
		return "qna/qnaList";
	}
	
	@RequestMapping("/qna/qnaInsert.do")
	public String qnaForm() {
		return "qna/qnaInsert";
	}
	
	@RequestMapping("/qna/qnaInsertEnd.do")
	public String insertQna(
			Qna qna, Model model) throws Exception {
		
		int result = 0;
		
		try {
		result = qnaService.insertQna(qna);
		} catch (Exception e) {
			
			throw e;
		}
		
		String msg = "";
		String loc = "/qnaList.do";
		Qna q = null;
		
		if(result > 0) {
			msg = "게시글 추가 성공!";
		} else {
			msg = "게시글 추가 실패!";
		}
		
		model.addAttribute("qna", qnaService.selectOne(qna.getqNo()))
			 .addAttribute("msg", msg)
			 .addAttribute("loc", loc);
		
		return "redirect:/qnaList.do";
		
	}
	
	@RequestMapping("/qnaSelectOne.do")
	public String selectOneQna(@RequestParam("no") int qNo, Model model) {
		Qna q = qnaService.selectOne(qNo);
		System.out.println("테스트 :" + q);
		
		model.addAttribute("qna", q);
		return "qna/qnaSelectOne";
	}
	
	@RequestMapping("/qna/qnaUpdate.do")
	public String qnaUpdate(Qna qna, Model model, HttpServletRequest request, HttpSession session) {
		
		int qNo = qna.getqNo();
		System.out.println("번호야 왔니?? : " + qNo);
		Qna originQna = qnaService.selectOne(qNo);
		originQna.setqTitle(qna.getqTitle());
		originQna.setqContent(qna.getqContent());
		originQna.setAnswer(qna.getAnswer());
		
		int result = qnaService.updateQna(originQna);
		qna = qnaService.selectOne(qna.getqNo());
		
		String loc = "redirect:/qnaList.do";
		// if(((Member) session.getAttribute("member")).getUserId().equals("admin")) loc = "qna/qnaSelectOneAdmin";
		if(((Member) session.getAttribute("member")).getUserId().equals("admin")) loc = "redirect:/qnaList.do";
		model.addAttribute("qna", qna);
		return loc;
	}
	
	/*
	 * @RequestMapping("/qna/qnaUpdateView.nt") public String
	 * qnaUpdateView(@RequestParam int qNo, Model model) {
	 * 
	 * model.addAttribute("qna", qnaService.selectOne(qNo));
	 * 
	 * return "qna/qnaSelectOne"; }
	 */
	
	@RequestMapping("/qna/qnaDelete.do")
	public String qnaDelete(int qNo, Model model, HttpSession session) {
		
		int result = qnaService.deleteQna(qNo);
		
		String msg = "";
		String loc = "/qnaList.do";
		
		if(result > 0) {
			msg = "게시글 삭제 성공!";
		} else {
			msg = "게시글 삭제 실패!";
		}
		
		model.addAttribute("msg", msg)
		     .addAttribute("loc", loc);
		System.out.println("dddd" + model);
		return "common/msg";
	}
	
	@RequestMapping("/qna/qnaPwd.do")
	public String pwdQna(@RequestParam("no") int qNo, Model model) {
		Qna q = qnaService.selectOne(qNo);
		
		model.addAttribute("qna", q);
		return "qna/qnaPassword";
	}
	
	@RequestMapping("/qna/qnaSelectOnePwd.do")
	public String selectOneQnaPwd(Qna qna, @RequestParam("checkPwd") String checkPwd, Model model, HttpSession session) {
		String msg = "";
		String loc = "";
		Qna q = qnaService.selectOne(qna.getqNo());

		System.out.println(session.getAttribute("member"));
			Member m = (Member) session.getAttribute("member"); // session의 m값
			if(qna.getUserNo() == m.getUserNo() && bcryptPasswordEncoder.matches(checkPwd, q.getPwd()) ) {

//			System.out.println("qweqwe" + m.getPwd());

				msg = " 입력 성공!";
				loc = "/qnaSelectOne.do?no="+q.getqNo();
				
//				System.out.println(m);
			
			} else if (checkPwd.trim().length() != 0) {
				msg = "비밀번호가 틀렸습니다.";
				loc="/qnaList.do";
			} else {
			
				msg = "입력 실패!";
				loc="/qnaList.do";
			}

			model.addAttribute("msg", msg);
			model.addAttribute("loc", loc);
			model.addAttribute("qna", q);

		return "common/msg";
	}
	
	@RequestMapping("/qna/qnaSelectOneAdmin.do")
	public String qnaSelectOneAdmin(@RequestParam("no") int qNo, Model model) {
		Qna q = qnaService.selectOne(qNo);
		
		model.addAttribute("qna", q);
		return "qna/qnaSelectOneAdmin";
	}
}
