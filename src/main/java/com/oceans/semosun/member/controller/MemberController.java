package com.oceans.semosun.member.controller;

import java.io.File;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oceans.semosun.common.util.Utils;
import com.oceans.semosun.like.model.vo.Likey;
import com.oceans.semosun.member.MailHandler;
import com.oceans.semosun.member.TempKey;
import com.oceans.semosun.member.exception.MemberException;
import com.oceans.semosun.member.model.service.MemberService;
import com.oceans.semosun.member.model.vo.Member;
import com.oceans.semosun.review.model.vo.Review;
import com.oceans.semosun.teacher.model.vo.Teacher;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	@Autowired
	JavaMailSender mailSender;

	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;

	@RequestMapping(value = "/memberEnrollEnd.sg", method = RequestMethod.POST)
	public String memberEnrollEnd(Member member, Model model,
			@RequestParam(value = "upFile", required = false) MultipartFile[] upFiles, HttpServletRequest request)
			throws Exception {

		// 프로필사진 저장할 폴더
		String savePath = request.getSession().getServletContext().getRealPath("/resources/images/profileImage");

		// DB에 전달할 파일정보를 담을 객체 준비

		File dir = new File(savePath);
		if (dir.exists() == false)
			dir.mkdirs();
		String renamedFileName = "";
		System.out.println("upFiles" + upFiles[0].getOriginalFilename());
		for (MultipartFile f : upFiles) {
			if (!f.isEmpty()) {
				// 파일 이름 재생성 해서 저장하기
				String originalFileName = f.getOriginalFilename();
				String ext = originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
				// sample.jsp --> .jpg 만 꺼냄

				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmss");

				int rndNum = (int) (Math.random() * 1000);

				renamedFileName = sdf.format(new Date(System.currentTimeMillis())) + "_" + rndNum + "." + ext;
				// --> 20191230_154500_1.jpg

				try {
					f.transferTo(new File(savePath + "/" + renamedFileName));

				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else if (member.getGender().equals("M")) {
				renamedFileName = "defaultMmember.png";
			} else if (member.getGender().equals("F")) {
				renamedFileName = "defaultFmember.png";
			}
			// 저장된 파일 정보를 list에 담기
			member.setProfile(savePath);
			member.setProfileName(renamedFileName);

		}

		// 스프링에서는 response에 객체를 담지않고 model에 담는다.

		/************ 비밀 번호 암호화 시작 **********/
		// 1. 첫번째 회원 : 비밀번호를 1234로 입력한 후 테스트
		// 2. 두번째 회원 : 비밀번호를 1234로 입력한 후 테스트
		// 3. 3번째 회원 : 비밀번호를 00700으로 입력한 후 테스트
		// memberService.create(member);

		String password = member.getPwd();
		System.out.println("암호화 전 비밀번호 : " + password);

		String encPassword = bcryptPasswordEncoder.encode(password);
		System.out.println("암호화 후 비밀번호 : " + encPassword);

		member.setPwd(encPassword);

		/************ 비밀 번호 암호화 끝 **********/

		int result = memberService.insertMember(member);

		System.out.println("회원 가입 확인 용 : " + member);
		// 화면 처리 시작
		String msg = "";
		String loc = "";

		if (result > 0) { // 회원 정보가 DB에 들어갔을 때
			String authKey = new TempKey().getKey(50, false);
			result = memberService.createAuth(member.getEmail(), authKey);

			if (result > 0) { // 인증키가 DB에 저장되었을 때

				// 이메일 인증에 대한 메일 발송
				MailHandler sendMail = new MailHandler(mailSender);
				sendMail.setSubject("[홈페이지 이메일 인증]"); // 메일제목
				sendMail.setText( // 메일내용
						"<h1>메일인증</h1>" + "<a href='http://192.168.20.91:8088/semosun/emailConfirm?email="
								+ member.getEmail() + "&authKey=" + authKey + "' target='_blenk'>이메일 인증 확인</a>");
				sendMail.setFrom("semosun123@gmail.com", "세모선관리자"); // 보낸이
				sendMail.setTo(member.getEmail()); // 받는이

				sendMail.send();

				System.out.println("test");
				msg = "회원가입성공!! 인증메일을 확인하세요~";
				loc = "/";

			} else {
				if (!upFiles[0].isEmpty()) {
					File delFile = new File(savePath + "/" + member.getProfileName());
					boolean isDelete = delFile.delete();
				}
				msg = "회원가입 실패 ! - 이메일 인증키 생성 실패 ";
				loc = "/";
			}

		} else {
			msg = "회원가입 실패 ! ";
			loc = "/";

		}

		model.addAttribute("msg", msg);
		model.addAttribute("loc", loc);

		// rttr.addFlashAttribute("msg", "regSuccess");
		return "common/msg";
	}

	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String email, String authKey, Model model) throws Exception { // 이메일 인증 확인창
		int result = memberService.userAuth(email, authKey);
		// model.addAttribute("email", email);

		// 화면 처리 시작
		String msg = "";
		String loc = "";
		if (result > 0) {
			msg = "회원인증 성공!";
			loc = "/";
		} else {
			msg = "회원인증 실패 !";
			loc = "/";

		}

		model.addAttribute("msg", msg);
		model.addAttribute("loc", loc);

		return "common/msg";
	}

	@RequestMapping("/member/memberLogin.do")
	public ModelAndView memberLogin(Member member, HttpSession session, Model model) {
		System.out.println(member);
		ModelAndView mv = new ModelAndView();

		try {

			Member m = memberService.selectOneMember(member);

			String msg = "";
			String loc = "/";

			// 로그인시 입력한 비밀번호, DB에 저장된 비밀번호 두개를 비교하는 코드
			if (m != null && bcryptPasswordEncoder.matches(member.getPwd(), m.getPwd())) {
				msg = "로그인 성공 !";
				if(member.getUserId().equals("admin")) loc = "/memberControl.am";
				session.setAttribute("member", m);
				mv.addObject("member", m);

				System.out.println(m);
			} else if (m != null) {
				msg = "비밀번호가 틀렸습니다.";
			} else {
				msg = "로그인 실패!";
			}

			mv.addObject("msg", msg).addObject("loc", loc);
			mv.setViewName("common/msg");

			/*
			 * model.addAttribute("msg", msg); model.addAttribute("loc", loc);
			 */

		} catch (Exception e) {

			throw new MemberException("로그인 시도 중 에러 발생 : " + e.getMessage());

		}

		return mv;
	}

	// 로그아웃 시작

	@RequestMapping("/member/memberLogout.do")
	public String memberLogout(HttpSession session) {

		session.invalidate();

		return "redirect:/";
	}

	// 로그아웃 끝

	@RequestMapping("/member/memberUpdate.do")
	public String updateMember(Member member, Model model, HttpSession session,
			@RequestParam(value = "upFile", required = false) MultipartFile[] upFiles, HttpServletRequest request)
			throws Exception {

		// 1. 비밀번호 입력 받은 것 확인

		Member originMember = (Member) session.getAttribute("member");
		System.out.println("test : " + member);
		String nickName = member.getNickName();
		originMember.setNickName(nickName);
		originMember.setScore1(member.getScore1());
		originMember.setScore2(member.getScore2());
		originMember.setScore3(member.getScore3());
		originMember.setScore4(member.getScore4());
		originMember.setScore5(member.getScore5());

		if (member.getPwd() != null && member.getPwd().length() > 0) {

			// 2. 입력받은 비밀번호를 암호화 하기(bcryptPasswordEncoder의 encode 사용)
			String encPassword = bcryptPasswordEncoder.encode(member.getPwd());

			// 3. member 객체의 비밀번호 변경하기
			originMember.setPwd(encPassword);
		} else {
			originMember.setPwd(null);
		}

		// 프로필사진 저장할 폴더
		String savePath = request.getSession().getServletContext().getRealPath("/resources/images/profileImage");

		// DB에 전달할 파일정보를 담을 객체 준비

		File dir = new File(savePath);
		if (dir.exists() == false)
			dir.mkdirs();
		String renamedFileName = "";

		// 월래있는 회원의 파일을 삭제하기위해서 origin에 담음
		String origin = originMember.getProfileName();
		System.out.println("UPFILE==========" + upFiles);
		if (upFiles != null) {
			for (MultipartFile f : upFiles) {
				if (!f.isEmpty()) {

					// 파일 이름 재생성 해서 저장하기
					String originalFileName = f.getOriginalFilename();
					String ext = originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
					// sample.jsp --> .jpg 만 꺼냄

					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmss");

					int rndNum = (int) (Math.random() * 1000);

					renamedFileName = sdf.format(new Date(System.currentTimeMillis())) + "_" + rndNum + "." + ext;
					// --> 20191230_154500_1.jpg

					try {
						f.transferTo(new File(savePath + "/" + renamedFileName));
						originMember.setProfileName(renamedFileName);

					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}

		// 4. update 실행하기 (memberService 활용)
		int m = memberService.updateMember(originMember);

		System.out.println(originMember);

		String msg = "";
		String loc = "";

		if (m > 0) {
			// 회원정보 수정된거 세션갱신 해줘야한다.
			if (!upFiles[0].isEmpty()  && !origin.contains("default")  ) {
				File delFile = new File(savePath + "/" + origin);
				boolean isDelete = delFile.delete();

				System.out.println(isDelete);
			}
			session.setAttribute("member", originMember);
			msg = "회원수정 성공";
			loc = "/";

		} else {
			if (!upFiles[0].isEmpty()) {
				File delFile = new File(savePath + "/" + member.getProfileName());
				boolean isDelete = delFile.delete();
			}
			msg = "회원수정 실패 ! ";
			loc = "/";

		}

		model.addAttribute("msg", msg);
		model.addAttribute("loc", loc);

		return "common/msg";
	}

	
	
	@RequestMapping("/member/memberDelete.do")
	public String memberDelete(Member member, Model model, HttpSession session) {

		System.out.println("test : " + member);
		member = (Member)session.getAttribute("member");
		// String userId = (Member)session.getAttribute("member"); userID 만 가져와서 삭제해도됨
		// 여기에서 회원 삭제를 시작하고,
		int m = memberService.DeleteOneMember(member);

		String msg = "";
		String loc = "";
		
		String savePath = session.getServletContext().getRealPath("/resources/images/profileImage");
		System.out.println(savePath);
		if (m > 0 ) {
			if ( !member.getProfileName().contains("default")  ) {
				File delFile = new File(savePath + "/" + member.getProfileName());
				boolean isDelete = delFile.delete();

				System.out.println(isDelete);
			}
			msg = "회원탈퇴 성공";
			loc = "/";
			session.invalidate();
		} else {
			msg = "회원탈퇴 실패 ! ";
			loc = "/";

		}

		model.addAttribute("msg", msg);
		model.addAttribute("loc", loc);

		return "common/msg";
	}

//	/***************** Spring Ajax ******************/
//	// 1. 일반적으로 전송하는 방법(입출력 스트림 활용 방법)
//	// 일반 데이터를 보내는 것은 간편하나
//	// 자바 객체를 전달하지는 못한다.
//	/* (잘 안씀)
//	@RequestMapping("/member/checkIdDuplicate.do")
//	public void checkIdDuplicate(@RequestParam String userId, HttpServletResponse res) {
//		
//		int result = memberService.checkIdDuplicate(userId);
//		
//		boolean isUsable = result == 0 ? true : false;
//		
//		try {
//			res.getWriter().print(isUsable);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	}
//	*/
//	
//	
//	// 2. jsonView를 사용하는 방법
//	// 우리가 직접 viewResolver를 생성하여 json으로 
//	// 데이터를 전송하도록 하는 방법.
//	// ** 결과를 반드시 같은 이름으로 꺼내야한다.
//	/*
//	@RequestMapping("/member/checkIdDuplicate.do")
//	public String checkIdDuplicate(@RequestParam String userId, Model model) {
//		Map map = new HashMap();
//		
//		int result = memberService.checkIdDuplicate(userId);
//		
//		boolean isUsable = result == 0 ? true : false;
//		map.put("isUsable", isUsable);
//		
//		model.addAttribute(map);
//		// 이때 전달하는 화면값과 javascript에서 가져올 값 이름이 일치해야한다.
//		
//		return "jsonView"; 
//		
//	}
//	*/
//	
//	// 3. @ResponseBody 사용하기 (중요 !!)
//	
//	// REST API 의 핵심 기술이 된다.
//	// Restful API 란 , HTTP 통신 방식을 CRUD에 연결시켜 
//	// GET : SELECT 
//	// POST : INSERT
//	// PUT : UPDATE
//	// DELETE : DELETE
//	// 등의 통신을 구현하여 데이터를 화면 없이 전달함으로써
//	// 화면이 목적이 아닌 사용자에게 정보만을 빠르게 전달하는 기술을 말한다.
//	// 예) 기상청 날씨 api, 유기견 위치 api등... (공공데이터 전달용)
//	
//	
	@RequestMapping("/member/checkIdDuplicate.do")
	@ResponseBody
	// 자바객체인 map이나 hashmap 등등을 자바스크립트에서는 처리를(객체를 넘겨주지)못하는데 @ResponseBody를 객체를 넘겨준다.

	public Map<String, Object> checkIdDuplicate(@RequestParam String userId) {

		boolean isUsable = memberService.checkIdDuplicate(userId) == 0 ? true : false;

		Map<String, Object> map = new HashMap();
		map.put("isUsable", isUsable);

		return map;
	}

	@RequestMapping("/member/checkEmailDup.do")
	@ResponseBody

	public Map<String, Object> checkEmailDup(@RequestParam String email) {
		boolean isUsable = memberService.checkEmailDup(email) == 0 ? true : false;

		Map<String, Object> map = new HashMap();
		map.put("isUsable", isUsable);

		return map;
	}
	
	@RequestMapping("/member/teacherSelectList.do")
	public String selectTeacherList(@RequestParam(value="cPage", required = false, defaultValue="1") int cPage,
			Model model,HttpSession session) {
		Member m = (Member) session.getAttribute("member");
		
		// 한 페이지당 보여줄 게시글 수
		int numPerPage = 10;
		
		// 페이지 처리된 리스트 가져오기
		List<Map<String, String>> list = memberService.selectList(cPage, numPerPage, m.getUserNo());
//		System.out.println(list.get(0));

		// 전체 게시글 수 가져오기
		int totalContents = memberService.selectTotalContents(m.getUserNo());
		System.out.println(totalContents);
		// 페이지 계산 HTML을 추가하기
		String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, "teacherSelectList.do");
		
		System.out.println("페이지 바" + pageBar);
		
		model.addAttribute("list", list).addAttribute("totalContents", totalContents)
				.addAttribute("numPerPage", numPerPage).addAttribute("pageBar", pageBar);
	
		System.out.println("mooooodellelelelel" + model);
		return "myPage/myPageTeacher";
	}

	@RequestMapping("/member/memberView.do")
	public String selectOneTeacher(@RequestParam("no") int tNo, Model model) {
		
		Teacher t = memberService.selectOneTeacher(tNo);
		
		model.addAttribute("teacher", t);
		
		return "myPage/myPageSelectOne";
		
	}
	
	@RequestMapping("/member/reviewSelectList.do")
	public String selectReviewList(@RequestParam(value="cPage", required = false, defaultValue="1") int cPage,
			Model model,HttpSession session) {
		Member m = (Member) session.getAttribute("member");
		
		// 한 페이지당 보여줄 게시글 수
			int numPerPage = 9;
				
			// 페이지 처리된 리스트 가져오기
			List<Map<String, String>> list = memberService.selectListReview(cPage, numPerPage, m.getUserNo());
			// System.out.println(list.get(0));
			
			// 전체 게시글 수 가져오기
			int totalContents = memberService.selectTotalContents(m.getUserNo());
			System.out.println(totalContents);
			
			// 페이지 계산 HTML을 추가하기
			String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, "reviewSelectList.do");
			
			System.out.println("페이지 바" + pageBar);
			
			model.addAttribute("list", list).addAttribute("totalContents", totalContents)
			.addAttribute("numPerPage", numPerPage).addAttribute("pageBar", pageBar);
		
		return "myPage/myPageReview";
	}
	
	@RequestMapping("/member/reviewView.do")
	public String selectOneReview(@RequestParam("no") int rno, Model model) {
		
		Review r = memberService.selectOneReview(rno);
		
		model.addAttribute("review", r);
		
		return "myPage/myPageSelectOneReview";
		
	}

	@RequestMapping("/member/reportSelectList.do")
	public String selectreportList(@RequestParam(value="cPage", required = false, defaultValue="1") int cPage,
			Model model,HttpSession session) {
		Member m = (Member) session.getAttribute("member");
		
		// 한 페이지당 보여줄 게시글 수
			int numPerPage = 10;
				
			// 페이지 처리된 리스트 가져오기
			List<Map<String, String>> list = memberService.selectListReport(cPage, numPerPage, m.getUserNo());
			// System.out.println(list.get(0));
			
			// 전체 게시글 수 가져오기
			int totalContents = memberService.selectReportTotalContents(m.getUserNo());
			System.out.println(totalContents);
			
			// 페이지 계산 HTML을 추가하기
			String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, "reportSelectList.do");
			
			System.out.println("페이지 바" + pageBar);
			
			model.addAttribute("list", list).addAttribute("totalContents", totalContents)
			.addAttribute("numPerPage", numPerPage).addAttribute("pageBar", pageBar);
		
		return "myPage/myPageReport";
	}
	
	@RequestMapping("/member/likeySelectList.do")
	public String selectlikeyList(@RequestParam(value="cPage", required = false, defaultValue="1") int cPage,
			Model model,HttpSession session) {
		Member m = (Member) session.getAttribute("member");
		
		// 한 페이지당 보여줄 게시글 수
			int numPerPage = 10;
				
			// 페이지 처리된 리스트 가져오기
			List<Likey> list = memberService.selectListLikey(cPage, numPerPage, m.getUserNo());
			// System.out.println(list.get(0));
			
			// 전체 게시글 수 가져오기
			int totalContents = memberService.selectLikeyTotalContents(m.getUserNo());
			System.out.println(totalContents);
			
			// 페이지 계산 HTML을 추가하기
			String pageBar = Utils.getPageBar(totalContents, cPage, numPerPage, "likeySelectList.do");
			
			System.out.println("페이지 바" + pageBar);
			
			model.addAttribute("list", list).addAttribute("totalContents", totalContents)
			.addAttribute("numPerPage", numPerPage).addAttribute("pageBar", pageBar).addAttribute("cPage", cPage);
		
		return "myPage/myPageLikey";
	}
}















