package com.oceans.semosun.search.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.notice.model.vo.Notice;
import com.oceans.semosun.review.model.vo.Review;
import com.oceans.semosun.search.model.vo.TalknMember;
import com.oceans.semosun.talk.model.vo.Talk;
import com.oceans.semosun.teacher.model.vo.Teacher;

@Repository
public class SearchDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	public List<Teacher> selectTeacherList(String keyword) {
		
		return sqlSession.selectList("search-mapper.selectTeacherList", keyword);
	}

	public List<Review> selectReviewList(String keyword) {
		
		return sqlSession.selectList("search-mapper.selectReviewList", keyword);
	}
	public List<TalknMember> selectTalkList(String keyword){
		
		return sqlSession.selectList("search-mapper.selectTalkList", keyword);
	}
	public List<Notice> selectNotice(String keyword){
		
		return sqlSession.selectList("search-mapper.selectNoticeList", keyword);
	}
	
	// 메인화면에서 쓸거

	public List<Teacher> teacherList() {
		
		return sqlSession.selectList("search-mapper.teacherList");
	}

	public List<TalknMember> talkList() {
		
		return sqlSession.selectList("search-mapper.talkList");
	}

	public List<Notice> noticeList() {
		
		return sqlSession.selectList("search-mapper.noticeList");
	}

	public List<Review> reviewList() {
	
		return sqlSession.selectList("search-mapper.reviewList");
	}

	public int[] memberList(String[] countName) {
		String mapper = "search-mapper.";
		int[] countArr = new int[5];
		
		for (int i = 0; i < 5; i++) {
			int count = sqlSession.selectOne(mapper + countName[i]);
			countArr[i] = count;
		} 

		return countArr;
		
//		return  sqlSession.selectList("search-mapper.totalCount");
	}
	
	
}
