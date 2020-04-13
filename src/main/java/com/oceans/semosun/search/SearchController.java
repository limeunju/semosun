package com.oceans.semosun.search;

import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.notice.model.vo.Notice;
import com.oceans.semosun.review.model.vo.Review;
import com.oceans.semosun.search.model.service.SearchService;
import com.oceans.semosun.search.model.vo.TalknMember;
import com.oceans.semosun.talk.model.vo.Talk;
import com.oceans.semosun.teacher.model.vo.Teacher;




@Controller
public class SearchController {
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping("/search/searchPage.do")
	public String searchPage(Member member, HttpSession session, Model model) {
		
		System.out.println("검색페이지 잘가는회원 :"+member);
		model.addAttribute("member", member);
		
		return "search/searchPage";
	}
	/**
	 * 만약 ajax 라면...
	 * @param keyword
	 * @return
	 */
	/*
	@RequestMapping("/search/searchAll.do")
	@ResponseBody
	public Map<String, Object> searchForm(String keyword){
		Map<String, Object> hashMap = new HashMap<>();
		
		List<Teacher> teacherList = searchService.selectTeacherList(keyword);
		// List<Review> reviewList = searchService.selectReviewList(keyword);
		List<Member> memberList = searchService.selectMemberList(keyword);
//		
//		System.out.println(teacherList);
//		System.out.println(memberList);
		
		hashMap.put("teacherList", teacherList);
		hashMap.put("memberList", memberList);
		
		return hashMap;
	}*/
	
	@RequestMapping("/search/searchAll.do")
	public String searchForm(String keyword, Model model){
		
		List<Teacher> teacherList = searchService.selectTeacherList(keyword);
	    
		List<Review> reviewList = searchService.selectReviewList(keyword);
		
	    //List<Member> memberList = searchService.selectMemberList(keyword);
		
		List<TalknMember> talkList = searchService.selectTalkList(keyword);

		List<Notice> noticeList = searchService.selectNoticeList(keyword);

		
		
		
		model.addAttribute("teacherList", teacherList)
			 .addAttribute("reviewList", reviewList)
			.addAttribute("talkList", talkList)
			.addAttribute("noticeList", noticeList);
		
		
		return "search/searchPage";
		}
	
	//메인에 띄울 전체 리스트
	@RequestMapping("/search/searchCount.do")
	@ResponseBody
	public Map<String, Object> AllList() {
		System.out.println(1);
		Map<String, Object> allList = new HashMap<String, Object>();
		String[] countName = {"memberCount", "reviewCount", "teacherCount", "supCount", "noticeCount"}; 
		int[] countArr = searchService.memberList(countName);
		for (int i = 0; i < 5; i++) { allList.put(countName[i], countArr[i]); }

		//		List<Integer>  allList = searchService.memberList();
		return allList;
	}
	
	
}
