package com.oceans.semosun.search.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.notice.model.vo.Notice;
import com.oceans.semosun.review.model.vo.Review;
import com.oceans.semosun.search.model.dao.SearchDAO;
import com.oceans.semosun.search.model.vo.TalknMember;
import com.oceans.semosun.talk.model.vo.Talk;
import com.oceans.semosun.teacher.model.vo.Teacher;

@Service
public class SearchService {

	@Autowired
	SearchDAO searchDAO;
	
	public List<Teacher> selectTeacherList(String keyword) {
		List<Teacher> list = new ArrayList<>();
		if(keyword.length() > 0) {
			list = searchDAO.selectTeacherList(keyword);
		}
		return list;
	}

	public List<Review> selectReviewList(String keyword) {
		List<Review> list = new ArrayList<>();
		if(keyword.length() > 0) {
			list = searchDAO.selectReviewList(keyword);
		}
		return list;
	}

	public List<TalknMember> selectTalkList(String keyword) {
		List<TalknMember> list = new ArrayList<>();
		if(keyword.length() > 0) {
			list = searchDAO.selectTalkList(keyword);
		}
		return list;
	}

	public List<Notice> selectNoticeList(String keyword) {
		List<Notice> list = new ArrayList<>();
		if(keyword.length() > 0) {
			list = searchDAO.selectNotice(keyword);
		}
		return list;
	}

	

	public int[] memberList(String[] countName) {
		return searchDAO.memberList(countName);
	}


	
}
