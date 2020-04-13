package com.oceans.semosun.talk.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oceans.semosun.talk.model.service.TalkService;
import com.oceans.semosun.talk.model.vo.Talk;
// 컨트롤러는 잘 취합해서 서비스로 전달하는 역할(스프링 배우기 전)
@Controller
public class TalkController {
	
	@Autowired
	TalkService talkService;

	@RequestMapping("/talk/talkInsertSelect.do")
	@ResponseBody
	public List<Talk> talkInsertSelect (@RequestParam int userno ,@RequestParam String talkcontent){
		List<Talk> data = null;
		// insert
		Talk talk = new Talk(userno, talkcontent);
		
		int result = talkService.insertTalk(talk);
		
		if(result>0) {
			// selectList
			data = talkService.selectListTalk();
		}
		return data;
	}
	
	@RequestMapping("/talk/talkUpdateSelect.do")
	@ResponseBody
	public Talk talkUpdateSelect (@RequestParam int talkno ,@RequestParam String talkcontent){
		Talk data = null;
		// insert
		Talk talk = new Talk();
		talk.setTalkno(talkno);
		talk.setTalkcontent(talkcontent);
		
		int result = talkService.updateTalk(talk);
		
		if(result>0) {
			// selectList
			data = talkService.selectOneTalk(talkno);
		}
		return data;
	}
	
	@RequestMapping("/talk/talkList.do")
	public String selecttalkList(
			@RequestParam(value="cPage", 
			              required=false, 
			              defaultValue="1") int cPage,
			Model model, @RequestParam(value="keyword", required = false) String keyword) {
		// 한 페이지당 보여줄 게시글 수
		int numPerPage = 10;
		if( keyword != null ) {
			model.addAttribute("keyword", keyword);
		}
		// 페이지 처리된 리스트 가져오기
		List<Talk> list = talkService.selectList(cPage, numPerPage, keyword);
		// 전체 게시글 수 가져오기
		int totalContents = talkService.selectTotalContents();
		
//		// 페이지 계산 HTML을 추가하기
//		String pageBar 
//		  = Utils.getPageBar(totalContents, cPage, numPerPage, "talkList.su");

		// pageBar 데이터 확인용
		// System.out.println(pageBar);
		
		model.addAttribute("list", list)
			 .addAttribute("searchingRank", talkService.searchingRank())
			 .addAttribute("totalSearchingRank", talkService.totalSearchingRank())
		     .addAttribute("totalContents", totalContents)
		     .addAttribute("numPerPage", numPerPage);
//		     .addAttribute("pageBar", pageBar);

		return "talk/talkList";
	}
	
	@RequestMapping("/talk/talkDelete.do")
	public String talkDelete(@RequestParam int talkno, Model model) {
		
		int result = talkService.deleteTalk(talkno);
		
		String msg = "";
		String loc = "/talk/talkList.do";
		
		if(result > 0) {
			msg = "게시글 삭제 성공!";
		} else {
			msg = "게시글 삭제 실패!";
		}
		
		model.addAttribute("msg", msg)
		     .addAttribute("loc", loc);
		
		return "common/msg";
	}
	
	@RequestMapping("/talk/talkScroll.do")
	@ResponseBody
	public List<Talk> talkScroll(@RequestParam int currentPage,
												@RequestParam(value="keyword", required = false) String keyword) {
		
		List<Talk> list = new ArrayList<>();
		
		// 한 페이지당 보여줄 게시글 수
		int numPerPage = 5;
		if( keyword != null ) {
			keyword = "%"+keyword+"%";
		}
		// 페이지 처리된 리스트 가져오기
		list = talkService.selectList(currentPage, numPerPage, keyword);
		
		return list;
		
	}
	@RequestMapping("/talk/talkLive.do")
	@ResponseBody
	public List<Talk> TalkLive(){
		List<Talk> list = talkService.selectTalkLive();
		
		return list;
	}
	
	@RequestMapping("/talk/keywordCookiesDelete.do")
	public String keywordCookiesDelete(Model model){
		int result = talkService.keywordCookiesDelete();
		
		model.addAttribute("msg", "검색어 캐시 "+ result +"개 삭제가 완료 되었습니다!")
			 .addAttribute("loc", "/talk/talkList.do");
		return "common/msg";
	}
	
	@RequestMapping("/talk/talkWordcloud.do")
	@ResponseBody
	public List<Object> talkWordcloud(){
		List<Object> talkWordcloud = talkService.talkWordcloud();
		return talkWordcloud;
	}
	
}
