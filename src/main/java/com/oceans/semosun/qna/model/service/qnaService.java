package com.oceans.semosun.qna.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oceans.semosun.qna.exception.QnaException;
import com.oceans.semosun.qna.model.dao.qnaDAO;
import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.qna.model.vo.Qna;


@Service
public class qnaService {
	@Autowired
	qnaDAO qnaDAO;
	
	public int selectTotalContents() {
		return qnaDAO.selectTotalContents();
	}


	public List<Map<String, String>> selectList(int cPage, int numPerPage) {
		return qnaDAO.selectQnaList(cPage, numPerPage);
	}


	public int insertQna(Qna qna) 
		throws QnaException {
			int result = 0;
			
			result = qnaDAO.insertQna(qna);
			if(result < 1) throw new QnaException("게시글 추가 중 에러 발생!");
			
			return result;
		}


	public Qna selectOne(int qNo) {
		return qnaDAO.selectOne(qNo);
	}


	public int updateQna(Qna originQna) {
		int result = 0;
		
		result = qnaDAO.updateQna(originQna);
		return result;
	}


	public int deleteQna(int qNo) {
		return qnaDAO.deleteQna(qNo);
	}



}
