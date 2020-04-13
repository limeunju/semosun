package com.oceans.semosun.qna.model.vo;

import java.io.Serializable;

import java.sql.Date;

public class Qna implements Serializable{
	private int qNo;
	private int userNo;
	private String qTitle;
	private String qContent;
	private Date qDate;
	private String answer;
	private Date aDate;
	private String qStatus;
	private String nickName;
	private String pwd;
	
	public Qna() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Qna(int qNo, int userNo, String qTitle, String qContent, Date qDate, String answer, Date aDate,
			String qStatus, String nickName, String pwd) {
		super();
		this.qNo = qNo;
		this.userNo = userNo;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qDate = qDate;
		this.answer = answer;
		this.aDate = aDate;
		this.qStatus = qStatus;
		this.nickName = nickName;
		this.pwd = pwd;
	}

	@Override
	public String toString() {
		return "Qna [qNo=" + qNo + ", userNo=" + userNo + ", qTitle=" + qTitle + ", qContent=" + qContent + ", qDate="
				+ qDate + ", answer=" + answer + ", aDate=" + aDate + ", qStatus=" + qStatus + ", nickName=" + nickName
				+ ", pwd=" + pwd + "]";
	}

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public Date getqDate() {
		return qDate;
	}

	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getaDate() {
		return aDate;
	}

	public void setaDate(Date aDate) {
		this.aDate = aDate;
	}

	public String getqStatus() {
		return qStatus;
	}

	public void setqStatus(String qStatus) {
		this.qStatus = qStatus;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	
	

}
