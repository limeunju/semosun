package com.oceans.semosun.admin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.oceans.semosun.admin.model.service.AdminService;
import com.oceans.semosun.member.model.service.MemberService;
import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.report.model.vo.Report;
import com.oceans.semosun.review.model.service.ReviewService;
import com.oceans.semosun.teacher.model.vo.Teacher;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	@Autowired
	MemberService memberService;
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping("/memberControl.am")
	public String memberControl(Model model) {
		List<Member> memberList = adminService.memberList();
		
		model.addAttribute("memberList", memberList)
			 .addAttribute("totalCount", memberList.size());
		
		return "admin/memberControl";
	}
	
	@RequestMapping("/teacherControl.am")
	public String teacherControl(Model model) {
		List<Teacher> teacherList = adminService.teacherList(false);
		List<Teacher> teacherTstatusList = adminService.teacherList(true);
		
		model.addAttribute("teacherList", teacherList)
		.addAttribute("teacherTstatusList", teacherTstatusList)
		.addAttribute("totalCount", teacherList.size())
		.addAttribute("tslCount", teacherTstatusList.size());
		
		return "admin/teacherControl";
	}
	
	@RequestMapping("/reportControl.am")
	public String reportControl(Model model) {
		List<Report> reportList = adminService.reportList();
		
		model.addAttribute("reportList", reportList)
			.addAttribute("totalCount", reportList.size());
		
		return "admin/reportControl";
	}
	
	@RequestMapping("/tstatusY.am")
	@ResponseBody
	public int tstatusY(int tNo, Boolean isUpdateY) {
		return adminService.tstatusY(tNo, isUpdateY);
	}
	
	@RequestMapping("/review/statusY.am")
	public String statusY(int rno, Boolean isY, Model model) {
		adminService.statusY(rno, isY);
		return reportControl(model);
	}
	
	@RequestMapping("/updateT.am")
	@ResponseBody
	public int updateT(int tNo, String tName, String profileName, String company, String subject, @RequestParam(value = "upFile", required = false) MultipartFile upFile, HttpServletRequest request) throws Exception  {
		int result = 0;
		Teacher T = null;
		String savePath = request.getSession().getServletContext().getRealPath("/resources/images/profileImage2");

		String origin = memberService.selectOneTeacher(tNo).getProfileName();
		if (upFile != null) {
			
			File dir = new File(savePath);
			if (dir.exists() == false)
				dir.mkdirs();
			String renamedFileName = "";
//			if (!upFile.isEmpty()) {
				String originalFileName = upFile.getOriginalFilename();
				String ext = originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmss");
				int rndNum = (int) (Math.random() * 1000);
				renamedFileName = sdf.format(new Date(System.currentTimeMillis())) + "_" + rndNum + "." + ext;
				try {
					upFile.transferTo(new File(savePath + "/" + renamedFileName));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
//			}
			T = new Teacher(tNo, tName, company, subject, renamedFileName);
			result = adminService.updateT(T);
			
			if (result>0 && !origin.contains("default")) {
				new File(savePath + "/" + origin).delete();
			} else {
				new File(savePath + "/" + T.getProfileName()).delete();
			}
		} else {
			T = new Teacher(tNo, tName, company, subject);
			result = adminService.updateT(T);
		}
		return result; 
	}
	
	@RequestMapping("/deleteT.am")
	@ResponseBody
	public int deleteT(int tNo, Model model) {
		return adminService.deleteT(tNo);
	}
	
	@RequestMapping("/deleteM.am")
	public String deleteM(String userId, Model model) {
		Member m = new Member();
		m.setUserId(userId);
		memberService.DeleteOneMember(m);
		return memberControl(model);
	}
	
	@RequestMapping("/admin/selectOneMemberGraph.am")
	@ResponseBody
	public HashMap<String, Object> selectOneMemberGraph(int userNo, Model model) {
		return adminService.selectOneMemberGraph(userNo);
	}
	
}
