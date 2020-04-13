package com.oceans.semosun.review.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oceans.semosun.common.util.Utils;
import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.review.model.service.ReviewService;
import com.oceans.semosun.review.model.vo.Review;
import com.oceans.semosun.teacher.model.vo.Teacher;

@Controller
public class ReviewController {
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping("/review/selectListTeacherReview.do")
	public String selectListTeacherReview( @RequestParam(value="cPage", defaultValue = "1", required = false) int cPage, @RequestParam(value="tNo", required = false) String tNo, Model model, HttpSession session) {
		if (tNo == null) {
			model.addAttribute("msg", "강사가 선택되지 않았습니다.")
		 		 .addAttribute("loc", "/");
			return "common/msg";
		}
		Teacher t = reviewService.selectOneTeacher(Integer.parseInt(tNo));
		int numPerPage = 5;
		int reviewCount = reviewService.totalReviewPerTeacher(Integer.parseInt(tNo));
		float reviewAvg = reviewService.averagePerTeacher(Integer.parseInt(tNo));
		int userNo = 0;
		if (session.getAttribute("member") != null) userNo = ((Member) session.getAttribute("member")).getUserNo();
		List<Review> listTeacherReview = reviewService.selectListTeacherReview(Integer.parseInt(tNo), userNo, cPage, numPerPage);
		String pageBar = Utils.getPageBar(reviewCount, cPage, numPerPage, Integer.parseInt(tNo), "selectListTeacherReview.do");
//											  http://localhost:8088/semosun/review/selectListTeacherReview.do?tNo=61&?cPage=2
		if (listTeacherReview.size() > 0) {
			HashMap<String, String> map1 = reviewService.selectChartMap(Integer.parseInt(tNo));
			HashMap<String, String> reviewLevel = reviewService.selectReviewLevel(Integer.parseInt(tNo));
			model.addAttribute("reviewStat", map1)
				 .addAttribute("reviewLevel", reviewLevel);
		}
		
		model.addAttribute("Teacher", t)
			 .addAttribute("list", listTeacherReview)
			 .addAttribute("reviewCount", reviewCount)
			 .addAttribute("reviewAvg", reviewAvg)
			 .addAttribute("pageBar", pageBar); 
		
		return "review/teacherReview";
	}
	
	@RequestMapping("/review/insertReview.do")
	public String insertReview(Review review, Model model) {
		System.out.println(review);
		int result = reviewService.insertReview(review);
		
		if (result > 0) {
			model.addAttribute("msg", "리뷰가 등록되었습니다!")
				 .addAttribute("loc", "/review/selectListTeacherReview.do?tNo="+review.gettNo());
		} else {
			model.addAttribute("msg", "등록 중에 오류가 발생했습니다. 고쳐주세요!")
			 	 .addAttribute("loc", "/review/selectListTeacherReview.do?tNo="+review.gettNo());
		}
		return "common/msg";
	}
	
	
	@RequestMapping("/review/updateReview.do")
	public String updateReview(Review review, Model model) {
		System.out.println(review);
		int result = reviewService.updateReview(review);
		
		if (result > 0) {
			model.addAttribute("msg", "리뷰가 수정되었습니다!")
			.addAttribute("loc", "/review/selectListTeacherReview.do?tNo="+review.gettNo());
		} else {
			model.addAttribute("msg", "수정 중에 오류가 발생했습니다. 고쳐주세요!")
			.addAttribute("loc", "/review/selectListTeacherReview.do?tNo="+review.gettNo());
		}
		return "common/msg";
	}
	
	@RequestMapping("/review/deleteReview.do")
	public String deleteReview(int tNo, int rno, Model model) {

		int result = reviewService.deleteReview(rno);
		
		if (result > 0) {
			model.addAttribute("msg", "리뷰 삭제를 성공했습니다!")
			 .addAttribute("loc", "/review/selectListTeacherReview.do?tNo="+tNo);
		} else {
			model.addAttribute("msg", "리뷰 삭제 중에 오류가 발생했습니다. 고쳐주세요!")
			 .addAttribute("loc", "/review/selectListTeacherReview.do?tNo="+tNo);
		}
		return "common/msg";
	}
	
	@RequestMapping("/review/selectReviewLive.do")
	@ResponseBody
	public List<Review> reviewLive(){
		List<Review> list = reviewService.selectReviewLive(); 
		return list;
	}
	
	@RequestMapping("/review/selectBestReview.do")
	@ResponseBody
	public List<Review> bestReview(){
		List<Review> list = reviewService.selectBestReview(); 
		return list;
	}
	
	@RequestMapping("/review/likeReview.do")
	@ResponseBody
	public int likeReview(@RequestParam Boolean isLike, @RequestParam int rno, @RequestParam int userNo, @RequestParam int tNo){
		return reviewService.likeReview(isLike, rno, userNo, tNo); 
	}
	
	@RequestMapping("/review/selectOneReview.do")
	@ResponseBody
	public Review selectOneReview(int rno){
		Review review = reviewService.selectOneReview(rno); 
		return review;
	}
	
}
