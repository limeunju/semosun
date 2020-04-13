package com.oceans.semosun.qna.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.qna.model.vo.Qna;

@Repository
public class qnaDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	public List<Map<String, String>> selectQnaList(int cPage, int numPerPage) {
		RowBounds rows = new RowBounds((cPage - 1) * numPerPage, numPerPage);
		return sqlSession.selectList("qna-mapper.selectQnaList", null, rows);
	}

	public int selectTotalContents() {
		return sqlSession.selectOne("qna-mapper.selectTotalContents");
	}

	public int insertQna(Qna qna) {
		return sqlSession.insert("qna-mapper.insertQna", qna);
	}

	public Qna selectOne(int qNo) {
		return sqlSession.selectOne("qna-mapper.selectOneQna", qNo);
	}

	public int updateQna(Qna originQna) {
		
		return sqlSession.update("qna-mapper.updateQna", originQna);
	}

	public int deleteQna(int qNo) {
		return sqlSession.delete("qna-mapper.deleteQna", qNo);
	}

}
