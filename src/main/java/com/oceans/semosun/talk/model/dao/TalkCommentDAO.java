package com.oceans.semosun.talk.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceans.semosun.talk.model.vo.Talk;
import com.oceans.semosun.talk.model.vo.TalkComment;

@Repository
public class TalkCommentDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<Map<String, String>> selectList(int cPage, int numPerPage) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		//                    "매퍼의 실행할 SQL 명", 파라미터로 받을 값, RowBounds 전용 공간
		return sqlSession.selectList("Talk-Comment-mapper.selectList", null, rows);
	}

	public int insertTalkComment(TalkComment t) {
		
		return sqlSession.insert("Talk-Comment-mapper.insertTalkComment", t);
	}
	
	public List<Talk> selectListTalkComment(int talkNo) {
		return sqlSession.selectList("Talk-Comment-mapper.selectListTalkComment", talkNo);
	}
	
	public int deleteTalkComment(int talkNo) {
		return sqlSession.delete("Talk-Comment-mapper.deleteTalkComment", talkNo);
	}
	public int updateTalkComment(TalkComment talkComment) {
		
		return sqlSession.insert("Talk-Comment-mapper.updateTalkComment", talkComment);
	}
}
