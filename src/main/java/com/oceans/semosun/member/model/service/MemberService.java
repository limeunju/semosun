package com.oceans.semosun.member.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oceans.semosun.like.model.vo.Likey;
import com.oceans.semosun.member.MailHandler;
import com.oceans.semosun.member.TempKey;
import com.oceans.semosun.member.model.dao.MemberDAO;
import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.report.model.vo.Report;
import com.oceans.semosun.review.model.vo.Review;
import com.oceans.semosun.teacher.model.vo.Teacher;


@Service
public class MemberService {
	@Autowired
	MemberDAO memberDAO;
	
	public int insertMember(Member member) {
		return memberDAO.insertMember(member);
	}
	
	// 메일인증 service
	@Transactional
	public int createAuth(String email, String authKey) throws Exception {
		
		return memberDAO.createAuthKey(email, authKey);
	}

	public int userAuth(String email, String authKey) {
		Map<String, String> map = new HashMap();
		map.put("email", email);
		map.put("authKey", authKey);
		
		return memberDAO.userAuth(map);
	}	

	public Member selectOneMember(Member member) {
		
		
		return memberDAO.selectOneMember(member);
	}
	
	
	

	public int DeleteOneMember(Member member) {
		// TODO Auto-generated method stub
		return memberDAO.DeleteOneMember(member);
	}

	public int updateMember(Member member) {
		// 여기에서 DAO로 이동합니다.
		
		return memberDAO.updateMember(member);
	}

	public int checkIdDuplicate(String userId) {
		HashMap<String, Object> hmap = new HashMap();
		
		hmap.put("userId", userId);
		
		return memberDAO.checkIdDuplicate(hmap);
	}
	public int checkEmailDup(String email) {
		HashMap<String, Object> hmap = new HashMap();
		
		hmap.put("email", email);
		
		return memberDAO.checkEmailDup(hmap);
	}

	public List<Map<String, String>> selectList(int cPage, int numPerPage,int userNo) {
		return memberDAO.selectTeacherList(cPage, numPerPage, userNo);
	}

	public int selectTotalContents(int userNo) {
		return memberDAO.selectTotalContents(userNo);
	}

	public Teacher selectOneTeacher(int tNo) {
		return memberDAO.selectOneTeacher(tNo);
	}

	public List<Map<String, String>> selectListReview(int cPage, int numPerPage, int userNo) {
		return memberDAO.selectReviewList(cPage, numPerPage, userNo);
	}

	public Review selectOneReview(int rno) {
		return memberDAO.selectOneReview(rno);
	}
	public List<Map<String, String>> selectListReport(int cPage, int numPerPage, int userNo) {
		return memberDAO.selectReportList(cPage, numPerPage, userNo);
	}

	public int selectReportTotalContents(int userNo) {
		return memberDAO.selectReportTotalContents(userNo);
	}

	public Report selectOneReport(int rNo) {
		return memberDAO.selectReportList(rNo);
	}

	public List<Likey> selectListLikey(int cPage, int numPerPage, int userNo) {
		return memberDAO.selectLikeyList(cPage, numPerPage, userNo);
	}

	public int selectLikeyTotalContents(int userNo) {
		return memberDAO.selectLikeyTotalContents(userNo);
	}
}
