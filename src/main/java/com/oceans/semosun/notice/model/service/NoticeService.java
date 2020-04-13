package com.oceans.semosun.notice.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oceans.semosun.notice.exception.NoticeException;
import com.oceans.semosun.notice.model.dao.NoticeDAO;
import com.oceans.semosun.notice.model.vo.Notice;

@Service
public class NoticeService {
	
	@Autowired
	NoticeDAO noticeDAO;
	
	public List<Map<String, String>> selectList(int cPage, int numPerPage) {
		return noticeDAO.selectList(cPage, numPerPage);
	}

	public int selectTotalContents() {
		return noticeDAO.selectTotalContents();
	}

	public Notice selectOne(int noticeNo) {
		return noticeDAO.selectOne(noticeNo);
	}

	public int insertNotice(Notice notice)
			throws NoticeException {
		int result = 0;
		
		// 1. 게시글 추가
		result = noticeDAO.insertNotice(notice);
		if(result < 1) throw new NoticeException("게시글 추가 중 에러 발생!");
		
		return result;
	}

	public int updateNotice(Notice originNotice) {
		int result = 0;
		
		result = noticeDAO.updateNotice(originNotice);
		
		return result;
	}

	public int deleteNotice(int noticeNo) {

		return noticeDAO.deleteNotice(noticeNo);
	}

	public Notice selectOneCurrent() {
		return noticeDAO.selectOneCurrent();
	}

	public int searchTotalContents(String keyword, int option) {
		return noticeDAO.searchTotalContents(keyword, option);
	}

	public List<Map<String, String>> searchNotice(int cPage, int numPerPage, String keyword, int option) {
		return noticeDAO.searchNotice(cPage, numPerPage, keyword, option);
	}

}
