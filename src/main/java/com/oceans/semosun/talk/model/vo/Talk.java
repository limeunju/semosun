package com.oceans.semosun.talk.model.vo;

import java.io.Serializable;
import java.sql.Timestamp;

public class Talk implements Serializable{
	private int talkno ;
	private int userno ;
	private String talkcontent ;
	private int talkcount ;
	private Timestamp talkdate ;
	private String tstatus ;
	private String nickName;
	private String profileName;
	
	public Talk(int userno, String talkcontent) {
		super();
		this.userno = userno;
		this.talkcontent = talkcontent;
	}

	public Talk() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Talk(int talkno, int userno, String talkcontent, int talkcount, Timestamp talkdate, String tstatus,
			String nickName, String profileName) {
		super();
		this.talkno = talkno;
		this.userno = userno;
		this.talkcontent = talkcontent;
		this.talkcount = talkcount;
		this.talkdate = talkdate;
		this.tstatus = tstatus;
		this.nickName = nickName;
		this.profileName = profileName;
	}

	@Override
	public String toString() {
		return "Talk [talkno=" + talkno + ", userno=" + userno + ", talkcontent=" + talkcontent + ", talkcount="
				+ talkcount + ", talkdate=" + talkdate + ", tstatus=" + tstatus + ", nickName=" + nickName
				+ ", profileName=" + profileName + "]";
	}

	public int getTalkno() {
		return talkno;
	}

	public void setTalkno(int talkno) {
		this.talkno = talkno;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getTalkcontent() {
		return talkcontent;
	}

	public void setTalkcontent(String talkcontent) {
		this.talkcontent = talkcontent;
	}

	public int getTalkcount() {
		return talkcount;
	}

	public void setTalkcount(int talkcount) {
		this.talkcount = talkcount;
	}

	public Timestamp getTalkdate() {
		return talkdate;
	}

	public void setTalkdate(Timestamp talkdate) {
		this.talkdate = talkdate;
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

	public String getProfileName() {
		return profileName;
	}

	public void setProfileName(String profileName) {
		this.profileName = profileName;
	}
	
}
