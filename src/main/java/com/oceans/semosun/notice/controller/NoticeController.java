package com.oceans.semosun.notice.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.oceans.semosun.common.util.Utils;
import com.oceans.semosun.notice.model.service.NoticeService;
import com.oceans.semosun.notice.model.vo.Notice;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping("/noticeList.nt")
	public String selectNoticeList(Model model,
			@RequestParam(value="cPage", required=false, defaultValue="1") int cPage,
			@RequestParam(value="option", defaultValue = "1", required = false) int option) {

		// 한 페이지당 보여줄 게시글 수
		int numPerPage = 10;
		// 페이지 처리된 리스트 가져오기
		List<Map<String,String>> list = noticeService.selectList(cPage, numPerPage);
		
		// 전체 게시글 수 가져오기
		int totalContents = noticeService.selectTotalContents();
		
		// 페이지 계산 HTML을 추가하기
		String pageBar 
		  = Utils.getPageBar(totalContents, cPage, numPerPage, "noticeList.nt", option);
		
		// System.out.println(pageBar);
		
		model.addAttribute("list", list)
		     .addAttribute("totalContents", totalContents)
		     .addAttribute("numPerPage", numPerPage)
		     .addAttribute("cPage", cPage)
		     .addAttribute("pageBar", pageBar);
		System.out.println(list);
		return "notice/noticeList";
		
	}
	
	@RequestMapping("/noticeSearch.nt")
	public String searchNotice(Model model,
				 @RequestParam(value="cPage", required=false, defaultValue="1") int cPage,
				 @RequestParam(value="keyword", defaultValue = "", required = false) String keyword,
				 @RequestParam(value="option", defaultValue = "1", required = false) int option) {
		
		int numPerPage = 10;
		if(keyword.trim().length() != 0) {
			model.addAttribute("keyword", keyword);
			/* keyword = "%"+keyword+"%"; */
		}
		
		List<Map<String, String>> list = noticeService.searchNotice(cPage, numPerPage, keyword, option);
		
		int totalContents = noticeService.searchTotalContents(keyword, option);
		
		String pageBar
		  = Utils.getPageBar(totalContents, cPage, numPerPage, "noticeSearch.nt", keyword, option);
		
		model.addAttribute("list", list)
	     .addAttribute("totalContents", totalContents)
	     .addAttribute("numPerPage", numPerPage)
	     .addAttribute("pageBar", pageBar);
		System.out.println(list);
		return "notice/noticeList";
	}
	
	@RequestMapping("/noticeView.nt")
	public String selectOneNotice(@RequestParam("no") int noticeNo,  int nNumber, Model model) {
		Notice n = noticeService.selectOne(noticeNo);
		System.out.println("테스트 :" + n);
		
		model.addAttribute("notice", n)
			.addAttribute("nNumber", nNumber);
		return "notice/noticeView";
	}
	
	@RequestMapping("/notice/noticeForm.nt")
	public String noticeForm() {
		return "notice/noticeForm";
	}
	
	@RequestMapping("/notice/noticeFormEnd.nt")
	public String insertNotice(
			Notice notice, Model model) throws Exception {
		
		System.out.println("인설트 : " + notice + model);
		int totalContents = 0;
		int result = 0; 
		
		try {
			result = noticeService.insertNotice(notice);
		} catch (Exception e) {
			
			throw e; // 스프링이 처리할꺼라서 그냥 던져도 된다.
		}
		String msg= "";
		String loc = "/noticeView.nt";
		Notice n = null;
		
		if(result > 0 ) {
			msg = "게시글 추가 성공!";
			totalContents = noticeService.selectTotalContents();
			n = noticeService.selectOneCurrent();
		} else {
			msg = "게시글 추가 실패!";
		}
			
		model.addAttribute("msg", msg)
		 	 .addAttribute("loc", loc)
		 	 .addAttribute("nNumber", totalContents-1)
		 	 .addAttribute("notice", n);
		
		return "notice/noticeView";
	}
	
	@RequestMapping("/notice/noticeUpdateView.nt")
	public String noticeUpdateView(@RequestParam int noticeNo, Model model) {
		
		model.addAttribute("notice", noticeService.selectOne(noticeNo));
		
		return "notice/noticeUpdateView";
	}
	
	@RequestMapping("/notice/noticeUpdate.nt")
	public String noticeUpdate(Notice notice, Model model, HttpServletRequest request) {
		
		int noticeNo = notice.getNoticeNo();
		
		// 원본 게시글 수정 부분
		Notice originNotice = noticeService.selectOne(noticeNo);
		originNotice.setNoticeTitle(notice.getNoticeTitle());
		originNotice.setNoticeContent(notice.getNoticeContent());
		
		int result = noticeService.updateNotice(originNotice);
		
		String msg = "";
		String loc = "/noticeView.nt";
		
		if(result > 0) {
			msg = "게시글 수정 성공!";
		} else {
			msg = "게시글 수정 실패!";
		}
		
		model.addAttribute("msg", msg)
			 .addAttribute("loc", loc);
		
		return "notice/noticeView";
	}
	
	@RequestMapping("/notice/noticeDelete.nt")
	public String noticeDelete(int noticeNo, Model model, HttpSession session) {
		
		int result = noticeService.deleteNotice(noticeNo);
		
		String msg = "";
		String loc = "/noticeList.nt";
		
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

			

}
