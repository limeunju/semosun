package com.oceans.semosun.talk.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oceans.semosun.talk.exception.TalkException;
import com.oceans.semosun.talk.model.dao.TalkCommentDAO;
import com.oceans.semosun.talk.model.vo.Talk;
import com.oceans.semosun.talk.model.vo.TalkComment;

@Service
public class TalkCommentService {
	@Autowired
	TalkCommentDAO talkCommentDAO;
	
	public List<Map<String, String>> selectList(int cPage, int numPerPage) {
		return talkCommentDAO.selectList(cPage, numPerPage);
	}


	public int insertTalkComment(TalkComment t) throws TalkException { 
		int result = 0;
		
		result = talkCommentDAO.insertTalkComment(t);
		if(result < 1) throw new TalkException("게시글 추가 중 에러 발생!");
		
		return result;
	}
	
	public List<Talk> selectListTalkComment(int talkNo) {
		
		return talkCommentDAO.selectListTalkComment(talkNo);
	}

	public int updateTalkComment(TalkComment talkComment) {
		int result = 0;
		
		
		result = talkCommentDAO.updateTalkComment(talkComment);
		if(result < 1) throw new TalkException("게시글 추가 중 에러 발생!");
		
		return result;
	}

	public int deleteTalkComment(int commentno) {
		int result = 0;
		
		result = talkCommentDAO.deleteTalkComment(commentno);
		if(result < 1) throw new TalkException("게시글 추가 중 에러 발생!");
		
		return result;
	}
}
