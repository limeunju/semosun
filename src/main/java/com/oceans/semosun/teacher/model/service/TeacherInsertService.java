package com.oceans.semosun.teacher.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oceans.semosun.member.model.dao.MemberDAO;
import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.teacher.model.dao.TeacherDAO;
import com.oceans.semosun.teacher.model.vo.Teacher;

@Service
public class TeacherInsertService {
	
	@Autowired
	TeacherDAO TeacherDAO;
	
	public int insertTeacher(Teacher teacher) {
			return TeacherDAO.insertTeacher(teacher);
		}
	public int selectTeacher(int tNo) {
		return TeacherDAO.selectTeacher(tNo);
	}
	public int getTeacherCount() {
		
		return TeacherDAO.getTeacherCount();
	}
	public int getReviewCount() {
		
		return TeacherDAO.getReviewCount();
	}
	public List<Teacher> selectList(int cPage, int limit, Member m) {
		
		return TeacherDAO.selectList(cPage, limit, m);
	}
	public int selectTotalContents() {
		return TeacherDAO.selectTotalContents();
	}
	public List<Teacher> selectTeacherLive() {
		
		return TeacherDAO.selectTeacherLive();
	}
}

