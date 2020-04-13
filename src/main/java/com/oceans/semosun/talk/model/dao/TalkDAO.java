package com.oceans.semosun.talk.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceans.semosun.talk.model.vo.Talk;

@Repository
public class TalkDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<Talk> selectList(int cPage, int numPerPage, String keyword) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		//                    "매퍼의 실행할 SQL 명", 파라미터로 받을 값, RowBounds 전용 공간
		if (keyword != null) {
			sqlSession.update("Talk-mapper.mergeKeyword", keyword);
			keyword = "%"+keyword+"%";
		}
		return sqlSession.selectList("Talk-mapper.selectList", keyword, rows);
	}
	
	public int selectTotalContents() {
		return sqlSession.selectOne("Talk-mapper.selectTotalContents");
	}

	public int insertTalk(Talk t) {
		
		return sqlSession.insert("Talk-mapper.insertTalk", t);
	}
	
	public List<Talk> selectListTalk() {
		return sqlSession.selectList("Talk-mapper.selectListTalk");
	}
	
	public int deleteTalk(int talkno) {
		return sqlSession.delete("Talk-mapper.deleteTalk", talkno);
	}

	public int updateTalk(Talk talk) {
		return sqlSession.update("Talk-mapper.updateTalk", talk);
	}

	public Talk selectOneTalk(int talkno) {
		return sqlSession.selectOne("Talk-mapper.selectTalk", talkno);
	}

	public List<Talk> selectTalkLive() {
		RowBounds rows = new RowBounds(0, 10);
		return sqlSession.selectList("Talk-mapper.selectLive", null, rows);
	}

	public List<Object> searchingRank() {
		RowBounds rows = new RowBounds(0, 10);
		return sqlSession.selectList("Talk-mapper.searchingRank", null, rows);
	}
	
	public List<Object> totalSearchingRank() {
		RowBounds rows = new RowBounds(0, 10);
		return sqlSession.selectList("Talk-mapper.totalSearchingRank", null, rows);
	}

	public int keywordCookiesDelete() {
		return sqlSession.delete("Talk-mapper.keywordCookiesDelete");
	}

	public List<Object> talkWordcloud() {
		return sqlSession.selectList("Talk-mapper.talkWordcloud");
	}
}











