package com.oceans.semosun.report.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.notice.exception.NoticeException;
import com.oceans.semosun.report.model.dao.ReportDAO;
import com.oceans.semosun.report.model.vo.Report;
import com.oceans.semosun.review.model.vo.Review;


@Service
public class ReportService {

	@Autowired
	ReportDAO reportDAO;
	
	public List<Map<String, String>> selectList(int cPage, int numPerPage) {

		return reportDAO.selectList(cPage, numPerPage);
	}

	public int selectTotalContents() {
	
		return reportDAO.selectTotalConents();
	}


	
	// 데이터베이스는 2개를 같이 못받음으로 r로 객체 새로 만들어서 하나로 보내줘야한다.
	public Report selectOne(int rno, int userNo) {
		Report r = new Report(userNo, rno);
		return reportDAO.selectOne(r);
	}

	public int insertReport(int rno, int userNo, String ref_content) {
		
		Report re = new Report();
		re.setRno(rno);
		re.setUserNo(userNo);
		re.setRef_content(ref_content);
		
		return reportDAO.insertReport(re);
	}

	public int reportDelete(Report report) {

		
		return reportDAO.deleteReport(report);
	}

	public List<Map<String, String>> searchReport(int cPage, int numPerPage, String keyword) {
		return reportDAO.searchReport(cPage, numPerPage, keyword);
	}




	
	
	

}
