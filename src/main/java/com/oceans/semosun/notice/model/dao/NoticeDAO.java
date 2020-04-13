package com.oceans.semosun.notice.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceans.semosun.notice.model.vo.Notice;

@Repository
public class NoticeDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<Map<String, String>> selectList(int cPage, int numPerPage) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		//                    "매퍼의 실행할 SQL 명", 파라미터로 받을 값, RowBounds 전용 공간
		return sqlSession.selectList("notice-mapper.selectList", null, rows);
	}

	public int selectTotalContents() {
		return sqlSession.selectOne("notice-mapper.selectTotalContents");
	}

	public Notice selectOne(int noticeNo) {
		System.out.println(noticeNo);
		return sqlSession.selectOne("notice-mapper.selectOnenotice", noticeNo);
	}

	public int insertNotice(Notice notice) {
		
		return sqlSession.insert("notice-mapper.insertNotice", notice);
	}

	public int updateNotice(Notice originNotice) {
		
		return sqlSession.update("notice-mapper.updateNotice", originNotice);
	}

	public int deleteNotice(int noticeNo) {
		return sqlSession.delete("notice-mapper.deleteNotice", noticeNo);
	}

	public Notice selectOneCurrent() {
		return sqlSession.selectOne("notice-mapper.selectOneCurrent");
	}

	public int searchTotalContents(String keyword, int option) {
		HashMap<String, Object> keywordMap = new HashMap<>(); 
		keywordMap.put("option", option);
		keywordMap.put("keyword", keyword);
		return sqlSession.selectOne("notice-mapper.searchTotalContents", keywordMap);
	}

	public List<Map<String, String>> searchNotice(int cPage, int numPerPage, String keyword, int option) {
		HashMap<String, Object> keywordMap = new HashMap<>(); 
		keywordMap.put("option", option);
		keywordMap.put("keyword", keyword);
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		//                    "매퍼의 실행할 SQL 명", 파라미터로 받을 값, RowBounds 전용 공간
		return sqlSession.selectList("notice-mapper.searchNotice", keywordMap, rows);
	}
	
}
