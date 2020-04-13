package com.oceans.semosun.report.model.vo;

import java.sql.Date;

public class Report {

	private int userNo;
	private int rno;
	private String ref_content;
	private Date ref_date;
	
	// 회원 정보
	private String nickName;
	private String profileName;
	// 리뷰 제목
	private String rtitle;
	// 강사 정보
	private String tName;
	private String company;
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Report(int userNo, int rno) {
		super();
		this.userNo = userNo;
		this.rno = rno;
	}
	public Report(int userNo, int rno, String ref_content, Date ref_date, String nickName, String profileName,
			String rtitle, String tName, String company) {
		super();
		this.userNo = userNo;
		this.rno = rno;
		this.ref_content = ref_content;
		this.ref_date = ref_date;
		this.nickName = nickName;
		this.profileName = profileName;
		this.rtitle = rtitle;
		this.tName = tName;
		this.company = company;
	}
	@Override
	public String toString() {
		return "Report [userNo=" + userNo + ", rno=" + rno + ", ref_content=" + ref_content + ", ref_date=" + ref_date
				+ ", nickName=" + nickName + ", profileName=" + profileName + ", rtitle=" + rtitle + ", tName=" + tName
				+ ", company=" + company + "]";
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getRef_content() {
		return ref_content;
	}
	public void setRef_content(String ref_content) {
		this.ref_content = ref_content;
	}
	public Date getRef_date() {
		return ref_date;
	}
	public void setRef_date(Date ref_date) {
		this.ref_date = ref_date;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getProfileName() {
		return profileName;
	}
	public void setProfileName(String profileName) {
		this.profileName = profileName;
	}
	public String getRtitle() {
		return rtitle;
	}
	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	

	
}
