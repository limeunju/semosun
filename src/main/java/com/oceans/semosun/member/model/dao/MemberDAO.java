package com.oceans.semosun.member.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceans.semosun.like.model.vo.Likey;
import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.report.model.vo.Report;
import com.oceans.semosun.review.model.vo.Review;
import com.oceans.semosun.teacher.model.vo.Teacher;

@Repository
public class MemberDAO {

	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		return sqlSession.insert("member-mapper.insertMember", member);
	
	}

	// 메일 dao

	public int createAuthKey(String email, String authKey) throws Exception { // 인증키 DB에 넣기
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("email", email);
		map.put("authKey", authKey);

		return sqlSession.insert("member-mapper.createAuthKey", map);
	}


	public int userAuth(Map<String, String> map) { // 인증키 일치시 DB칼럼(인증여부) false->true 로 변경
		return sqlSession.update("member-mapper.userAuth", map);
	}

		    
	public Member selectOneMember(Member member) {

		
		return sqlSession.selectOne("member-mapper.selectOneMember", member);
	}
	
	

	public int DeleteOneMember(Member member) {
		
				
		return sqlSession.delete("member-mapper.DeleteOneMember", member);
	}

	public int updateMember(Member member) {
		// 여기에서 DB로 이동하구요.
		return sqlSession.update("member-mapper.updateMember", member);
	}

	public int checkIdDuplicate(HashMap<String, Object> hmap) {
	
		sqlSession.selectOne("member-mapper.checkIdDuplicate", hmap);
//		CallableStatement를 사용하면
		// result에 값이 들어있음
		
		return (Integer)hmap.get("result");
	}
	
	public int checkEmailDup(HashMap<String, Object> hmap) {
		
		sqlSession.selectOne("member-mapper.checkEmailDup", hmap);
			
		return (Integer)hmap.get("result");
	}

	public int selectTotalContents(int userNo) {
		return sqlSession.selectOne("member-mapper.selectTotalContents", userNo);
	}

	public List<Map<String, String>> selectTeacherList(int cPage, int numPerPage, int userNo) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		return sqlSession.selectList("member-mapper.selectTeacherList", userNo, rows);
	}

	public Teacher selectOneTeacher(int tNo) {
		return sqlSession.selectOne("member-mapper.selectOneTeacher", tNo);
	}
	public List<Map<String, String>> selectReviewList(int cPage, int numPerPage, int userNo) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		return sqlSession.selectList("member-mapper.selectReviewList", userNo, rows);
	}

	public Review selectOneReview(int rno) {
		return sqlSession.selectOne("member-mapper.selectOneReview", rno);
	}

	public List<Map<String, String>> selectReportList(int cPage, int numPerPage, int userNo) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		return sqlSession.selectList("member-mapper.selectReportList", userNo, rows);
	}

	public int selectReportTotalContents(int userNo) {
		return sqlSession.selectOne("member-mapper.selectReportTotalContents", userNo);
	}

	public Report selectReportList(int rNo) {
		return sqlSession.selectOne("member-mapper.selectOneReport");
	}

	public List<Likey> selectLikeyList(int cPage, int numPerPage, int userNo) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		return sqlSession.selectList("member-mapper.selectLikeyList", userNo, rows);
	}

	public int selectLikeyTotalContents(int userNo) {
		return sqlSession.selectOne("member-mapper.selectLikeyTotalContents", userNo);
	}
	
}
