package com.oceans.semosun.admin.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oceans.semosun.admin.model.dao.AdminDAO;
import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.report.model.vo.Report;
import com.oceans.semosun.teacher.model.vo.Teacher;

@Service
public class AdminService {
	@Autowired
	AdminDAO adminDAO;

	public List<Teacher> teacherList(Boolean b) {
		return adminDAO.teacherList(b);
	}

	public int tstatusY(int tNo, Boolean isUpdateY) {
		return adminDAO.tstatusY(tNo, isUpdateY);
	}
	
	public int updateT(Teacher t) {
		return adminDAO.updateT(t);
	} 

	public int deleteT(int tNo) {
		return adminDAO.deleteT(tNo);
	}

	public List<Report> reportList() {
		return adminDAO.reportList();
	}
	public int statusY(int rno, Boolean isY) {
		return adminDAO.statusY(rno, isY);
		
	}

	public List<Member> memberList() {
		return adminDAO.memberList();
	}

	public HashMap<String, Object> selectOneMemberGraph(int userNo) {
		return adminDAO.selectOneMemberGraph(userNo);
	}

}
