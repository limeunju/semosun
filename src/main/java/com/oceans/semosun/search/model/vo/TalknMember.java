package com.oceans.semosun.search.model.vo;

import java.io.Serializable;
import java.sql.Timestamp;

public class TalknMember implements Serializable {

	private int talkNo;
	private int userNo;
	private String talkTitle;
	private String talkContent;
	private int talkCount;
	private Timestamp talkDate;
	private String tstatus;
	private String nickName;
	private String profile;
	private String profileName;
	public TalknMember() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TalknMember(int talkNo, int userNo, String talkTitle, String talkContent, int talkCount, Timestamp talkDate,
			String tstatus, String nickName, String profile, String profileName) {
		super();
		this.talkNo = talkNo;
		this.userNo = userNo;
		this.talkTitle = talkTitle;
		this.talkContent = talkContent;
		this.talkCount = talkCount;
		this.talkDate = talkDate;
		this.tstatus = tstatus;
		this.nickName = nickName;
		this.profile = profile;
		this.profileName = profileName;
	}
	public int getTalkNo() {
		return talkNo;
	}
	public void setTalkNo(int talkNo) {
		this.talkNo = talkNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getTalkTitle() {
		return talkTitle;
	}
	public void setTalkTitle(String talkTitle) {
		this.talkTitle = talkTitle;
	}
	public String getTalkContent() {
		return talkContent;
	}
	public void setTalkContent(String talkContent) {
		this.talkContent = talkContent;
	}
	public int getTalkCount() {
		return talkCount;
	}
	public void setTalkCount(int talkCount) {
		this.talkCount = talkCount;
	}
	public Timestamp getTalkDate() {
		return talkDate;
	}
	public void setTalkDate(Timestamp talkDate) {
		this.talkDate = talkDate;
	}
	public String getTstatus() {
		return tstatus;
	}
	public void setTstatus(String tstatus) {
		this.tstatus = tstatus;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
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
	@Override
	public String toString() {
		return "TalknMember [talkNo=" + talkNo + ", userNo=" + userNo + ", talkTitle=" + talkTitle + ", talkContent="
				+ talkContent + ", talkCount=" + talkCount + ", talkDate=" + talkDate + ", tstatus=" + tstatus
				+ ", nickName=" + nickName + ", profile=" + profile + ", profileName=" + profileName + "]";
	}

	
}
