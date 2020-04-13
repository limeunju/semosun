package com.oceans.semosun.report.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceans.semosun.report.model.vo.Report;


@Repository
public class ReportDAO {

	@Autowired
	SqlSessionTemplate sqlsession;
	
	public List<Map<String, String>> selectList(int cPage, int numPerPage) {
		
		RowBounds rows = new RowBounds((cPage-1)*numPerPage, numPerPage);
		
		return sqlsession.selectList("report-mapper.selectList", null, rows);
	}

	public int selectTotalConents() {
		
		return sqlsession.selectOne("report-mapper.selectTotalContents");
	}

	public Report selectOne(Report r) {

		return sqlsession.selectOne("report-mapper.selectOne", r);
	}

	public int insertReport(Report re) {

		return sqlsession.insert("report-mapper.insert", re);
	}

	public int deleteReport(Report report) {

		int result = sqlsession.delete("report-mapper.delete", report);
		result += sqlsession.update("report-mapper.updateReview", report);
		return result;
	}

	public List<Map<String, String>> searchReport(int cPage, int numPerPage, String keyword) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);
		
		return sqlsession.selectList("report-mapper.searchReport", keyword, rows);
	}

}
