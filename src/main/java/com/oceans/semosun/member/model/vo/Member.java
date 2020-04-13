package com.oceans.semosun.member.model.vo;

import java.io.Serializable;

public class Member implements Serializable{
	private int userNo;
	private String userId;
	private String pwd;
	private String nickName;
	private String gender;
	private String email;
	private String enrolldate;
	private String erecive;
	private String profile;
	private String profileName;
	private int score1;
	private int score2;
	private int score3;
	private int score4;
	private int score5;
	
	// 강사검색 정렬 전달용
	private int percent;

	
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}


	

	public Member(int userNo, String userId, String pwd, String nickName, String gender, String email,
			String enrolldate, String erecive, String profile, String profileName, int score1, int score2, int score3,
			int score4, int score5, int percent) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.pwd = pwd;
		this.nickName = nickName;
		this.gender = gender;
		this.email = email;
		this.enrolldate = enrolldate;
		this.erecive = erecive;
		this.profile = profile;
		this.profileName = profileName;
		this.score1 = score1;
		this.score2 = score2;
		this.score3 = score3;
		this.score4 = score4;
		this.score5 = score5;
		this.percent = percent;
	}




	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", pwd=" + pwd + ", nickName=" + nickName
				+ ", gender=" + gender + ", email=" + email + ", enrolldate=" + enrolldate + ", erecive=" + erecive
				+ ", profile=" + profile + ", profileName=" + profileName + ", score1=" + score1 + ", score2=" + score2
				+ ", score3=" + score3 + ", score4=" + score4 + ", score5=" + score5 + ", percent=" + percent + "]";
	}




	public int getScore1() {
		return score1;
	}




	public void setScore1(int score1) {
		this.score1 = score1;
	}




	public int getScore2() {
		return score2;
	}




	public void setScore2(int score2) {
		this.score2 = score2;
	}




	public int getScore3() {
		return score3;
	}




	public void setScore3(int score3) {
		this.score3 = score3;
	}




	public int getScore4() {
		return score4;
	}




	public void setScore4(int score4) {
		this.score4 = score4;
	}




	public int getScore5() {
		return score5;
	}




	public void setScore5(int score5) {
		this.score5 = score5;
	}





	public int getUserNo() {
		return userNo;
	}



	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getPwd() {
		return pwd;
	}



	public void setPwd(String pwd) {
		this.pwd = pwd;
	}



	public String getNickName() {
		return nickName;
	}



	public void setNickName(String nickName) {
		this.nickName = nickName;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getEnrolldate() {
		return enrolldate;
	}



	public void setEnrolldate(String enrolldate) {
		this.enrolldate = enrolldate;
	}



	public String getErecive() {
		return erecive;
	}



	public void setErecive(String erecive) {
		this.erecive = erecive;
	}



	public String getProfile() {
		return profile;
	}



	public void setProfile(String profile) {
		this.profile = profile;
	}



	public String getProfileName() {
		return profileName;
	}



	public void setProfileName(String profileName) {
		this.profileName = profileName;
	}




	public int getPercent() {
		return percent;
	}




	public void setPercent(int percent) {
		this.percent = percent;
	}
	
	
	
}
