package com.oceans.semosun.talk.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oceans.semosun.talk.exception.TalkException;
import com.oceans.semosun.talk.model.dao.TalkDAO;
import com.oceans.semosun.talk.model.vo.Talk;
// 서비스는 커밋 롤백같은 역할(스프링전)

@Service
public class TalkService {
	
	@Autowired
	TalkDAO talkDAO;

	public List<Talk> selectList(int cPage, int numPerPage, String keyword) {
		return talkDAO.selectList(cPage, numPerPage, keyword);
	}

	public int selectTotalContents() {
		return talkDAO.selectTotalContents();
	}

	public int insertTalk(Talk t) throws TalkException { 
		int result = 0;
		
		// 1. 게시글 추가
		result = talkDAO.insertTalk(t);
		if(result < 1) throw new TalkException("게시글 추가 중 에러 발생!");
		
		return result;
	}
	
	public List<Talk> selectListTalk() {
		
		return talkDAO.selectListTalk();
	}

	public int updateTalk(Talk talk) {
		int result = 0;
		
		
		result = talkDAO.updateTalk(talk);
		if(result < 1) throw new TalkException("게시글 추가 중 에러 발생!");
		
		return result;
	}

	public Talk selectOneTalk(int talkno) {
		return talkDAO.selectOneTalk(talkno);
	}

	public int deleteTalk(int talkNo) {
		
		return talkDAO.deleteTalk(talkNo);
	}

	public List<Talk> selectTalkLive() {
		
		return talkDAO.selectTalkLive();
	}

	public List<Object> searchingRank() {
		return talkDAO.searchingRank();
	}
	
	public List<Object> totalSearchingRank() {
		return talkDAO.totalSearchingRank();
	}

	public int keywordCookiesDelete() {
		return talkDAO.keywordCookiesDelete();
	}

	public List<Object> talkWordcloud() {
		return talkDAO.talkWordcloud();
	}

	

}







