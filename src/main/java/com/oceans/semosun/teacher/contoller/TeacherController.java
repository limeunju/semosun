package com.oceans.semosun.teacher.contoller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.oceans.semosun.common.util.Utils;
import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.teacher.model.service.TeacherInsertService;
import com.oceans.semosun.teacher.model.vo.Teacher;


@Controller
public class TeacherController {
	
	@Autowired
	TeacherInsertService teacherService;
	
	@RequestMapping(value = "/teacherInsert.do", method = RequestMethod.POST)
	public String TeacherInsert(Member member, Teacher teacher, Model model,
			@RequestParam(value = "upFile", required = false) MultipartFile[] upFiles, HttpServletRequest request) 
			throws Exception{
		// 프로필사진 저장할 폴더
		String savePath = request.getSession().getServletContext().getRealPath("/resources/images/profileImage2");
		// DB에 전달할 파일정보를 담을 객체 준비
		
		File dir = new File(savePath);
		if (dir.exists() == false)
			dir.mkdirs();
		String renamedFileName="";
		System.out.println("upFiles" + upFiles[0].getOriginalFilename());
		for(MultipartFile f : upFiles) {
			if(!f.isEmpty()) {
				// 파일 이름 재생성 해서 저장하기
				String originalFileName = f.getOriginalFilename();
				String ext = originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
				// sample.jsp --> .jpg 만 꺼냄
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmss");
				
				int rndNum = (int) (Math.random() * 1000);
				
				renamedFileName = sdf.format(new Date(System.currentTimeMillis())) + "_" + rndNum + "." + ext;
				// --> 20191230_154500_1.jpg 이렇게 나온다는 거겠지?
				
				try {
					f.transferTo(new File(savePath + "/" + renamedFileName));

				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			} else if(teacher.gettGender().equals("M")) {
				renamedFileName = "defaultMmember.png";
			} else if(teacher.gettGender().equals("F")) {
				renamedFileName = "defaultFmember.png";
			}
			// 저장된 파일 정보를 list에 담기
			teacher.setProfile(savePath);
			teacher.setProfileName(renamedFileName);
		}
		
		int result = teacherService.insertTeacher(teacher);
		
		System.out.println("강사등록 확인용" + teacher);
		
		String msg = "";
		String loc = "";
		
		if(result > 0) { // 강사 정보가 DB에 들어갔을 때
			msg = "강사등록성공!!";
			loc = "/";
		} else {
			msg = "강사등록실패!";
			loc = "/";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("loc", loc);
		
		return "common/msg";
		
	}
	
	@RequestMapping("/teacher/selectTeacherList.do")
	public String teacherList(@RequestParam(value="cPage", defaultValue = "1", required = false) int cPage,
							  @RequestParam(value="percent", defaultValue = "50", required = false) String percent, Model model, HttpSession session) {
		Member m = new Member();
		if((Member) session.getAttribute("memeber") != null) m = (Member) session.getAttribute("memeber");
		m.setPercent(Integer.parseInt(percent));
		int limit = 9;
		int total = teacherService.getTeacherCount();
		String pagebar = Utils.getPageBar(total, cPage, limit, "/semosun/teacher/selectTeacherList.do");
		List<Teacher> list = teacherService.selectList(cPage, limit, m);
		System.out.println(list);
		model.addAttribute("teacherCount", teacherService.getTeacherCount())
		     .addAttribute("reviewCount", teacherService.getReviewCount())
		     .addAttribute("pageBar", pagebar)
		     .addAttribute("percent", percent)
		     .addAttribute("list", list);
				
		
		return "teacher/teacherList";
	}
	
	@RequestMapping("/teacher/selectteacherLive.do")
	@ResponseBody
	public List<Teacher> teacherLive(){
		List<Teacher> list = teacherService.selectTeacherLive();
		System.out.println("list"+list);
		return list;
	}
	
	
	
}




