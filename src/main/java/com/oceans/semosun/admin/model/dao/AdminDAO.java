package com.oceans.semosun.admin.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.report.model.vo.Report;
import com.oceans.semosun.teacher.model.vo.Teacher;

@Repository
public class AdminDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<Teacher> teacherList(Boolean b) {
		return sqlSessionTemplate.selectList("admin-mapper.teacherList", b);
	}
	
	public List<Report> reportList() {
		return sqlSessionTemplate.selectList("admin-mapper.reportList");
	}
	

	public int tstatusY(int tNo, Boolean isUpdateY) {
		Map<String, Object> tstatusY = new HashMap<>();
		tstatusY.put("tNo", tNo);
		tstatusY.put("isUpdateY", isUpdateY);
		return sqlSessionTemplate.update("admin-mapper.tstatusY", tstatusY);
	}
	
	public int updateT(Teacher t) {
		return sqlSessionTemplate.update("admin-mapper.updateT", t);
	}

	public int deleteT(int tNo) {
		return sqlSessionTemplate.delete("admin-mapper.deleteT", tNo);
	}

	public int statusY(int rno, Boolean isY) {
		Map<String, Object> statusY = new HashMap<>();
		statusY.put("rno", rno);
		statusY.put("isY", isY);
		
		return sqlSessionTemplate.update("admin-mapper.RSTATUS", statusY);
	}

	public List<Member> memberList() {
		return sqlSessionTemplate.selectList("admin-mapper.memberList");
	}

	public HashMap<String, Object> selectOneMemberGraph(int userNo) {
		return sqlSessionTemplate.selectOne("admin-mapper.selectOneMemberGraph", userNo);
	}
	
}
