package com.oceans.semosun.talk.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oceans.semosun.common.util.Utils;
import com.oceans.semosun.talk.model.service.TalkCommentService;
import com.oceans.semosun.talk.model.service.TalkService;
import com.oceans.semosun.talk.model.vo.Talk;
import com.oceans.semosun.talk.model.vo.TalkComment;

@Controller
public class TalkCommentController {
	@Autowired
	TalkCommentService talkCommentService;
	@Autowired
	TalkService talkService;

	@RequestMapping("/talk/talkCommentSelectList.do")
	@ResponseBody
	public Map<String, Object> talkCommentSelectList (@RequestParam int talkNo){
		Map<String, Object> data = new HashMap<>();
		
		data.put("Talk", talkService.selectOneTalk(talkNo));
		data.put("list", talkCommentService.selectListTalkComment(talkNo));
		
		return data;
	}
	
	@RequestMapping("/talk/talkCommentInsertSelect.do")
	@ResponseBody
	public List<Talk> talkCommentInsertSelect (@RequestParam int userno ,@RequestParam int talkno ,@RequestParam String ccontent){
		List<Talk> data = null;
		// insert
		TalkComment talkComment = new TalkComment(talkno, userno, ccontent);
		
		int result = talkCommentService.insertTalkComment(talkComment);
		
		if(result>0) {
			// selectList
			data = talkCommentService.selectListTalkComment(talkno);
		}
		return data;
	}
	
	@RequestMapping("/talk/talkCommentUpdateSelect.do")
	@ResponseBody
	public List<Talk> talkCommentUpdatetSelect (@RequestParam int commentno ,@RequestParam int talkno ,@RequestParam String ccontent){
		List<Talk> data = null;
		// insert
		TalkComment talkComment = new TalkComment();
		talkComment.setCommentno(commentno);
		talkComment.setTalkno(talkno);
		talkComment.setCcontent(ccontent);
		
		int result = talkCommentService.updateTalkComment(talkComment);
		
		if(result>0) {
			// selectList
			data = talkCommentService.selectListTalkComment(talkno);
		}
		return data;
	}
	
	@RequestMapping("/talk/talkCommentDeleteSelect.do")
	@ResponseBody
	public List<Talk> talkCommentDeleteSelect (@RequestParam int commentno, @RequestParam int talkno){
		List<Talk> data = null;
	
		int result = talkCommentService.deleteTalkComment(commentno);
			if(result>0) {
			// selectList
			data = talkCommentService.selectListTalkComment(talkno);
		}
		return data;
	}

}
